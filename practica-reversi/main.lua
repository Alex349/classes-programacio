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
w, h = 0, 0
gameBoardBoxes = {}

local black_player, white_player = "dark", "light"

local current_player = black_player
local init, choosing_play, game_over = 1, 2, 3
local state = init

drawHint = false;
-- löve

function love.load()
  w, h = love.graphics.getDimensions()
  love.graphics.setBackgroundColor(0, 150, 0)
  -- 8 x 8 board initialised with two white disks
  -- and two black ones at the center
  -- we also have information about the "center"
  -- of the board boxes in screen coordinates
  gameBoardBoxes = initGameBoardBoxes()
  state = choosing_play
end

function love.update(dt)
end

function love.mousepressed(x, y, button, istouch)

  if(state == choosing_play and button == 'l') then
    boardy = math.ceil(y / (h/8))
    boardx = math.ceil(x / (w/8))
    mouseReleased = true;
    -- if(isValidMove(current_player, boardy, boardx)) then
    --   checkCaptures(current_player, boardy, boardx)
    --   current_player = getReverseDiskType(current_player)
    -- end
  end

end

function love.draw()
  drawBoard()
  -- if(drawHint) then
  --   hintMovement(diskType)
  -- end
  drawGameBoardBoxes()
end
