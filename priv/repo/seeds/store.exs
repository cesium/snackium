defmodule Snackium.Repo.Seeds.Store do
  alias Snackium.Repo

  alias Snackium.Store.Product

  def run do
    seed_products()
  end

  def seed_products do
    case Repo.all(Product) do
      [] ->
        [
          %{
            name: "Chips Ahoy!",
            description: "https://www.youtube.com/watch?v=BYjR6yuAMLc",
            price: 60,
            stock: 100,
            type: :cookie,
          },
          %{
            name: "Oreos",
            description: "https://www.youtube.com/watch?v=BYjR6yuAMLc",
            price: 30,
            stock: 100,
            type: :cookie,
          },
          %{
            name: "Oreos recheadas",
            description: "https://www.youtube.com/watch?v=BYjR6yuAMLc",
            price: 40,
            stock: 100,
            type: :cookie,
          },
          %{
            name: "Filipinos",
            description: "https://www.youtube.com/watch?v=BYjR6yuAMLc",
            price: 30,
            stock: 100,
            type: :cookie,
          },
          %{
            name: "Water",
            description: "https://www.youtube.com/watch?v=xvFZjo5PgG0",
            price: 10,
            stock: 100,
            type: :drink,
          },
          %{
            name: "Coca-Cola",
            description: "https://www.youtube.com/watch?v=xvFZjo5PgG0",
            price: 60,
            stock: 100,
            type: :drink,
          },
          %{
            name: "Seven-Up",
            description: "https://www.youtube.com/watch?v=xvFZjo5PgG0",
            price: 60,
            stock: 100,
            type: :drink,
          },
          %{
            name: "Sumol Ananas",
            description: "https://www.youtube.com/watch?v=xvFZjo5PgG0",
            price: 60,
            stock: 100,
            type: :drink,
          },
          %{
            name: "Sumol Laranja",
            description: "https://www.youtube.com/watch?v=xvFZjo5PgG0",
            price: 60,
            stock: 100,
            type: :drink,
          },
          %{
            name: "Fanta Laranja",
            description: "https://www.youtube.com/watch?v=xvFZjo5PgG0",
            price: 60,
            stock: 100,
            type: :drink,
          },
          %{
            name: "Frize",
            description: "https://www.youtube.com/watch?v=xvFZjo5PgG0",
            price: 60,
            stock: 100,
            type: :drink,
          },
          %{
            name: "Kinder Bueno",
            description: "https://www.youtube.com/watch?v=xvFZjo5PgG0",
            price: 50,
            stock: 100,
            type: :chocolate,
          },
          %{
            name: "Kit-Kat",
            description: "https://www.youtube.com/watch?v=xvFZjo5PgG0",
            price: 50,
            stock: 100,
            type: :chocolate,
          },
          %{
            name: "Reese's pieces",
            description: "https://www.youtube.com/watch?v=xvFZjo5PgG0",
            price: 80,
            stock: 100,
            type: :chocolate,
          },
          %{
            name: "Caf??",
            description: "https://www.youtube.com/watch?v=xvFZjo5PgG0",
            price: 50,
            stock: 100,
            type: :warm_beverage,
          },
          %{
            name: "Ch??",
            description: "https://www.youtube.com/watch?v=xvFZjo5PgG0",
            price: 15,
            stock: 100,
            type: :warm_beverage,
          }
        ]
        |> Enum.each(&insert_product/1)

      _ ->
        Mix.shell().error("Found products, aborting seeding products.")
    end
  end

  defp insert_product(data) do
    %Product{}
    |> Product.changeset(data)
    |> Repo.insert!()
  end
end

Snackium.Repo.Seeds.Store.run()
