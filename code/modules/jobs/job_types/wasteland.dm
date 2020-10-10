/datum/job/wasteland
	department_flag = WASTELAND


/*
Great Khan
*/

/datum/job/wasteland/f13gutter
	title = "Gutter Ganger"
	flag = F13PUSHER
	department_head = list("Captain")
	head_announce = list("Security")
	faction = "Wastelander"
	total_positions = 15
	spawn_positions = 15
	description = "The meanest of the mean, the sliest of the sly, the Gutters are going to run Mos Mora forever! Haggle for every single credit you can, pride yourselves as the rulers of Mos Mora, and sell deathsticks. "
	supervisors = "The Boss."
	selection_color = "#ff915e"
	exp_requirements = 0
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/wasteland/f13gutter

	access = list()
	minimal_access = list()

/datum/outfit/job/wasteland/f13gutter
	name = "Gutter Ganger"
	jobtype = /datum/job/wasteland/f13gutter

	id = null
	ears = null
	belt = /obj/item/claymore/machete/pipe
	backpack = /obj/item/storage/backpack/satchel/sec
	satchel = /obj/item/storage/backpack/satchel/sec

	suit = /obj/item/clothing/suit/armor/f13/leatherarmor/reinforced
	uniform = /obj/item/clothing/under/f13/mechanic

/datum/outfit/job/wasteland/f13gutter/pre_equip(mob/living/carbon/human/H)
	..()
	r_pocket = pick(
		/obj/item/flashlight, \
		/obj/item/flashlight/flare)
	l_pocket = /obj/item/storage/bag/money/small/khan
	backpack_contents = list(
		/obj/item/restraints/handcuffs=1, \
		/obj/item/reagent_containers/pill/patch/deathstick=2, \
		/obj/item/reagent_containers/syringe/medx=1)
	suit_store = pick(
		/obj/item/gun/energy/laser/guttergun, \
		/obj/item/gun/energy/laser/gutterrifle, \
		/obj/item/gun/energy/laser/gutterrifle, \
		/obj/item/gun/energy/laser/lhb)
	head = /obj/item/clothing/head/bandana
	shoes = /obj/item/clothing/shoes/jackboots

/datum/outfit/job/wasteland/f13gutter/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

/datum/job/wasteland/f13pusher
	title = "The Boss"
	flag = F13PUSHER
	department_head = list("Captain")
	head_announce = list("Security")
	faction = "Wastelander"
	total_positions = 1
	spawn_positions = 1
	description = "It took the blood of many to build up the Gutter Gang, and now you find yourself in control of Mos Mora. You care for two things: Your gang, and credits. Your agents inform you that both the Remnant and the New Republic are running low on supplies, and with their fleets too occupied in other sectors, Mos Mora is the only available settlement for resupply. Communicate with them via the hololink and see which side will give you a better deal for your cooperation, but take care: The other side might just occupy you by force. "
	supervisors = "your gang leadership"
	selection_color = "#ff915e"
	exp_requirements = 0
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/wasteland/f13pusher

	access = list()
	minimal_access = list()

/datum/outfit/job/wasteland/f13pusher
	name = "The Boss"
	jobtype = /datum/job/wasteland/f13pusher

	id = /obj/item/card/id/gutter
	ears = null
	belt = /obj/item/claymore/machete/pipe
	backpack = /obj/item/storage/backpack/satchel/sec
	satchel = /obj/item/storage/backpack/satchel/sec
	suit = /obj/item/clothing/suit/armor/f13/pdf
	uniform = /obj/item/clothing/under/f13/mechanic

/datum/outfit/job/wasteland/f13pusher/pre_equip(mob/living/carbon/human/H)
	..()
	r_pocket = pick(
		/obj/item/flashlight)
	l_pocket = /obj/item/storage/bag/money/small/khan
	suit_store = /obj/item/gun/energy/laser/orinuma
	head = /obj/item/clothing/head/bandana
	shoes = /obj/item/clothing/shoes/jackboots

/datum/outfit/job/wasteland/f13pusher/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return


/datum/job/wasteland/f13wastelander
	title = "Mos Mora Civilian"
	flag = F13WASTELANDER
	faction = "Wastelander"
	total_positions = -1
	spawn_positions = -1
	description = "The abject poverty of Mos Mora is beyond crushing. The Gutters are hardly a functioning government and the migration of Dwarf Ackleys into the nearby lake have forced you to rely on the vapourators for drinking water. Vapourators which the Tusken warbands target in their raids. At least the alcohol still tastes good. Perhaps you should try striking out in the world? After all, Mortooine is a big place, and who knows what you might find..."
	supervisors = "no one"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/wasteland/f13wastelander

	access = list()		//we can expand on this and make alterations as people suggest different loadouts
	minimal_access = list()

/datum/outfit/job/wasteland/f13wastelander
	name = "Mos Mora Civilian"
	jobtype = /datum/job/wasteland/f13wastelander

	id = null
	ears = null
	belt = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer

/datum/outfit/job/wasteland/f13wastelander/pre_equip(mob/living/carbon/human/H)
	..()
	r_hand = /obj/item/switchblade
	uniform = /obj/item/clothing/under/f13/settler
	suit = /obj/item/clothing/suit/armor/f13/scumjacket
	l_pocket = 	/obj/item/reagent_containers/food/drinks/flask
	r_pocket = /obj/item/flashlight
	belt = 	/obj/item/kitchen/knife/combat/survival
	suit_store = pick(
	/obj/item/gun/energy/laser/power5, \
	/obj/item/gun/energy/laser/huntslas, \
	/obj/item/gun/energy/laser/scopedhuntslas)
	backpack_contents = list(
		/obj/item/storage/bag/money/small/wastelander)

