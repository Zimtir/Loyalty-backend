defmodule Database.Schemas.Transaction do
  use Ecto.Schema

  schema "transactions" do
    field :to, :binary_id
    field :from, :binary_id
    field :code, :string
    field :debit, :integer
    field :credit, :integer
    field :created_at, :date
  end
end
