defmodule Crudview.Repo.Migrations.CreateTrades do
  use Ecto.Migration

  def change do
    create table(:trades) do
      add :symbol, :string
      add :size, :integer
      add :is_short, :boolean
      add :entry_price, :integer
      add :exit_price, :integer
      add :entry_at, :naive_datetime
      add :exit_at, :naive_datetime
      timestamps()
    end

  end
end
