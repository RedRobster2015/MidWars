--[[
	Basic MidWars
]]

-- Required files to be visible from anywhere
require( 'timers' )
require( 'midwars' )

function Precache( context )
	-- NOTE: IT IS RECOMMENDED TO USE A MINIMAL AMOUNT OF LUA PRECACHING, AND A MAXIMAL AMOUNT OF DATADRIVEN PRECACHING.
	-- Precaching guide: https://moddota.com/forums/discussion/119/precache-fixing-and-avoiding-issues

	--[[
	This function is used to precache resources/units/items/abilities that will be needed
	for sure in your game and that cannot or should not be precached asynchronously or 
	after the game loads.

	See GameMode:PostLoadPrecache() in midwars.lua for more information
	]]

	print("[MIDWARS] Performing pre-load precache")

	-- Particles can be precached individually or by folder
	-- It it likely that precaching a single particle system will precache all of its children, but this may not be guaranteed


	-- Models can also be precached by folder or individually
	-- PrecacheModel should generally used over PrecacheResource for individual models


	-- Sounds can precached here like anything else
	PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_gyrocopter.vsndevts", context)

	-- Entire items can be precached by name
	-- Abilities can also be precached in this way despite the name


	-- Entire heroes (sound effects/voice/models/particles) can be precached with PrecacheUnitByNameSync
	-- Custom units from npc_units_custom.txt can also have all of their abilities and precache{} blocks precached in this way

end

-- Create the game mode when we activate
function Activate()
	GameRules.GameMode = GameMode()
	GameRules.GameMode:InitGameMode()
end
