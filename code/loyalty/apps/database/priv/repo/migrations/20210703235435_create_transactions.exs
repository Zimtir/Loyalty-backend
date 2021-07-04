defmodule Database.Repo.Migrations.CreateTransactions do
  use Ecto.Migration

  def change do
    create table(:transactions) do
      add :to, references(:users)
      add :from, references(:users)
      add :code, :string, default: ""
      add :created_at, :utc_datetime
      add :debit, :integer,  default: 0
      add :credit, :integer,  default: 0
    end
  end
end
