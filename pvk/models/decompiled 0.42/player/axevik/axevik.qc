// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/axevik.mdl"

$BodyGroup "body"
{
	studio "axevik_body0_model0.smd"
}
$BodyGroup "shield"
{
	studio "axevik_body1_model0.smd"
	studio "axevik_body1_model1.smd"
}
$BodyGroup "bigaxe"
{
	studio "axevik_body2_model0.smd"
	studio "axevik_body2_model1.smd"
}
$BodyGroup "throwaxe"
{
	studio "axevik_body3_model0.smd"
	studio "axevik_body3_model1.smd"
}



$TextureGroup "skinfamilies"
{
	{ "torso.bmp" "leg.bmp" "pouch.bmp" "sleeve.bmp" "furry.bmp" "handfront.bmp" "handback.bmp" "helmet.bmp" "winglet.bmp" "hair.bmp" "hairinside.bmp" "face.bmp" "boot.bmp" "foot.bmp" "shield.bmp" "shieldcenter.bmp" "shaft.bmp" "topthing.bmp" "throwingaxe.bmp" }
}

$Attachment 0 "Bip01 R Hand" 20 2 5
$Attachment 1 "Bip01 R Hand" 15 1.5 3.75
$Attachment 2 "Bip01 R Hand" 30 3 7.5

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 3 "Bip01 Pelvis" -4.69 -4.44 -6.75 4 5.56 6.75
$HBox 6 "Bip01 L Leg" 2.66 -3.69 -3.09 18.16 4.88 3.31
$HBox 6 "Bip01 L Leg1" 0.38 -3.97 -2.84 17.6 4 2.94
$HBox 6 "Bip01 L Foot" -0.59 -2.34 -2.63 3.79 8 2.19
$HBox 7 "Bip01 R Leg" 2.47 -3.69 -3.16 18.129999 4.88 3.38
$HBox 7 "Bip01 R Leg1" 0.31 -3.97 -2.84 17.6 3.94 2.97
$HBox 7 "Bip01 R Foot" -0.56 -2.34 -2.19 3.81 8 2.66
$HBox 3 "Bip01 Spine1" -3.25 -5.5 -5.5 4.83 5.5 5.5
$HBox 2 "Bip01 Spine2" -0.06 -5.53 -7.59 8 7 7.59
$HBox 2 "Bip01 Spine3" -2.25 -6.81 -6.31 6.5 5.09 6.31
$HBox 2 "Bip01 Neck" -3.11 -1.5 -3 2.05 3.5 3
$HBox 1 "Bip01 Head" 0.09 -3.66 -3 8.41 5.09 3
$HBox 4 "Bip01 L Arm" 0.94 -2.88 -4.13 5.44 4.28 3.5
$HBox 4 "Bip01 L Arm1" -2.16 -2.34 -2.56 11.56 3.41 2.38
$HBox 4 "Bip01 L Arm2" 0.59 -1.81 -2.19 10.75 2.84 2.41
$HBox 4 "Bip01 L Hand" 0 -1 -2 3 1.5 3.5
$HBox 5 "Bip01 R Arm" 1.38 -2.84 -3.56 5.69 4.31 4.31
$HBox 5 "Bip01 R Arm1" -1.88 -2.47 -2.16 11.81 3.28 2.81
$HBox 5 "Bip01 R Arm2" 0.44 -1.97 -2.34 10.59 2.72 2.22
$HBox 5 "Bip01 R Hand" 0 -1 -2 3 1.5 3.5

$Controller 0 "Bip01 Spine" XR -30 30
$Controller 1 "Bip01 Spine1" XR -30 30
$Controller 2 "Bip01 Spine2" XR -30 30
$Controller 3 "Bip01 Spine3" XR -30 30

