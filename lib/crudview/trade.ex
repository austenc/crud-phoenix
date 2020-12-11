defmodule Crudview.Trade do
  use Ecto.Schema
  alias Crudview.Repo
  alias Crudview.Trade
  import Ecto.Changeset

  schema "trades" do
    field :symbol, :string
    field :size, :integer
    field :is_short, :boolean
    field :entry_price, :integer
    field :exit_price, :integer
    field :entry_at, :naive_datetime
    field :exit_at, :naive_datetime
    timestamps()
  end

  def list_trades do
    Repo.all(Trade)
  end

  @doc false
  def changeset(trade, attrs) do
    trade
    |> cast(attrs, [:symbol, :size, :entry_price, :exit_price])
    |> validate_required([:symbol, :size, :entry_price, :exit_price])
  end
end
