defmodule PostApp.Post do
  use PostApp.Web, :model

  schema "posts" do
    field :description, :string
    field :likes, :integer
    belongs_to :user, PostApp.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:description, :likes, :user_id])
    |> validate_required([:description, :likes, :user_id])
  end
end
