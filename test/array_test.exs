defmodule ArrayTest do
  use ExUnit.Case
  doctest Array

  test "should return true to two array without diff" do
    array1 = ~w(1 2 4 6 5 3)
    array2 = ~w(1 2 4 6 5 3)
    assert Array.includes_all?(array1, array2)
  end

  test "should return false to two array with diff" do
    array1 = ~w(1 2 4 6 5 3)
    array2 = ~w(1 2 4 6 5 5)
    refute Array.includes_all?(array1, array2)
  end
end
