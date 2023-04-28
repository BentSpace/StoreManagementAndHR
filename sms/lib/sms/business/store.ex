defmodule Sms.Business.Store do
  use Ecto.Schema
  import Ecto.Changeset

  schema "stores" do
    field :city, :string
    field :state, :string
    field :store_id, :integer
    field :street_address, :string
    field :zipcode, :string

    timestamps()
  end

  @doc false
  def changeset(store, attrs) do
    store
    |> cast(attrs, [:store_id, :street_address, :city, :state, :zipcode])
    |> validate_required([:store_id, :street_address, :city, :state, :zipcode])
  end
end
