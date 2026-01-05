GARDEN = {}

function GARDEN:load()
	WateringMode = false
	Watered = true
	WaterTimer = 3
	TotalWaterInGarden = 500
	MaxWaterInGarden = 500
	Paused = false
end

function GARDEN:update(dt)
	if not Paused then
		if WateringKeyBinded and not WateringMode then
			WateringMode = true
		elseif WateringKeyBinded then
			WateringMode = false
		end

		for i, v in ipairs(ObjectPlant) do
			if v.type == "Hyssop" then
				v.growTime = 7
				v.size = 40
				v.waterRequired = 4
			elseif v.type == "Canna Liles" then
				v.growTime = 3
				v.waterRequired = 10
				v.size = 30
			elseif v.type == "Anemoe" then
				v.growTime = 15
				v.waterRequired = 3
				v.size = 40
			elseif v.type == "Bloodroot" then
				v.growTime = 2
				v.waterRequired = 30
				v.size = 50
			elseif v.type == "Snowdrop" then
				v.growTime = 45
				v.waterRequired = 3
				v.size = 40
			end
			if v.timeAlive < v.growTime and v.placed then
				if TotalWaterInGarden > 0 then
					v.timeAlive = v.timeAlive + 1 * dt
					TotalWaterInGarden = TotalWaterInGarden - v.waterRequired * dt
				else
					if v.WaterCyoteTime < 3 then
						v.WaterCyoteTime = v.WaterCyoteTime + 1 * dt
					end
				end
			end

			if v.timeAlive >= v.growTime then
				v.reedemable = true
			end

			if
				MouseX > v.x - WindowWidth * 0.025 - (v.size * 0.025)
				and MouseX < v.x + WindowWidth * 0.025 + (v.size * 2)
				and MouseY > v.y - WindowHeight * 0.025 - (v.size * 0.25)
				and MouseY < v.y + WindowHeight * 0.025 + (v.size * 4)
				and RightClicking
				and v.reedemable
				and not Buying
				and not WateringMode
			then
				if v.type == "Hyssop" and not v.dead then
					Coinage = Coinage + 8
					table.remove(ObjectPlant, i)
				elseif v.type == "Canna Liles" and not v.dead then
					Coinage = Coinage + 45
					table.remove(ObjectPlant, i)
				elseif v.type == "Anemoe" and not v.dead then
					Coinage = Coinage + 65
					table.remove(ObjectPlant, i)
				elseif v.type == "Bloodroot" and not v.dead then
					Coinage = Coinage + 95
					table.remove(ObjectPlant, i)
				elseif v.type == "Snowdrop" and not v.dead then
					Coinage = Coinage + 275
					table.remove(ObjectPlant, i)
				end
				v.dead = true
			else
			end

			if RightClicking and WateringMode and not Watered then
				Watered = true
				TotalWaterInGarden = TotalWaterInGarden + 100
			end

			if Watered == true then
				WaterTimer = WaterTimer - 1 * dt
			end

			if WaterTimer < 0 then
				Watered = false
				WaterTimer = 3
			end
			if v.waterFrequency < 0 then
				v.waterFrequency = 0
			end
		end

		if TotalWaterInGarden > MaxWaterInGarden then
			TotalWaterInGarden = MaxWaterInGarden
		end

		if PauseKeyBinded then
			Paused = true
		end
	else
		if PauseKeyBinded then
			Paused = false
		end

		if
			MouseX > 0.325 * WindowWidth
			and MouseX < 0.64 * WindowWidth
			and MouseY > 0.5 * WindowHeight
			and MouseY < 0.59 * WindowHeight
			and RightClicking
		then
			Paused = false
		elseif
			MouseX > 0.41 * WindowWidth
			and MouseX < 0.54 * WindowWidth
			and MouseY > 0.61 * WindowHeight
			and MouseY < 0.7 * WindowHeight
			and RightClicking
		then
			Paused = false
			Scene = 1
		end
	end
end

function CreateAPlant(plantType)
	ObjectPlant[#ObjectPlant + 1] = {
		type = plantType,
		y = Plant1PlaceY,
		x = Plant1PlaceX,
		timeAlive = 0,
		placed = false,
		size = PlantedSize,
		dead = false,
		reedemable = false,
		waterRequired = 20,
		growTime = 70,
		waterFrequency = 0,
		notAllowedPlace = false,
		WaterCyoteTime = 0,
	}
end

function GARDEN:draw(dt)
	love.graphics.setBackgroundColor(24 / 255, 13 / 255, 47 / 255)
	love.graphics.setColor(255 / 255, 255 / 255, 255 / 255)
	love.graphics.draw(GARDENdesign, 0, 0, 0, WindowWidth / 320, WindowHeight / 180)
	love.graphics.print("COINS: " .. Coinage, WindowWidth * 0.01, WindowHeight * 0.09)

	if WateringMode == true and not Watered then
		love.graphics.draw(
			WateringCan,
			WindowWidth * 0.065,
			WindowHeight * 0.01,
			0,
			WindowWidth / 640,
			WindowHeight / 360
		)
	elseif WateringMode == true then
		love.graphics.draw(
			WateringCanNo,
			WindowWidth * 0.065,
			WindowHeight * 0.01,
			0,
			WindowWidth / 640,
			WindowHeight / 360
		)
	end

	if TotalWaterInGarden >= (MaxWaterInGarden / 31) * 30.5 then
		love.graphics.draw(Water1, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 30 then
		love.graphics.draw(Water2, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 29 then
		love.graphics.draw(Water3, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 28 then
		love.graphics.draw(Water4, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 27 then
		love.graphics.draw(Water5, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 26 then
		love.graphics.draw(Water6, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 25 then
		love.graphics.draw(Water7, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 24 then
		love.graphics.draw(Water8, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 23 then
		love.graphics.draw(Water9, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 22 then
		love.graphics.draw(Water10, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 21 then
		love.graphics.draw(Water11, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 20 then
		love.graphics.draw(Water12, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 19 then
		love.graphics.draw(Water13, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 18 then
		love.graphics.draw(Water14, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 17 then
		love.graphics.draw(Water15, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 16 then
		love.graphics.draw(Water16, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 15 then
		love.graphics.draw(Water17, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 14 then
		love.graphics.draw(Water18, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 13 then
		love.graphics.draw(Water19, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 12 then
		love.graphics.draw(Water20, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 11 then
		love.graphics.draw(Water21, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 10 then
		love.graphics.draw(Water22, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 9 then
		love.graphics.draw(Water23, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 8 then
		love.graphics.draw(Water24, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 7 then
		love.graphics.draw(Water25, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 6 then
		love.graphics.draw(Water26, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 5 then
		love.graphics.draw(Water27, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 4 then
		love.graphics.draw(Water28, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 3 then
		love.graphics.draw(Water29, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * 2 then
		love.graphics.draw(Water30, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	elseif TotalWaterInGarden >= (MaxWaterInGarden / 31) * -0.5 then
		love.graphics.draw(Water31, WindowWidth * 0.01, WindowHeight * 0.01, 0, WindowWidth / 640, WindowHeight / 360)
	end
end
