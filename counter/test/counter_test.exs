defmodule CounterTest do
  use ExUnit.Case

  test "inc increments an integer value" do
    assert Counter.Core.incr(1) == 2
  end
end
