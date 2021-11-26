defmodule Darts do
  @type position :: {number, number}

  @spec distance_from_center(position :: position) :: integer
  def distance_from_center({x, y}) do
    :math.sqrt(:math.pow(x, 2) + :math.pow(y, 2))
  end

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position :: position) :: integer
  def score({x, y}) do
    distance = distance_from_center({x, y})
    cond do
      distance <= 1 -> 10
      distance <= 5 -> 5
      distance <= 10 -> 1
      true -> 0
    end
  end
end
