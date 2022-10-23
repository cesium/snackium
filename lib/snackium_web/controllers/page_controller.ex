defmodule SnackiumWeb.PageController do
  use SnackiumWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
