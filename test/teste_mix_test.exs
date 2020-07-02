defmodule TesteMixTest do
  use ExUnit.Case
  doctest TesteMix

  test "greets the world" do
    assert TesteMix.hello() == :world
  end
end
