
/datum/crafting_recipe
	var/name = "" //in-game display name
	var/reqs[] = list() //type paths of items consumed associated with how many are needed
	var/result //type path of item resulting from this craft
	var/tools[] = list() //type paths of items needed but not consumed
	var/traits[] = list() //type paths of traits needed, hopefully
	var/time = 30 //time in deciseconds
	var/parts[] = list() //type paths of items that will be placed in the result
	var/chem_catalysts[] = list() //like tools but for reagents
	var/category = CAT_NONE //where it shows up in the crafting UI
	var/subcategory = CAT_NONE
	var/gunsmith_one_req = FALSE
	var/gunsmith_two_req = FALSE
	var/gunsmith_three_req = FALSE
	var/gunsmith_four_req = FALSE

/*
---Fallout 13 Crafting
*/


/datum/crafting_recipe/workbench
	name = "workbench"
	result = /obj/machinery/workbench
	reqs = list(/obj/item/stack/sheet/mineral/wood = 10,
				/obj/item/lighter = 1,
				/obj/item/reagent_containers/glass/beaker = 1,
				/obj/item/screwdriver = 1,
				/obj/item/crowbar = 1,
				/obj/item/wrench = 1,
				/obj/item/wirecutters = 1,
				/obj/item/stack/crafting/metalparts = 5)
	time = 80
	category = CAT_ASSEM
	subcategory = CAT_MACHINES

/datum/crafting_recipe/stove
	name = "cook stove"
	result = /obj/machinery/microwave/stove
	reqs = list(/obj/item/stack/crafting/electronicparts = 3,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/goodparts = 1,
				/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/cable_coil = 2,
				/obj/item/assembly/igniter = 1)
	tools = list(TOOL_WELDER, TOOL_SCREWDRIVER)
	time = 80
	category = CAT_ASSEM
	subcategory = CAT_MACHINES

/datum/crafting_recipe/bellystove
	name = "pot belly stove"
	result = /obj/structure/campfire/stove
	reqs = list(/obj/item/stack/crafting/metalparts = 3,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 10)
	tools = list(TOOL_WELDER, TOOL_WORKBENCH)
	time = 80
	category = CAT_ASSEM
	subcategory = CAT_MACHINES

/datum/crafting_recipe/trading_machine
	name = "vending machine"
	result = /obj/machinery/trading_machine
	reqs = list(/obj/item/stack/sheet/metal = 20,
				/obj/item/stack/crafting/metalparts = 10,
				/obj/item/stack/crafting/electronicparts = 5,
				/obj/item/stack/crafting/goodparts = 10,
				/obj/item/stack/cable_coil = 10)
	tools = list(TOOL_WELDER, TOOL_WORKBENCH, TOOL_SCREWDRIVER)
	time = 80
	category = CAT_ASSEM
	subcategory = CAT_MACHINES

/datum/crafting_recipe/campfirekit
	name = "campfire kit"
	result = /obj/item/crafting/campfirekit
	reqs = list(/obj/item/stack/sheet/mineral/wood = 15)
	time = 80
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/setupcampfirekit
	name = "set up campfire kit"
	result = /obj/structure/campfire
	reqs = list(/obj/item/crafting/campfirekit = 1)
	time = 40
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/shower
	name = "shower"
	result = /obj/machinery/shower
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/crafting/metalparts = 10)
	tools = list(TOOL_WRENCH, TOOL_SCREWDRIVER)
	time = 80
	category = CAT_ASSEM
	subcategory = CAT_MACHINES

/datum/crafting_recipe/grill
	name = "grill"
	result = /obj/machinery/grill
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/crafting/metalparts = 10,
				/obj/item/stack/crafting/goodparts = 5)
	tools = list(TOOL_WELDER, TOOL_SCREWDRIVER)
	time = 80
	category = CAT_ASSEM
	subcategory = CAT_MACHINES

/datum/crafting_recipe/barrelfire
	name = "stoke barrel fire"
	result = /obj/structure/campfire/barrel
	reqs = list(/obj/item/stack/sheet/mineral/wood = 15,
				/obj/item/stack/sheet/metal = 10)
	time = 80
	category = CAT_ASSEM
	subcategory = CAT_MACHINES

