--by geo_thedev
--you can remove this if you want i don't care

local CrateName = {}

CrateName.price = 5000 -- Price for the crate / egg / whatever

--add in items below, you can change the rarities / remove some
-- rarities have to match the the chances on line 35

CrateName.items = {

	["Exclusive"] = {
		
	};

	["Legendary"] = {
		
	};

	["Epic"] = {
		
	};
	
	["Uncommon"] = {
		
	};

	["Common"] = {
		
	};

}

-- Weighted selection
-- 100 total weight

CrateName.rarities = {
    ["Exclusive"] = 0.1;
    ["Legendary"] = 0.9;
    ["Epic"] = 9;
    ["Uncommon"] = 20;
    ["Common"] = 70;
}

CrateName.chooseRandomItem = function()
	local randomNumber = math.random(1,100)
	local counter = 0
	
	for rarity, weight in pairs(CrateName.rarities) do
		counter = counter + weight
		if randomNumber <= counter then
			
			local rarityTable = CrateName.items[rarity]
			local chosenItem = rarityTable[math.random(1,#rarityTable)]
			
			return chosenItem
		end
	end
end

return CrateName;