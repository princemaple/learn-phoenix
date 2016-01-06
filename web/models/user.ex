defmodule LearnPhoenix.User do
  use LearnPhoenix.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :password_digest, :string
    field :age, :integer
    field :alias, :string
    field :last_saw_at, Ecto.DateTime

    timestamps
  end

  @required_fields ~w(name email password_digest age alias last_saw_at)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
