-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

local M = {}

M.state = {
	board = { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	current_player = 1,
	winner = 0
}

return M