defmodule ExFizzbuzzTest do
  use ExUnit.Case
  doctest ExFizzbuzz

  test "return fizz when input 3 multi number without 15 multi number" do
    assert 1..100
    |> Stream.filter(&((rem(&1, 3) == 0) && !(rem(&1, 5) == 0)))
    |> Stream.map(&ExFizzbuzz.fizzbuzz/1)
    |> Enum.all?(&(&1 == "fizz"))

  end

  test "return fizz when input 5 multi number without 15 multi number" do
    assert 1..100
    |> Stream.filter(&((rem(&1, 5) == 0) && !(rem(&1, 3) == 0)))
    |> Stream.map(&ExFizzbuzz.fizzbuzz/1)
    |> Enum.all?(&(&1 == "buzz"))
  end

  test "return fizzbuzz when input 15 multi number" do
    assert 1..100
    |> Stream.filter(&(rem(&1, 15) == 0))
    |> Stream.map(&ExFizzbuzz.fizzbuzz/1)
    |> Enum.all?(&(&1 == "fizzbuzz"))
  end

  test "return numstring when input number without 3 or 5 multi number" do
    assert 1..100
    |> Stream.filter(&(!rem(&1, 3) == 0 && !rem(&1, 5) == 0))
    |> Stream.map(&ExFizzbuzz.fizzbuzz/1)
    |> Enum.all?(&(&1 == to_string(&1)))
  end

end
