defmodule YauthWeb.SessionController do
  use YauthWeb, :controller

  def new(conn, _params) do
    render(conn, :new, changeset: conn, action: "/login")
  end
end
