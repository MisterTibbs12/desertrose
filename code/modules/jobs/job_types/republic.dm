/datum/job/rep //do NOT use this for anything, it's just to store faction datums
	department_flag = REP
	selection_color = "#ffeeaa"

	access = list(ACCESS_REP)
	minimal_access = list(ACCESS_REP)
	forbids = "The NCR forbids: Chem and drug use such as jet or alcohol while on duty. Execution of unarmed or otherwise subdued targets without authorisation."
	enforces = "The NCR expects: Obeying the lawful orders of superiors. Proper treatment of prisoners.  Good conduct within the Republic's laws. Wearing the uniform."

/datum/outfit/job/REP/
	name = "REPdatums"
	jobtype = /datum/job/ncr/
	backpack = /obj/item/storage/backpack
	satchel = /obj/item/storage/backpack/satchel
	ears = 			/obj/item/radio/headset/headset_ncr
	shoes = 		/obj/item/clothing/shoes/jackboots
	gloves =        /obj/item/clothing/gloves/f13/military

/*
Captain
*/
/datum/job/republic/sw13jedik
	title = "Jedi Knight"
	flag = SW13JEDIK
//	faction = "Station"
	head_announce = list("Security")
	supervisors = "Any present Jedi of rank Master and above"

	total_positions = 0
	spawn_positions = 0

	outfit = /datum/outfit/job/ncr/f13colonel

/datum/outfit/job/ncr/f13colonel/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_TECHNOPHREAK)

/datum/outfit/job/ncr/f13colonel
	name 		= "NCR Colonel"
	jobtype 	= /datum/job/ncr/f13colonel
	uniform		= /obj/item/clothing/under/f13/ncr/officer
	accessory 	= /obj/item/clothing/accessory/ncr
	suit 		= /obj/item/clothing/suit/armor/f13/power_armor/t45d/sierra
	head 		= /obj/item/clothing/head/beret/ncr
	belt        = /obj/item/storage/belt/military/assault/ncr
	glasses 	= /obj/item/clothing/glasses/sunglasses/big
	suit_store  = /obj/item/gun/ballistic/automatic/marksman
	shoes       = /obj/item/clothing/shoes/f13/military/ncr_officer
	gloves      = /obj/item/clothing/gloves/f13/leather/ncr_officer
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m45=3, \
		/obj/item/ammo_box/magazine/m556/rifle=2, \
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/gun/ballistic/automatic/pistol/m1911=1, \
		/obj/item/melee/classic_baton/telescopic=1, \
		/obj/item/storage/bag/money/small/ncr)

/*
Captain
*/
/datum/job/republic/sw13captain
	title = "New Republic Captain"
	flag = SW13CAPTAIN
	head_announce = list("Security")
	faction = "NCR"
	total_positions = 1
	spawn_positions = 1/datum/job/republic/sw13captain
	description = "You are the commanding officer of your company. You and your men are currently under ceasefire. Coordinating with your staff, you must ensure that the New Republic defeats the Remnant stronghold on Mortooine. You have little supplies, so ensure, through diplomacy or through force, that your company gains access to Mos Mora's supplies."
	supervisors = "Any present Jedi of rank Knight or above"
	req_admin_notify = 1

	outfit = /datum/outfit/job/republic/sw13captain

	loadout_options = list(
	/datum/outfit/loadout/Captbasic, //Assault Carbine and Deagle
	/datum/outfit/loadout/Captmarksman, //FN FAL and Deagle
	/datum/outfit/loadout/Captheavy //Heavy service rifle and Deagle
	)

/datum/outfit/job/ncr/f13captain/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_TECHNOPHREAK)

/datum/outfit/job/ncr/f13captain
	name = "NCR Captain"
	jobtype 	= /datum/job/ncr/f13captain
	id 			= /obj/item/card/id/dogtag/ncrcaptain
	uniform		= /obj/item/clothing/under/f13/bdu
	suit 		= /obj/item/clothing/suit/armor/f13/ncrarmor/captain
	suit_store 	= /obj/item/gun/ballistic/automatic/pistol/deagle/gold
	head 		= /obj/item/clothing/head/beret/ncr
	belt        = /obj/item/storage/belt/military/assault/ncr
	glasses 	= /obj/item/clothing/glasses/sunglasses/big
	shoes       = /obj/item/clothing/shoes/f13/military/ncr_officer
	gloves      = /obj/item/clothing/gloves/f13/leather/ncr_officer
	backpack_contents = list(
		/obj/item/ammo_box/magazine/a50=2, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/melee/classic_baton/telescopic=1, \
		/obj/item/twohanded/binocs=1, \
		/obj/item/storage/bag/money/small/khan)

