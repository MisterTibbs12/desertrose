//Faction datums of sorts, use the dang hierarchies in the future
//It looks like var/faction controls what becomes visible on setup. Should likely be fixed or something, but I'm not doing it.
/datum/job/CaesarsLegion
	department_flag = LEGION
	selection_color = "#ffeeee"

	forbids = "The Remnant forbids: Use of alcohol and narcotics while on-duty."
	enforces = "The Remnant expects: Obeying orders of superiors. Extreme aggression towards the terrorists of the New Republic."

/datum/outfit/job/CaesarsLegion
	id = null
	ears = null
	box = null
/
/*
Remnant!!
*/
/datum/job/CaesarsLegion/Legionnaire/f13explorer
	title = "Remnant Officer"
	flag = F13OFFICER
	head_announce = list("Security")
	faction = "NCR"
	total_positions = 1
	spawn_positions = 1
	description = "You are the commanding officer of your company. You and your men are currently under ceasefire. Coordinating with your men, you must ensure that the Remnant push back the New Republic from Mortooine. You have little supplies, so ensure through diplomacy or by force that you gain access to the supplies of Mos Mora"
	supervisors = "God"
	req_admin_notify = 1

	outfit = /datum/outfit/job/ncr/f13captain

/datum/outfit/job/ncr/f13captain/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_TECHNOPHREAK)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13explorer
	name = "Remnant Officer"
	jobtype 	= /datum/job/ncr/f13captain
	belt        = /obj/item/storage/belt/military/assault
	shoes       = /obj/item/clothing/shoes/jackboots
	gloves      = /obj/item/clothing/gloves/f13/military
	backpack_contents = list(
		/obj/item/switchblade, \
		/obj/item/twohanded/binocs=1, \
		/obj/item/clothing/under/f13/swremofficer, \
		/obj/item/storage/bag/money/small/khan, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak/biobacta=1, \
        /obj/item/gun/energy/laser/Bryarp, \
        /obj/item/flashlight/seclite)

/datum/job/ncr/f13captain/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Lifegiver")
	H.add_quirk("Self-Aware")

/*
Sergeant
*/

/datum/job/CaesarsLegion/slave
	title = "Remnant Sergeant"
	flag = F13SERGEANT
	total_positions = 2
	spawn_positions = 2
	faction = "NCR"
	description = "The soul of the push, you lead the fighting men and women of the Remnant. Listen to your superior, and make his orders happen."
	supervisors = "The Captain"
	selection_color = "#fff5cc"

	outfit = /datum/outfit/job/CaesarsLegion/slave

/datum/outfit/job/CaesarsLegion/slave
	name 		= "Remnant Sergeant"
	jobtype 	= /datum/job/ncr/f13sergeant
	uniform		= /obj/item/clothing/under/f13/bdu
	suit 		= /obj/item/clothing/suit/armor/f13/Remnantsergeant
	head 		= /obj/item/clothing/head/helmet/f13/Remnantstormtrooper
	belt        = /obj/item/storage/belt/military/assault
	suit_store  = /obj/item/gun/energy/laser/DLT19
	shoes       = /obj/item/clothing/shoes/jackboots
	gloves      = /obj/item/clothing/gloves/f13/military
	backpack_contents = list(
		/obj/item/switchblade, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak/biobacta=2, \
		/obj/item/gun/energy/laser/Bryarp, \
		/obj/item/storage/bag/money/small/khan, \
		 /obj/item/flashlight/seclite)

/*
Corporal
*/

/datum/job/CaesarsLegion/Legionnaire/f13runnerman
	title = "Remnant Crewman"
	flag = F13SPECIALIST
	faction = "NCR"
	total_positions = 2
	spawn_positions = 2
	description = "Trained in the use of vehicles, you are the heavy support of the Remnant. You are under a system-wide ceasfire: No hostilities towards the New Republic for the time being, unless absolutely neccesary.. Listen to the Captain and keep an eye out for jet troopers."
	supervisors = "The Captain"
	selection_color = "#fff5cc"

	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13runnerman

/datum/outfit/job/CaesarsLegion/Legionnaire/f13runnerman
	name = "Remnant Crewman"
	jobtype = /datum/job/ncr/f13specialist
	id = 			/obj/item/card/id/crewman
	uniform =  		/obj/item/clothing/under/f13/bdu
	head = 			/obj/item/clothing/head/helmet/f13/vehiclecrew
	suit_store = 	/obj/item/gun/energy/laser/lhb
	suit = 			/obj/item/clothing/suit/armor/f13/crewmanarmour
	backpack_contents = list(
		/obj/item/switchblade, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak/biobacta=1, \
		/obj/item/storage/bag/money/small/khan, \
		/obj/item/flashlight/seclite)

/*
Trooper
*/

/datum/job/CaesarsLegion/Legionnaire/f13vexillarius
	title = "Remnant Stormtrooper"
	flag = F13TROOPER
	faction = "NCR"
	total_positions = 20
	spawn_positions = 20
	description = "The strong-hand of the Remnant, you and your brothers-in-arms are under a system-wide ceasfire: No hostilities towards the New Republic for the time being, unless absolutely neccesary. You answer to everyone above you in the chain of command, taking orders from your Sergeant directly."
	supervisors = "Sergeant or above."
	selection_color = "#fff5cc"
	exp_requirements = 0
	exp_type = EXP_TYPE_NCR

	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13vexillarius

/datum/outfit/job/CaesarsLegion/Legionnaire/f13vexillarius
	name = "Remnant Stormtrooper"
	jobtype = /datum/job/ncr/f13trooper
	uniform =  		/obj/item/clothing/under/f13/bdu
	head = 			/obj/item/clothing/head/helmet/f13/Remnantstormtrooper
	suit = 			/obj/item/clothing/suit/armor/f13/Remnantarmor
	suit_store = 	/obj/item/gun/energy/laser/E_11
	gloves = 		/obj/item/clothing/gloves/combat
	backpack_contents = list(
		/obj/item/switchblade, \
	    /obj/item/reagent_containers/hypospray/medipen/stimpak/biobacta=1, \
		/obj/item/storage/bag/money/small/khan, \
        /obj/item/flashlight/seclite)
