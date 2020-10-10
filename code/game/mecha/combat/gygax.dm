/obj/mecha/combat/gygax
	desc = "A lightweight, security exosuit. Popular among private and corporate security."
	name = "\improper Gygax"
	icon_state = "gygax"
	step_in = 3
	dir_in = 1 //Facing North.
	max_integrity = 250
	deflect_chance = 5
	armor = list("melee" = 25, "bullet" = 20, "laser" = 30, "energy" = 15, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 100)
	max_temperature = 25000
	infra_luminosity = 6
	wreckage = /obj/structure/mecha_wreckage/gygax
	internal_damage_threshold = 35
	max_equip = 3
	step_energy_drain = 3

/obj/mecha/combat/gygax/ATEP
	desc = "The All-Terrain-Enforcement-Platform, an experimental exosuit intended to act as a cheap substitute to the AT-ST, for use by garrisons and urban deployments."
	name = "AT-EP"
	icon_state = "at-ep"
	max_integrity = 400
	deflect_chance = 40
	armor = list("melee" = 40, "bullet" = 40, "laser" = 99, "energy" = 35, "bomb" = 20, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 100)
	max_temperature = 35000
	leg_overload_coeff = 100
	operation_req_access = list(ACCESS_SYNDICATE)
	wreckage = /obj/structure/mecha_wreckage/gygax/dark
	max_equip = 4

/obj/mecha/combat/gygax/ATST
	desc = "The All-Terrain-Scout-Transport, a workhorse of the Remnant."
	name = "AT-ST"
	icon = 'icons/mecha/mechswbig.dmi'
	icon_state = "atst"
	max_integrity = 600
	deflect_chance = 40
	armor = list("melee" = 40, "bullet" = 80, "laser" = 99, "energy" = 99, "bomb" = 20, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 100)
	max_temperature = 35000
	leg_overload_coeff = 100
	step_energy_drain = 0
	operation_req_access = list(ACCESS_REM)
	wreckage = /obj/structure/mecha_wreckage/gygax/dark
	max_equip = 3
/obj/mecha/combat/gygax/dark/loaded/Initialize()
	. = ..()
	var/obj/item/mecha_parts/mecha_equipment/ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/heavyblaster
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/launcher/flashbang
	ME.attach(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/tesla_energy_relay
	ME.attach(src)

/obj/mecha/combat/gygax/dark/add_cell(obj/item/stock_parts/cell/C=null)
	if(C)
		C.forceMove(src)
		cell = C
		return
	cell = new /obj/item/stock_parts/cell/hyper(src)


/obj/mecha/combat/gygax/GrantActions(mob/living/user, human_occupant = 0)
	..()
	overload_action.Grant(user, src)

/obj/mecha/combat/gygax/dark/GrantActions(mob/living/user, human_occupant = 0)
	..()
	thrusters_action.Grant(user, src)


/obj/mecha/combat/gygax/RemoveActions(mob/living/user, human_occupant = 0)
	..()
	overload_action.Remove(user)

/obj/mecha/combat/gygax/dark/RemoveActions(mob/living/user, human_occupant = 0)
	..()
	thrusters_action.Remove(user)

/obj/mecha/combat/gygax/dark/loaded/Initialize()
	. = ..()
	var/obj/item/mecha_parts/mecha_equipment/ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/carbine
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/launcher/flashbang
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/teleporter
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/tesla_energy_relay
	ME.attach(src)

/obj/mecha/combat/gygax/dark/add_cell(obj/item/stock_parts/cell/C=null)
	if(C)
		C.forceMove(src)
		cell = C
		return
	cell = new /obj/item/stock_parts/cell/hyper(src)


/obj/mecha/combat/gygax/GrantActions(mob/living/user, human_occupant = 0)
	..()
	overload_action.Grant(user, src)

/obj/mecha/combat/gygax/dark/GrantActions(mob/living/user, human_occupant = 0)
	..()
	thrusters_action.Grant(user, src)


/obj/mecha/combat/gygax/RemoveActions(mob/living/user, human_occupant = 0)
	..()
	overload_action.Remove(user)

/obj/mecha/combat/gygax/dark/RemoveActions(mob/living/user, human_occupant = 0)
	..()
	thrusters_action.Remove(user)


