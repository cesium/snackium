defmodule Snackium.Store.Product do
  use Ecto.Schema
  import Ecto.Changeset

  @types ~w(cookie drink warm_beverage chocolate other)a

  schema "products" do
    field :description, :string
    field :name, :string
    field :price, :integer
    field :stock, :integer
    field :type, Ecto.Enum, values: @types

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :description, :price, :stock, :type])
    |> validate_required([:name, :description, :price, :stock, :type])
  end
end