/datum/crafting_recipe/pin_removal
	name = "Pin Removal"
	result = /obj/item/gun
	reqs = list(/obj/item/gun = 1)
	parts = list(/obj/item/gun = 1)
	tools = list(TOOL_WORKBENCH)
	time = 50
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/IED
	name = "IED"
	result = /obj/item/grenade/iedcasing
	reqs = list(/datum/reagent/fuel = 50,
				/obj/item/stack/cable_coil = 1,
				/obj/item/assembly/igniter = 1,
				/obj/item/reagent_containers/food/drinks/soda_cans = 1)
	parts = list(/obj/item/reagent_containers/food/drinks/soda_cans = 1)
	time = 15
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/molotov
	name = "Molotov"
	result = /obj/item/reagent_containers/food/drinks/bottle/molotov
	reqs = list(/obj/item/reagent_containers/glass/rag = 1,
				/obj/item/reagent_containers/food/drinks/bottle = 1)
	parts = list(/obj/item/reagent_containers/food/drinks/bottle = 1)
	time = 40
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/cell
	name = "Power Cell"
	result = /obj/item/stock_parts/cell
	reqs = list(/obj/item/stack/crafting/electronicparts = 1,
				/obj/item/stack/sheet/glass = 5,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/ec
	name = "Small Energy Cell"
	result = /obj/item/stock_parts/cell/ammo/ec
	reqs = list(/obj/item/stock_parts/cell=2)
	traits = list(TRAIT_GUNSMITH_ONE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/mfc
	name = "Microfusion Cell"
	result = /obj/item/stock_parts/cell/ammo/mfc
	reqs = list(/obj/item/stack/crafting/goodparts=1, /obj/item/stock_parts/cell/ammo/ec=2)
	traits = list(TRAIT_GUNSMITH_TWO)
	tools = list(TOOL_AWORKBENCH, TOOL_GUNTIER2)
	time = 20
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/ecp
	name = "Electron Charge Pack"
	result = /obj/item/stock_parts/cell/ammo/ecp
	reqs = list(/obj/item/stock_parts/capacitor=1, /obj/item/stock_parts/cell/ammo/mfc=2)
	traits = list(TRAIT_GUNSMITH_THREE)
	tools = list(TOOL_AWORKBENCH, TOOL_GUNTIER3)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO
/*
/datum/crafting_recipe/kittyears
	name = "Kitty Ears"
	result = /obj/item/clothing/head/kitty/genuine
	time = 10
	reqs = list(/obj/item/organ/tail/cat = 1,
				/obj/item/organ/ears/cat = 1)
	category = CAT_MISC
	subcategory = CAT_MISC
*/
/*
/datum/crafting_recipe/skateboard
	name = "Skateboard"
	result = /obj/vehicle/ridden/scooter/skateboard
	time = 60
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/rods = 10)
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/scooter
	name = "Scooter"
	result = /obj/vehicle/ridden/scooter
	time = 65
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/rods = 12)
	category = CAT_MISC
	subcategory = CAT_MISC
*/
/datum/crafting_recipe/papersack
	name = "Paper Sack"
	result = /obj/item/storage/box/papersack
	time = 10
	reqs = list(/obj/item/paper = 5)
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/flashlight_eyes
	name = "Flashlight Eyes"
	result = /obj/item/organ/eyes/robotic/flashlight
	time = 10
	reqs = list(
		/obj/item/flashlight = 2,
		/obj/item/restraints/handcuffs/cable = 1
	)
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/paperframes
	name = "Paper Frames"
	result = /obj/item/stack/sheet/paperframes/five
	time = 10
	reqs = list(/obj/item/stack/sheet/mineral/wood = 5, /obj/item/paper = 20)
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/naturalpaper
	name = "Hand-Pressed Paper"
	time = 30
	reqs = list(/datum/reagent/water = 50, /obj/item/stack/sheet/mineral/wood = 1)
	tools = list(/obj/item/hatchet)
	result = /obj/item/paper_bin/bundlenatural
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/blackcarpet
	name = "Black Carpet"
	reqs = list(/obj/item/stack/tile/carpet = 50, /obj/item/toy/crayon/black = 1)
	result = /obj/item/stack/tile/carpet/black/fifty
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/showercurtain
	name = "Shower Curtains"
	reqs = 	list(/obj/item/stack/sheet/cloth = 2, /obj/item/stack/sheet/plastic = 2, /obj/item/stack/rods = 1)
	result = /obj/structure/curtain
	category = CAT_ASSEM
	subcategory = CAT_MACHINES

/datum/crafting_recipe/chemical_payload
	name = "Chemical Payload (C4)"
	result = /obj/item/bombcore/chemical
	reqs = list(
		/obj/item/stock_parts/matter_bin = 1,
		/obj/item/grenade/plastic/c4 = 1,
		/obj/item/grenade/chem_grenade = 2
	)
	parts = list(/obj/item/stock_parts/matter_bin = 1, /obj/item/grenade/chem_grenade = 2)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/*/datum/crafting_recipe/chemical_payload2
	name = "Chemical Payload (Gibtonite)"
	result = /obj/item/bombcore/chemical
	reqs = list(
		/obj/item/stock_parts/matter_bin = 1,
		/obj/item/twohanded/required/gibtonite = 1,
		/obj/item/grenade/chem_grenade = 2
	)
	parts = list(/obj/item/stock_parts/matter_bin = 1, /obj/item/grenade/chem_grenade = 2)
	time = 50
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON*/

/datum/crafting_recipe/scavengerod
	name = "Scavenge For Rods"
	result = /obj/item/stack/rods
	time = 600
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/scavengemetal
	name = "Scavenge For Plating"
	result = /obj/item/stack/sheet/metal
	time = 600
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/tribal_torch
	name = "Tribal Torch"
	result = /obj/item/candle/tribal_torch
	time = 30
	reqs = list(/obj/item/stack/sheet/mineral/wood = 4)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/goliathcloak
	name = "deathclaw cloak"
	result = /obj/item/clothing/suit/hooded/cloak/goliath
	time = 50
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/sheet/sinew = 2,
				/obj/item/stack/sheet/animalhide/deathclaw = 4)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/tatteredredcloak
	name = "tattered red cloak"
	result = /obj/item/clothing/suit/hooded/cloak/goliath/tatteredred
	time = 50
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/sinew = 1,
				/obj/item/stack/sheet/cloth = 2)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/smallcarton
	name = "Small Carton"
	result = /obj/item/reagent_containers/food/drinks/sillycup/smallcarton
	time = 10
	reqs = list(/obj/item/stack/sheet/cardboard = 1)
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/pressureplate
	name = "Pressure Plate"
	result = /obj/item/pressure_plate
	time = 5
	reqs = list(/obj/item/stack/sheet/metal = 1,
				  /obj/item/stack/tile/plasteel = 1,
				  /obj/item/stack/cable_coil = 2,
				  /obj/item/assembly/igniter = 1)
	category = CAT_ASSEM
	subcategory = CAT_MACHINES


