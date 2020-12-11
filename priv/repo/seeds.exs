# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Crudview.Repo.insert!(%Crudview.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Crudview.Repo.insert!(%Crudview.Trade{
  symbol: "TSLA",
  size: 100,
  entry_price: 1000,
  exit_price: 1100,
  entry_at: ~N[2017-04-13 00:30:10],
  exit_at: ~N[2018-04-13 00:30:10],
})

Crudview.Repo.insert!(%Crudview.Trade{
  symbol: "MLKR",
  size: 100,
  entry_price: 1000,
  exit_price: 1100,
  entry_at: ~N[2017-04-13 00:30:10],
  exit_at: ~N[2018-04-13 00:30:10],
})

Crudview.Repo.insert!(%Crudview.Trade{
  symbol: "LTTR",
  size: 100,
  entry_price: 1000,
  exit_price: 1100,
  entry_at: ~N[2017-04-13 00:30:10],
  exit_at: ~N[2018-04-13 00:30:10],
})

Crudview.Repo.insert!(%Crudview.Trade{
  symbol: "OGRE",
  size: 100,
  entry_price: 1000,
  exit_price: 1100,
  entry_at: ~N[2017-04-13 00:30:10],
  exit_at: ~N[2018-04-13 00:30:10],
})

Crudview.Repo.insert!(%Crudview.Trade{
  symbol: "CHAT",
  size: 100,
  entry_price: 1000,
  exit_price: 1100,
  entry_at: ~N[2017-04-13 00:30:10],
  exit_at: ~N[2018-04-13 00:30:10],
})
