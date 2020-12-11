defmodule Crudview.Repo do
  use Ecto.Repo,
    otp_app: :crudview,
    adapter: Ecto.Adapters.Postgres
  use Scrivener, page_size: 4
end
