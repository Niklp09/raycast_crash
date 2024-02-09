minetest.register_chatcommand("crash", {
	params = "",
	func = function(name)
		local player = minetest.get_player_by_name(name)

		local look_dir = player:get_look_dir()
		local p1 = vector.add(player:get_pos(), player:get_eye_offset())
		p1.y = p1.y + player:get_properties().eye_height
		local p2 = vector.add(p1, vector.multiply(look_dir, 7))

		local raycast = minetest.raycast(p1, p2, false)
		raycast:next()
	end
})