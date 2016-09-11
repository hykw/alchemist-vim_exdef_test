defmodule Sample.PageController do
  use Sample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end


defmodule Sample.WrongCase do
  use Sample.Web, :controller

  alias Sample.{
    Module1,
  }

  def index(conn, _params) do
    bar = Sample.Module1.foo

    render conn, "index.html"
  end
end

defmodule Sample.CorrectCase do
  use Sample.Web, :controller

  def index(conn, _params) do
    bar = Sample.Module1.foo

    render conn, "index.html"
  end
end
