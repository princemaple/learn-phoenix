defmodule LearnPhoenix.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :password_digest, :string
      add :age, :integer
      add :alias, :string
      add :last_saw_at, :datetime

      timestamps
    end

  end
end
