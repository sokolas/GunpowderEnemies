function OnPlayerSpawned(player_entity)
	EntityAddComponent(player_entity, "LuaComponent", {
	    script_source_file="mods/GunpowderEnemies/files/logic.lua",
		execute_on_added="1",
		execute_every_n_frame="30"
	})
end
