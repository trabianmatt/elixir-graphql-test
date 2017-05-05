defmodule GraphQLTest.Schema do

  use Absinthe.Schema

  import_types GraphQLTest.Schema.Types

  # This is defined as a module attribute for
  # the test only.
  @characters [
    %{
      id: 1000,
      name: "Luke",
      home_planet: "Tatooine",
      appears_in: [:NEW_HOPE, :EMPIRE, :JEDI]
    },
    %{
      id: 2000,
      name: "Lando Calrissian",
      home_planet: "Socorro",
      appears_in: [:EMPIRE, :JEDI]
    }
  ]

  query do
    field :hero, :human do
      arg :episode, non_null(:episode)
      resolve fn %{episode: episode}, _ ->
        {:ok, get_hero(episode)}
      end
    end
    field :droid, :droid do
      arg :id, :string, default_value: "2001"
      resolve fn _, _ ->
        {:ok, %{}}
      end
    end
  end

  defp get_hero(episode) do
    case episode do
      :NEW_HOPE ->
        Enum.at(@characters, 0)
      _ ->
        Enum.at(@characters, 1)
    end
  end

end
