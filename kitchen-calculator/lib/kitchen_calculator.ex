defmodule KitchenCalculator do
  def get_volume({_, volume}), do: volume;

  def to_milliliter({unit, volume}) do
    {:milliliter, case unit do
      :milliliter -> volume
      :cup -> volume * 240
      :fluid_ounce -> volume * 30
      :teaspoon -> volume * 5
      :tablespoon -> volume * 15
    end}
  end

  def from_milliliter({:milliliter, volume}, unit) do
    {unit, case unit do
      :milliliter -> volume
      :cup -> volume / 240
      :fluid_ounce -> volume / 30
      :teaspoon -> volume / 5
      :tablespoon -> volume / 15
    end}
  end

  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
