function drawBoard()
  -- draws the board like this:
  love.graphics.setColor(255, 255, 255)

  for i = 1, 8 - 1  do
    love.graphics.line(i * w / 8, 0, i * w / 8, h)
  end

  for i = 1, 8 - 1 do
    love.graphics.line(0, i * h / 8, w, i * h / 8)
  end
end

function drawGameBoardBoxes()
  -- draws ONLY the gameBoardBoxes that have a type different
  -- from "nil"
  -- love.graphics.circle("fill", 300, 300, 50, 100)
  for rowKey, row in pairs(gameBoardBoxes) do
    -- gameBoardBoxes[rowKey]
    for colKey, disk in pairs(row) do
      -- gameBoardBoxes[rowKey][colKey] = disk
      if disk.diskType ~= "nil" then
        if disk.diskType == "light" then
          love.graphics.setColor(255, 255, 255)
        elseif disk.diskType == "dark" then
          love.graphics.setColor(0, 0, 0)
        end
        love.graphics.circle("fill", disk.x, disk.y, 40)
      end
    end
  end
end
