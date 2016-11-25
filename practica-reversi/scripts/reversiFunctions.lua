function getReverseDiskType(diskType)
  -- This function returns the opposite disk type to diskType
  -- If disktype is "light", it returns "dark"
  -- if disktype is "dark", it returns "light"
  if diskType == "light" then
    return "dark"
  end
  if diskType == "dark" then
    return "light"
  end
end

function checkHorizontalCapture(diskType, startRow, startColumn)
  -- This function returns if it's possible to make an horizontal capture in the row given by startrow
  -- Remember that a capture movement is possible if there are opposite disk types bewteen two own disk types
  -- If an horizontal capture is possible, the function returns:
    -- True
    -- start game box (row, column) of the capture
    -- end game box (row, column) of the capture
  -- If there is no horizontal capture in the row, the function returns
    -- False
  -- mat = {
  -- {2, 2, 2, 2}
  -- }
  -- mat[1][1]
  -- gameBoardBoxes[startRow]

    firstDisk = false
    lastDisk = false
    boxStart = {}
    boxEnd = {}
    
     for i = 1,8 do
      
      v = gameBoardBoxes [startRow][i]
      
      if v.diskType == diskType then
      firstDisk = true
      boxStart.x = i
      boxStart.y = startRow
      
    end
    
      if v.diskType == "nil" then
        firstDisk = false
        end
      
      if v.diskType == diskType and firstDisk == true then
        lastDisk = true
        boxEnd.x = i
        boxEnd.y = startRow
        return true, boxStart, boxEnd
        end
      
    end
 return false
end

function checkVerticalCapture(diskType, startRow, startColumn)
    -- This function returns if it's possible to make a vertical capture in the column given by startColumn
    -- Remember that a capture movement is possible if there are opposite disk types bewteen two own disk types
    firstDisk = false
    lastDisk = false
    boxStart = {}
    boxEnd = {}
    -- If a vertical capture is possible, the function returns:
    for i = 1,8 do
      
      v = gameBoardBoxes [i][startColumn]
      
      if v.diskType == diskType then
      firstDisk = true
      boxStart.x = startColumn
      boxStart.y = i
      
    end
    
      if v.diskType == "nil" then
        firstDisk = false
      end
      
      if v.diskType == diskType and firstDisk == true then
        lastDisk = true
        boxEnd.x = startColumn
        boxEnd.y = i
        return true, boxStart, boxEnd
        end
      
    end
      -- True
      -- start game box (row, column) of the capture
      -- end game box (row, column) of the capture
    -- If there is no vertical capture in the column, the function returns
    return false 
      -- False
end

function checkDiagonalCapture(diskType, startRow, startColumn)
  
    firstDisk = false
    lastDisk = false
    boxStart = {}
    boxEnd = {}
    -- This function returns if it's possible to make a diagonl capture in the column given by startRow, startColumn
    -- Remember that a capture movement is possible if there are opposite disk types bewteen two own disk types
    -- If a diagonal capture is possible, the function returns:
      -- True
      -- start game box (row, column) of the capture
      -- end game box (row, column) of the capture
      for i = 1,8 do
      
      v = gameBoardBoxes [i][i]
      
      if v.diskType == diskType then
      firstDisk = true
      boxStart.x = i
      boxStart.y = i
      
    end
    
      if v.diskType == "nil" then
        firstDisk = false
      end
      
      if v.diskType == diskType and firstDisk == true then
        lastDisk = true
        boxEnd.x = i
        boxEnd.y = i
        return true, boxStart, boxEnd
        end
      
    end
    -- If there is no diagonal capture in the column, the function returns
      -- False
      return false
end

function isValidMove(diskType, startRow, startColumn)
    -- This function returns if is a diskType placed in (startRow, startColumn) is a valid move.
    -- Remember that a move is valid only if it causes capture of opposite disks.
    -- Use older functions to check it
end

function addTokenToGameBoard(tokenType, row, column)
  -- This function stores the tokenType token to the game board box given by row, column
  -- Remember that we use the external table gameBoardBoxes to store the game board map

  -- If token in (row, column) is nil
  if (not(gameBoardBoxes[row][column].tokenType)) then
    -- We just put the tokenType to the field
    gameBoardBoxes[row][column].tokenType = tokenType
  end
end

function removeDiskFromGameBoard(row, column)
    -- This function removes the disk placed in (row, column) of the game gameboard
    -- The function returns nothing
    -- You can remove a disk from the game board when placed before (with the addToken function) but further checked that it's not a valid move
    -- If you do so, DON'T draw the gameboard with the new disk before checking valid moves
end

function validMoves(diskType)
    -- This function returns a table of gameboxes (row, column) that store all the valid movements for diskType
end

function hintMovement(diskType)
    -- This function shows all the valid moves for diskType
    -- It can be called by pressing and holding a key ("H" for example), to help the player
end

function isWinner()
    -- This function returns if there is a winner.
    -- Remember that the game ends when there are no valid moves for both players.
    -- If the game ends, function counts diskTypes of both players and returns the winner
    -- If the game can continue, the function returns nil
end

function checkCaptures(diskType, startRow, startColumn)
  
    addTokenToGameBoard(diskType, startRow, startColumn)

    isDiagonalValid, startBox, endBox = checkDiagonalCapture(diskType, startRow, startColumn)

    if(isDiagonalValid)then
      makeDiagonalCapture(diskType, startBox, endBox)
    end

    -- VERTICAL
    isVerticalValid, startBox, endBox = checkVerticalCapture(diskType, startRow, startColumn)

    if(isVerticalValid)then
      makeVerticalCapture(diskType, startBox, endBox)
    end

    -- HORIZONTAL
    isHorizontalValid, startBox, endBox = checkHorizontalCapture(diskType, startRow, startColumn)

    if(isHorizontalValid)then
      makeHorizontalCapture(diskType, startBox, endBox)
    end
end
