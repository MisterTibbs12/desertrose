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
	name = "Lytech D8"
	desc = "A locally-produced blaster pistol, manufactured for local defense forces before the breakout of conflict between the New Republic and the Imperial Remnant on Mortooine. It is now found in use by both sides."
	icon_state = "Lytech D8"
	item_state = "AEP7"
	equipsound = 'sound/f13weapons/equipsounds/aep7equip.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 2
	can_scope = TRUE
	scopestate = "AEP7_scope"
	scope_x_offset = 7
	scope_y_offset = 22
	selfcharge = 1
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
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Westar)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/LPN12
	name = "LPN-12"
	desc = "An ancient,civillian-grade blaster imported into this system by the very first humans to settle here.Not very strong, but still usable. "
	icon_state = "LPN-12"
	item_state = "laser-pistol"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistolweak)
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
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Imperial)
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
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/laer)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/corellian
	name = "Corellian Rifle"
	desc = "A burst-fire blaster favoured by more veteran members of the New Republic."
	icon_state = "corellian_rifle"
	item_state = "laser-rifle9"
	fire_delay = 3.5
	burst_size = 3
	selfcharge = 1
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Corellian)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/a280c
	name = "Corellian Rifle"
	desc = "Standard issue in the New Republic, the A280c is a reliable blaster-rifle which has seen use across the Galaxy."
	icon_state = "a280c"
	item_state = "laser-rifle9"
	fire_delay = 3.5
	burst_size = 1
	selfcharge = 1
	zoomable = TRUE
	zoom_amt = 5 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 13
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Corellian)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/bowcaster
	name = "Bowcaster"
	desc = "While not authentic, this pure-energy Bowcaster still packs a punch, at the expense of a smaller capacity.."
	icon_state = "bowcaster"
	item_state = "laser-rifle9"
	fire_delay = 3.5
	burst_size = 1
	selfcharge = 2
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/bowcasterbolt)
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

