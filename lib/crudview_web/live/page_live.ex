defmodule CrudviewWeb.PageLive do
  use CrudviewWeb, :live_view
  alias Crudview.Trade
  alias Crudview.Repo

  def mount(_params, _session, socket) do
    # trades = if connected?(socket), do: Trade.list_trades, else: []
    trades = Repo.paginate(Trade)

    assigns = [
      trades: trades.entries,
      page_number: trades.page_number,
      page_size: trades.page_size,
      total_pages: trades.total_pages,
      total_entries: trades.total_entries,
    ]
    {:ok, assign(socket, assigns)}
  end

  def handle_event("nav", %{"page" => page}, socket) do
     trades = Repo.paginate(Trade, page: page)

    assigns = [
      trades: trades.entries,
      page_number: trades.page_number,
      page_size: trades.page_size,
      total_pages: trades.total_pages,
      total_entries: trades.total_entries,
    ]
    {:noreply, assign(socket, assigns)}
  end
end
