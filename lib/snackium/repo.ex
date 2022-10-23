defmodule Snackium.Repo do
  use Ecto.Repo,
    otp_app: :snackium,
    adapter: Ecto.Adapters.Postgres
end
