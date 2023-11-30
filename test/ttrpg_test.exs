defmodule TtrpgTest do
  use ExUnit.Case
  doctest Ttrpg

  test "greets the world" do
    assert Ttrpg.hello() == :world
  end
end
