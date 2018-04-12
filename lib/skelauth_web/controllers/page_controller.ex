defmodule SkelauthWeb.PageController do
  use SkelauthWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
