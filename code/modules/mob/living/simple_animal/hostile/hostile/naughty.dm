#define CUM_TARGET_THROAT_FUNCLAW "throat"
#define CUM_TARGET_VAGINA_FUNCLAW "vagina"
#define CUM_TARGET_ANUS_FUNCLAW "anus"
#define CHARGING

/mob/living/simple_animal/naughty
	name = "Horny Acklay"
	desc = "Adapted for the non-perennial waterbeds on Mortooine, the Dwarf Acklay is one of the most dangerous creatures on Mortooine."
	icon = 'icons/mob/SW13/Rimmobs.dmi'
	icon_state = "Dwarfackley"
	icon_living = "Dwarfackley"
	icon_dead = "Dwarfackley_d"
	mob_biotypes = list(MOB_ORGANIC, MOB_BEAST)
	speak_chance = 0
	turns_per_move = 2
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/cazador_meat = 2, /obj/item/stack/sheet/sinew = 2, /obj/item/stack/sheet/animalhide/chitin = 3)
	response_help = "pets"
	response_disarm = "gently pushes aside"
	response_harm = "hits"
	aggrosound = list('sound/SW13mobs/Lizard/Screech.ogg')
	idlesound = list('sound/SW13mobs/Lizard/Chuff.ogg')
	speed = 0.5
	maxHealth = 250
	health = 320
	attacktext = "slashes"
	attack_sound = 'sound/creatures/cazador_attack.ogg'
	speak_emote = list("shrieks")
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	a_intent = INTENT_HARM
	gold_core_spawnable = HOSTILE_SPAWN
	death_sound = 'sound/f13npc/cazador/cazador_death.ogg'
	var/pound_cooldown = 0
	var/chosen_hole

/mob/living/simple_animal/naughty/bullet_act(obj/item/projectile/Proj)
	if(!Proj)
		return
	if(prob(10))
		visible_message("<span class='danger'>\The [src] growls, enraged!</span>")
		sleep(3)
		Charge()
	if(prob(85) || Proj.damage > 30) //prob(x) = chance for proj to actually do something, adjust depending on how OP you want deathclaws to be
		return ..()
	else
		visible_message("<span class='danger'>\The [Proj] bounces off \the [src]'s thick hide!</span>")
		return 0

/mob/living/simple_animal/naughty/do_attack_animation(atom/A, visual_effect_icon)
	if(!charging)
		..()

/mob/living/simple_animal/naughty/AttackingTarget()
	if(!charging)
		return ..()

/mob/living/simple_animal/naughty/Goto(target, delay, minimum_distance)
	if(!charging)
		..()

/mob/living/simple_animal/naughty/Move()
	if(charging)
		new /obj/effect/temp_visual/decoy/fading(loc,src)
		DestroySurroundings()
	. = ..()
	if(charging)
		DestroySurroundings()

/mob/living/simple_animal/naughty/proc/Charge()
	var/turf/T = get_turf(target)
	if(!T || T == loc)
		return
	charging = TRUE
	visible_message("<span class='danger'>[src] charges!</span>")
	DestroySurroundings()
	walk(src, 0)
	setDir(get_dir(src, T))
	var/obj/effect/temp_visual/decoy/D = new /obj/effect/temp_visual/decoy(loc,src)
	animate(D, alpha = 0, color = "#FF0000", transform = matrix()*2, time = 1)
	sleep(3)
	throw_at(T, get_dist(src, T), 1, src, 0, callback = CALLBACK(src, .proc/charge_end))

/mob/living/simple_animal/naughty/proc/charge_end(list/effects_to_destroy)
	charging = FALSE
	if(target)
		Goto(target, move_to_delay, minimum_distance)

/mob/living/simple_animal/hostile/deathclaw/Bump(atom/A)
	if(charging)
		if(isturf(A) || isobj(A) && A.density)
			A.ex_act(EXPLODE_HEAVY)
		DestroySurroundings()
	..()

