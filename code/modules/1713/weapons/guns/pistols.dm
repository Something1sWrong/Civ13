/obj/item/weapon/gun/projectile/pistol
	// less accurate than rifles against still targets, but better against moving targets
	// less accurate than semiautos but with the same ratios
	move_delay = 1
	fire_delay = 3
	item_state = "pistol"
	equiptimer = 5
	gun_safety = TRUE
	gun_type = GUN_TYPE_PISTOL
	handle_casings = EJECT_CASINGS
	maxhealth = 45
	accuracy_list = list(
		// small body parts: head, hand, feet
		"small" = list(
			SHORT_RANGE_STILL = 60,
			SHORT_RANGE_MOVING = 40,

			MEDIUM_RANGE_STILL = 53,
			MEDIUM_RANGE_MOVING = 35,

			LONG_RANGE_STILL = 45,
			LONG_RANGE_MOVING = 30,

			VERY_LONG_RANGE_STILL = 38,
			VERY_LONG_RANGE_MOVING = 25),

		// medium body parts: limbs
		"medium" = list(
			SHORT_RANGE_STILL = 64,
			SHORT_RANGE_MOVING = 42,

			MEDIUM_RANGE_STILL = 56,
			MEDIUM_RANGE_MOVING = 38,

			LONG_RANGE_STILL = 49,
			LONG_RANGE_MOVING = 32,

			VERY_LONG_RANGE_STILL = 41,
			VERY_LONG_RANGE_MOVING = 27),

		// large body parts: chest, groin
		"large" = list(
			SHORT_RANGE_STILL = 68,
			SHORT_RANGE_MOVING = 44,

			MEDIUM_RANGE_STILL = 60,
			MEDIUM_RANGE_MOVING = 40,

			LONG_RANGE_STILL = 53,
			LONG_RANGE_MOVING = 35,

			VERY_LONG_RANGE_STILL = 45,
			VERY_LONG_RANGE_MOVING = 30),
	)

	accuracy_increase_mod = 1.50
	accuracy_decrease_mod = 2.00
	KD_chance = KD_CHANCE_MEDIUM
	stat = "pistol"
	aim_miss_chance_divider = 2.00

/obj/item/weapon/gun/projectile/pistol/attackby(obj/W as obj, mob/user as mob)
	if (istype(W, /obj/item/weapon/attachment/bayonet))
		user << "<span class = 'danger'>That won't fit on there.</span>"
		return FALSE
	else
		return ..()

/obj/item/weapon/gun/projectile/pistol/nambu
	name = "Nambu Pistol"
	desc = "Standard issue Japanese pistol. Chambered in 8mm nambu ammunition."
	icon_state = "nambu"
	w_class = 2
	caliber = "c8mmnambu"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/c8mmnambu
	weight = 0.794
	ammo_type = /obj/item/ammo_casing/c8mmnambu
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 0.94
/obj/item/weapon/gun/projectile/pistol/nambu/update_icon()
	..()
	if (ammo_magazine)
		icon_state = "nambu"
	else
		icon_state = "nambu0"
	return

/obj/item/weapon/gun/projectile/pistol/ww2/nambu
	name = "Nambu Type 14"
	desc = "Standard issue Japanese pistol. Chambered in 8mm nambu ammunition."
	icon_state = "nambu_ww2"
	w_class = 2
	caliber = "c8mmnambu"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/c8mmnambu
	weight = 0.794
	ammo_type = /obj/item/ammo_casing/c8mmnambu
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 0.94
/obj/item/weapon/gun/projectile/pistol/ww2/nambu/update_icon()
	..()
	if (ammo_magazine)
		icon_state = "nambu_ww2"
	else
		icon_state = "nambu_ww20"
	return

/obj/item/weapon/gun/projectile/pistol/luger
	name = "Luger P08"
	desc = "A Luger P08 chambered in 9x19mm parabellum, german design."
	icon_state = "luger"
	w_class = 2
	caliber = "a9x19"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/luger
	weight = 0.794
	ammo_type = /obj/item/ammo_casing/a9x19
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 0.96
/obj/item/weapon/gun/projectile/pistol/luger/update_icon()
	..()
	if (ammo_magazine)
		icon_state = "luger"
	else
		icon_state = "luger0"
	return