/*/datum/crafting_recipe/rcl
	name = "Makeshift Rapid Cable Layer"
	result = /obj/item/twohanded/rcl/ghetto
	time = 40
	tools = list(TOOL_WELDER, TOOL_SCREWDRIVER, TOOL_WRENCH)
	reqs = list(/obj/item/stack/sheet/metal = 15)
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/guillotine
	name = "Guillotine"
	result = /obj/structure/guillotine
	time = 150 // Building a functioning guillotine takes time
	reqs = list(/obj/item/stack/sheet/plasteel = 3,
		        /obj/item/stack/sheet/mineral/wood = 20,
		        /obj/item/stack/cable_coil = 10)
	tools = list(TOOL_SCREWDRIVER, TOOL_WRENCH, TOOL_WELDER)
	category = CAT_MISC
	subcategory = CAT_MISC*/

/datum/crafting_recipe/binoculars
	name = "Binoculars"
	result = /obj/item/twohanded/binocs
	time = 60
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/glass = 5)
	tools = list(TOOL_SCREWDRIVER,TOOL_WORKBENCH)
	category = CAT_MISC
	subcategory = CAT_MISC

/*/datum/crafting_recipe/spooky_camera
	name = "Camera Obscura"
	result = /obj/item/camera/spooky
	time = 15
	reqs = list(/obj/item/camera = 1,
				/datum/reagent/water/holywater = 10)
	parts = list(/obj/item/camera = 1)
	category = CAT_MISC
	subcategory = CAT_MISC*/

//drugs
/datum/crafting_recipe/bacta
	name = "Bio Bacta"
	result = /obj/item/reagent_containers/hypospray/medipen/stimpak/biobacta
	reqs = list(/obj/item/stack/sheet/animalhide/arkes, /obj/item/toy/crayon/spraycan)
	time = 10
	tools = list(TOOL_WORKBENCH)
	category = CAT_MEDICAL
	subcategory = CAT_DRUGS

/datum/crafting_recipe/deathstick
	name = "Deathstick"
	result = /obj/item/reagent_containers/pill/patch/deathstick
	time = 20
	reqs = list(/obj/item/reagent_containers/syringe = 1)
	tools = list(TOOL_WORKBENCH)
	category = CAT_MEDICAL
	subcategory = CAT_DRUGS

/datum/crafting_recipe/rags
	name = "Cut clothing into rags"
	result = /obj/item/stack/sheet/cloth/three
	reqs = list(/obj/item/clothing/under = 1)
	time = 20
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/slavecollar
	name = "Slave Collar"
	result = /obj/item/assembly/signaler/electropack/shockcollar
	reqs = list(/obj/item/clothing/neck/petcollar = 1,
				/obj/item/assembly/signaler = 1,
				/obj/item/assembly/igniter =1)
	time = 40
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/mop
	name = "Mop"
	result = /obj/item/mop
	reqs = list(/obj/item/stack/rods = 2,
				/obj/item/reagent_containers/glass/rag = 1)
	time = 30
	category = CAT_MISC
	subcategory = CAT_MISC

/*/datum/crafting_recipe/reversebeartrap
	name = "Reverse Bear Trap"
	result = /obj/item/reverse_bear_trap
	reqs = list(/obj/item/stack/sheet/metal = 4,
				/obj/item/crafting/timer = 1)
	tools = list(TOOL_SCREWDRIVER, TOOL_WRENCH)
	time = 60
	category = CAT_ASSEM*/

/datum/crafting_recipe/whip
	name = "Leather whip"
	result = /obj/item/melee/curator_whip
	reqs = list(/obj/item/stack/sheet/leather = 3)
	time = 60
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

//F13
///ASSEMBLY ITEMS
/datum/crafting_recipe/mousetrap
	name = "Mousetrap"
	result = /obj/item/assembly/mousetrap
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/rods = 1)
	time = 10
	category = CAT_ASSEM
	subcategory = CAT_ASSEMBLIES

/datum/crafting_recipe/igniter
	name = "Igniter"
	result = /obj/item/assembly/igniter
	reqs = list(/obj/item/stack/sheet/glass = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/rods = 1,
				/obj/item/stack/cable_coil = 1)
	time = 10
	category = CAT_ASSEM
	subcategory = CAT_ASSEMBLIES

/datum/crafting_recipe/health_sensor
	name = "Health sensor"
	result = /obj/item/assembly/health
	reqs = list(/obj/item/stack/sheet/glass = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/rods = 1)
	time = 10
	category = CAT_ASSEM
	subcategory = CAT_ASSEMBLIES

/datum/crafting_recipe/timer
	name = "Timer"
	result = /obj/item/assembly/timer
	reqs = list(/obj/item/stack/sheet/glass = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/rods = 1)
	time = 10
	category = CAT_ASSEM
	subcategory = CAT_ASSEMBLIES

/datum/crafting_recipe/signaler
	name = "Remote signaling device"
	result = /obj/item/assembly/signaler
	reqs = list(/obj/item/stack/sheet/glass = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/rods = 1,
				/obj/item/stack/cable_coil = 2)
	time = 10
	category = CAT_ASSEM
	subcategory = CAT_ASSEMBLIES

/datum/crafting_recipe/infrared
	name = "Infrared emitter"
	result = /obj/item/assembly/infra
	reqs = list(/obj/item/stack/sheet/glass = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/rods = 1)
	time = 10
	category = CAT_ASSEM
	subcategory = CAT_ASSEMBLIES

/datum/crafting_recipe/proximity
	name = "Proximity sensor"
	result = /obj/item/assembly/prox_sensor
	reqs = list(/obj/item/stack/sheet/glass = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/rods = 1)
	time = 10
	category = CAT_ASSEM
	subcategory = CAT_ASSEMBLIES

///Medical
/datum/crafting_recipe/healthanalyzer
	name = "Health analyzer"
	result = /obj/item/healthanalyzer
	reqs = list(/obj/item/stack/sheet/glass = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/assembly/infra = 1,
				/obj/item/assembly/health = 1)
	tools = list(TOOL_WELDER, TOOL_SCREWDRIVER)
	time = 10
	category = CAT_MEDICAL

/datum/crafting_recipe/beaker
	name = "Beaker"
	result = /obj/item/reagent_containers/glass/beaker
	reqs = list(/obj/item/stack/sheet/glass = 2)
	tools = list(TOOL_WELDER)
	time = 10
	category = CAT_MEDICAL

