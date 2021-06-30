defmodule LoyaltyApp.PageController do
  use LoyaltyApp, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
