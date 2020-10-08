/datum/job/rd
	title = "Chief Science Officer"
	flag = CSO
	head_position = 1
	department = DEPARTMENT_SCIENCE
	department_flag = SCIENCE | COMMAND
	faction = "NEV Northern Light"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Captain and NanoTrasen"
	selection_color = "#b39aaf"
	req_admin_notify = 1
	wage = WAGE_COMMAND
	outfit_type = /decl/hierarchy/outfit/job/science/rd

	wl_config_heads = TRUE		//Eclipse edit.

	access = list(
		access_rd, access_heads, access_tox, access_genetics, access_morgue,
		access_tox_storage, access_teleporter, access_sec_doors,
		access_moebius, access_medical_equip, access_chemistry, access_virology, access_cmo, access_surgery, access_psychiatrist,
		access_robotics, access_xenobiology, access_ai_upload, access_tech_storage, access_eva, access_external_airlocks,
		access_RC_announce, access_keycard_auth, access_tcomsat, access_gateway, access_xenoarch, access_network, access_research_equipment,
		access_change_research
	)
	ideal_character_age = 50

	stat_modifiers = list(
		STAT_MEC = 25,
		STAT_COG = 40,
		STAT_BIO = 25,
	)

	perks = list(/datum/perk/selfmedicated)

	// TODO: enable after baymed
	software_on_spawn = list(/datum/computer_file/program/comm,
							///datum/computer_file/program/aidiag,
							/datum/computer_file/program/signaller,
							/datum/computer_file/program/camera_monitor,
							/datum/computer_file/program/chem_catalog,
							/datum/computer_file/program/reports)

	description = "You are the head of NanoTrasen research on the Northern Light, tasked with directing shipboard research to new and profitable discoveries."

	duties = "Direct the scientists under your command, ensure they work efficiently towards the bettering of all mankind.<br>\
Use department funds to purchase scientific curios, artefacts, and anything of interesting research value. As well as any equipment and supplies that would be useful for these ends<br>\
Organise away missions to gather artefacts and research interesting environments. You have the right to request support from other departments as required"

	loyalties = "Your first loyalty is to NanoTrasen. In order to ensure it can continue its mission of research, it must remain profitable. Ensure its interests are farthered, and take care of your colleagues in both the research and medical wings.<br>\

As a scientist, your first loyalty is to knowledge and Discovery, the ultimate good in the universe. Learning and developing new technologies is the greatest goal humanity can pursue, and no sacrifice is too great to achieve that end. Even the lives of others or yourself."
/obj/landmark/join/start/rd
	name = "Chief Science Officer"
	icon_state = "player-purple-officer"
	join_tag = /datum/job/rd



/datum/job/scientist
	title = "Scientist"
	flag = SCIENTIST
	department = DEPARTMENT_SCIENCE
	department_flag = SCIENCE
	faction = "NEV Northern Light"
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Chief Science Officer"
	selection_color = "#bdb1bb"
	wage = WAGE_PROFESSIONAL
	//alt_titles = list("Xenobiologist")
	outfit_type = /decl/hierarchy/outfit/job/science/scientist

	software_on_spawn = list(/datum/computer_file/program/signaller, /datum/computer_file/program/chem_catalog)

	access = list(
		access_robotics, access_tox, access_tox_storage, access_moebius, access_xenobiology, access_xenoarch, access_research_equipment,
		access_genetics
	)

	stat_modifiers = list(
		STAT_MEC = 20,
		STAT_COG = 30,
		STAT_BIO = 20,
	)

	description = "You are a scientist, standing at the frontier of human advancement. Working for NanoTrasen to find new research opportunities in deep space. The science wing is located in the second section, starboard side, opposite medical, and your medical colleagues should be fast friends. The medical wing is part of NanoTrasen too, and so you fully share access with each other, and are free to use each others' supplies. (Just remember to ask first! They're probaly using it!)<br>\
<br>\
As a scientist, your primary purpose is research, testing, and the advancement of knowledge. You can justify almost anything if its done for the purpose of science, and people have no reason to be suspicious if you stomp around wearing strange devices and carrying stranger weapons still. You should craft, lathe and print anything you can, toy around with it, and figure out how it works in detail. Deeply explore everything you can.<br>\
<br>\
There are a few specialist branches within the research wing that you may delve deeper into:<br>\
	<br>\
	R&D: The manufacture and testing of high tech weapons and devices. This branch shares a lab with robotics, and often works closely together to produce vast machines.<br>\
	Xenoflora: A lab dedicated to experimenting and modifying plant DNA, creating interesting mutated plants that may help the crew<br>\
	Xenobiology: A wing full of cells, for the study of alien life forms. Primarily slimes<br>\
	Xenoarchaeology: A facility for analysing artefacts and finds brought back from expeditions.<br>\
	<br>\
	The Vasily Dokuchaev is the Expedition shuttle, and is intended for going on adventures down to strange sites, and recovering items of value."

	duties = "Create unusual things and experiment with them<br>\
Explore, learn and adventure, do anything to advance the cause of knowledge"
	perks = list(/datum/perk/selfmedicated)

	loyalties = "As a scientist, your first loyalty is to knowledge, the ultimate good in the universe. Learning and developing new technologies is the greatest goal humanity can pursue, and no sacrifice is too great to achieve that end. Even the lives of others or yourself.<br>\

	Your second loyalty is to NanoTrasen. In order to ensure it can continue its mission of research, it must remain profitable. Ensure its interests are farthered, and take care of your colleagues in both the research and medical wings"

