/datum/job/ncr //do NOT use this for anything, it's just to store faction datums
	department_flag = NCR
	selection_color = "#ffeeaa"

	access = list(ACCESS_NCR)
	minimal_access = list(ACCESS_NCR)
	forbids = "The New Republic forbids: Chem and drug use while on duty. Execution of unarmed or otherwise subdued targets without authorisation."
	enforces = "The NCR expects: Obeying the lawful orders of superiors."

/datum/outfit/job/ncr/
	name = "NCRdatums"
	jobtype = /datum/job/ncr/
	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/trekker
	ears = 			/obj/item/radio/headset/headset_ncr
	shoes = 		/obj/item/clothing/shoes/jackboots
	gloves =        /obj/item/clothing/gloves/f13/military


/*
Remnant!!
*/
/datum/job/ncr/f13captain
	title = "New Republic Captain"
	flag = F13CAPTAIN
	head_announce = list("Security")
	faction = "NCR"
	total_positions = 1
	spawn_positions = 1
	description = "You are the commanding officer of your company. You and your men are currently under ceasefire. Coordinating with your men, you must ensure that the New Republic forces out the Remnant stronghold on Mortooine. You have little supplies, so ensure through diplomacy or by force that you gain access to the supplies of Mos Mora"
	supervisors = "Colonel"
	req_admin_notify = 1

	outfit = /datum/outfit/job/ncr/f13captain

/datum/outfit/job/ncr/f13captain/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_TECHNOPHREAK)

/datum/outfit/job/ncr/f13captain
	name = "New Republic Captain"
	jobtype 	= /datum/job/ncr/f13captain
	id 			= /obj/item/card/id/dogtag/ncrcaptain
	uniform		= /obj/item/clothing/under/f13/swrepcaptain
	belt        = /obj/item/storage/belt/military/assault
	shoes       = /obj/item/clothing/shoes/jackboots
	gloves      = /obj/item/clothing/gloves/f13/military
	backpack_contents = list(
    	/obj/item/switchblade, \
		/obj/item/twohanded/binocs=1, \
		/obj/item/storage/bag/money/small/khan, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak/biobacta=1, \
        /obj/item/gun/energy/laser/DL44, \
        /obj/item/flashlight/seclite)

/datum/job/ncr/f13captain/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Lifegiver")
	H.add_quirk("Self-Aware")

/*
Sergeant
*/

/datum/job/ncr/f13sergeant
	title = "New Republic Sergeant"
	flag = F13SERGEANT
	total_positions = 2
	spawn_positions = 2
	faction = "NCR"
	description = "The soul of the push, you lead the fighting men and women of the Republic. Listen to your superior, and make his orders happen."
	supervisors = "The Captain"
	selection_color = "#fff5cc"

	outfit = /datum/outfit/job/ncr/f13sergeant

/datum/outfit/job/ncr/f13sergeant
	name 		= "New Republic Sergeant"
	jobtype 	= /datum/job/ncr/f13sergeant
	uniform		= /obj/item/clothing/under/f13/bdu
	accessory 	= /obj/item/clothing/accessory/ncr
	suit 		= /obj/item/clothing/suit/armor/f13/Newrepublicsergeantarmor
	head 		= /obj/item/clothing/head/f13/NewRepublicHelmet
	belt        = /obj/item/storage/belt/military/assault
	suit_store  = /obj/item/gun/energy/laser/corellian
	shoes       = /obj/item/clothing/shoes/jackboots
	gloves      = /obj/item/clothing/gloves/f13/military
	backpack_contents = list(
		/obj/item/switchblade, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak/biobacta=2, \
		/obj/item/gun/energy/laser/DL44, \
		/obj/item/storage/bag/money/small/khan, \
		 /obj/item/flashlight/seclite)

/*
Corporal
*/

/datum/job/ncr/f13specialist
	title = "New Republic Jet-Trooper"
	flag = F13SPECIALIST
	faction = "NCR"
	total_positions = 2
	spawn_positions = 2
	description = "Armed and fast, your speed is best used for scouting and flanking the enemy. You are under a system-wide ceasfire: No hostilities towards the Remnant for the time being, unless absolutely neccesary.. Listen to your Sergeant, support your men and keep an eye out for enemy armour."
	supervisors = "Sergeants and above"
	selection_color = "#fff5cc"

	outfit = /datum/outfit/job/ncr/f13specialist

/datum/outfit/job/ncr/f13specialist
	name = "Jet Trooper"
	jobtype = /datum/job/ncr/f13specialist
	id = 			/obj/item/card/id/dogtag/ncrht
	uniform =  		/obj/item/clothing/under/f13/bdu
	suit_store = 	/obj/item/gun/ballistic/automatic/mrl
	suit = 			/obj/item/clothing/suit/space/hardsuit/flightsuit/full
	belt =          /obj/item/gun/energy/laser/DH17
	glasses = 		null
	backpack_contents = list(
		/obj/item/switchblade, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak/biobacta=1, \
		/obj/item/storage/bag/money/small/khan, \
		/obj/item/flashlight/seclite)

