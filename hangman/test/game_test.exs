defmodule GameTest do
  use ExUnit.Case

  alias Hangman.Game

  test "new_game returns fresh game state" do
    game = Game.new_game()

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
    assert Regex.run(~r/[a-z]/, Enum.join(game.letters))
  end
end
