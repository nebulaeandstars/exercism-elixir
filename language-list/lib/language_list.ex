defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove([_ | tail]) do
    tail
  end

  def first([head | _]) do
    head
  end

  def count(list) do
    case list do
      [] -> 0
      [_ | tail] -> 1 + count(tail)
    end
  end

  def exciting_list?(list) do
    case list do
      [] -> false
      ["Elixir" | _] -> true
      [_ | tail] -> exciting_list?(tail)
    end
  end
end
