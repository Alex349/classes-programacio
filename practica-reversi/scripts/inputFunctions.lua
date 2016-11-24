function getDrawHint()
  if love.keyboard.isDown("H") then
    drawHint = true;
  else
    drawHint = false;
  end
  return drawHint
end
