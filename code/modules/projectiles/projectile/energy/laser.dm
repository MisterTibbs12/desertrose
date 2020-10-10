/obj/item/gun/energy/laser
	name = "laser gun"
	desc = "A basic energy-based laser gun that fires concentrated beams of light which pass through glass and thin metal."
	icon_state = "laser"
	item_state = "retro"
	can_attachments = FALSE
	w_class = WEIGHT_CLASS_BULKY
	materials = list(MAT_METAL=2000)
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun)
	ammo_x_offset = 1
	shaded_charge = 1

/obj/item/gun/energy/laser/rcw/ui_action_click()
	burst_select()

/obj/item/gun/energy/laser/proc/burst_select()
	var/mob/living/carbon/human/user = usr
	select = !select
	if(!select)
		burst_size = 1
		to_chat(user, "<span class='notice'>You switch to a single stream laser.</span>")
	else
		burst_size = initial(burst_size)
		to_chat(user, "<span class='notice'>You switch to [burst_size]-stream laser.</span>")

	playsound(user, 'sound/f13weapons/laserswitch.ogg', 80, 1)
	update_icon()
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/gun/energy/laser/practice
	name = "practice laser gun"
	desc = "A modified version of the basic laser gun, this one fires less concentrated energy bolts designed for target practice."
	ammo_type = list(/obj/item/ammo_casing/energy/laser/practice)
	clumsy_check = 0
	item_flags = NONE

/obj/item/gun/energy/laser/retro
	name ="retro laser gun"
	icon_state = "retro"
	desc = "An older model of the basic lasergun, no longer used by Vault-Tec's private security or military forces. Nevertheless, it is still quite deadly and easy to maintain, making it a favorite amongst pirates and other outlaws."
	ammo_x_offset = 3

/obj/item/gun/energy/laser/retro/old
	name ="laser gun"
	icon_state = "retro"
	desc = "First generation lasergun, developed by Vault-Tec. Suffers from ammo issues but its unique ability to recharge its ammo without the need of a magazine helps compensate. You really hope someone has developed a better lasergun while you were in cyro."
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun/old)
	ammo_x_offset = 3

/obj/item/gun/energy/laser/captain
	name = "antique laser gun"
	icon_state = "caplaser"
	item_state = "caplaser"
	desc = "This is an antique laser gun. All craftsmanship is of the highest quality. It is decorated with assistant leather and chrome. The object menaces with spikes of energy. It's usually given to high-ranking members within the Brotherhood."
	force = 10
	ammo_x_offset = 3
	selfcharge = 1
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | ACID_PROOF

/obj/item/gun/energy/laser/captain/scattershot
	name = "scatter shot laser rifle"
	icon_state = "lasercannon"
	item_state = "laser"
	desc = "An industrial-grade heavy-duty laser rifle with a modified laser lens to scatter its shot into multiple smaller lasers. The inner-core can self-charge for theoretically infinite use."
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter, /obj/item/ammo_casing/energy/laser)

/obj/item/gun/energy/laser/cyborg
	can_charge = 0
	desc = "An energy-based laser gun that draws power from the cyborg's internal energy cell directly. So this is what freedom looks like?"
	use_cyborg_cell = 1

/obj/item/gun/energy/laser/cyborg/emp_act()
	return

/obj/item/gun/energy/laser/scatter/shotty
	name = "energy shotgun"
	icon = 'icons/obj/guns/projectile.dmi'
	icon_state = "cshotgun"
	item_state = "shotgun"
	desc = "A combat shotgun gutted and refitted with an internal laser system. Can switch between taser and scattered disabler shots."
	shaded_charge = 0
	pin = /obj/item/firing_pin/implant/mindshield
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/disabler, /obj/item/ammo_casing/energy/electrode)

///Laser Cannon

/obj/item/gun/energy/lasercannon
	name = "accelerator laser cannon"
	desc = "An advanced laser cannon that does more damage the farther away the target is."
	icon_state = "lasercannon"
	item_state = "laser"
	w_class = WEIGHT_CLASS_BULKY
	force = 10
	flags_1 =  CONDUCT_1
	slot_flags = ITEM_SLOT_BACK
	ammo_type = list(/obj/item/ammo_casing/energy/laser/accelerator)
	pin = null
	ammo_x_offset = 3

/obj/item/ammo_casing/energy/laser/accelerator
	projectile_type = /obj/item/projectile/beam/laser/accelerator
	select_name = "accelerator"
	fire_sound = 'sound/weapons/lasercannonfire.ogg'

