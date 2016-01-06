defmodule LearnPhoenix.Repo.Migrations.CreateEntry do
  use Ecto.Migration

  def change do
    create table(:entries) do
      add :title, :string
      add :content, :text

      timestamps
    end

  end
end
