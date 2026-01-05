SHOP = {}

function SHOP:load()
	ObjectPlant = {}
	Coinage = 10
	Plant1PlaceX = -5000
	Plant1PlaceY = -5000
	BoughtHyssop = false
	BoughtCannaLiles = false
	BoughtBloodroot = false
	BoughtAnemoe = false
	BoughtSnowdrop = false
	PlantedSize = 10
	noPlacement = false
	Buying = false

	MaximumPlantAmount = 0
end

function plantsCollide(p1, p2, radius)
	local dx = p1.x - p2.x
	local dy = p1.y - p2.y
	return (dx * dx + dy * dy) < (radius * radius)
end

function SHOP:update(dt)
	if not Paused then
		--
		--
		--
		--
		--
		--
		--
		if
			MouseX > WindowWidth * 0.68
			and MouseX < WindowWidth * 0.83
			and MouseY > WindowHeight * 0.155
			and MouseY < WindowHeight * 0.355
		then
			Plant1PlaceX = MouseX
			Plant1PlaceY = MouseY
			if RightClicking and not BoughtHyssop and not WateringMode then
				if Coinage >= 5 then
					CreateAPlant("Hyssop")
					Coinage = Coinage - 5
					BoughtHyssop = true
					Buying = true
				end
			end
		else
			if MouseX < WindowWidth * 0.72 then
				if BoughtHyssop then
					Plant1PlaceX = MouseX
					Plant1PlaceY = MouseY
				end
				if RightClicking and BoughtHyssop and not noPlacement then
					BoughtHyssop = false
					Buying = false
					for i, v in ipairs(ObjectPlant) do
						v.placed = true
					end
				end

				for i, v in ipairs(ObjectPlant) do
					local radius = v.size + 10
					local p1 = ObjectPlant[i]
					for j = i - 1, 1, -1 do
						local p2 = ObjectPlant[j]
						if plantsCollide(p1, p2, radius) then
							noPlacement = true
							break
						else
							noPlacement = false
						end
					end
				end
			end
		end

		--
		--
		--
		--
		--
		--
		--
		--
		if
			MouseX > WindowWidth * 0.68
			and MouseX < WindowWidth * 0.83
			and MouseY > WindowHeight * 0.365
			and MouseY < WindowHeight * 0.565
		then
			Plant1PlaceX = MouseX
			Plant1PlaceY = MouseY
			if RightClicking and not BoughtCannaLiles and not WateringMode then
				if Coinage >= 40 then
					CreateAPlant("Canna Liles")
					Coinage = Coinage - 40
					BoughtCannaLiles = true
					Buying = true
				end
			end
		else
			if MouseX < WindowWidth * 0.72 then
				if BoughtCannaLiles then
					Plant1PlaceX = MouseX
					Plant1PlaceY = MouseY
				end
				if RightClicking and BoughtCannaLiles and not noPlacement then
					BoughtCannaLiles = false
					Buying = false
					for i, v in ipairs(ObjectPlant) do
						v.placed = true
					end
				end

				for i, v in ipairs(ObjectPlant) do
					local radius = v.size + 10
					local p1 = ObjectPlant[i]
					for j = i - 1, 1, -1 do
						local p2 = ObjectPlant[j]
						if plantsCollide(p1, p2, radius) then
							noPlacement = true
							break
						else
							noPlacement = false
						end
					end
				end
			end
		end
		--
		--
		--
		--
		--
		--
		--
		--
		if
			MouseX > WindowWidth * 0.68
			and MouseX < WindowWidth * 0.83
			and MouseY > WindowHeight * 0.575
			and MouseY < WindowHeight * 0.775
		then
			Plant1PlaceX = MouseX
			Plant1PlaceY = MouseY
			if RightClicking and not BoughtAnemoe and not WateringMode then
				if Coinage >= 40 then
					CreateAPlant("Anemoe")
					Coinage = Coinage - 40
					BoughtAnemoe = true
					Buying = true
				end
			end
		else
			if MouseX < WindowWidth * 0.72 then
				if BoughtAnemoe then
					Plant1PlaceX = MouseX
					Plant1PlaceY = MouseY
				end
				if RightClicking and BoughtAnemoe and not noPlacement then
					BoughtAnemoe = false
					Buying = false
					for i, v in ipairs(ObjectPlant) do
						v.placed = true
					end
				end

				for i, v in ipairs(ObjectPlant) do
					local radius = v.size + 10
					local p1 = ObjectPlant[i]
					for j = i - 1, 1, -1 do
						local p2 = ObjectPlant[j]
						if plantsCollide(p1, p2, radius) then
							noPlacement = true
							break
						else
							noPlacement = false
						end
					end
				end
			end
		end
		--
		--
		--
		--
		--
		--
		--
		--
		if
			MouseX > WindowWidth * 0.68
			and MouseX < WindowWidth * 0.83
			and MouseY > WindowHeight * 0.785
			and MouseY < WindowHeight * 0.985
		then
			Plant1PlaceX = MouseX
			Plant1PlaceY = MouseY
			if RightClicking and not BoughtBloodroot and not WateringMode then
				if Coinage >= 80 then
					CreateAPlant("Bloodroot")
					Coinage = Coinage - 80
					BoughtBloodroot = true
					Buying = true
				end
			end
		else
			if MouseX < WindowWidth * 0.72 then
				if BoughtBloodroot then
					Plant1PlaceX = MouseX
					Plant1PlaceY = MouseY
				end
				if RightClicking and BoughtBloodroot and not noPlacement then
					BoughtBloodroot = false
					Buying = false
					for i, v in ipairs(ObjectPlant) do
						v.placed = true
					end
				end

				for i, v in ipairs(ObjectPlant) do
					local radius = v.size + 10
					local p1 = ObjectPlant[i]
					for j = i - 1, 1, -1 do
						local p2 = ObjectPlant[j]
						if plantsCollide(p1, p2, radius) then
							noPlacement = true
							break
						else
							noPlacement = false
						end
					end
				end
			end
		end
		--
		--
		--
		--
		--
		--
		--
		--
		if
			MouseX > WindowWidth * 0.84
			and MouseX < WindowWidth * 0.98
			and MouseY > WindowHeight * 0.155
			and MouseY < WindowHeight * 0.355
		then
			Plant1PlaceX = MouseX
			Plant1PlaceY = MouseY
			if RightClicking and not BoughtSnowdrop and not WateringMode then
				if Coinage >= 150 then
					CreateAPlant("Snowdrop")
					Coinage = Coinage - 150
					BoughtSnowdrop = true
					Buying = true
				end
			end
		else
			if MouseX < WindowWidth * 0.72 then
				if BoughtSnowdrop then
					Plant1PlaceX = MouseX
					Plant1PlaceY = MouseY
				end
				if RightClicking and BoughtSnowdrop and not noPlacement then
					BoughtSnowdrop = false
					Buying = false
					for i, v in ipairs(ObjectPlant) do
						v.placed = true
					end
				end

				for i, v in ipairs(ObjectPlant) do
					local radius = v.size
					local p1 = ObjectPlant[i]
					for j = i - 1, 1, -1 do
						local p2 = ObjectPlant[j]
						if plantsCollide(p1, p2, radius) then
							noPlacement = true
							break
						else
							noPlacement = false
						end
					end
				end
			end

			--
		end
		--
		--
		--

		--
		--
		--
	end
