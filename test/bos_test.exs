defmodule BosTest do
  use ExUnit.Case
  doctest Bos

  test "greets the world" do
    assert Bos.hello() == :world
  end
end
