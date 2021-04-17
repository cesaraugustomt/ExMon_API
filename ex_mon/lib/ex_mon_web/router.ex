defmodule ExMonWeb.Router do
  use ExMonWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  pipeline :auth do
    plug ExMonWeb.Auth.Pipeline
  end

  scope "/api", ExMonWeb do
    pipe_through(:api)

    post "/trainers", TrainersController, only: :create
    post "/trainers/signin", TrainersController, :sign_in
    get "/pokemons/:name", PokemonsController, :show
  end

  scope "/api", ExMonWeb do
    pipe_through [:api, :auth]

    resources "/trainers", TrainersController, only: [:show, :delete, :update]

    resources "/trainer_pokemons", TrainerPokemonsController,
      only: [:create, :show, :delete, :update]
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through([:fetch_session, :protect_from_forgery])
      live_dashboard("/dashboard", metrics: ExMonWeb.Telemetry)
    end
  end

  scope "/", ExMonWeb do
    pipe_through(:api)

    get("/", WelcomeController, :index)
  end
end