/datum/crafting_recipe/beaker_large
	name = "Large beaker"
	result = /obj/item/reagent_containers/glass/beaker/large
	reqs = list(/obj/item/stack/sheet/glass = 6)
	tools = list(TOOL_WELDER)
	time = 40
	category = CAT_MEDICAL

/datum/crafting_recipe/syringe
	name = "Syringe"
	result = /obj/item/reagent_containers/syringe
	reqs = list(/obj/item/stack/rods = 1,
				/obj/item/stack/sheet/glass = 1)
	tools = list(TOOL_WIRECUTTER)
	time = 10
	category = CAT_MEDICAL

/datum/crafting_recipe/solids
	name = "Solid beaker"
	result = /obj/item/reagent_containers/glass/beaker/solids
	reqs = list(/obj/item/stack/sheet/glass = 2,
				/obj/item/stack/sheet/metal = 2)
	tools = list(TOOL_WELDER)
	time = 30
	category = CAT_MEDICAL

/datum/crafting_recipe/Bowl
	name = "Glass Bowl"
	result = /obj/item/reagent_containers/glass/bowl
	reqs = list(/obj/item/stack/sheet/glass = 2)
	tools = list(TOOL_WELDER)
	time = 10
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/spray
	name = "Abraxo Cleaner"
	result = /obj/item/reagent_containers/spray/cleaner
	reqs = list(/obj/item/stack/sheet/glass = 2,
				/obj/item/crafting/abraxo = 1,
				/datum/reagent/water = 50)
	tools = list(TOOL_WELDER)
	time = 10
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/headset
	name = "radio headset"
	result = /obj/item/radio/headset
	reqs = list(/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/crafting/electronicparts = 1)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/throwingknife
	name = "Throwing Knife"
	result = /obj/item/throwing_star/throwingknife
	reqs = list(/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WELDER)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/bonedie
	name = "Carve Bone Die"
	result = /obj/item/dice/d6
	time = 30
	reqs = list(/obj/item/stack/sheet/bone = 1)
	tools = list(TOOL_WORKBENCH)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/strawdummy
	name = "Weave Target Dummy"
	result = /obj/structure/punching_bag/dummy
	time = 30
	reqs = list(/obj/item/stack/sheet/hay = 15)
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/Tallow
	name = "Render Fat From Scraps"
	result = /obj/item/reagent_containers/food/snacks/tallow
	time = 30
	reqs = list(/obj/item/reagent_containers/food/snacks/meat/cutlet = 3)
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/TallowCandle
	name = "Mold Tallow Candle"
	result = /obj/item/candle
	time = 30
	reqs = list(
		/obj/item/reagent_containers/food/snacks/tallow = 1,
		/obj/item/stack/sheet/durathread = 3
	)
	category = CAT_MISC
	subcategory = CAT_MISC

/datum/crafting_recipe/salvagecandle
	name = "Salvage Wax"
	result = /obj/item/candle
	time = 80
	reqs = list(
		/obj/item/trash/candle = 5,
		/obj/item/stack/sheet/durathread = 3
	)
	category = CAT_MISC
	subcategory = CAT_MISC

//tools

/datum/crafting_recipe/crudewire
    name = "Crude Cutters"
    result = /obj/item/wirecutters/crude
    time = 80
    reqs = list(/obj/item/stack/rods = 2)
    category = CAT_ASSEM
    subcategory = CAT_TOOLS

/datum/crafting_recipe/crudeweld
    name = "Crude Welder"
    result = /obj/item/weldingtool/crude
    time = 80
    reqs = list(/obj/item/stack/sheet/metal = 2,
				/obj/item/stack/rods = 2)
    category = CAT_ASSEM
    subcategory = CAT_TOOLS

/datum/crafting_recipe/crudewrench
    name = "Crude Wrench"
    result = /obj/item/wrench/crude
    time = 80
    reqs = list(/obj/item/stack/rods = 2)
    category = CAT_ASSEM
    subcategory = CAT_TOOLS

/datum/crafting_recipe/crudebar
    name = "Crude Crowbar"
    result = /obj/item/crowbar/crude
    time = 80
    reqs = list(/obj/item/stack/rods = 1,
				/obj/item/stack/sheet/metal = 1)
    category = CAT_ASSEM
    subcategory = CAT_TOOLS

/datum/crafting_recipe/crudescrew
    name = "Crude Screwdriver"
    result = /obj/item/screwdriver/crude
    time = 80
    reqs = list(/obj/item/stack/sheet/metal = 2)
    category = CAT_ASSEM
    subcategory = CAT_TOOLS