end

function SHOP:draw(dt)
	endObjectPlant = #ObjectPlant
	for i, v in ipairs(ObjectPlant) do
		if i == endObjectPlant and not v.placed then
			v.x = Plant1PlaceX
			v.y = Plant1PlaceY
		end

		if not v.dead then
			if v.type == "Hyssop" then
				if v.timeAlive == 0 then
					love.graphics.draw(
						HyssopSeeds,
						v.x + WindowWidth / 320 * 0.25,
						v.y + WindowHeight / 320 * 0.25,
						0,
						WindowWidth / 320 * 0.3,
						WindowHeight / 180 * 0.30
					)
				elseif v.timeAlive <= 2 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							HyssopStage1,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							HyssopStage1Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 4 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							HyssopStage2,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							HyssopStage2Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 6 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							HyssopStage3,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							HyssopStage3Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.30
						)
					end
				elseif v.timeAlive < 7 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							HyssopStage4,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							HyssopStage4Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 7.25 then
					love.graphics.draw(
						HyssopStageFinished,
						v.x + WindowWidth / 320 * 0.275,
						v.y + WindowHeight / 320 * 0.25,
						0,
						WindowWidth / 320 * 0.55,
						WindowHeight / 180 * 0.55
					)
				end
			end
			--
			--
			--
			--
			--
			--
			--
			--
			if v.type == "Anemoe" then
				if v.timeAlive == 0 then
					love.graphics.draw(
						AnemoeSeeds,
						v.x + WindowWidth / 320 * 0.25,
						v.y + WindowHeight / 320 * 0.25,
						0,
						WindowWidth / 320 * 0.3,
						WindowHeight / 180 * 0.30
					)
				elseif v.timeAlive <= 4 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							AnemoeStage1,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							AnemoeStage1Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 8 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							AnemoeStage2,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							AnemoeStage2Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 12 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							AnemoeStage3,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							AnemoeStage3Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.30
						)
					end
				elseif v.timeAlive < 15 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							AnemoeStage4,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							AnemoeStage4Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 15.25 then
					love.graphics.draw(
						AnemoeStageFinished,
						v.x + WindowWidth / 320 * 0.275,
						v.y + WindowHeight / 320 * 0.25,
						0,
						WindowWidth / 320 * 0.55,
						WindowHeight / 180 * 0.55
					)
				end
			end
			--
			--
			--
			--
			--
			--
			--
			--
			if v.type == "Canna Liles" then
				if v.timeAlive == 0 then
					love.graphics.draw(
						CannaLilesSeeds,
						v.x + WindowWidth / 320 * 0.25,
						v.y + WindowHeight / 320 * 0.25,
						0,
						WindowWidth / 320 * 0.3,
						WindowHeight / 180 * 0.30
					)
				elseif v.timeAlive <= 0.75 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							CannaLilesStage1,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							CannaLilesStage1Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 1.5 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							CannaLilesStage2,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							CannaLilesStage2Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 2.25 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							CannaLilesStage3,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							CannaLilesStage3Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.30
						)
					end
				elseif v.timeAlive < 3 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							CannaLilesStage4,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							CannaLilesStage4Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 3.25 then
					love.graphics.draw(
						CannaLilesStageFinished,
						v.x + WindowWidth / 320 * 0.275,
						v.y + WindowHeight / 320 * 0.25,
						0,
						WindowWidth / 320 * 0.55,
						WindowHeight / 180 * 0.55
					)
				end
			end
			--
			--
			--
			--
			--
			--
			--
			if v.type == "Bloodroot" then
				if v.timeAlive == 0 then
					love.graphics.draw(
						BloodrootSeeds,
						v.x + WindowWidth / 320 * 0.25,
						v.y + WindowHeight / 320 * 0.25,
						0,
						WindowWidth / 320 * 0.3,
						WindowHeight / 180 * 0.30
					)
				elseif v.timeAlive <= 0.5 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							BloodrootStage1,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							BloodrootStage1Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 1 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							BloodrootStage2,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							BloodrootStage2Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 1.5 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							BloodrootStage3,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							BloodrootStage3Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.30
						)
					end
				elseif v.timeAlive < 2 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							BloodrootStage4,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							BloodrootStage4Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 2.25 then
					love.graphics.draw(
						BloodrootStageFinished,
						v.x + WindowWidth / 320 * 0.275,
						v.y + WindowHeight / 320 * 0.25,
						0,
						WindowWidth / 320 * 0.55,
						WindowHeight / 180 * 0.55
					)
				end
			end
			--
			--
			--
			--
			--
			--
			--
			if v.type == "Snowdrop" then
				if v.timeAlive == 0 then
					love.graphics.draw(
						SnowdropSeeds,
						v.x + WindowWidth / 320 * 0.25,
						v.y + WindowHeight / 320 * 0.25,
						0,
						WindowWidth / 320 * 0.3,
						WindowHeight / 180 * 0.30
					)
				elseif v.timeAlive <= 3 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							SnowdropStage1,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							SnowdropStage1Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 18 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							SnowdropStage2,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							SnowdropStage2Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 37.5 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							SnowdropStage3,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							SnowdropStage3Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.30
						)
					end
				elseif v.timeAlive < 45 then
					if TotalWaterInGarden > 0 then
						love.graphics.draw(
							SnowdropStage4,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.5,
							WindowHeight / 180 * 0.5
						)
					else
						love.graphics.draw(
							SnowdropStage4Water,
							v.x + WindowWidth / 320 * 0.25,
							v.y + WindowHeight / 320 * 0.25,
							0,
							WindowWidth / 320 * 0.3,
							WindowHeight / 180 * 0.3
						)
					end
				elseif v.timeAlive < 45.25 then
					love.graphics.draw(
						SnowdropStageFinished,
						v.x + WindowWidth / 320 * 0.275,
						v.y + WindowHeight / 320 * 0.25,
						0,
						WindowWidth / 320 * 0.55,
						WindowHeight / 180 * 0.55
					)
				end
			end
		end
	end

	love.graphics.setColor(255 / 255, 255 / 255, 255 / 255)
	love.graphics.draw(SHOPdesign, 0, 0, 0, WindowWidth / 320, WindowHeight / 180)

	love.graphics.draw(
		FlowerSeedSelector,
		WindowWidth * 0.68,
		WindowHeight * 0.155,
		0,
		WindowWidth / 320,
		WindowHeight / 180
	)
	love.graphics.print("5", WindowWidth * 0.685, WindowHeight * 0.31)

	love.graphics.draw(
		FlowerSeedSelector,
		WindowWidth * 0.68,
		WindowHeight * 0.365,
		0,
		WindowWidth / 320,
		WindowHeight / 180
	)
	love.graphics.print("40", WindowWidth * 0.685, WindowHeight * 0.52)

	love.graphics.draw(
		FlowerSeedSelector,
		WindowWidth * 0.68,
		WindowHeight * 0.575,
		0,
		WindowWidth / 320,
		WindowHeight / 180
	)
	love.graphics.print("40", WindowWidth * 0.685, WindowHeight * 0.73)

	love.graphics.draw(
		FlowerSeedSelector,
		WindowWidth * 0.68,
		WindowHeight * 0.785,
		0,
		WindowWidth / 320,
		WindowHeight / 180
	)
	love.graphics.print("80", WindowWidth * 0.685, WindowHeight * 0.94)

	love.graphics.draw(
		FlowerSeedSelector,
		WindowWidth * 0.84,
		WindowHeight * 0.155,
		0,
		WindowWidth / 320,
		WindowHeight / 180
	)
	love.graphics.print("150", WindowWidth * 0.845, WindowHeight * 0.31)

	love.graphics.draw(
		FlowerSeedSelector,
		WindowWidth * 0.84,
		WindowHeight * 0.365,
		0,
		WindowWidth / 320,
		WindowHeight / 180
	)

	love.graphics.draw(
		FlowerSeedSelector,
		WindowWidth * 0.84,
		WindowHeight * 0.575,
		0,
		WindowWidth / 320,
		WindowHeight / 180
	)

	love.graphics.draw(
		FlowerSeedSelector,
		WindowWidth * 0.84,
		WindowHeight * 0.785,
		0,
		WindowWidth / 320,
		WindowHeight / 180
	)

	love.graphics.draw(HyssopSeeds, WindowWidth * 0.7, WindowHeight * 0.165, 0, WindowWidth / 320, WindowHeight / 180)
	love.graphics.draw(
		CannaLilesSeeds,
		WindowWidth * 0.7,
		WindowHeight * 0.365,
		0,
		WindowWidth / 320,
		WindowHeight / 180
	)

	love.graphics.draw(AnemoeSeeds, WindowWidth * 0.7, WindowHeight * 0.575, 0, WindowWidth / 320, WindowHeight / 180)
	love.graphics.draw(
		BloodrootSeeds,
		WindowWidth * 0.7,
		WindowHeight * 0.785,
		0,
		WindowWidth / 320,
		WindowHeight / 180
	)
	love.graphics.draw(
		SnowdropSeeds,
		WindowWidth * 0.86,
		WindowHeight * 0.165,
		0,
		WindowWidth / 320,
		WindowHeight / 180
	)
	if Paused then
		love.graphics.draw(PauseMenu, 0, 0, 0, WindowWidth / 320, WindowHeight / 180)
	end
end
