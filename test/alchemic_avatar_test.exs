defmodule AlchemicAvatarTest do
  use ExUnit.Case
  doctest AlchemicAvatar

  test "it generate a avatar" do
    filename = AlchemicAvatar.generate "ksz2k", 200
    assert File.exists?(filename)
  end
end