/mob/living/simple_animal/naughty/throw_impact(atom/A)
	if(!charging)
		return ..()

	else if(isliving(A))
		var/mob/living/L = A
		L.visible_message("<span class='danger'>[src] slams into [L]!</span>", "<span class='userdanger'>[src] slams into you!</span>")
		L.apply_damage(melee_damage_lower/2, BRUTE)
		playsound(get_turf(L), 'sound/effects/meteorimpact.ogg', 100, 1)
		shake_camera(L, 4, 3)
		shake_camera(src, 2, 3)
		var/throwtarget = get_edge_target_turf(src, get_dir(src, get_step_away(L, src)))
		L.throw_at(throwtarget, 3)


	charging = FALSE
	charging = FALSE



	if(get_dist(src, M) > 0)
		a_intent = INTENT_GRAB
		grab_state = GRAB_NECK

		start_pulling(M, 1)
		M.grabbedby(src)
		M.drop_all_held_items()
		M.stop_pulling()

	else if(get_dist(src, M) == 0)
		if(refactory_period > 0)
			..()
			return

		if(pound_cooldown < world.time)
			chosen_hole = null
			while (chosen_hole == null)
				pickNewHole(M)
			pound_cooldown = world.time + 2000

		if(M.client && M.client.prefs)
			if(M.client.prefs.wasteland_toggles & VERB_CONSENT)
				pound(M)
				sleep(rand(1, 3))
				pound(M)
				sleep(rand(1, 3))
				pound(M)
			else
				..()

/mob/living/simple_animal/naughty/proc/pickNewHole(mob/living/M)
	switch(rand(2))
		if(0)
			chosen_hole = CUM_TARGET_ANUS_FUNCLAW
		if(1)
			if(M.has_vagina())
				chosen_hole = CUM_TARGET_VAGINA_FUNCLAW
		if(2)
			chosen_hole = CUM_TARGET_THROAT_FUNCLAW

/mob/living/simple_animal/naughty/proc/pound(mob/living/M)
	if(refactory_period > 0)
		return

	switch(chosen_hole)
		if(CUM_TARGET_ANUS_FUNCLAW)
			if(tearSlot(M, SLOT_WEAR_SUIT))
				return
			if(tearSlot(M, SLOT_W_UNIFORM))
				return
			do_anal(M)

		if(CUM_TARGET_VAGINA_FUNCLAW)
			if(tearSlot(M, SLOT_WEAR_SUIT))
				return
			if(tearSlot(M, SLOT_W_UNIFORM))
				return
			do_vaginal(M)

		if(CUM_TARGET_THROAT_FUNCLAW)
			if(tearSlot(M, SLOT_HEAD))
				return
			if(tearSlot(M, SLOT_WEAR_MASK))
				return
			do_throatfuck(M)

/mob/living/simple_animal/naughty/cum(mob/living/M)

	if(refactory_period > 0)
		return

	var/message

	if(!istype(M))
		chosen_hole = null

	switch(chosen_hole)
		if(CUM_TARGET_THROAT_FUNCLAW)
			if(M.has_mouth() && M.mouth_is_free())
				message = "shoves their fat reptillian cock deep down \the [M]'s throat and cums."
				M.reagents.add_reagent("cum", rand(9,15))
			else
				message = "cums on \the [M]'s face."
		if(CUM_TARGET_VAGINA_FUNCLAW)
			if(M.is_bottomless() && M.has_vagina())
				message = "rams its meaty cock into \the [M]'s pussy and fills it with sperm."
				M.reagents.add_reagent("cum", rand(8,12))
			else
				message = "cums on \the [M]'s belly."
		if(CUM_TARGET_ANUS_FUNCLAW)
			if(M.is_bottomless() && M.has_anus())
				message = "hilts its knot into \the [M]'s ass and floods it with Deathclaw jizz."
				M.reagents.add_reagent("cum", rand(8,12))
			else
				message = "cums on \the [M]'s backside."
		else
			message = "cums on the floor!"

	playsound(loc, "honk/sound/interactions/clawcum[rand(1, 2)].ogg", 70, 1, -1)
	visible_message("<font color=purple><b>\The [src]</b> [message]</font>")
	shake_camera(M, 3, 1)
	set_is_fucking(null ,null)

	refactory_period = 5
	lust = 5
	lust_tolerance += 50

	sleep(20)
	playsound(loc, "honk/sound/interactions/slap.ogg", 70, 1, -1)
	visible_message("<span class='danger'>\The [src]</b> slaps \the [M] right on the ass!</span>", \
			"<span class='userdanger'>\The [src]</b> slaps \the [M] right on the ass!</span>", null, COMBAT_MESSAGE_RANGE)

/mob/living/simple_animal/naughty/proc/tearSlot(mob/living/M, slot)
	var/obj/item/W = M.get_item_by_slot(slot)
	if(W)
		M.dropItemToGround(W)
		playsound(loc, "sound/items/poster_ripped.ogg", 70, 1, -1)
		visible_message("<span class='danger'>\The [src]</b> tears off \the [M]'s clothes!</span>", \
				"<span class='userdanger'>\The [src]</b> tears off \the [M]'s clothes!</span>", null, COMBAT_MESSAGE_RANGE)
		return TRUE
	return FALSE

