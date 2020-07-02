defmodule Array do
  def includes_all?(array1,array2) do
    Enum.all?(array1, &Enum.member?(array2,&1))
  end

  def similarity?(array1, array2) do
    Enum.filter(array1, &Enum.member?(array2,&1))
  end
end
