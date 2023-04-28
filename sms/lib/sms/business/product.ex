defmodule Sms.Business.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :inventory_count, :integer
    field :name, :string
    field :retail_price, :float
    field :supplier, :string
    field :wholesale_price, :float
    field :store_id, :id

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :supplier, :wholesale_price, :retail_price, :inventory_count])
    |> validate_required([:name, :supplier, :wholesale_price, :retail_price, :inventory_count])
  end
end
