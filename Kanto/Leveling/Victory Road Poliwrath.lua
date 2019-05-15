-- Copyright © 2016 Silv3r <silv3r@proshine-bot.com>
-- This work is free. You can redistribute it and/or modify it under the
-- terms of the Do What The Fuck You Want To Public License, Version 2,
-- as published by Sam Hocevar. See the LICENSE file for more details.

name = "Leveling: Victory Road (near Indigo Plateau)"
author = "ananas"
description = [[hehe]]



function onStart()
	setMount("Yellow Bicycle")
	
	if getUsablePokemonCount() > 0 then
		if getMapName() == "Indigo Plateau Center" then
			moveToCell(10,28)
		elseif getMapName() == "Indigo Plateau" then
			moveToCell(21,31)
		elseif getMapName() == "Victory Road Kanto 3F" then
			moveToRectangle(46, 19, 47, 22)
		end
	else
		if getMapName() == "Victory Road Kanto 3F" then
			moveToCell(46,13)
		elseif getMapName() == "Indigo Plateau" then
			moveToCell(32,12)
		elseif getMapName() == "Indigo Plateau Center" then
			talkToNpcOnCell(4, 22)
		end
	end
end

function onPathAction()
	if getUsablePokemonCount() > 0 then
		if getMapName() == "Indigo Plateau Center" then
			moveToCell(10,28)
		elseif getMapName() == "Indigo Plateau" then
			moveToCell(21,31)
		elseif getMapName() == "Victory Road Kanto 3F" then
			moveToRectangle(46, 19, 47, 22)
		end
	else
		if getMapName() == "Victory Road Kanto 3F" then
			moveToCell(46,13)
		elseif getMapName() == "Indigo Plateau" then
			moveToCell(32,12)
		elseif getMapName() == "Indigo Plateau Center" then
			talkToNpcOnCell(4, 22)
		end
	end
end

-- poliwrath is effective towards ground and rock.

function onBattleAction()
    if isWildBattle() and isOpponentShiny() then
        if useItem("Ultra Ball") or useItem("Great Ball") or useItem("Pokeball") then
            return
        end
    end
    if getUsablePokemonCount() > 0 then
    	return attack() or sendUsablePokemon() or run() or sendAnyPokemon() 
    else
        return run() or attack() or sendUsablePokemon() or sendAnyPokemon()
    end
end