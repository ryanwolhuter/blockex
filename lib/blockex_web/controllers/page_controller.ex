defmodule BlockexWeb.PageController do
  use BlockexWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
