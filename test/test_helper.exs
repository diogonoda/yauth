ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Yauth.Repo, :manual)

# Ensure that Wallaby has started when our tests are started
{:ok, _} = Application.ensure_all_started(:wallaby)
Application.put_env(:wallaby, :base_url, YauthWeb.Endpoint.url)