/datum/job/ncr/f13captain/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Lifegiver")
	H.add_quirk("Self-Aware")

/datum/outfit/loadout/Captbasic
	name = "Standard Issue"
	l_hand = /obj/item/gun/ballistic/automatic/assault_carbine
	backpack_contents = list(
	/obj/item/ammo_box/magazine/m556/rifle/assault=2)

/datum/outfit/loadout/Captmarksman
	name = "Marksman"
	l_hand = /obj/item/gun/ballistic/automatic/marksman
	backpack_contents = list(
	/obj/item/ammo_box/magazine/m556/rifle/assault=2)

/datum/outfit/loadout/Captheavy
	name = "Heavy Fire Support"
	l_hand = /obj/item/gun/ballistic/automatic/marksman/servicerifle/r82
	backpack_contents = list(
	/obj/item/ammo_box/magazine/m556/rifle/assault=2)

/*
Ambassador
*/

/datum/job/ncr/f13ambassador
	title = "NCR Ambassador"
	flag = F13AMBASSADOR
	head_announce = list("Security")
	faction = "NCR"
	total_positions = 1
	spawn_positions = 1
	description = "You are the political and diplomatic attaché to the NCR forces in the area. Though you are not part of the military, and should avoid conflict, you wield great bureaucratic power."
	supervisors = "Colonel"
	req_admin_notify = 1

	outfit = /datum/outfit/job/ncr/f13ambassador

/datum/outfit/job/ncr/f13ambassador
	name = "NCR Ambassador"
	jobtype 	= /datum/job/ncr/f13ambassador
	id 			= /obj/item/card/id/dogtag/ncrambassador
	uniform		= /obj/item/clothing/under/f13/gentlesuit
	glasses 	= /obj/item/clothing/glasses/sunglasses/big
	shoes 		= /obj/item/clothing/shoes/laceup
	suit		= /obj/item/clothing/suit/toggle/lawyer/black
	l_hand = /obj/item/storage/briefcase
	gloves      = null
	backpack_contents = list(
		/obj/item/ammo_box/a357=1, \
		/obj/item/gun/ballistic/revolver/police=1, \
		/obj/item/melee/classic_baton/telescopic=1, \
		/obj/item/storage/bag/money/small/ncr=1,
		/obj/item/megaphone=1)

/*
Lieutenant
*/

/datum/job/ncr/f13lieutenant
	title = "NCR Lieutenant"
	flag = F13LIEUTENANT
	total_positions = 2
	spawn_positions = 2
	faction = "NCR"
	description = "You are the direct superior to the Sergeant and Enlisted, working with the Captain and under special circumstances, Rangers. You plan patrols, training and missions, working in some cases with Rangers in accomplishing objectives otherwise beyond the capabilities of ordinary enlisted personnel."
	supervisors = "Captain and above"
	selection_color = "#fff5cc"

	outfit = /datum/outfit/job/ncr/f13lieutenant

	loadout_options = list(
	/datum/outfit/loadout/ltmedic, //Labcoat, medical gear, 2x chemwhiz books
	/datum/outfit/loadout/ltcombat, //Mantle vest, 5.56 assault carbine
	/datum/outfit/loadout/ltscout //Scout armor, .308 DKS sniper rifle
	)

/datum/outfit/job/ncr/f13lieutenant/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_TECHNOPHREAK)

