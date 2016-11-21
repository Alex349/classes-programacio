dofile("scripts/reversiFunctions.lua")
dofile("scripts/initFunctions.lua")
dofile("scripts/drawFunctions.lua")

-- getReverseDiskType
-- checkHorizontalCapture
-- checkVerticalCapture
-- checkDiagonalCapture
-- isValidMove
-- removeDiskFromGameBoard
-- validMoves
-- hintMovement
-- isWinner
-- initGameBoardBox
-- gameBoardBoxes
local w, h
gameBoardBoxes = {}

-- löve

function love.load()
  w, h = love.graphics.getDimensions()
  love.graphics.setBackgroundColor(0, 150, 0)
  gameBoardBoxes = initGameBoardBoxes()
end

function love.update(dt)
  if love.mouse.isDown(2) then
    mousex, mousey = love.mouse.getPosition()
    print(mousex, mousey)
  end
end

function love.draw()
  drawBoard(w,h)
  drawGameBoardBoxes(gameBoardBoxes)
end
