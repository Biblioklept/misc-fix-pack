-- remove the ugly Epic MM no mod string when viewing another player's lobby
local ir_orig_CrimeNetContractGui_init = CrimeNetContractGui.init

function CrimeNetContractGui:init(ws, fullscreen_ws, node)
	if node:parameters().menu_component_data.mods == "7d66a433be3a1fe2" then
		node:parameters().menu_component_data.mods = ""
	end
	return ir_orig_CrimeNetContractGui_init(self, ws, fullscreen_ws, node)
end
