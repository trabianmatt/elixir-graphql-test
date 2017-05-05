defmodule GraphQLTest.Schema.Types do
  use Absinthe.Schema.Notation

  enum :episode, values: [:NEW_HOPE, :EMPIRE, :JEDI]

  object :human do
    field :id, :id
    field :name, :string
    field :home_planet, :string
    field :appears_in, list_of(:episode)
  end

  object :droid do
    field :id, :id
    field :name, :string
    field :appears_in, list_of(:episode)
    field :primary_functions, list_of(:string)
  end
  
end
