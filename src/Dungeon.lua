require "Level"
---------------------------------------------------------------------------
-- - - - - - - - - - - - - - - Dungeon object - - - - - - - - - - - - - - - 
---------------------------------------------------------------------------

-- Dungeon objects have several levels (consisting of Level objects) which
-- together represent a whole dungeon.

Dungeon = {levels, height, width}
Dungeon.__index = Dungeon

function Dungeon:new(nrOfLevels, height, width)
  local dungeon = {}
  
  for i=1,nrOfLevels do
    newLevel = Level:new(height, width)
    newLevel:setLevelNr(i)
    dungeon[i] = newLevel
  end
  
  setmetatable(dungeon, Dungeon)
  return dungeon
end

function Dungeon:printDungeon()
  for i=1,#dungeon do
    print()
    dungeon[i]:printLevel()
    print()
  end
end