$Sequence "look_idle" {
	"axevik_anims\look_idle.smd"
	ACT_IDLE 2
	fps 14
	loop
}
$Sequence "idle" {
	"axevik_anims\idle.smd"
	ACT_IDLE 1
	fps 14
	loop
}
$Sequence "deep_idle" {
	"axevik_anims\deep_idle.smd"
	ACT_IDLE 4
	fps 12
	loop
}
$Sequence "run2" {
	"axevik_anims\run2.smd"
	ACT_RUN 1
	fps 40
	loop
	LX
}
$Sequence "walk2handed" {
	"axevik_anims\walk2handed.smd"
	ACT_WALK 1
	fps 26
	loop
	LX
}
$Sequence "2handshoot" {
	"axevik_anims\2handshoot.smd"
	ACT_RANGE_ATTACK1 1
	fps 20
}
$Sequence "crawl" {
	"axevik_anims\crawl.smd"
	ACT_CROUCH 1
	fps 22
	loop
	LX
}
$Sequence "crouch_idle" {
	"axevik_anims\crouch_idle.smd"
	ACT_CROUCHIDLE 1
	fps 12
	loop
}
$Sequence "jump" {
	"axevik_anims\jump.smd"
	ACT_HOP 1
	fps 30
}
$Sequence "long_jump" {
	"axevik_anims\long_jump.smd"
	ACT_LEAP 1
	fps 24
	LX
}
$Sequence "swim" {
	"axevik_anims\swim.smd"
	ACT_SWIM 1
	fps 14
	loop
}
$Sequence "treadwater" {
	"axevik_anims\treadwater.smd"
	ACT_HOVER 1
	fps 14
	loop
}
$Sequence "run" {
	"axevik_anims\run.smd"
	fps 31
	loop
	LX
}
$Sequence "walk" {
	"axevik_anims\walk.smd"
	fps 31
	loop
	LX
}
$Sequence "die_simple" {
	"axevik_anims\die_simple.smd"
	ACT_DIESIMPLE 1
	{ event 2001 20 }
	fps 25
}
$Sequence "die_backwards1" {
	"axevik_anims\die_backwards1.smd"
	ACT_DIEBACKWARD 4
	{ event 2001 19 }
	fps 26
}
$Sequence "die_backwards" {
	"axevik_anims\die_backwards.smd"
	ACT_DIEBACKWARD 1
	{ event 2001 31 }
	fps 30
}
$Sequence "die_forwards" {
	"axevik_anims\die_forwards.smd"
	ACT_DIEFORWARD 1
	{ event 2001 10 }
	fps 26
}
$Sequence "headshot" {
	"axevik_anims\headshot.smd"
	ACT_DIE_HEADSHOT 4
	{ event 2001 30 }
	fps 22
}
$Sequence "die_spin" {
	"axevik_anims\die_spin.smd"
	ACT_DIE_HEADSHOT 1
	{ event 2001 18 }
	fps 30
}
$Sequence "gutshot" {
	"axevik_anims\gutshot.smd"
	ACT_DIE_GUTSHOT 1
	{ event 2001 90 }
	fps 26
}
$Sequence "die_headcrush" {
	"axevik_anims\die_headcrush.smd"
	ACT_DIE_HEADSHOT 3
	{ event 2001 28 }
	fps 24
}
$Sequence "ref_berserk" {
	"axevik_anims\ref_berserk.smd"
	fps 15
}
$Sequence "crouch_berserk" {
	"axevik_anims\crouch_berserk.smd"
	fps 15
}
$Sequence "ref_aim_chest" {
	"axevik_anims\ref_aim_chest_blend01.smd"
	"axevik_anims\ref_aim_chest_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_chest" {
	"axevik_anims\ref_shoot_chest_blend01.smd"
	"axevik_anims\ref_shoot_chest_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "crouch_aim_chest" {
	"axevik_anims\crouch_aim_chest_blend01.smd"
	"axevik_anims\crouch_aim_chest_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_chest" {
	"axevik_anims\crouch_shoot_chest_blend01.smd"
	"axevik_anims\crouch_shoot_chest_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "whiz" {
	"axevik_anims\whiz.smd"
	fps 12
}
$Sequence "ref_aim_fists" {
	"axevik_anims\ref_aim_fists_blend01.smd"
	"axevik_anims\ref_aim_fists_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_fists" {
	"axevik_anims\ref_shoot_fists_blend01.smd"
	"axevik_anims\ref_shoot_fists_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_shoot2_fists" {
	"axevik_anims\ref_shoot2_fists_blend01.smd"
	"axevik_anims\ref_shoot2_fists_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_fists" {
	"axevik_anims\crouch_aim_fists_blend01.smd"
	"axevik_anims\crouch_aim_fists_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_fists" {
	"axevik_anims\crouch_shoot_fists_blend01.smd"
	"axevik_anims\crouch_shoot_fists_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_shoot2_fists" {
	"axevik_anims\crouch_shoot2_fists_blend01.smd"
	"axevik_anims\crouch_shoot2_fists_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_shoot_fists2" {
	"axevik_anims\ref_shoot_fists2_blend01.smd"
	"axevik_anims\ref_shoot_fists2_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_shoot2_fists2" {
	"axevik_anims\ref_shoot2_fists2_blend01.smd"
	"axevik_anims\ref_shoot2_fists2_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "crouch_shoot_fists2" {
	"axevik_anims\crouch_shoot_fists2_blend01.smd"
	"axevik_anims\crouch_shoot_fists2_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_shoot2_fists2" {
	"axevik_anims\crouch_shoot2_fists2_blend01.smd"
	"axevik_anims\crouch_shoot2_fists2_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "ref_aim_smallsword" {
	"axevik_anims\ref_aim_smallsword.smd"
	fps 1
}
$Sequence "ref_shoot_smallsword" {
	"axevik_anims\ref_shoot_smallsword.smd"
	fps 1
}
$Sequence "crouch_aim_smallsword" {
	"axevik_anims\crouch_aim_smallsword.smd"
	fps 1
}
$Sequence "crouch_shoot_smallsword" {
	"axevik_anims\crouch_shoot_smallsword.smd"
	fps 1
}
$Sequence "ref_aim_smallsword2" {
	"axevik_anims\ref_aim_smallsword2.smd"
	fps 1
}
$Sequence "ref_shoot_smallsword2" {
	"axevik_anims\ref_shoot_smallsword2.smd"
	fps 1
}
$Sequence "crouch_aim_smallsword2" {
	"axevik_anims\crouch_aim_smallsword2.smd"
	fps 1
}
$Sequence "crouch_shoot_smallsword2" {
	"axevik_anims\crouch_shoot_smallsword2.smd"
	fps 1
}
$Sequence "ref_aim_sword" {
	"axevik_anims\ref_aim_sword.smd"
	fps 1
}
$Sequence "ref_shoot_sword" {
	"axevik_anims\ref_shoot_sword.smd"
	fps 1
}
$Sequence "ref_shoot2_sword" {
	"axevik_anims\ref_shoot2_sword.smd"
	fps 1
}
$Sequence "crouch_aim_sword" {
	"axevik_anims\crouch_aim_sword.smd"
	fps 1
}
$Sequence "crouch_shoot_sword" {
	"axevik_anims\crouch_shoot_sword.smd"
	fps 1
}
$Sequence "crouch_shoot2_sword" {
	"axevik_anims\crouch_shoot2_sword.smd"
	fps 1
}
$Sequence "ref_aim_mace" {
	"axevik_anims\ref_aim_mace.smd"
	fps 1
}
$Sequence "ref_shoot_mace" {
	"axevik_anims\ref_shoot_mace.smd"
	fps 1
}
$Sequence "crouch_aim_mace" {
	"axevik_anims\crouch_aim_mace.smd"
	fps 1
}
$Sequence "crouch_shoot_mace" {
	"axevik_anims\crouch_shoot_mace.smd"
	fps 1
}
$Sequence "ref_aim_mace2" {
	"axevik_anims\ref_aim_mace2.smd"
	fps 1
}
$Sequence "crouch_aim_mace2" {
	"axevik_anims\crouch_aim_mace2.smd"
	fps 1
}
$Sequence "ref_aim_flail" {
	"axevik_anims\ref_aim_flail.smd"
	fps 1
}
$Sequence "ref_shoot_flail" {
	"axevik_anims\ref_shoot_flail.smd"
	fps 1
}
$Sequence "crouch_aim_flail" {
	"axevik_anims\crouch_aim_flail.smd"
	fps 1
}
$Sequence "crouch_shoot_flail" {
	"axevik_anims\crouch_shoot_flail.smd"
	fps 1
}
$Sequence "ref_aim_bow" {
	"axevik_anims\ref_aim_bow.smd"
	fps 1
}
$Sequence "ref_shoot_bow" {
	"axevik_anims\ref_shoot_bow.smd"
	fps 1
}
$Sequence "crouch_aim_bow" {
	"axevik_anims\crouch_aim_bow.smd"
	fps 1
}
$Sequence "crouch_shoot_bow" {
	"axevik_anims\crouch_shoot_bow.smd"
	fps 1
}
$Sequence "ref_aim_bow2" {
	"axevik_anims\ref_aim_bow2.smd"
	fps 1
}
$Sequence "crouch_aim_bow2" {
	"axevik_anims\crouch_aim_bow2.smd"
	fps 1
}
$Sequence "ref_aim_crossbow" {
	"axevik_anims\ref_aim_crossbow.smd"
	fps 1
}
$Sequence "ref_shoot_crossbow" {
	"axevik_anims\ref_shoot_crossbow.smd"
	fps 1
}
$Sequence "crouch_aim_crossbow" {
	"axevik_anims\crouch_aim_crossbow.smd"
	fps 1
}
$Sequence "crouch_shoot_crossbow" {
	"axevik_anims\crouch_shoot_crossbow.smd"
	fps 1
}
$Sequence "ref_aim_crossbow2" {
	"axevik_anims\ref_aim_crossbow2.smd"
	fps 1
}
$Sequence "ref_shoot_crossbow2" {
	"axevik_anims\ref_shoot_crossbow2.smd"
	fps 1
}
$Sequence "crouch_aim_crossbow2" {
	"axevik_anims\crouch_aim_crossbow2.smd"
	fps 1
}
$Sequence "crouch_shoot_crossbow2" {
	"axevik_anims\crouch_shoot_crossbow2.smd"
	fps 1
}
$Sequence "ref_load_crossbow" {
	"axevik_anims\ref_load_crossbow.smd"
	fps 1
}
$Sequence "ref_aim_dagger" {
	"axevik_anims\ref_aim_dagger.smd"
	fps 1
}
$Sequence "ref_shoot_dagger" {
	"axevik_anims\ref_shoot_dagger.smd"
	fps 1
}
$Sequence "crouch_aim_dagger" {
	"axevik_anims\crouch_aim_dagger.smd"
	fps 1
}
$Sequence "crouch_shoot_dagger" {
	"axevik_anims\crouch_shoot_dagger.smd"
	fps 1
}
$Sequence "ref_aim_cutlass" {
	"axevik_anims\ref_aim_cutlass.smd"
	fps 1
}
$Sequence "ref_shoot_cutlass" {
	"axevik_anims\ref_shoot_cutlass.smd"
	fps 1
}
$Sequence "ref_shoot2_cutlass" {
	"axevik_anims\ref_shoot2_cutlass.smd"
	fps 1
}
$Sequence "crouch_aim_cutlass" {
	"axevik_anims\crouch_aim_cutlass.smd"
	fps 1
}
$Sequence "crouch_shoot_cutlass" {
	"axevik_anims\crouch_shoot_cutlass.smd"
	fps 1
}
$Sequence "crouch_shoot2_cutlass" {
	"axevik_anims\crouch_shoot2_cutlass.smd"
	fps 1
}
$Sequence "ref_aim_flintlock" {
	"axevik_anims\ref_aim_flintlock.smd"
	fps 1
}
$Sequence "ref_shoot_flintlock" {
	"axevik_anims\ref_shoot_flintlock.smd"
	fps 1
}
$Sequence "crouch_aim_flintlock" {
	"axevik_anims\crouch_aim_flintlock.smd"
	fps 1
}
$Sequence "crouch_shoot_flintlock" {
	"axevik_anims\crouch_shoot_flintlock.smd"
	fps 1
}
$Sequence "ref_load_flintlock" {
	"axevik_anims\ref_load_flintlock.smd"
	fps 1
}
$Sequence "ref_aim_musketoon" {
	"axevik_anims\ref_aim_musketoon.smd"
	fps 1
}
$Sequence "ref_shoot_musketoon" {
	"axevik_anims\ref_shoot_musketoon.smd"
	fps 1
}
$Sequence "crouch_aim_musketoon" {
	"axevik_anims\crouch_aim_musketoon.smd"
	fps 1
}
$Sequence "crouch_shoot_musketoon" {
	"axevik_anims\crouch_shoot_musketoon.smd"
	fps 1
}
$Sequence "ref_load_musketoon" {
	"axevik_anims\ref_load_musketoon.smd"
	fps 1
}
$Sequence "ref_aim_markmusket" {
	"axevik_anims\ref_aim_markmusket.smd"
	fps 1
}
$Sequence "ref_shoot_markmusket" {
	"axevik_anims\ref_shoot_markmusket.smd"
	fps 1
}
$Sequence "crouch_aim_markmusket" {
	"axevik_anims\crouch_aim_markmusket.smd"
	fps 1
}
$Sequence "crouch_shoot_markmusket" {
	"axevik_anims\crouch_shoot_markmusket.smd"
	fps 1
}
$Sequence "ref_load_markmusket" {
	"axevik_anims\ref_load_markmusket.smd"
	fps 1
}
$Sequence "ref_aim_markmusket2" {
	"axevik_anims\ref_aim_markmusket2.smd"
	fps 1
}
$Sequence "ref_shoot_markmusket2" {
	"axevik_anims\ref_shoot_markmusket2.smd"
	fps 1
}
$Sequence "crouch_aim_markmusket2" {
	"axevik_anims\crouch_aim_markmusket2.smd"
	fps 1
}
$Sequence "crouch_shoot_markmusket2" {
	"axevik_anims\crouch_shoot_markmusket2.smd"
	fps 1
}
$Sequence "ref_aim_parrot" {
	"axevik_anims\ref_aim_parrot.smd"
	fps 1
}
$Sequence "ref_shoot_parrot" {
	"axevik_anims\ref_shoot_parrot.smd"
	fps 1
}
$Sequence "ref_shoot2_parrot" {
	"axevik_anims\ref_shoot2_parrot.smd"
	fps 1
}
$Sequence "crouch_aim_parrot" {
	"axevik_anims\crouch_aim_parrot.smd"
	fps 1
}
$Sequence "crouch_shoot_parrot" {
	"axevik_anims\crouch_shoot_parrot.smd"
	fps 1
}
$Sequence "crouch_shoot2_parrot" {
	"axevik_anims\crouch_shoot2_parrot.smd"
	fps 1
}
$Sequence "ref_aim_powderkeg" {
	"axevik_anims\ref_aim_powderkeg.smd"
	fps 1
}
$Sequence "ref_shoot_powderkeg" {
	"axevik_anims\ref_shoot_powderkeg.smd"
	fps 1
}
$Sequence "ref_shoot2_powderkeg" {
	"axevik_anims\ref_shoot2_powderkeg.smd"
	fps 1
}
$Sequence "crouch_aim_powderkeg" {
	"axevik_anims\crouch_aim_powderkeg.smd"
	fps 1
}
$Sequence "crouch_shoot_powderkeg" {
	"axevik_anims\crouch_shoot_powderkeg.smd"
	fps 1
}
$Sequence "crouch_shoot2_powderkeg" {
	"axevik_anims\crouch_shoot2_powderkeg.smd"
	fps 1
}
$Sequence "ref_aim_spear" {
	"axevik_anims\ref_aim_spear_blend01.smd"
	"axevik_anims\ref_aim_spear_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_spear" {
	"axevik_anims\ref_shoot_spear_blend01.smd"
	"axevik_anims\ref_shoot_spear_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_spear" {
	"axevik_anims\crouch_aim_spear_blend01.smd"
	"axevik_anims\crouch_aim_spear_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_spear" {
	"axevik_anims\crouch_shoot_spear_blend01.smd"
	"axevik_anims\crouch_shoot_spear_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_aim_spearcharge" {
	"axevik_anims\ref_aim_spearcharge_blend01.smd"
	"axevik_anims\ref_aim_spearcharge_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_aim_bigaxe" {
	"axevik_anims\ref_aim_bigaxe_blend01.smd"
	"axevik_anims\ref_aim_bigaxe_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_bigaxe" {
	"axevik_anims\ref_shoot_bigaxe_blend01.smd"
	"axevik_anims\ref_shoot_bigaxe_blend02.smd"
	blend "XR" -45 45
	fps 14
}
$Sequence "crouch_aim_bigaxe" {
	"axevik_anims\crouch_aim_bigaxe_blend01.smd"
	"axevik_anims\crouch_aim_bigaxe_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_bigaxe" {
	"axevik_anims\crouch_shoot_bigaxe_blend01.smd"
	"axevik_anims\crouch_shoot_bigaxe_blend02.smd"
	blend "XR" -45 45
	fps 14
}
$Sequence "ref_shoot2_bigaxe" {
	"axevik_anims\ref_shoot2_bigaxe.smd"
	fps 30
}
$Sequence "ref_aim_throwaxe" {
	"axevik_anims\ref_aim_throwaxe_blend01.smd"
	"axevik_anims\ref_aim_throwaxe_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_throwaxe" {
	"axevik_anims\ref_shoot_throwaxe_blend01.smd"
	"axevik_anims\ref_shoot_throwaxe_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "crouch_aim_throwaxe" {
	"axevik_anims\crouch_aim_throwaxe_blend01.smd"
	"axevik_anims\crouch_aim_throwaxe_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_throwaxe" {
	"axevik_anims\crouch_shoot_throwaxe_blend01.smd"
	"axevik_anims\crouch_shoot_throwaxe_blend02.smd"
	blend "XR" -45 45
	fps 20
	loop
}
$Sequence "ref_aim_throwaxe2" {
	"axevik_anims\ref_aim_throwaxe2_blend01.smd"
	"axevik_anims\ref_aim_throwaxe2_blend02.smd"
	blend "XR" -45 45
	fps 20
	loop
}
$Sequence "crouch_aim_throwaxe2" {
	"axevik_anims\crouch_aim_throwaxe2_blend01.smd"
	"axevik_anims\crouch_aim_throwaxe2_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "ref_aim_viksword" {
	"axevik_anims\ref_aim_viksword_blend01.smd"
	"axevik_anims\ref_aim_viksword_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_viksword" {
	"axevik_anims\ref_shoot_viksword_blend01.smd"
	"axevik_anims\ref_shoot_viksword_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "crouch_aim_viksword" {
	"axevik_anims\crouch_aim_viksword_blend01.smd"
	"axevik_anims\crouch_aim_viksword_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_viksword" {
	"axevik_anims\crouch_shoot_viksword_blend01.smd"
	"axevik_anims\crouch_shoot_viksword_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "ref_aim_viksword2" {
	"axevik_anims\ref_aim_viksword2_blend01.smd"
	"axevik_anims\ref_aim_viksword2_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_viksword2" {
	"axevik_anims\ref_shoot_viksword2_blend01.smd"
	"axevik_anims\ref_shoot_viksword2_blend02.smd"
	blend "XR" -45 45
	fps 20
	loop
}
$Sequence "crouch_aim_viksword2" {
	"axevik_anims\crouch_aim_viksword2_blend01.smd"
	"axevik_anims\crouch_aim_viksword2_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_viksword2" {
	"axevik_anims\crouch_shoot_viksword2_blend01.smd"
	"axevik_anims\crouch_shoot_viksword2_blend02.smd"
	blend "XR" -45 45
	fps 20
	loop
}
$Sequence "ref_aim_axes" {
	"axevik_anims\ref_aim_axes_blend01.smd"
	"axevik_anims\ref_aim_axes_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_axes" {
	"axevik_anims\ref_shoot_axes_blend01.smd"
	"axevik_anims\ref_shoot_axes_blend02.smd"
	blend "XR" -45 45
	fps 35
}
$Sequence "crouch_aim_axes" {
	"axevik_anims\crouch_aim_axes_blend01.smd"
	"axevik_anims\crouch_aim_axes_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_axes" {
	"axevik_anims\crouch_shoot_axes_blend01.smd"
	"axevik_anims\crouch_shoot_axes_blend02.smd"
	blend "XR" -45 45
	fps 35
}
$Sequence "ref_aim_hammer" {
	"axevik_anims\ref_aim_hammer_blend01.smd"
	"axevik_anims\ref_aim_hammer_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_hammer" {
	"axevik_anims\ref_shoot_hammer_blend01.smd"
	"axevik_anims\ref_shoot_hammer_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "ref_shoot2_hammer" {
	"axevik_anims\ref_shoot2_hammer_blend01.smd"
	"axevik_anims\ref_shoot2_hammer_blend02.smd"
	blend "XR" -45 45
	fps 18
}
$Sequence "crouch_aim_hammer" {
	"axevik_anims\crouch_aim_hammer_blend01.smd"
	"axevik_anims\crouch_aim_hammer_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_hammer" {
	"axevik_anims\crouch_shoot_hammer_blend01.smd"
	"axevik_anims\crouch_shoot_hammer_blend02.smd"
	blend "XR" -45 45
	fps 15
}
$Sequence "crouch_shoot2_hammer" {
	"axevik_anims\crouch_shoot2_hammer_blend01.smd"
	"axevik_anims\crouch_shoot2_hammer_blend02.smd"
	blend "XR" -45 45
	fps 25
}
$Sequence "ref_aim_javelin" {
	"axevik_anims\ref_aim_javelin_blend01.smd"
	"axevik_anims\ref_aim_javelin_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_javelin" {
	"axevik_anims\ref_shoot_javelin_blend01.smd"
	"axevik_anims\ref_shoot_javelin_blend02.smd"
	blend "XR" -45 45
	fps 25
}
$Sequence "crouch_aim_javelin" {
	"axevik_anims\crouch_aim_javelin_blend01.smd"
	"axevik_anims\crouch_aim_javelin_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_javelin" {
	"axevik_anims\crouch_shoot_javelin_blend01.smd"
	"axevik_anims\crouch_shoot_javelin_blend02.smd"
	blend "XR" -45 45
	fps 25
}
