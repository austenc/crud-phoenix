defmodule Crudview.Repo do
  use Ecto.Repo,
    otp_app: :crudview,
    adapter: Ecto.Adapters.Postgres
end
