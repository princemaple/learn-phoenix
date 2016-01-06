defmodule LearnPhoenix.UserView do
  use LearnPhoenix.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, LearnPhoenix.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, LearnPhoenix.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      email: user.email,
      password_digest: user.password_digest,
      age: user.age,
      alias: user.alias,
      last_saw_at: user.last_saw_at}
  end
end
