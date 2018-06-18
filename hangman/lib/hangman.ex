defmodule Hangman do
  @moduledoc """
  Documentation for Hangman.
  """

  alias Hangman.Game

  defdelegate new_game(), to: Game
end
