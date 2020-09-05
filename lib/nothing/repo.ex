defmodule Nothing.Repo do
  use Ecto.Repo,
    otp_app: :nothing,
    adapter: Ecto.Adapters.Postgres
end
