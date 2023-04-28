defmodule Sms.BusinessFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Sms.Business` context.
  """

  @doc """
  Generate a store.
  """
  def store_fixture(attrs \\ %{}) do
    {:ok, store} =
      attrs
      |> Enum.into(%{
        city: "some city",
        state: "some state",
        store_id: 42,
        street_address: "some street_address",
        zipcode: "some zipcode"
      })
      |> Sms.Business.create_store()

    store
  end

  @doc """
  Generate a product.
  """
  def product_fixture(attrs \\ %{}) do
    {:ok, product} =
      attrs
      |> Enum.into(%{
        inventory_count: 42,
        name: "some name",
        retail_price: 120.5,
        supplier: "some supplier",
        wholesale_price: 120.5
      })
      |> Sms.Business.create_product()

    product
  end
end
