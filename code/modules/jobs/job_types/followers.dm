/datum/job/followers //do NOT use this for anything, it's just to store faction datums
	department_flag = FOLLOWERS
	selection_color = "#ffeeaa"
	exp_type = EXP_TYPE_FOLLOWERS
	access = list(ACCESS_FOLLOWER)
	minimal_access = list(ACCESS_FOLLOWER)
	forbids = "Aligning oneself with a faction exclusively. Acting in an aggressive and violent way on the offensive, not in defense. Abandoning your facility, peers, and community."
	enforces = "Help those in need....so long as the Gutters permit it."

/datum/outfit/job/followers/
	name =		"FOLLOWERSdatums"
	jobtype =	/datum/job/followers/
	shoes =		/obj/item/clothing/shoes/sneakers/black
	id =		null
	ears =		/obj/item/radio/headset/headset_med
	uniform =	/datum/outfit/job/followers/f13followers

/datum/outfit/job/followers/f13followers
	name =		"Followers"
	uniform =	/obj/item/clothing/under/f13/follower

/datum/outfit/job/followers/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

/*
Lead Practitioner
*/
/datum/job/followers/f13leadpractitioner
	title = "Doctor"
	flag = F13LEADPRACTITIONER
	department_flag = FOLLOWERS
	head_announce = list("Security")
	faction = "Followers"
	total_positions = 1
	spawn_positions = 1
	supervisors = "No one."
	description = "As a doctor, you treat patients and manage the distribution of medicine. While you may treat civillians to your heart's content, the Gutters must give you permission to aide the Remnant or the Republic ."
	selection_color = "#FF95FF"
	exp_requirements = 1080
	exp_type = EXP_TYPE_FOLLOWERS

	outfit = /datum/outfit/job/followers/f13leadpractitioner

	access = list(ACCESS_FOLLOWER, ACCESS_COMMAND, ACCESS_MILITARY)
	minimal_access = list(ACCESS_FOLLOWER, ACCESS_COMMAND, ACCESS_MILITARY)

/datum/outfit/job/followers/f13leadpractitioner/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_TECHNOPHREAK, TRAIT_CHEMWHIZ)

/datum/outfit/job/followers/f13leadpractitioner
	name = "Lead Practitioner"
	jobtype = /datum/job/followers/f13leadpractitioner
	id = /obj/item/card/id/silver
	chemwhiz = TRUE
	backpack = /obj/item/storage/backpack/explorer
	uniform = /obj/item/clothing/under/f13/followers
	suit= /obj/item/clothing/suit/toggle/labcoat/cmo
	shoes = /obj/item/clothing/shoes/f13/brownie
	l_hand = /obj/item/storage/firstaid/fire
	r_hand = /obj/item/storage/firstaid/toxin
	belt = /obj/item/healthanalyzer/advanced
	backpack_contents = list(
		/obj/item/reagent_containers/glass/beaker/bluespace=1,
		/obj/item/storage/firstaid/ancient=1,
		/obj/item/reagent_containers/medspray/synthflesh=2,
		/obj/item/storage/firstaid/tactical=1,
		/obj/item/clothing/glasses/hud/health/night=1)