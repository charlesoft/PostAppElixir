defmodule PostApp.UserTest do
  use PostApp.ModelCase

  alias PostApp.User

  @valid_attrs %{bio: "some content", email: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end

  # test "the bio info is not required" do
  #   changeset = User.changeset(%User{}, Map.delete(@valid_attrs, :bio))
  #   assert changeset.valid?
  # end
end