/obj/item/projectile/beam/laser/accelerator
	name = "accelerator laser"
	icon_state = "scatterlaser"
	range = 255
	damage = 6

/obj/item/projectile/beam/laser/accelerator/Range()
	..()
	damage += 7
	transform *= 1 + ((damage/7) * 0.2)//20% larger per tile

/obj/item/gun/energy/xray
	name = "x-ray laser gun"
	desc = "A high-power laser gun capable of expelling concentrated x-ray blasts that pass through multiple soft targets and heavier materials."
	icon_state = "xray"
	item_state = null
	ammo_type = list(/obj/item/ammo_casing/energy/xray)
	pin = null
	ammo_x_offset = 3

////////Laser Tag////////////////////

/obj/item/gun/energy/laser/bluetag
	name = "laser tag gun"
	icon_state = "bluetag"
	desc = "A retro laser gun modified to fire harmless blue beams of light. Sound effects included!"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/bluetag)
	item_flags = NONE
	clumsy_check = FALSE
	pin = /obj/item/firing_pin/tag/blue
	ammo_x_offset = 2
	selfcharge = TRUE

/obj/item/gun/energy/laser/bluetag/hitscan
	ammo_type = list(/obj/item/ammo_casing/energy/laser/bluetag/hitscan)

/obj/item/gun/energy/laser/redtag
	name = "laser tag gun"
	icon_state = "redtag"
	desc = "A retro laser gun modified to fire harmless beams red of light. Sound effects included!"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/redtag)
	item_flags = NONE
	clumsy_check = FALSE
	pin = /obj/item/firing_pin/tag/red
	ammo_x_offset = 2
	selfcharge = TRUE

/obj/item/gun/energy/laser/redtag/hitscan
	ammo_type = list(/obj/item/ammo_casing/energy/laser/redtag/hitscan)


//Fallout

//six shots with the laser musket, stronger than a regular laser rifle,
//need electronics,
//a pipe rifle and a nuka cola bottle.
//Then you need makeshift energy cells, so empty MF cells. and electronics
//make the musket laser have like a 2 second delay after each shot

///obj/item/gun/energy/laser/musket
//	name = "Homemade Laser Musket"
//	desc = "A crudely made laser Musket, inneficient but powerful enough"
//	icon_state = "las_musket"
//	item_state = "las_musket"
//	fire_delay = 80
//	equipsound = 'sound/f13weapons/equipsounds/aer9equip.ogg'
//	ammo_type = list(/obj/item/ammo_casing/energy/laser/musket)
//	cell_type = /obj/item/stock_parts/cell/ammo/mfc
//	w_class = WEIGHT_CLASS_BULKY
//	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/attackby(obj/item/A, mob/user, params)
	. = ..()
	if(.)
		return
	if(istype(A, /obj/item/stock_parts/cell/ammo))
		var/obj/item/stock_parts/cell/ammo/AM = A
		if(istype(AM, cell_type))
			var/obj/item/stock_parts/cell/ammo/oldcell = cell
			if(user.transferItemToLoc(AM, src))
				cell = AM
				if(oldcell)
					to_chat(user, "<span class='notice'>You perform a tactical reload on \the [src], replacing the cell.</span>")
					oldcell.dropped()
					oldcell.forceMove(get_turf(src.loc))
					oldcell.update_icon()
				//else
				//	to_chat(user, "<span class='notice'>You insert the cell into \the [src].</span>")

				//playsound(src, 'sound/weapons/autoguninsert.ogg', 60, TRUE)
				//chamber_round()
				A.update_icon()
				update_icon()
				return 1
			else
				to_chat(user, "<span class='warning'>You cannot seem to get \the [src] out of your hands!</span>")