/obj/landmark/join/start/scientist
	name = "Scientist"
	icon_state = "player-purple"
	join_tag = /datum/job/scientist


/datum/job/roboticist
	title = "Roboticist"
	flag = ROBOTICIST
	department = DEPARTMENT_SCIENCE
	department_flag = SCIENCE
	faction = "NEV Northern Light"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Chief Science Officer"
	selection_color = "#bdb1bb"
	wage = WAGE_PROFESSIONAL
	outfit_type = /decl/hierarchy/outfit/job/science/roboticist

	access = list(
		access_robotics, access_tox, access_tox_storage, access_morgue, access_moebius, access_research_equipment
	) //As a job that handles so many corpses, it makes sense for them to have morgue access.

	software_on_spawn = list(/datum/computer_file/program/chem_catalog)

	stat_modifiers = list(
		STAT_MEC = 30,
		STAT_COG = 20,
		STAT_BIO = 25,
	)

	perks = list(/datum/perk/selfmedicated)

	description = "As a roboticist, you are probably the busiest person in the research wing. For it is the only area of the department that focuses on providing services to others.<br>\
<br>\
You have a broad range of tools and machinery at your disposal, and a similarly broad range of responsibilities. You will also have a constant stream of visitors, and rarely a moment to yourself<br>\
<br>\
The duties of robotics are many, and the lab often benefits from having multiple staff.<br>\
You must maintain, tend to, and upgrade the fleet of synthetics that help keep the ship running. Farther to that, the duty of constructing new robots falls to you too. With the aid of your fabricators, you may turn a pile of sheet metal and wires into sentient life. The robots of the ship are operated by moebius, and its not unknown for roboticists to develop a parental attachment to them.<br>\
<br>\
In addition, your department contains the manufacturing facilities for prosthetic limbs and enhancements. It typically also falls to you to install them too, and thus it is common for biomechanical engineers to work in the robotics lab. This may or may not be in your character's skillset. If surgery isn't your specialty, you may defer the implementation to your colleagues over in Moebius Medical instead, and simply supply the parts for them to install.<br>\
<br>\
Lastly, though they're not commonly used, you have the facilities to construct massive and powerful mechanised vehicles. These have powerful capabilities in mining and rescue, as well as obvious military applications"

	duties = "	Repair, maintain and upgrade robots aboard the NEV Northern Light<br>\
	Maintain and implant new bionics in crewmembers<br>\
	Advertise bionics for sale and run a commercial cybernetic clinic<br>\
	Construct large mechas for specialised use in departments"



/obj/landmark/join/start/roboticist
	name = "Roboticist"
	icon_state = "player-purple"
	join_tag = /datum/job/roboticist
