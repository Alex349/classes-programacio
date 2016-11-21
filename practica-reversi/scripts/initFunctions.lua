function initGameBoardBox(x, y)
  local gameBoardBox;
  -- Crear una gameBoardBox al punt x, y
  -- ha de tindre com a atributs
  -- diskType (per defecte "nil")
  -- x (centre de la casella a la pantalla)
  -- x = w / amplada del tauler - la meitat de la amplada de la casella
  -- y = h / alçada del tauler - la meitat de la alçada de la casella
  return gameBoardBox;
end

function initGameBoardBoxes ()
  gameBoardBoxes = {}
  -- implementa la inicialitzacio de gameBoardBoxes
  -- no cal retornar res, tan sols plenar gameBoardBoxes
  -- gameBoardBoxes[i] -> taula[j] -> elem
  -- hen de fer un for i cridar a initGameBoardBox per als valors i, j del for i assignarho a gameBoardBoxes[i][j]
  -- gameBoardBoxes[4][4].diskType = "dark"
  -- gameBoardBoxes[4][5].diskType = "light"
  -- gameBoardBoxes[5][4].diskType = "light"
  -- gameBoardBoxes[5][5].diskType = "dark"
  return gameBoardBoxes
end
