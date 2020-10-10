/obj/mecha/combat/flyer
	desc = "A new,out-the-factory E-wing escort fighter. You'd be flattered were it not for the fact that the blasters were faulty beyond belief"
	name = "E-wing"
	icon = 'icons/mecha/mechsw.dmi'
	icon_state = "E-wing"
	step_in = 0
	dir_in = 1 //Facing North.
	max_integrity = 80
	deflect_chance = 25
	armor = list("melee" = 25, "bullet" = 20, "laser" = 50, "energy" = 50, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 100)
	max_temperature = 25000
	infra_luminosity = 6
	operation_req_access = list(ACCESS_REP)
	wreckage = /obj/structure/mecha_wreckage/gygax
	internal_damage_threshold = 12
	max_equip = 1
	step_energy_drain = 0
