defmodule Explorer.Repo.Migrations.AddSuaveFields do
  @moduledoc false
  use Ecto.Migration

  def change do
    alter table(:transactions) do
      add(:confidential_compute_result, :binary)
      add(:wrapped, :jsonb)
    end
  end
end
