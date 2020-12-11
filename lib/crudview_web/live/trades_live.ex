defmodule CrudviewWeb.TradesLive do
  use CrudviewWeb, :live_view
  alias Crudview.Trade
  alias Crudview.Repo

  def mount(_params, _session, socket) do
    {:ok, assign(socket, get_trades())}
  end

  def get_trades(page \\ 1) do
    trades = Repo.paginate(Trade, page: page)
    [
      trades: trades.entries,
      page_number: trades.page_number,
      page_size: trades.page_size,
      total_pages: trades.total_pages,
      total_entries: trades.total_entries,
      first_item: (trades.page_size * (trades.page_number - 1)) + 1,
      last_item: (trades.page_size * (trades.page_number - 1)) + Enum.count(trades.entries)
    ]
  end

  def handle_event("nav", %{"page" => page}, socket) do
    {:noreply, assign(socket, get_trades(page))}
  end
end
