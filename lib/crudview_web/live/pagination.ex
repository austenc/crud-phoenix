defmodule CrudviewWeb.Pagination do
  use CrudviewWeb, :live_component

  def mount(socket) do
    {:ok, assign(socket, [])}
  end
end
