local M = {}

function M.step(state, commands, dt)
	if (#commands == 0) then return false end --wenn kein command in der Liste ist, tue nichts und return false

	--wenn command_type = "PLACE" index
	--teste, ob das feld frei ist, wenn nicht, return und ändere nichts, ansonsten füge das symbol für den Spieler ein 
	--prüfe gewinn, setze gewinn
	
	return true	
end

return M