defmodule Snackium.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :description, :text
      add :price, :integer
      add :stock, :integer
      add :type, :string

      timestamps()
    end
  end
end
