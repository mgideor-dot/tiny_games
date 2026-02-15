local M = {}

function M.step(state, command)
	if command == nil then return { ok = false, reason = "Command is empty or not existent" } end --wenn kein command in der Liste ist, tue nichts und return false

	if command.type == "PLACE" then
		print("Place it")
		--check, if board position is empty
		if state.board[command.index] ~= 0 then return { ok = false, reason = "Board Position is not empty" } end
		--add player id into board
		state.board[command.index] = state.current_player
		--check win state

		local present_data = { ok = true, placed_index = 5, player = 1, winner = 0, cursor = 0, draw = false } --so soll der Aufbau aussehen
		return present_data
	end
	--wenn command_type = "PLACE" index
	--teste, ob das feld frei ist, wenn nicht, return und ändere nichts, ansonsten füge das symbol für den Spieler ein 
	--prüfe gewinn, setze gewinn

	return { ok = false, reason = "Something Bad is happening" } --so soll der Aufbau aussehen
end

return M