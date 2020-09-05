defmodule NothingWeb.PageController do
  use NothingWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
