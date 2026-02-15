local grid = require("main.shared.modules.grid") 
local constants = require("main.ticktacktoe.modules.constants")


local M = {}

function M.handle_input(self,action_id, action)
	--handle click input
	if action_id == constants.INPUT_TOUCH and action.released then 
		--check, if this is a click on the board, not outside
		local touch_world_position = camera.screen_xy_to_world(action.screen_x, action.screen_y, cam_id)
		local result = grid_mod.is_point_in_grid(self.grid, touch_world_position)
		if not result then return end
		local new_index = grid.get_id_from_position(self.grid, touch_world_position)
		msg.post(".", constants.MSG_COMMAND, {cmd = { type = "PLACE", index = new_index }})
	end
	--handle another input
end

return M