defmodule Database.Schemas.Users do
  use Ecto.Schema

  schema "users" do
    field :email, :string
    field :phone_number, :string
    field :language, :string
    field :brand_id, :integer
    field :created_at, :date
    field :is_admin, :boolean
  end
end