/obj/item/gun/energy/laser/LytechD8
	name = "Lytech D8"
	desc = "A locally-produced blaster pistol, manufactured for local defense forces before the breakout of conflict between the New Republic and the Imperial Remnant on Mortooine. It is now found in use by both sides."
	icon_state = "Lytech D8"
	item_state = "blasterp"
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 2
	can_scope = TRUE
	scopestate = "AEP7_scope"
	scope_x_offset = 7
	scope_y_offset = 22
	selfcharge = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistolweak)
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

	/obj/item/gun/energy/laser/E11NOT
	name = "E-11"
	desc = "Made infamous by the Empire, the Blastech E-11 has seen service all across the galaxy, and is the Stormtrooper's best friend."
	icon_state = "E-11"
	item_state = "laser-rifle9"
	fire_delay = 3.5
	burst_size = 1
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Imperial)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/E_11
	name = "E11"
	desc = "Made infamous by the Empire, the Blastech E-11 has seen service all across the galaxy."
	icon_state = "E11h"
	item_state = "laser-rifle9"
	fire_delay = 2
	burst_size = 1
	selfcharge = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Imperial)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/bryar
	name = "Bryar Rifle Mod-L"
	desc = "Popular amongst Imperial citizens, the Bryar rifle is a commercial rifle using Imperial blaster technology."
	icon_state = "bryarrifle"
	item_state = "laser-rifle9"
	fire_delay = 2
	burst_size = 1
	selfcharge = 4
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Imperial)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/DH17
	name = "DH-17"
	desc = "A small carbine which has seen extensive use by the Rebel Alliance, and now by the New Republic. Small and compact."
	icon_state = "DH17"
	item_state = "blasterp"
	selfcharge = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Corellian)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/tuskenblaster
	name = "Cycler Rifle"
	desc = "A tusken cycler rifle, a traditional weapon for the sandpeople."
	icon_state = "cyclerrifle"
	item_state = "laser-rifle9"
	fire_delay = 3
	burst_size = 1
	selfcharge = 1
	can_bayonet = TRUE
	bayonetstate = "trenchgun"
	knife_x_offset = 23
	knife_y_offset = 14
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Repeater)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/SonicDestroyer
	name = "Sonic Cannon"
	desc = "This weapon seems old. Wonder if it still works...?"
	icon_state = "Sonic Rifle"
	item_state = "laser-rifle9"
	fire_delay = 2
	burst_size = 1
	selfcharge = 1
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/SonicCannon)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/guttergun
	name = "Gutter gun"
	desc = "A rapid fire blaster which has come to be much beloved by criminals of all standings and positions."
	icon_state = "guttergun"
	item_state = "laser-rifle9"
	fire_delay = 3
	burst_size = 4
	selfcharge = 1
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistolweak)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/gutterrifle
	name = "Gutter rifle"
	desc = "This cobbled together gun has been modified and re-built so many times,it's anyone's guess what this gun was originally built on."
	icon_state = "gutterrifle"
	item_state = "laser-rifle9"
	fire_delay = 3
	burst_size = 1
	selfcharge = 1
	zoomable = TRUE
	zoom_amt = 10 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 13
	can_bayonet = TRUE
	bayonetstate = "trenchgun"
	knife_x_offset = 23
	knife_y_offset = 14
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Repeater)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/outriderb
	name = "Outrider Blaster"
	desc = "A retro-fitted and upgraded Hunts-las, the Outrider fires a two-round burst at the cost of more frequent over-heating."
	icon_state = "outrider-blaster"
	item_state = "laser-rifle9"
	fire_delay = 3
	burst_size = 2
	selfcharge = 3
	zoomable = TRUE
	zoom_amt = 2 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 13
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/outrider)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/huntslas
	name = "Huntslas"
	desc = "A cheap copy of a Sorosuub hunting blaster, the Huntslas fires a heavy bolt but has low heat-tolerances due to amateur metal-work."
	icon_state = "Huntslas"
	item_state = "laser-rifle9"
	fire_delay = 3
	burst_size = 1
	selfcharge = 1
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/longrifle)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/scopedhuntslas
	name = "Scoped Huntslas"
	desc = "A cheap copy of a Sorosuub hunting blaster, the Huntslas fires a heavy bolt but has low heat-tolerances due to amateur metal-work. This one has a scope."
	icon_state = "Huntslas Scoped"
	item_state = "laser-rifle9"
	fire_delay = 3
	burst_size = 1
	selfcharge = 1
	zoomable = TRUE
	zoom_amt = 8 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 13
	can_bayonet = TRUE
	bayonetstate = "trenchgun"
	knife_x_offset = 23
	knife_y_offset = 14
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/longrifle)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/DLT19
	name = "DLT-19X"
	desc = "A long-range blaster, issued to Imperial scouts and marksmen."
	icon_state = "dlt"
	item_state = "laser-rifle9"
	fire_delay = 3
	burst_size = 1
	selfcharge = 1
	zoomable = TRUE
	zoom_amt = 10 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 13
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Repeater)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/DL44
	name = "DL-44"
	desc = "A popular blaster, the Blastech DL44 fires a heavy blaster bolt."
	icon_state = "dl44"
	item_state = "blasterp"
	selfcharge = 3
	ammo_type = list(/obj/item/ammo_casing/energy/laser/dl44)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/Bryarp
	name = "Bryar Pistol"
	desc = "A Bryar rifle, cut down and modified to be easier to handle with a single hand."
	icon_state = "Bryar pistol"
	item_state = "blasterp"
	selfcharge = 3
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Imperial)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/lhb
	name = "LHB 2"
	desc = "Produced by Lytech, a company operating on the neighbouring planet of Talruk, the LH-2 features an insulative barrel which helps mitigate overheating."
	icon_state = "lhb2"
	item_state = "blasterp"
	selfcharge = 7
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistolcharge)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/orinuma
	name = "Ori Numa"
	desc = "Custom-made for the Boss, this blaster pistols fires bursts of blaster bolts."
	icon_state = "orinuma"
	item_state = "blasterp"
	burst_size = 3
	selfcharge = 5
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistolburst)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/power5
	name = "Merr-Sonn Power 5 Blaster"
	desc = "One of Merr-Sonn's early attempts at entering the blaster market. The fact that Blastech lost the lawsuit against Merr-Sonn over this blaster is nothing short of a miracle, as the Power 5 is a near-copy of the DL44, the only true differences in construction being the plasma-bolt focuser, which creates a weaker projectile, the barrel-alloys, which are worse, and its lack of dignity. Find another blaster, and do so quickly."
	icon_state = "power5"
	item_state = "blasterp"
	selfcharge = 3
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistolweak)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	equipsound = 'sound/weapons/blasters/Draw.ogg'
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT