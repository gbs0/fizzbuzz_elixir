defmodule Fizzbuzz do
  def list(file_name) do
    case File.read(file_name) do
      {:ok, result} -> Enum.map(String.split(result, ","), fn number -> String.to_integer(number) end)
      {:error, reason} -> reason
    end
  end
end