/obj/item/weapon/gun/projectile/pistol/waltherp38
	name = "Walther P38"
	desc = "A Walther P38 chambered in 9x19mm parabellum, german design."
	icon_state = "waltherp38"
	w_class = 2
	caliber = "a9x19"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/walther
	weight = 0.794
	ammo_type = /obj/item/ammo_casing/a9x19
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 0.96
/obj/item/weapon/gun/projectile/pistol/waltherp38/update_icon()
	..()
	if (ammo_magazine)
		icon_state = "waltherp38"
	else
		icon_state = "waltherp380"
	return

/obj/item/weapon/gun/projectile/pistol/glock17
	name = "Glock 17"
	desc = "A modern pistol, loaded on 9x19mm, reliable and fast."
	icon_state = "glock17"
	fire_delay = 2.3
	w_class = 2
	caliber = "a9x19"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/glock17
	weight = 0.594
	max_shells = 17 //Glock 17 real capacity
	ammo_type = /obj/item/ammo_casing/a9x19
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 0.9
/obj/item/weapon/gun/projectile/pistol/glock17/update_icon()
	..()
	if (ammo_magazine)
		icon_state = "glock17"
	else
		icon_state = "glock170"
	return

/obj/item/weapon/gun/projectile/pistol/sig250
	name = "SIG 250"
	desc = "A modern pistol, loaded on 9x19mm, reliable and fast."
	icon_state = "sig250"
	item_state = "sig250"
	fire_delay = 2.3
	w_class = 2
	caliber = "a9x19"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/sig250
	weight = 0.594
	max_shells = 17 //Glock 17 real capacity
	ammo_type = /obj/item/ammo_casing/a9x19
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 0.9
/obj/item/weapon/gun/projectile/pistol/sig250/update_icon()
	..()
	if (ammo_magazine)
		icon_state = "sig250"
	else
		icon_state = "sig250_open"
	return

/obj/item/weapon/gun/projectile/pistol/pl14
	name = "PL-14"
	desc = "A modern experimental pistol made by Kalashnikov (chambered in 9x19mm)."
	icon_state = "pl14"
	fire_delay = 1.8
	w_class = 2
	caliber = "a9x19"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/pl14
	weight = 0.594
	max_shells = 16 //Glock 17 real capacity
	ammo_type = /obj/item/ammo_casing/a9x19
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 0.15

/obj/item/weapon/gun/projectile/pistol/mp443
	name = "MP-443"
	desc = "A modern pistol, loaded on 9x19mm, made by Russia."
	icon_state = "mp443"
	fire_delay = 3.3
	w_class = 2
	caliber = "a9x19"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/mp443
	weight = 0.594
	max_shells = 17
	ammo_type = /obj/item/ammo_casing/a9x19
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 0.9
/obj/item/weapon/gun/projectile/pistol/mp443/update_icon()
	..()
	if (ammo_magazine)
		icon_state = "mp443"
	else
		icon_state = "mp443_open"
	return

/obj/item/weapon/gun/projectile/pistol/tarus
	name = "Tarus G3"
	desc = "A modern pistol, loaded on 9x19mm, reliable and fast."
	icon_state = "tarusg3"
	fire_delay = 2.3
	w_class = 2
	caliber = "a9x19"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/glock17
	weight = 0.594
	max_shells = 17 //Glock 17 real capacity
	ammo_type = /obj/item/ammo_casing/a9x19
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 0.9
/obj/item/weapon/gun/projectile/pistol/tarus/update_icon()
	..()
	if (ammo_magazine)
		icon_state = "tarusg3"
	else
		icon_state = "tarusg3_open"
	return

/obj/item/weapon/gun/projectile/pistol/p220
	name = "SIG Sauer P220"
	desc = "The SIG Sauer P220 is a semi-automatic pistol. Designed in 1975."
	icon_state = "p220"
	fire_delay = 3.7
	w_class = 2
	caliber = "a45"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/p220
	weight = 0.594
	max_shells = 7
	ammo_type = /obj/item/ammo_casing/a45
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 1.40
/obj/item/weapon/gun/projectile/pistol/p220/update_icon()
	..()
	if (ammo_magazine)
		icon_state = "p220"
	else
		icon_state = "p220_open"
	return

/obj/item/weapon/gun/projectile/pistol/iogb7
	name = "IOQ B-72"
	desc = "A modern pistol, loaded on 9x19mm, reliable and fast."
	icon_state = "iogb7"
	fire_delay = 1.1
	w_class = 2
	caliber = "a9x19"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/glock17
	weight = 0.594
	max_shells = 17 //Glock 17 real capacity
	ammo_type = /obj/item/ammo_casing/a9x19
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 1.6
/obj/item/weapon/gun/projectile/pistol/iogb7/update_icon()
	..()
	if (ammo_magazine)
		icon_state = "iogb7"
	else
		icon_state = "iogb7-open"
	return

