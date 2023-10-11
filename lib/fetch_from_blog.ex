defmodule FetchFromBlog do

  @blog_url "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91"

  def fetch_blog do
    HTTPoison.get(@blog_url)
    |> handle_response
    # |>save_to_file



  end
  def handle_response({_, %{status_code: status_code, body: body}}) do
    body |> save_to_file
  end

  def check_for_error(200), do: :ok
  def check_for_error(_), do: :error

  def save_to_file(blog) do
    File.write("blog.html", blog)
  end


  # change the data into json data
  # def json_file({:ok, response: response} = blog) do

  # end


  def hello do
    :world
  end
end
