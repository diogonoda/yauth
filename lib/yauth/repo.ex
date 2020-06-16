defmodule Yauth.Repo do
  use Ecto.Repo,
    otp_app: :yauth,
    adapter: Ecto.Adapters.Postgres
end
