defmodule Snackium.StoreFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Snackium.Store` context.
  """

  @doc """
  Generate a product.
  """
  def product_fixture(attrs \\ %{}) do
    {:ok, product} =
      attrs
      |> Enum.into(%{
        description: "some description",
        name: "some name",
        price: 120.5,
        stock: 42,
        type: "some type"
      })
      |> Snackium.Store.create_product()

    product
  end
end
