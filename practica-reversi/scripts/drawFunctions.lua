function drawBoard(w, h)
  -- draws the board like this:
  -- for i = 1, columns - 1  do
  --   love.graphics.line(i * w / columns, 0, i * w / columns, h)
  -- end
  --
  -- for i = 1, rows - 1 do
  --   love.graphics.line(0, i * h / rows, w, i * h / rows)
  -- end
end

function drawGameBoardBoxes(gameBoardBoxes)
  -- draws ONLY the gameBoardBoxes that have a type different
  -- from "nil"
end
