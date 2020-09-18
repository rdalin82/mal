defmodule Mix.Tasks.Step0Repl do
  def run(_), do: loop()

  defp loop do
    read()
    |> eval()
    |> print()
    loop()
  end

  defp read() do
    IO.write("user> ")
    input = IO.read(:stdio, :line)
    input
  end

  defp eval(:eof), do: exit(:normal)

  defp eval(input) do
    input
  end

  defp print(input) do
    IO.write(input)
  end

end
