defmodule ArrayTest do
  use ExUnit.Case
  doctest Array

  test "should return true to two array without diff" do
    array1 = ~w(1 2 4 6 5 3)
    array2 = ~w(1 2 4 6 5 3)

    assert Array.includes_all?(array1, array2)
  end

  test "should return false to two array with diff" do
    array1 = ~W(1 2 4 6 5 3)
    array2 = ~W(1 2 4 6 5 5)

    refute Array.includes_all?(array1, array2)
  end

  test "should return similarity between two arrays" do
    array1 = [1,2, 4, 6, 50, 90]
    array2 = [1, 2, 9, 20, 5, 3]
    expected = [1,2]

    result = Array.similarity?(array1, array2)

    assert result === expected
  end

  test "should not return similarity between two arrays" do
    array1 = [100,2, 4, 6, 50, 90]
    array2 = [1, 0, 9, 20, 5, 3]
    result = Array.similarity?(array1, array2)

    assert result === []
  end

end
