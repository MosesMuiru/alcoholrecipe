defmodule FetchFromBlogTest do
  use ExUnit.Case
  doctest FetchFromBlog

  test "greets the world" do
    assert FetchFromBlog.hello() == :world
  end
end