/datum/crafting_recipe/basicvolt
    name = "Crude Voltage Scanner"
    result = /obj/item/multitool/basic
    time = 80
    reqs = list(/obj/item/stack/sheet/metal = 2,
				/obj/item/stack/sheet/glass = 1)
    tools = list(TOOL_WORKBENCH)
    category = CAT_ASSEM
    subcategory = CAT_TOOLS

/datum/crafting_recipe/basicwire
    name = "Basic Cutters"
    result = /obj/item/wirecutters/basic
    time = 80
    reqs = list(/obj/item/stack/sheet/metal = 4)
    tools = list(TOOL_WORKBENCH)
    category = CAT_ASSEM
    subcategory = CAT_TOOLS

/datum/crafting_recipe/basicweld
    name = "Basic Welder"
    result = /obj/item/weldingtool/basic
    time = 80
    reqs = list(/obj/item/stack/sheet/metal = 5)
    tools = list(TOOL_WORKBENCH)
    category = CAT_ASSEM
    subcategory = CAT_TOOLS

/datum/crafting_recipe/basicwrench
    name = "Basic Wrench"
    result = /obj/item/wrench/basic
    time = 80
    reqs = list(/obj/item/stack/sheet/metal = 3)
    tools = list(TOOL_WORKBENCH)
    category = CAT_ASSEM
    subcategory = CAT_TOOLS

/datum/crafting_recipe/basicbar
    name = "Basic Crowbar"
    result = /obj/item/crowbar/basic
    time = 80
    reqs = list(/obj/item/stack/sheet/metal = 1)
    tools = list(TOOL_WORKBENCH)
    category = CAT_ASSEM
    subcategory = CAT_TOOLS

/datum/crafting_recipe/basicscrew
    name = "Basic Screwdriver"
    result = /obj/item/screwdriver/basic
    time = 80
    reqs = list(/obj/item/stack/sheet/metal = 5)
    tools = list(TOOL_WORKBENCH)
    category = CAT_ASSEM
    subcategory = CAT_TOOLS

//forge making

/datum/crafting_recipe/forge
	name = "Forge"
	result = /obj/machinery/workbench/forge
	reqs = list(/obj/item/stack/sheet/mineral/wood = 10,
				/obj/item/lighter = 1,
				/obj/item/twohanded/sledgehammer = 1,
				/obj/item/screwdriver = 1,
				/obj/item/crowbar = 1,
				/obj/item/wrench = 1,
				/obj/item/wirecutters = 1,
				/obj/item/stack/sheet/metal = 50)
	time = 400
	category = CAT_ASSEM
	subcategory = CAT_MACHINES

//Knives

