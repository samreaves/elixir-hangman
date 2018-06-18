defmodule Hangman.Game do
  @moduledoc """
  Documentation for Game.
  """

  # game state struct
  defstruct [
    turns_left: 7,
    game_state: :initializing,
    letters: []
  ]



  @doc """
  New Game

  """
  def new_game do
    %Hangman.Game{
      letters: Dictionary.random_word |> String.codepoints
    }
  end
end
