defmodule PostApp.User do
  use PostApp.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :bio, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :email, :bio])
    |> validate_required([:name, :email])
    |> validate_length(:bio, min: 2)
  end
end
