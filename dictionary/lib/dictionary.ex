defmodule Dictionary do
  @moduledoc """
  Documentation for Dictionary.
  """


  @doc """
  Random Word

  Generates a random word by grabbing a random word from word list

  """
  def random_word do
      word_list()
      |> Enum.random
  end



  @doc """
  Word List

  Generates a list of words by reading from word list at assets/words.txt.
  Throws an exception if failure.

  """
  def word_list do

      # Read from word list, and split into
      "../assets/words.txt"
      |> Path.expand(__DIR__)
      |> File.read!
      |> String.split(~r/\n/)
  end
end
