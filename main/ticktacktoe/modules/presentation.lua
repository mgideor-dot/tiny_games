local grid_mod = require("main.shared.modules.grid")
M = {}

function M.new()
	local present = {
		board_tiles = {}
	}
	return present
end

function M.create_board(present, grid, tile_count)
	for i = 1, tile_count, 1
	do
		local pos = grid_mod.get_position_from_id(grid, i)
		present.board_tiles[#present.board_tiles+1] = factory.create("#tiles", pos)
	end
end

function M.apply(presentation, present_data)
end


return M