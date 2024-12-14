// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/player.mdl"

$BodyGroup "body"
{
	studio "player_body0_model0.smd"
}
$BodyGroup "group1"
{
	studio "player_body1_model0.smd"
	studio "player_body1_model1.smd"
}
$BodyGroup "group2"
{
	studio "player_body2_model0.smd"
	studio "player_body2_model1.smd"
}
$BodyGroup "group2"
{
	studio "player_body3_model0.smd"
	studio "player_body3_model1.smd"
}



$TextureGroup "skinfamilies"
{
	{ "null.bmp" }
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
	"player_anims\look_idle.smd"
	ACT_IDLE 2
	fps 14
	loop
}
$Sequence "idle" {
	"player_anims\idle.smd"
	ACT_IDLE 1
	fps 14
	loop
}
$Sequence "deep_idle" {
	"player_anims\deep_idle.smd"
	ACT_IDLE 4
	fps 12
	loop
}
$Sequence "run2" {
	"player_anims\run2.smd"
	ACT_RUN 1
	fps 40
	loop
	LX
}
$Sequence "walk2handed" {
	"player_anims\walk2handed.smd"
	ACT_WALK 1
	fps 26
	loop
	LX
}
$Sequence "2handshoot" {
	"player_anims\2handshoot.smd"
	ACT_RANGE_ATTACK1 1
	fps 20
}
$Sequence "crawl" {
	"player_anims\crawl.smd"
	ACT_CROUCH 1
	fps 22
	loop
	LX
}
$Sequence "crouch_idle" {
	"player_anims\crouch_idle.smd"
	ACT_CROUCHIDLE 1
	fps 12
	loop
}
$Sequence "jump" {
	"player_anims\jump.smd"
	ACT_HOP 1
	fps 30
}
$Sequence "long_jump" {
	"player_anims\long_jump.smd"
	ACT_LEAP 1
	fps 24
	LX
}
$Sequence "swim" {
	"player_anims\swim.smd"
	ACT_SWIM 1
	fps 14
	loop
}
$Sequence "treadwater" {
	"player_anims\treadwater.smd"
	ACT_HOVER 1
	fps 14
	loop
}
$Sequence "run" {
	"player_anims\run.smd"
	fps 31
	loop
	LX
}
$Sequence "walk" {
	"player_anims\walk.smd"
	ACT_RELOAD 1
	fps 31
	loop
	LX
}
$Sequence "die_simple" {
	"player_anims\die_simple.smd"
	ACT_DIESIMPLE 1
	{ event 2001 20 }
	fps 25
}
$Sequence "die_backwards1" {
	"player_anims\die_backwards1.smd"
	ACT_DIEBACKWARD 4
	{ event 2001 19 }
	fps 26
}
$Sequence "die_backwards" {
	"player_anims\die_backwards.smd"
	ACT_DIEBACKWARD 1
	{ event 2001 31 }
	fps 30
}
$Sequence "die_forwards" {
	"player_anims\die_forwards.smd"
	ACT_DIEFORWARD 1
	{ event 2001 10 }
	fps 26
}
$Sequence "headshot" {
	"player_anims\headshot.smd"
	ACT_DIE_HEADSHOT 4
	{ event 2001 30 }
	fps 22
}
$Sequence "die_spin" {
	"player_anims\die_spin.smd"
	ACT_DIE_HEADSHOT 1
	{ event 2001 18 }
	fps 30
}
$Sequence "gutshot" {
	"player_anims\gutshot.smd"
	ACT_DIE_GUTSHOT 1
	{ event 2001 90 }
	fps 26
}
$Sequence "die_headcrush" {
	"player_anims\die_headcrush.smd"
	ACT_DIE_HEADSHOT 3
	{ event 2001 28 }
	fps 24
}
$Sequence "ref_berserk" {
	"player_anims\ref_berserk.smd"
	fps 15
}
$Sequence "crouch_berserk" {
	"player_anims\crouch_berserk.smd"
	fps 15
}
$Sequence "ref_aim_chest" {
	"player_anims\ref_aim_chest_blend01.smd"
	"player_anims\ref_aim_chest_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_chest" {
	"player_anims\ref_shoot_chest_blend01.smd"
	"player_anims\ref_shoot_chest_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "crouch_aim_chest" {
	"player_anims\crouch_aim_chest_blend01.smd"
	"player_anims\crouch_aim_chest_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_chest" {
	"player_anims\crouch_shoot_chest_blend01.smd"
	"player_anims\crouch_shoot_chest_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "whiz" {
	"player_anims\whiz.smd"
	fps 12
}
$Sequence "ref_aim_fists" {
	"player_anims\ref_aim_fists_blend01.smd"
	"player_anims\ref_aim_fists_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_fists" {
	"player_anims\ref_shoot_fists_blend01.smd"
	"player_anims\ref_shoot_fists_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_shoot2_fists" {
	"player_anims\ref_shoot2_fists_blend01.smd"
	"player_anims\ref_shoot2_fists_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_fists" {
	"player_anims\crouch_aim_fists_blend01.smd"
	"player_anims\crouch_aim_fists_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_fists" {
	"player_anims\crouch_shoot_fists_blend01.smd"
	"player_anims\crouch_shoot_fists_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_shoot2_fists" {
	"player_anims\crouch_shoot2_fists_blend01.smd"
	"player_anims\crouch_shoot2_fists_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_shoot_fists2" {
	"player_anims\ref_shoot_fists2_blend01.smd"
	"player_anims\ref_shoot_fists2_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_shoot2_fists2" {
	"player_anims\ref_shoot2_fists2_blend01.smd"
	"player_anims\ref_shoot2_fists2_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "crouch_shoot_fists2" {
	"player_anims\crouch_shoot_fists2_blend01.smd"
	"player_anims\crouch_shoot_fists2_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_shoot2_fists2" {
	"player_anims\crouch_shoot2_fists2_blend01.smd"
	"player_anims\crouch_shoot2_fists2_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "ref_aim_smallsword" {
	"player_anims\ref_aim_smallsword_blend01.smd"
	"player_anims\ref_aim_smallsword_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_smallsword" {
	"player_anims\ref_shoot_smallsword_blend01.smd"
	"player_anims\ref_shoot_smallsword_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_smallsword" {
	"player_anims\crouch_aim_smallsword_blend01.smd"
	"player_anims\crouch_aim_smallsword_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_smallsword" {
	"player_anims\crouch_shoot_smallsword_blend01.smd"
	"player_anims\crouch_shoot_smallsword_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_aim_smallsword2" {
	"player_anims\ref_aim_smallsword2_blend01.smd"
	"player_anims\ref_aim_smallsword2_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_smallsword2" {
	"player_anims\ref_shoot_smallsword2_blend01.smd"
	"player_anims\ref_shoot_smallsword2_blend02.smd"
	blend "XR" -45 45
	fps 24
	loop
}
$Sequence "crouch_aim_smallsword2" {
	"player_anims\crouch_aim_smallsword2_blend01.smd"
	"player_anims\crouch_aim_smallsword2_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_smallsword2" {
	"player_anims\crouch_shoot_smallsword2_blend01.smd"
	"player_anims\crouch_shoot_smallsword2_blend02.smd"
	blend "XR" -45 45
	fps 24
	loop
}
$Sequence "ref_aim_sword" {
	"player_anims\ref_aim_sword_blend01.smd"
	"player_anims\ref_aim_sword_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_sword" {
	"player_anims\ref_shoot_sword_blend01.smd"
	"player_anims\ref_shoot_sword_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_shoot2_sword" {
	"player_anims\ref_shoot2_sword_blend01.smd"
	"player_anims\ref_shoot2_sword_blend02.smd"
	blend "XR" -45 45
	fps 30
}
$Sequence "crouch_aim_sword" {
	"player_anims\crouch_aim_sword_blend01.smd"
	"player_anims\crouch_aim_sword_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_sword" {
	"player_anims\crouch_shoot_sword_blend01.smd"
	"player_anims\crouch_shoot_sword_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_shoot2_sword" {
	"player_anims\crouch_shoot2_sword_blend01.smd"
	"player_anims\crouch_shoot2_sword_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_aim_mace" {
	"player_anims\ref_aim_mace_blend01.smd"
	"player_anims\ref_aim_mace_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_mace" {
	"player_anims\ref_shoot_mace_blend01.smd"
	"player_anims\ref_shoot_mace_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_mace" {
	"player_anims\crouch_aim_mace_blend01.smd"
	"player_anims\crouch_aim_mace_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_mace" {
	"player_anims\crouch_shoot_mace_blend01.smd"
	"player_anims\crouch_shoot_mace_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_aim_mace2" {
	"player_anims\ref_aim_mace2_blend01.smd"
	"player_anims\ref_aim_mace2_blend02.smd"
	blend "XR" -45 45
	fps 24
	loop
}
$Sequence "crouch_aim_mace2" {
	"player_anims\crouch_aim_mace2_blend01.smd"
	"player_anims\crouch_aim_mace2_blend02.smd"
	blend "XR" -45 45
	fps 30
	loop
}
$Sequence "ref_aim_flail" {
	"player_anims\ref_aim_flail_blend01.smd"
	"player_anims\ref_aim_flail_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_flail" {
	"player_anims\ref_shoot_flail_blend01.smd"
	"player_anims\ref_shoot_flail_blend02.smd"
	blend "XR" -45 45
	fps 35
}
$Sequence "crouch_aim_flail" {
	"player_anims\crouch_aim_flail_blend01.smd"
	"player_anims\crouch_aim_flail_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_flail" {
	"player_anims\crouch_shoot_flail_blend01.smd"
	"player_anims\crouch_shoot_flail_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_aim_bow" {
	"player_anims\ref_aim_bow_blend01.smd"
	"player_anims\ref_aim_bow_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_bow" {
	"player_anims\ref_shoot_bow_blend01.smd"
	"player_anims\ref_shoot_bow_blend02.smd"
	blend "XR" -45 45
	fps 15
}
$Sequence "crouch_aim_bow" {
	"player_anims\crouch_aim_bow_blend01.smd"
	"player_anims\crouch_aim_bow_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_bow" {
	"player_anims\crouch_shoot_bow_blend01.smd"
	"player_anims\crouch_shoot_bow_blend02.smd"
	blend "XR" -45 45
	fps 15
	loop
}
$Sequence "ref_aim_bow2" {
	"player_anims\ref_aim_bow2_blend01.smd"
	"player_anims\ref_aim_bow2_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_aim_bow2" {
	"player_anims\crouch_aim_bow2_blend01.smd"
	"player_anims\crouch_aim_bow2_blend02.smd"
	blend "XR" -45 45
	fps 15
}
$Sequence "ref_aim_crossbow" {
	"player_anims\ref_aim_crossbow_blend01.smd"
	"player_anims\ref_aim_crossbow_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_crossbow" {
	"player_anims\ref_shoot_crossbow_blend01.smd"
	"player_anims\ref_shoot_crossbow_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_crossbow" {
	"player_anims\crouch_aim_crossbow_blend01.smd"
	"player_anims\crouch_aim_crossbow_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_crossbow" {
	"player_anims\crouch_shoot_crossbow_blend01.smd"
	"player_anims\crouch_shoot_crossbow_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_aim_crossbow2" {
	"player_anims\ref_aim_crossbow2_blend01.smd"
	"player_anims\ref_aim_crossbow2_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_crossbow2" {
	"player_anims\ref_shoot_crossbow2_blend01.smd"
	"player_anims\ref_shoot_crossbow2_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_crossbow2" {
	"player_anims\crouch_aim_crossbow2_blend01.smd"
	"player_anims\crouch_aim_crossbow2_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_crossbow2" {
	"player_anims\crouch_shoot_crossbow2_blend01.smd"
	"player_anims\crouch_shoot_crossbow2_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_load_crossbow" {
	"player_anims\ref_load_crossbow.smd"
	blend "XR" -45 45
	fps 12
}
$Sequence "ref_aim_dagger" {
	"player_anims\ref_aim_dagger_blend01.smd"
	"player_anims\ref_aim_dagger_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_dagger" {
	"player_anims\ref_shoot_dagger_blend01.smd"
	"player_anims\ref_shoot_dagger_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_dagger" {
	"player_anims\crouch_aim_dagger_blend01.smd"
	"player_anims\crouch_aim_dagger_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_dagger" {
	"player_anims\crouch_shoot_dagger_blend01.smd"
	"player_anims\crouch_shoot_dagger_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_aim_cutlass" {
	"player_anims\ref_aim_cutlass_blend01.smd"
	"player_anims\ref_aim_cutlass_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_cutlass" {
	"player_anims\ref_shoot_cutlass_blend01.smd"
	"player_anims\ref_shoot_cutlass_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_shoot2_cutlass" {
	"player_anims\ref_shoot2_cutlass.smd"
	fps 30
	LX
}
$Sequence "crouch_aim_cutlass" {
	"player_anims\crouch_aim_cutlass_blend01.smd"
	"player_anims\crouch_aim_cutlass_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_cutlass" {
	"player_anims\crouch_shoot_cutlass_blend01.smd"
	"player_anims\crouch_shoot_cutlass_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_shoot2_cutlass" {
	"player_anims\crouch_shoot2_cutlass.smd"
	fps 30
	LX
}
$Sequence "ref_aim_flintlock" {
	"player_anims\ref_aim_flintlock_blend01.smd"
	"player_anims\ref_aim_flintlock_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_flintlock" {
	"player_anims\ref_shoot_flintlock_blend01.smd"
	"player_anims\ref_shoot_flintlock_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_flintlock" {
	"player_anims\crouch_aim_flintlock_blend01.smd"
	"player_anims\crouch_aim_flintlock_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_flintlock" {
	"player_anims\crouch_shoot_flintlock_blend01.smd"
	"player_anims\crouch_shoot_flintlock_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_load_flintlock" {
	"player_anims\ref_load_flintlock.smd"
	blend "XR" -45 45
	fps 18
}
$Sequence "ref_aim_musketoon" {
	"player_anims\ref_aim_musketoon_blend01.smd"
	"player_anims\ref_aim_musketoon_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_musketoon" {
	"player_anims\ref_shoot_musketoon_blend01.smd"
	"player_anims\ref_shoot_musketoon_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_musketoon" {
	"player_anims\crouch_aim_musketoon_blend01.smd"
	"player_anims\crouch_aim_musketoon_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_musketoon" {
	"player_anims\crouch_shoot_musketoon_blend01.smd"
	"player_anims\crouch_shoot_musketoon_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_load_musketoon" {
	"player_anims\ref_load_musketoon.smd"
	blend "XR" -45 45
	fps 15
}
$Sequence "ref_aim_markmusket" {
	"player_anims\ref_aim_markmusket_blend01.smd"
	"player_anims\ref_aim_markmusket_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_markmusket" {
	"player_anims\ref_shoot_markmusket_blend01.smd"
	"player_anims\ref_shoot_markmusket_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_markmusket" {
	"player_anims\crouch_aim_markmusket_blend01.smd"
	"player_anims\crouch_aim_markmusket_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_markmusket" {
	"player_anims\crouch_shoot_markmusket_blend01.smd"
	"player_anims\crouch_shoot_markmusket_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_load_markmusket" {
	"player_anims\ref_load_markmusket.smd"
	blend "XR" -45 45
	fps 10
}
$Sequence "ref_aim_markmusket2" {
	"player_anims\ref_aim_markmusket2_blend01.smd"
	"player_anims\ref_aim_markmusket2_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_markmusket2" {
	"player_anims\ref_shoot_markmusket2_blend01.smd"
	"player_anims\ref_shoot_markmusket2_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_markmusket2" {
	"player_anims\crouch_aim_markmusket2_blend01.smd"
	"player_anims\crouch_aim_markmusket2_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_markmusket2" {
	"player_anims\crouch_shoot_markmusket2_blend01.smd"
	"player_anims\crouch_shoot_markmusket2_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_aim_parrot" {
	"player_anims\ref_aim_parrot_blend01.smd"
	"player_anims\ref_aim_parrot_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_parrot" {
	"player_anims\ref_shoot_parrot_blend01.smd"
	"player_anims\ref_shoot_parrot_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_shoot2_parrot" {
	"player_anims\ref_shoot2_parrot.smd"
	fps 24
}
$Sequence "crouch_aim_parrot" {
	"player_anims\crouch_aim_parrot_blend01.smd"
	"player_anims\crouch_aim_parrot_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_parrot" {
	"player_anims\crouch_shoot_parrot_blend01.smd"
	"player_anims\crouch_shoot_parrot_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_shoot2_parrot" {
	"player_anims\crouch_shoot2_parrot.smd"
	fps 24
}
$Sequence "ref_aim_powderkeg" {
	"player_anims\ref_aim_powderkeg_blend01.smd"
	"player_anims\ref_aim_powderkeg_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_powderkeg" {
	"player_anims\ref_shoot_powderkeg_blend01.smd"
	"player_anims\ref_shoot_powderkeg_blend02.smd"
	blend "XR" -45 45
	fps 12
}
$Sequence "ref_shoot2_powderkeg" {
	"player_anims\ref_shoot2_powderkeg_blend01.smd"
	"player_anims\ref_shoot2_powderkeg_blend02.smd"
	blend "XR" -45 45
	fps 18
}
$Sequence "crouch_aim_powderkeg" {
	"player_anims\crouch_aim_powderkeg_blend01.smd"
	"player_anims\crouch_aim_powderkeg_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_powderkeg" {
	"player_anims\crouch_shoot_powderkeg_blend01.smd"
	"player_anims\crouch_shoot_powderkeg_blend02.smd"
	blend "XR" -45 45
	fps 12
}
$Sequence "crouch_shoot2_powderkeg" {
	"player_anims\crouch_shoot2_powderkeg_blend01.smd"
	"player_anims\crouch_shoot2_powderkeg_blend02.smd"
	blend "XR" -45 45
	fps 12
}
$Sequence "ref_aim_spear" {
	"player_anims\ref_aim_spear_blend01.smd"
	"player_anims\ref_aim_spear_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_spear" {
	"player_anims\ref_shoot_spear_blend01.smd"
	"player_anims\ref_shoot_spear_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_spear" {
	"player_anims\crouch_aim_spear_blend01.smd"
	"player_anims\crouch_aim_spear_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_spear" {
	"player_anims\crouch_shoot_spear_blend01.smd"
	"player_anims\crouch_shoot_spear_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_aim_spearcharge" {
	"player_anims\ref_aim_spearcharge_blend01.smd"
	"player_anims\ref_aim_spearcharge_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_aim_bigaxe" {
	"player_anims\ref_aim_bigaxe_blend01.smd"
	"player_anims\ref_aim_bigaxe_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_bigaxe" {
	"player_anims\ref_shoot_bigaxe_blend01.smd"
	"player_anims\ref_shoot_bigaxe_blend02.smd"
	blend "XR" -45 45
	fps 14
}
$Sequence "crouch_aim_bigaxe" {
	"player_anims\crouch_aim_bigaxe_blend01.smd"
	"player_anims\crouch_aim_bigaxe_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_bigaxe" {
	"player_anims\crouch_shoot_bigaxe_blend01.smd"
	"player_anims\crouch_shoot_bigaxe_blend02.smd"
	blend "XR" -45 45
	fps 14
}
$Sequence "ref_shoot2_bigaxe" {
	"player_anims\ref_shoot2_bigaxe.smd"
	fps 30
}
$Sequence "ref_aim_throwaxe" {
	"player_anims\ref_aim_throwaxe_blend01.smd"
	"player_anims\ref_aim_throwaxe_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_throwaxe" {
	"player_anims\ref_shoot_throwaxe_blend01.smd"
	"player_anims\ref_shoot_throwaxe_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "crouch_aim_throwaxe" {
	"player_anims\crouch_aim_throwaxe_blend01.smd"
	"player_anims\crouch_aim_throwaxe_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_throwaxe" {
	"player_anims\crouch_shoot_throwaxe_blend01.smd"
	"player_anims\crouch_shoot_throwaxe_blend02.smd"
	blend "XR" -45 45
	fps 20
	loop
}
$Sequence "ref_aim_throwaxe2" {
	"player_anims\ref_aim_throwaxe2_blend01.smd"
	"player_anims\ref_aim_throwaxe2_blend02.smd"
	blend "XR" -45 45
	fps 20
	loop
}
$Sequence "crouch_aim_throwaxe2" {
	"player_anims\crouch_aim_throwaxe2_blend01.smd"
	"player_anims\crouch_aim_throwaxe2_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "ref_aim_viksword" {
	"player_anims\ref_aim_viksword_blend01.smd"
	"player_anims\ref_aim_viksword_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_viksword" {
	"player_anims\ref_shoot_viksword_blend01.smd"
	"player_anims\ref_shoot_viksword_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "crouch_aim_viksword" {
	"player_anims\crouch_aim_viksword_blend01.smd"
	"player_anims\crouch_aim_viksword_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_viksword" {
	"player_anims\crouch_shoot_viksword_blend01.smd"
	"player_anims\crouch_shoot_viksword_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "ref_aim_viksword2" {
	"player_anims\ref_aim_viksword2_blend01.smd"
	"player_anims\ref_aim_viksword2_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_viksword2" {
	"player_anims\ref_shoot_viksword2_blend01.smd"
	"player_anims\ref_shoot_viksword2_blend02.smd"
	blend "XR" -45 45
	fps 20
	loop
}
$Sequence "crouch_aim_viksword2" {
	"player_anims\crouch_aim_viksword2_blend01.smd"
	"player_anims\crouch_aim_viksword2_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_viksword2" {
	"player_anims\crouch_shoot_viksword2_blend01.smd"
	"player_anims\crouch_shoot_viksword2_blend02.smd"
	blend "XR" -45 45
	fps 20
	loop
}
$Sequence "ref_aim_axes" {
	"player_anims\ref_aim_axes_blend01.smd"
	"player_anims\ref_aim_axes_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_axes" {
	"player_anims\ref_shoot_axes_blend01.smd"
	"player_anims\ref_shoot_axes_blend02.smd"
	blend "XR" -45 45
	fps 35
}
$Sequence "crouch_aim_axes" {
	"player_anims\crouch_aim_axes_blend01.smd"
	"player_anims\crouch_aim_axes_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_axes" {
	"player_anims\crouch_shoot_axes_blend01.smd"
	"player_anims\crouch_shoot_axes_blend02.smd"
	blend "XR" -45 45
	fps 35
}
$Sequence "ref_aim_hammer" {
	"player_anims\ref_aim_hammer_blend01.smd"
	"player_anims\ref_aim_hammer_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_hammer" {
	"player_anims\ref_shoot_hammer_blend01.smd"
	"player_anims\ref_shoot_hammer_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "ref_shoot2_hammer" {
	"player_anims\ref_shoot2_hammer_blend01.smd"
	"player_anims\ref_shoot2_hammer_blend02.smd"
	blend "XR" -45 45
	fps 18
}
$Sequence "crouch_aim_hammer" {
	"player_anims\crouch_aim_hammer_blend01.smd"
	"player_anims\crouch_aim_hammer_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_hammer" {
	"player_anims\crouch_shoot_hammer_blend01.smd"
	"player_anims\crouch_shoot_hammer_blend02.smd"
	blend "XR" -45 45
	fps 15
}
$Sequence "crouch_shoot2_hammer" {
	"player_anims\crouch_shoot2_hammer_blend01.smd"
	"player_anims\crouch_shoot2_hammer_blend02.smd"
	blend "XR" -45 45
	fps 25
}
$Sequence "ref_aim_javelin" {
	"player_anims\ref_aim_javelin_blend01.smd"
	"player_anims\ref_aim_javelin_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_javelin" {
	"player_anims\ref_shoot_javelin_blend01.smd"
	"player_anims\ref_shoot_javelin_blend02.smd"
	blend "XR" -45 45
	fps 25
}
$Sequence "crouch_aim_javelin" {
	"player_anims\crouch_aim_javelin_blend01.smd"
	"player_anims\crouch_aim_javelin_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_javelin" {
	"player_anims\crouch_shoot_javelin_blend01.smd"
	"player_anims\crouch_shoot_javelin_blend02.smd"
	blend "XR" -45 45
	fps 25
}
