Code.require_file "../test_helper.exs", __FILE__

defmodule ElixirSampleTest do
  use ExUnit.Case

  test "the truth" do
    assert true
  end

  test "finding a square for a given number" do
    assert ElixirSample.compute_sq(3) == 9
  end

end
