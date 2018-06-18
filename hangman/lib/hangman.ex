defmodule Hangman do
  @moduledoc """
  Documentation for Hangman.
  """

  @doc """
  Hello world.

  """
  def hello do
    IO.puts Dictionary.random_word()
  end
end