/obj/item/gun/energy/laser/aer9
	name = "\improper AER9 laser rifle"
	desc = "A sturdy and advanced military grade pre-war service laser rifle"
	icon_state = "laser"
	item_state = "laser-rifle9"
	can_scope = TRUE
	scopestate = "AEP7_scope"
	scope_x_offset = 12
	scope_y_offset = 20
	fire_delay = 3
	equipsound = 'sound/f13weapons/equipsounds/aer9equip.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/lasgun)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/pistol
	name = "\improper AEP7 laser pistol"
	desc = "A basic energy-based laser gun that fires concentrated beams of light."
	icon_state = "AEP7"
	item_state = "AEP7"
	equipsound = 'sound/f13weapons/equipsounds/aep7equip.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 2
	can_scope = TRUE
	scopestate = "AEP7_scope"
	scope_x_offset = 7
	scope_y_offset = 22
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistol)
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/solar
	name = "\improper Solar Scorcher"
	desc = "This modified AEP7 laser pistol takes its power from the sun, recharging slowly using stored solar energy. However, it cannot be recharged manually as a result."
	icon_state = "solarscorcher"
	item_state = "solarscorcher"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/solar) //30 damage, 20 AP
	cell_type = /obj/item/stock_parts/cell/ammo/ec //10 shots, self-charges
	equipsound = 'sound/f13weapons/equipsounds/aep7equip.ogg'
	can_charge = 0
	selfcharge = 1
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/scatter
	name = "Scatter Blaster"
	desc = "A locally-made scatter blaster, favoured by local law enforcement, smugglers and gutter-scum."
	icon_state = "tribeam"
	item_state = "laser-rifle9"
	fire_delay = 3
	equipsound = 'sound/f13weapons/equipsounds/tribeamequip.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/plasma
	name ="plasma rifle"
	item_state = "plasma"
	icon_state = "plasma"
	fire_delay = 3.5
	desc = "A top of line miniaturized plasma caster built by REPCONN in the wake of the Z43-521P failure. It is supperior to all previous rifles to enter service in the USCC."
	ammo_type = list(/obj/item/ammo_casing/energy/plasma)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	equipsound = 'sound/f13weapons/equipsounds/plasequip.ogg'
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	projectile_speed = 1.1

/obj/item/gun/energy/laser/plasma/scatter
	name = "multiplas Rifle"
	item_state = "multiplas"
	icon_state = "multiplas"
	fire_delay = 3
	desc = "A modified A3-20 plasma caster built by REPCONN equipped with a multicasting kit that creates multiple weaker clots."
	equipsound = 'sound/f13weapons/equipsounds/plasequip.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/scatter)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	weapon_weight = WEAPON_HEAVY
	projectile_speed = 1.2

/obj/item/gun/energy/laser/plasma/pistol
	name ="plasma pistol"
	item_state = "plasma-pistol"
	icon_state = "plasma-pistol"
	desc = "A pistol-sized miniaturized plasma caster built by REPCONN. It fires heavy low penetration plasma clots."
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/pistol)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	equipsound = 'sound/f13weapons/equipsounds/pistolplasequip.ogg'
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT
	projectile_speed = 1.1

/obj/item/gun/energy/laser/aer14
	name ="plasma pistol"
	item_state = "plasma-pistol"
	icon_state = "plasma-pistol"
	desc = "A pistol-sized miniaturized plasma caster built by REPCONN. It fires heavy low penetration plasma clots."
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/pistol)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	equipsound = 'sound/f13weapons/equipsounds/pistolplasequip.ogg'
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT
	projectile_speed = 1.1

/obj/item/gun/energy/laser/wattz
	name ="plasma pistol"
	item_state = "plasma-pistol"
	icon_state = "plasma-pistol"
	desc = "A pistol-sized miniaturized plasma caster built by REPCONN. It fires heavy low penetration plasma clots."
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/pistol)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	equipsound = 'sound/f13weapons/equipsounds/pistolplasequip.ogg'
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT
	projectile_speed = 1.1

/obj/item/gun/energy/laser/wattz/magneto
	name ="plasma pistol"
	item_state = "plasma-pistol"
	icon_state = "plasma-pistol"
	desc = "A pistol-sized miniaturized plasma caster built by REPCONN. It fires heavy low penetration plasma clots."
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/pistol)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	equipsound = 'sound/f13weapons/equipsounds/pistolplasequip.ogg'
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT
	projectile_speed = 1.1

/obj/item/gun/energy/laser/plasma/glock
	name ="plasma pistol"
	item_state = "plasma-pistol"
	icon_state = "plasma-pistol"
	desc = "A pistol-sized miniaturized plasma caster built by REPCONN. It fires heavy low penetration plasma clots."
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/pistol)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	equipsound = 'sound/f13weapons/equipsounds/pistolplasequip.ogg'
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT
	projectile_speed = 1.1

/obj/item/gun/energy/laser/plasma/glock/extended
	name ="plasma pistol"
	item_state = "plasma-pistol"
	icon_state = "plasma-pistol"
	desc = "A pistol-sized miniaturized plasma caster built by REPCONN. It fires heavy low penetration plasma clots."
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/pistol)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	equipsound = 'sound/f13weapons/equipsounds/pistolplasequip.ogg'
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT
	projectile_speed = 1.1

/obj/item/gun/energy/laser/plasma/Westar34
	name = "Westar 34"
	item_state = "plasma-pistol"
	icon_state = "Westar 34"
	desc = "Designed by Westar and popularized by bounty hunters, the Westar 34 is a slick blaster pistol which has earned its reputation."
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/pistol/glock)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	equipsound = 'sound/f13weapons/equipsounds/pistolplasequip.ogg'
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT
	projectile_speed = 1.1