/datum/outfit/job/ncr/f13lieutenant
	name		= "NCR Lieutenant"
	jobtype		= /datum/job/ncr/f13lieutenant
	id			= /obj/item/card/id/dogtag/ncrlieutenant
	uniform		= /obj/item/clothing/under/f13/ncr/officer
	accessory	= /obj/item/clothing/accessory/ncr/LT
	head 		= /obj/item/clothing/head/beret/ncr
	belt        = /obj/item/storage/belt/military/assault/ncr
	glasses 	= /obj/item/clothing/glasses/sunglasses/big
	shoes       = /obj/item/clothing/shoes/f13/military/ncr_officer
	gloves      = /obj/item/clothing/gloves/f13/leather/ncr_officer
	backpack_contents = list(
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/gun/ballistic/automatic/pistol/ninemil=1, \
		/obj/item/melee/classic_baton/telescopic=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/ammo_box/magazine/m9mm=2, \
		/obj/item/twohanded/binocs=1, \
		/obj/item/storage/bag/money/small/ncrofficers, \
		/obj/item/clothing/mask/ncr_facewrap)

/datum/outfit/loadout/ltmedic
	name = "Medical Officer"
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/labcoat
	glasses = /obj/item/clothing/glasses/hud/health
	suit_store =    /obj/item/healthanalyzer
	backpack_contents = list(
		/obj/item/clothing/accessory/armband/medblue=1,
		/obj/item/storage/pill_bottle/mining=1,
		/obj/item/storage/firstaid/regular=1,
		/obj/item/book/granter/trait/chemistry=1,
		/obj/item/reagent_containers/hypospray/CMO=1)

/datum/outfit/loadout/ltcombat
	name = "Combat Lieutenant"
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/mantle/reinforced
	suit_store = /obj/item/gun/ballistic/automatic/assault_carbine
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=3,
		/obj/item/book/granter/trait/trekking=1)

/datum/outfit/loadout/ltscout
	name = "Scout Lieutenant"
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/scout/officer
	suit_store = /obj/item/gun/ballistic/automatic/marksman/sniper
	backpack_contents = list(
		/obj/item/ammo_box/magazine/w308=3,
		/obj/item/book/granter/trait/trekking=1)

/*
Sergeant
*/

/datum/job/ncr/f13sergeant
	title = "New Republic Sergeant"
	flag = F13SERGEANT
	total_positions = 2
	spawn_positions = 2
	faction = "NCR"
	description = "The soul of command, you lead the fighting men and women of the Republic. Listen to your superior, and make his orders happen."
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
		/obj/item/kitchen/knife/combat/survival=1, \
			/obj/item/gun/energy/laser/DL44, \
		/obj/item/storage/bag/money/small/khan)

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
	suit_store = 	/obj/item/gun/ballistic/automatic/atlauncher
	suit = 			/obj/item/clothing/suit/space/hardsuit/flightsuit
	belt =          /obj/item/gun/energy/laser/DH17
	glasses = 		null
	backpack_contents = list(
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/storage/bag/money/small/khan=1, \
		/obj/item/book/granter/trait/trekking=1
		)

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
	total_positions = 5
	spawn_positions = 5
	description = "The strong-hand of the New Republic, you and your brothers-in-arms are under a system-wide ceasfire: No hostilities towards the Remnant for the time being, unless absolutely neccesary. You answer to everyone above you in the chain of command, taking orders from your Sergeant directly."
	supervisors = "Corporals and above"
	selection_color = "#fff5cc"
	exp_requirements = 12
	exp_type = EXP_TYPE_NCR

	outfit = /datum/outfit/job/ncr/f13trooper

/datum/outfit/job/ncr/f13trooper
	name = "Republic Trooper"
	jobtype = /datum/job/ncr/f13trooper
	id = 			/obj/item/card/id/dogtag/ncrtrooper
	uniform =  		/obj/item/clothing/under/f13/bdu
	accessory =     /obj/item/clothing/accessory/ncr/REC
	head = 			/obj/item/clothing/head/f13/NewRepublicHelmet
	suit = 			/obj/item/clothing/suit/armor/f13/Newrepublicarmor
	suit_store = 	/obj/item/gun/energy/laser/DH17
	ears = 			/obj/item/radio/headset //no NCR comms
	gloves = 		/obj/item/clothing/gloves/combat
	backpack_contents = list(
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/stack/medical/gauze=1, \
		/obj/item/storage/bag/money/small/khan)
