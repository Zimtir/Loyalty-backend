defmodule Database.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :created_at, :utc_datetime
      add :brand_id, :integer
      add :email, :string, default: ""
      add :phone_number, :string, default: ""
      add :language, :string, default: ""
      add :is_admin, :boolean, default: false
    end
  end
end