/datum/outfit/loadout/forwardscout
	name = "Forward Scout"
	backpack_contents = list(
		/obj/item/gun/energy/laser/DH17
		)

/datum/outfit/loadout/ATjumper
	name = "AT-Jumper"
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/atlauncher=2
		)

/*
Trooper
*/

/datum/job/ncr/f13trooper
	title = "New Republic Trooper"
	flag = F13TROOPER
	faction = "NCR"
	total_positions = 20
	spawn_positions = 20
	description = "The strong-hand of the New Republic, you and your brothers-in-arms are under a system-wide ceasfire: No hostilities towards the Remnant for the time being, unless absolutely neccesary. You answer to everyone above you in the chain of command, taking orders from your Sergeant directly."
	supervisors = "Corporal or above."
	selection_color = "#fff5cc"
	exp_requirements = 0
	exp_type = EXP_TYPE_NCR

	outfit = /datum/outfit/job/ncr/f13trooper

/datum/outfit/job/ncr/f13trooper
	name = "New Republic Trooper"
	jobtype = /datum/job/ncr/f13trooper
	id = 			/obj/item/card/id/dogtag/ncrtrooper
	uniform =  		/obj/item/clothing/under/f13/bdu
	accessory =     /obj/item/clothing/accessory/ncr/REC
	head = 			/obj/item/clothing/head/f13/NewRepublicHelmet
	suit = 			/obj/item/clothing/suit/armor/f13/Newrepublicarmor
	suit_store = 	/obj/item/gun/energy/laser/DH17
	gloves = 		/obj/item/clothing/gloves/combat
	backpack_contents = list(
		/obj/item/switchblade, \
	    /obj/item/reagent_containers/hypospray/medipen/stimpak/biobacta=1, \
		/obj/item/storage/bag/money/small/khan, \
        /obj/item/flashlight/seclite)

  /*
Corporal
*/

/datum/job/ncr/f13specialist
	title = "New Republic Jet-Trooper"
	flag = F13SPECIALIST
	faction = "NCR"
	total_positions = 2
	spawn_positions = 2
	description = "Armed and fast, your speed is best used for scouting and flanking the enemy. You are under a system-wide ceasfire: No hostilities towards the Remnant for the time being, unless absolutely neccesary.. Listen to your Sergeant, support your men and keep an eye out for enemy armour."
	supervisors = "Sergeants and above"
	selection_color = "#fff5cc"

	outfit = /datum/outfit/job/ncr/f13specialist

/datum/outfit/job/ncr/f13specialist
	name = "Jet Trooper"
	jobtype = /datum/job/ncr/f13specialist
	id = 			/obj/item/card/id/dogtag/ncrht
	uniform =  		/obj/item/clothing/under/f13/bdu
	suit_store = 	/obj/item/gun/ballistic/automatic/mrl
	suit = 			/obj/item/clothing/suit/space/hardsuit/flightsuit/full
	belt =          /obj/item/gun/energy/laser/DH17
	backpack_contents = list(
		/obj/item/switchblade, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak/biobacta=1, \
		/obj/item/storage/bag/money/small/khan, \
		/obj/item/flashlight/seclite)

/*
Trooper
*/

/datum/job/ncr/f13trooper
	title = "New Republic Trooper"
	flag = F13TROOPER
	faction = "NCR"
	total_positions = 5
	spawn_positions = 5
	description = "The strong-hand of the New Republic, you and your brothers-in-arms are under a system-wide ceasfire: No hostilities towards the Remnant for the time being, unless absolutely neccesary. You answer to everyone above you in the chain of command, taking orders from your Sergeant directly."
	supervisors = "Corporal or above."
	selection_color = "#fff5cc"
	exp_requirements = 0
	exp_type = EXP_TYPE_NCR

	outfit = /datum/outfit/job/ncr/f13trooper

/datum/outfit/job/ncr/f13trooper
	name = "New Republic Trooper"
	jobtype = /datum/job/ncr/f13trooper
	id = 			/obj/item/card/id/dogtag/ncrtrooper
	uniform =  		/obj/item/clothing/under/f13/bdu
	accessory =     /obj/item/clothing/accessory/ncr/REC
	head = 			/obj/item/clothing/head/f13/NewRepublicHelmet
	suit = 			/obj/item/clothing/suit/armor/f13/Newrepublicarmor
	suit_store = 	/obj/item/gun/energy/laser/DH17
	gloves = 		/obj/item/clothing/gloves/combat
	backpack_contents = list(
		/obj/item/switchblade, \
	    /obj/item/reagent_containers/hypospray/medipen/stimpak/biobacta=1, \
		/obj/item/storage/bag/money/small/khan, \
        /obj/item/flashlight/seclite)