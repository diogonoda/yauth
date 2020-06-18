defmodule YauthWeb.RegistrationController do
  use YauthWeb, :controller

  def new(conn, _) do
    render(conn, :new, changeset: conn, action: "/register")
  end
end
