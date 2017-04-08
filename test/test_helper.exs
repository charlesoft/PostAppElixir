ExUnit.start

ExUnit.configure(exclude: [error_view_case: true])

Ecto.Adapters.SQL.Sandbox.mode(PostApp.Repo, :manual)
