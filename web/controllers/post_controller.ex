defmodule PostApp.PostController do
  use PostApp.Web, :controller

  alias PostApp.Post

  def index(conn, _params) do
    posts = Repo.all(Post)
    render(conn, "index.html", posts: posts)
  end


end
