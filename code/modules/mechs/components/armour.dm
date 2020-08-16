/*
/datum/extension/armor/exosuit/apply_damage_modifications(damage, damage_type, damage_flags, mob/living/victim, armor_pen, silent = TRUE)
	if(prob(get_blocked(damage_type, damage_flags, armor_pen) * 100)) //extra removal of sharp and edge on account of us being big robots
		damage_flags &= ~(DAM_SHARP | DAM_EDGE)
	. = ..()
*/
/obj/item/robot_parts/robot_component/armour/exosuit
	name = "exosuit armor plating"
	armor = list(melee = 75, bullet = 33, energy = 10, bomb = 25, bio = 100, rad = 0)
	origin_tech = list(TECH_MATERIAL = 1)
	matter = list(MATERIAL_STEEL = 7)

/obj/item/robot_parts/robot_component/armour/exosuit/Initialize(newloc)
	. = ..()
	// HACK
	// All robot components add "robot" to the name on init - remove that on exosuit armor
	name = initial(name)

/*
/obj/item/robot_parts/robot_component/armour/exosuit/Initialize()
	. = ..()
	set_extension(src, /datum/extension/armor, /datum/extension/armor/exosuit, armor)
*/

/obj/item/robot_parts/robot_component/armour/exosuit/radproof
	name = "radiation-proof exosuit armor plating"
	desc = "A fully enclosed radiation hardened shell designed to protect the pilot from radiation."
	armor = list(melee = 75, bullet = 33, energy = 25, bomb = 25, bio = 100, rad = 100)
	origin_tech = list(TECH_MATERIAL = 3)
	matter = list(MATERIAL_STEEL = 12)

/obj/item/robot_parts/robot_component/armour/exosuit/em
	name = "EM-shielded exosuit armor plating"
	desc = "A shielded plating that surrounds the eletronics and protects them from electromagnetic radiation."
	armor = list(melee = 65, bullet = 20, energy = 100, bomb = 10, bio = 100, rad = 60)
	origin_tech = list(TECH_MATERIAL = 3)
	matter = list(MATERIAL_STEEL = 12)

/obj/item/robot_parts/robot_component/armour/exosuit/combat
	name = "heavy combat exosuit plating"
	desc = "Plating designed to deflect incoming attacks and explosions."
	armor = list(melee = 85, bullet = 70, energy = 10, bomb = 70, bio = 100, rad = 0)
	origin_tech = list(TECH_MATERIAL = 5)
	matter = list(MATERIAL_STEEL = 20, MATERIAL_DIAMOND = 5)

