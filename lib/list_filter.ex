defmodule ListFilter do
  require Integer

  def call(list) do
    Enum.count(list, fn x ->
      Integer.parse(x)
      |> handle_number()
    end)
  end

  defp handle_number({_, _} = parse_number), do: Integer.is_odd(elem(parse_number, 0))
  defp handle_number(:error), do: false
end
