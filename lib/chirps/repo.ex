defmodule Chirps.Repo do
  use Ecto.Repo,
    otp_app: :chirps,
    adapter: Ecto.Adapters.Postgres
end