/datum/crafting_recipe/butchers
	name = "Butchers Knife"
	result = /obj/item/kitchen/knife/butcher
	time = 300
	reqs = list(/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/sheet/cloth = 2)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/combat
	name = "Combat Knife"
	result = /obj/item/kitchen/knife/combat/scrap
	time = 300
	reqs = list(/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/sheet/cloth = 2)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/kitchen
	name = "Kitchen Knife"
	result = /obj/item/kitchen/knife
	time = 300
	reqs = list(/obj/item/stack/sheet/metal = 2,
				/obj/item/stack/sheet/cloth = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/ritual
	name = "Ritual Knife"
	result = /obj/item/kitchen/knife/ritualdagger
	time = 300
	reqs = list(/obj/item/stack/sheet/metal = 2,
				/obj/item/stack/sheet/cloth = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/survival
	name = "Survival Knife"
	result = /obj/item/kitchen/knife/combat/survival
	time = 300
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/cloth = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/survival
	name = "Switchblade"
	result = /obj/item/switchblade
	time = 300
	reqs = list(/obj/item/stack/sheet/metal = 4,
				/obj/item/stack/sheet/cloth = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/throwingknife
	name = "Throwing Knife"
	result = /obj/item/throwing_star/throwingknife
	reqs = list(/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/sheet/cloth = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	time = 300
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

//swords

/datum/crafting_recipe/bmprsword
	name = "Bumper Sword"
	result = /obj/item/twohanded/fireaxe/bmprsword
	reqs = list(/obj/item/stack/sheet/metal = 25,
				/obj/item/stack/sheet/cloth = 2)
	traits = list(TRAIT_TECHNOPHOBE)
	time = 600
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/katana
	name = "Longsword"
	result = /obj/item/katana/scrap
	reqs = list(/obj/item/stack/sheet/metal = 20,
				/obj/item/stack/sheet/cloth = 2)
	traits = list(TRAIT_TECHNOPHOBE)
	time = 1000
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/gladuis
	name = "Gladius"
	result = /obj/item/claymore/machete/gladius
	reqs = list(/obj/item/stack/sheet/metal = 20,
				/obj/item/stack/sheet/cloth = 2)
	traits = list(TRAIT_TECHNOPHOBE)
	time = 600
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/reinforcemachete
	name = "Machete"
	result = /obj/item/claymore/machete/reinforced
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/cloth = 2)
	traits = list(TRAIT_TECHNOPHOBE)
	time = 600
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/shortsword
	name = "Shortsword"
	result = /obj/item/claymore
	reqs = list(/obj/item/stack/sheet/metal = 15,
				/obj/item/stack/sheet/cloth = 2)
	traits = list(TRAIT_TECHNOPHOBE)
	time = 600
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON


//polearms

/datum/crafting_recipe/bostaff
	name = "Quarterstaff"
	result = /obj/item/twohanded/bostaff
	time = 400
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/mineral/wood = 2)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/forgeglaive
	name = "Metal Glaive"
	result = /obj/item/twohanded/spear
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/mineral/wood = 4)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/forgethrowingspear
	name = "Throwing Spear"
	result = /obj/item/throwing_star/spear
	time = 300
	reqs = list(/obj/item/stack/sheet/metal = 2,
				/obj/item/stack/sheet/mineral/wood = 3)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/harpoon
	name = "Harpoon"
	result = /obj/item/throwing_star/spear/harpoon
	time = 400
	reqs = list(/obj/item/stack/sheet/metal = 5)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/pitchfork
	name = "Pitchfork"
	result = /obj/item/twohanded/pitchfork
	time = 400
	reqs = list(/obj/item/stack/sheet/metal = 3)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/sythe //fucc english
	name = "Scythe"
	result = /obj/item/scythe
	time = 400
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/mineral/wood = 4)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

//blunt

/datum/crafting_recipe/sledge
	name = "Sledgehammer"
	result = /obj/item/twohanded/sledgehammer
	time = 1000
	reqs = list(/obj/item/stack/sheet/metal = 30,
				/obj/item/stack/sheet/mineral/wood = 5)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/pipe
	name = "Pipe"
	result = /obj/item/claymore/machete/pipe
	time = 50
	reqs = list(/obj/item/stack/sheet/metal = 5)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/golf
	name = "Golf Club"
	result = /obj/item/claymore/machete/golf/teniron
	time = 300
	reqs = list(/obj/item/stack/sheet/metal = 10)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/pan
	name = "Frying Pan"
	result = /obj/item/claymore/machete/pipe/pan
	time = 300
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/mineral/wood = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

//miscweapons

/datum/crafting_recipe/fire_axe
	name = "Wood Axe"
	result = /obj/item/twohanded/fireaxe
	time = 300
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/mineral/wood = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/pick_axe
	name = "Pickaxe"
	result = /obj/item/pickaxe
	time = 300
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/mineral/wood = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/cpick_axe
	name = "Compact Pickaxe"
	result = /obj/item/pickaxe/mini
	time = 300
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/mineral/wood = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/shovel
	name = "Shovel"
	result = /obj/item/shovel
	time = 300
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/mineral/wood = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/hatchet
	name = "Hatchet"
	result = /obj/item/hatchet
	time = 300
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/mineral/wood = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

//fists

/datum/crafting_recipe/knucklespike
	name = "Spiked Knuckledusters"
	result = /obj/item/melee/unarmed/brass/spiked
	time = 50
	reqs = list(/obj/item/stack/sheet/metal = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/sap
	name = "Sappers"
	result = /obj/item/melee/unarmed/sappers
	time = 100
	reqs = list(/obj/item/stack/sheet/metal = 5)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

/datum/crafting_recipe/maceglove
	name = "Mace Glove"
	result = /obj/item/melee/unarmed/maceglove
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 20)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEWEAPON

//armorhelmets

/datum/crafting_recipe/salvagePA
	name = "Salvaged PA Helmet"
	result = /obj/item/clothing/head/helmet/f13/tribal
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/cloth = 3)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

/datum/crafting_recipe/bighorn
	name = "Bighorner Helmet"
	result = /obj/item/clothing/head/helmet/f13/fiend_reinforced
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/sheet/cloth = 6)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