/obj/item/gun/energy/laser/plasma/Westar35
	name ="Westar 35"
	item_state = "plasma-pistol"
	icon_state = "Westar 35"
	desc = "Becoming popular on Mandalore, the Westar 35 has the addition of a durable frame and an increased capacity to it's predecessor."
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/pistol/glock/extended)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/LPN12
	name = "LPN-12"
	desc = "An ancient,civillian-grade blaster imported into this system by the very first humans to settle here.Not very strong, but still usable. "
	icon_state = "LPN-12"
	item_state = "laser-pistol"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Civilian)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	equipsound = 'sound/f13weapons/equipsounds/aep7equip.ogg'
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/LPN12a
	name = "Modified LPN-12"
	desc = "Tweaked and customised by some long-dead figure, this LPN has more penetrating power."
	icon_state = "Modified LPN-12"
	item_state = "laser-pistol"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Civilian)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/plasma/alien
	name = "alien blaster"
	item_state = "alienblaster"
	icon_state = "alienblaster"
	desc = "This weapon is unlike any other you've ever seen before, and appears to be made out of metals not usually found on Earth. It certainly packs a punch, though."
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/alien)
	cell_type = /obj/item/stock_parts/cell/ammo/alien //unchargeable, but removable
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/repeater
	name = "Nameless Repeater"
	desc = "This blaster seems...old. It has an archaic design, but nontheless is an effective repeating blaster."
	icon_state = "repeater"
	item_state = "rcw"
	fire_delay = 3
	burst_size = 4
	burst_delay = 2.5
	equipsound = 'sound/f13weapons/equipsounds/RCWequip.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Repeater)
	cell_type = /obj/item/stock_parts/cell/ammo/ecp
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/rcw/burst_select()
	var/mob/living/carbon/human/user = usr
	switch(select)
		if(0)
			select += 1
			burst_size = 4
			fire_delay = 3
			to_chat(user, "<span class='notice'>You switch to a dual-stream laser.</span>")
		if(1)
			select = 0
			burst_size = 1
			fire_delay = 2.3
			to_chat(user, "<span class='notice'>You switch to a singular stream laser.</span>")
	playsound(user, 'sound/f13weapons/laserswitch.ogg', 80, 1)
	update_icon()
	return


/obj/item/gun/energy/laser/rcw/afterattack()
	. = ..()
	empty_alarm()
	return

/obj/item/gun/energy/laser/laer
	name = "\improper LAER"
	desc = "The Laser Assister Energy Rifle is a powerful pre-war weapon developed just before the turn of the Great War. Due to its incredible rarity and unprecedented firepower, the weapon is coveted and nearly solely possesed by the Brotherhood of Steel; typically held by an Elder as a status symbol."
	icon_state = "laer"
	item_state = "laer"
	fire_delay = 3
	burst_size = 1
	equipsound = 'sound/f13weapons/equipsounds/laerequip.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/laer)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/corellian
	name = "Corellian Rifle"
	desc = "A shortened carbine,favoured by more veteran members of the New Republic."
	icon_state = "Corellian Rifle"
	item_state = "laser-rifle9"
	fire_delay = 3.5
	burst_size = 1
	equipsound = 'sound/f13weapons/equipsounds/aer14equip.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Corellian)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/E11
	name = "E-11"
	desc = "Made infamous by the Empire, the Blastech E-11 has seen service all across the galaxy, and is the Stormtrooper's best friend."
	icon_state = "E-11"
	item_state = "laser-rifle9"
	fire_delay = 3.5
	burst_size = 1
	equipsound = 'sound/f13weapons/equipsounds/aer14equip.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Imperial)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/E11a
	name = "Wild Space E-11"
	desc = "Expeditions into Wild Space taught valuable lessons to the few Stormtroopers accompanying these ventures. Modified to lay down a hail of blasterfire."
	icon_state = "Outer Rim E-11"
	item_state = "laser-rifle9"
	fire_delay = 3.5
	burst_size = 5
	equipsound = 'sound/f13weapons/equipsounds/aer14equip.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Imperial)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/gammagun
	name = "Gamma gun"
	desc = "A very crude weapon overall and appears to have been built from scavenged junk found throughout the wasteland."
	icon_state = "gammagun"
	item_state = "gammagun"
	ammo_type = list(/obj/item/ammo_casing/energy/gammagun)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	ammo_x_offset = 3
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_BELT