/obj/item/weapon/gun/projectile/pistol/mauser
	name = "Mauser c96"
	desc = "A Mauser c96 chambered in 9x19mm parabellum, german design."
	icon_state = "mauser"
	w_class = 2
	caliber = "a9x19"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/mauser
	weight = 0.794
	max_shells = 10
	ammo_type = /obj/item/ammo_casing/a9x19
	load_method = SINGLE_CASING | SPEEDLOADER
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 0.9
/obj/item/weapon/gun/projectile/pistol/mauser/update_icon()
	..()
	if (ammo_magazine)
		icon_state = "mauser"
	else
		icon_state = "mauser0"
	return

/obj/item/weapon/gun/projectile/pistol/borchardt
	name = "Borchardt c93"
	desc = "A Borchardt c93 semi-automatic pistol chambered in 7.65x25mm parabellum, german design."
	icon_state = "borchardt"
	w_class = 2
	caliber = "a765x25"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/borchardt
	weight = 0.794
	ammo_type = /obj/item/ammo_casing/a765x25
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 0.9
/obj/item/weapon/gun/projectile/pistol/borchardt/update_icon()
	..()
	if (ammo_magazine)
		icon_state = "borchardt"
	else
		icon_state = "borchardt0"
	return

/obj/item/weapon/gun/projectile/pistol/colthammerless
	name = "Colt Hammerless"
	desc = "A Colt pistol which does indeed have a hammer, Just hidden."
	icon_state = "coltpockethammerless"
	w_class = 2
	caliber = "a32acp"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/colthammerless
	weight = 0.794
	ammo_type = /obj/item/ammo_casing/a32acp
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 0.9
/obj/item/weapon/gun/projectile/pistol/colthammerless/update_icon()
	..()
	if (ammo_magazine)
		icon_state = "coltpockethammerless"
	else
		icon_state = "coltpockethammerless_open"
	return

/obj/item/weapon/gun/projectile/pistol/bergmann
	name = "Bergmann no.2"
	desc = "A semi automatic pistol made in 1896."
	icon_state = "bergmann"
	w_class = 2
	caliber = "a9x19"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/bergmann
	weight = 0.794
	ammo_type = /obj/item/ammo_casing/a9x19
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 0.9
/obj/item/weapon/gun/projectile/pistol/bergmann/update_icon()
	..()
	if (ammo_magazine)
		icon_state = "bergmann"
	else
		icon_state = "bergmann"
	return

/obj/item/weapon/gun/projectile/pistol/m1911
	name = "Colt M1911"
	desc = "The standard issue pistol of the US Army. Chambered in .45 ACP."
	icon_state = "colt"
	w_class = 2
	caliber = "a45acp"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/m1911
	weight = 0.794
	ammo_type = /obj/item/ammo_casing/a45acp
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 1.02

/obj/item/weapon/gun/projectile/pistol/blackm1911
	name = "Black M1911"
	desc = "The standard issue pistol of the US Army. Chambered in .45 ACP."
	icon_state = "black1911"
	w_class = 2
	caliber = "a45acp"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/m1911
	weight = 0.794
	ammo_type = /obj/item/ammo_casing/a45acp
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 1.02

/obj/item/weapon/gun/projectile/pistol/tt30
	name = "TT-30"
	desc = "The standard issue pistol of the Soviet Union. Chambered in 7.62x25mm Tokarev."
	icon_state = "tt30"
	w_class = 2
	caliber = "a765x25"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/tt30
	weight = 0.794
	ammo_type = /obj/item/ammo_casing/a765x25
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 0.98

/obj/item/weapon/gun/projectile/pistol/m9beretta
	name = "M9 Beretta"
	desc = "The standard issue pistol of the US Army of the late 20th century. Chambered in 9mm Parabellum."
	icon_state = "m9beretta"
	w_class = 2
	caliber = "a9x19"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/m9beretta
	weight = 0.794
	ammo_type = /obj/item/ammo_casing/a9x19
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 1.12

/obj/item/weapon/gun/projectile/pistol/jericho941
	name = "Jericho 941"
	desc = "The standard issue pistol of the IDF of the late 20th century. Chambered in 9mm Parabellum."
	icon_state = "jericho941"
	w_class = 2
	caliber = "a9x19"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	magazine_type = /obj/item/ammo_magazine/jericho
	weight = 0.85
	ammo_type = /obj/item/ammo_casing/a9x19
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	effectiveness_mod = 1.12