/datum/crafting_recipe/metalhelmet
	name = "Metal Helmet"
	result = /obj/item/clothing/head/helmet/knight/fluff/metal/reinforced
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/cloth = 2)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

/datum/crafting_recipe/swag
	name = "Flame Metal Helmet"
	result = /obj/item/clothing/head/helmet/knight/f13/rider
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/cloth = 2)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

/datum/crafting_recipe/potonheaddamn
	name = "Salvaged Metal Helmet"
	result = /obj/item/clothing/head/f13/pot
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

/datum/crafting_recipe/salvageweld
	name = "Salvaged Welding Mask"
	result = /obj/item/clothing/head/welding/f13/fire
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 4,
				/obj/item/stack/sheet/cloth = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

/datum/crafting_recipe/legionaire
	name = "Legionaire Helmet"
	result = /obj/item/clothing/head/helmet/roman/legionaire
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/cloth = 5)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

/datum/crafting_recipe/glad
	name = "Gladiator Helmet"
	result = /obj/item/clothing/head/helmet/gladiator
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/cloth = 2)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

/datum/crafting_recipe/salvecomb
	name = "Salvaged Combat Helmet"
	result = /obj/item/clothing/head/helmet/f13/raidercombathelmet
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 30,
				/obj/item/stack/sheet/cloth = 5)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

/datum/crafting_recipe/mmask
	name = "Metal Mask"
	result = /obj/item/clothing/head/helmet/f13/metalmask/mk2
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/cloth = 2)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

//armors

/datum/crafting_recipe/heavytribe
	name = "Heavy Tribal Armor"
	result = /obj/item/clothing/suit/armor/f13/tribe_heavy_armor
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 20,
				/obj/item/stack/sheet/cloth = 5)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

/datum/crafting_recipe/lighttribe
	name = "Light Tribal Armor"
	result = /obj/item/clothing/suit/armor/f13/tribe_armor
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/cloth = 5)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

/datum/crafting_recipe/plate
	name = "Plate Armor"
	result = /obj/item/clothing/suit/armor/plate/crusader/plate
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 30,
				/obj/item/stack/sheet/cloth = 10)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

/datum/crafting_recipe/thejugg
	name = "Juggernaut Armor"
	result = /obj/item/clothing/suit/armor/plate/crusader/jugger
	time = 1000
	reqs = list(/obj/item/stack/sheet/metal = 90,
				/obj/item/stack/sheet/cloth = 3)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

/datum/crafting_recipe/thejugghelm
	name = "Juggernaut Helmet"
	result = /obj/item/clothing/head/helmet/plate/crusader/jugger
	time = 500
	reqs = list(/obj/item/stack/sheet/metal = 30,
				/obj/item/stack/sheet/cloth = 3)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

//shoe

/datum/crafting_recipe/plateboot
	name = "Plate Boots"
	result = /obj/item/clothing/shoes/f13/military/legionmetal
	time = 100
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/cloth = 5)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

//glove

/datum/crafting_recipe/plateglove
	name = "Plate Gloves"
	result = /obj/item/clothing/gloves/legion/legate
	time = 100
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/cloth = 5)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEARMOR

//misc

/datum/crafting_recipe/fork //only a spoon...
	name = "Fork"
	result = /obj/item/kitchen/fork
	time = 100
	reqs = list(/obj/item/stack/sheet/metal = 5)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEMISC

/datum/crafting_recipe/bowl
	name = "Bowl"
	result = /obj/item/reagent_containers/glass/bowl
	time = 100
	reqs = list(/obj/item/stack/sheet/glass = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEMISC

/datum/crafting_recipe/tallglass
	name = "Tall Glass"
	result = /obj/item/reagent_containers/food/drinks/drinkingglass
	time = 100
	reqs = list(/obj/item/stack/sheet/glass = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEMISC

/datum/crafting_recipe/shotglass
	name = "Shotglass"
	result = /obj/item/reagent_containers/food/drinks/drinkingglass/shotglass
	time = 100
	reqs = list(/obj/item/stack/sheet/glass = 1)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEMISC

/datum/crafting_recipe/igniter2
	name = "Igniter"
	result = /obj/item/crafting/igniter
	time = 100
	reqs = list(/obj/item/stack/sheet/metal = 5)
	traits = list(TRAIT_TECHNOPHOBE)
	tools = list(TOOL_FORGE)
	category = CAT_FORGE
	subcategory = CAT_FORGEMISC