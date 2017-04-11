defmodule PostApp.User do
  use PostApp.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :bio, :string

    has_many :posts, PostApp.Post
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
    |> validate_length(:bio, max: 100)
    |> validate_format(:email, ~r/@/)
  end
end
