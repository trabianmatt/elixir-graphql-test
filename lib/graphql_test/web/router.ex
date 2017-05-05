defmodule GraphQLTest.Web.Router do
  use GraphQLTest.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GraphQLTest.Web do
    pipe_through :api
  end
end
