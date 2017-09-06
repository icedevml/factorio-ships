
function find_all_entities(surface, filter)
    local result = {}

	for chunk in surface.get_chunks() do
		filter.area = { left_top = { x = chunk.x * 32, y = chunk.y * 32 }, right_bottom = {x = (chunk.x + 1) * 32, y = (chunk.y + 1) * 32}}
		local entities = surface.find_entities_filtered(filter)
		for _, entity in pairs(entities) do
			table.insert(result, entity)
		end
	end
    return result
end


function iterateAllEntities(surface, func)
	local filter = {}
	for chunk in surface.get_chunks() do
		filter.area = { left_top = { x = chunk.x * 32, y = chunk.y * 32 }, right_bottom = {x = (chunk.x + 1) * 32, y = (chunk.y + 1) * 32}}
		local entities = surface.find_entities_filtered(filter)
		for _, entity in pairs(entities) do
			func(entity)
		end
	end
end


function iterateFiltered(surface, filter, func)
	local entities = surface.find_entities_filtered(filter)
	for _, entity in pairs(entities) do
		func(entity)
	end
end


function printToAll(text)
	for i,player in pairs(game.players) do -- for loop
		player.print(tostring(text))
	end
end


function calculateAveragePositionFromEntities(entities)
	local num = #entities
	
	local avgx = 0.0;
	local avgy = 0.0;
	local t = 1;
	for _,ent in pairs(entities) do
		avgx = avgx + (ent.position.x - avgx) / t;
		avgy = avgy + (ent.position.y - avgy) / t;
		--log('iteration ' .. _ ..' avgx = ' .. avgx)
		t = t+1;
	end
	
	--assert( avgx or avgy or num==0, "calculated 0, why")
	--log('i calculated ' .. avgx .. ',' .. avgy)
	
	return {x=avgx,y=avgy}
end


function getBoundingBox(position, radius)
  return {{position.x-radius, position.y-radius},{position.x+radius, position.y+radius}}
end