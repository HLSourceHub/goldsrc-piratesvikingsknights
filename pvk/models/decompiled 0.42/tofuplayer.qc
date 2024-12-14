// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/player.mdl"

$BodyGroup "body"
{
	studio "tofuplayer_reference.smd"
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
	"tofuplayer_anims\look_idle.smd"
	ACT_IDLE 2
	fps 1
}
$Sequence "idle" {
	"tofuplayer_anims\idle.smd"
	ACT_IDLE 1
	fps 1
}
$Sequence "deep_idle" {
	"tofuplayer_anims\deep_idle.smd"
	ACT_IDLE 4
	fps 1
}
$Sequence "run2" {
	"tofuplayer_anims\run2.smd"
	ACT_RUN 1
	fps 1
}
$Sequence "walk2handed" {
	"tofuplayer_anims\walk2handed.smd"
	ACT_WALK 1
	fps 1
}
$Sequence "2handshoot" {
	"tofuplayer_anims\2handshoot.smd"
	ACT_RANGE_ATTACK1 1
	fps 1
}
$Sequence "crawl" {
	"tofuplayer_anims\crawl.smd"
	ACT_CROUCH 1
	fps 1
}
$Sequence "crouch_idle" {
	"tofuplayer_anims\crouch_idle.smd"
	ACT_CROUCHIDLE 1
	fps 1
}
$Sequence "jump" {
	"tofuplayer_anims\jump.smd"
	ACT_HOP 1
	fps 1
}
$Sequence "long_jump" {
	"tofuplayer_anims\long_jump.smd"
	ACT_LEAP 1
	fps 1
}
$Sequence "swim" {
	"tofuplayer_anims\swim.smd"
	ACT_SWIM 1
	fps 1
}
$Sequence "treadwater" {
	"tofuplayer_anims\treadwater.smd"
	ACT_HOVER 1
	fps 1
}
$Sequence "run" {
	"tofuplayer_anims\run.smd"
	fps 1
}
$Sequence "walk" {
	"tofuplayer_anims\walk.smd"
	ACT_RELOAD 1
	fps 1
}
$Sequence "die_simple" {
	"tofuplayer_anims\die_simple.smd"
	ACT_DIESIMPLE 1
	fps 22
}
$Sequence "die_backwards1" {
	"tofuplayer_anims\die_backwards1.smd"
	ACT_DIEBACKWARD 4
	fps 1
}
$Sequence "die_backwards" {
	"tofuplayer_anims\die_backwards.smd"
	ACT_DIEBACKWARD 1
	fps 1
}
$Sequence "die_forwards" {
	"tofuplayer_anims\die_forwards.smd"
	ACT_DIEFORWARD 1
	fps 1
}
$Sequence "headshot" {
	"tofuplayer_anims\headshot.smd"
	ACT_DIE_HEADSHOT 4
	fps 1
}
$Sequence "die_spin" {
	"tofuplayer_anims\die_spin.smd"
	ACT_DIE_HEADSHOT 1
	fps 1
}
$Sequence "gutshot" {
	"tofuplayer_anims\gutshot.smd"
	ACT_DIE_GUTSHOT 1
	fps 1
}
$Sequence "die_headcrush" {
	"tofuplayer_anims\die_headcrush.smd"
	ACT_DIE_HEADSHOT 3
	fps 1
}
$Sequence "ref_aim_chest" {
	"tofuplayer_anims\ref_aim_chest.smd"
	fps 1
}
$Sequence "ref_shoot_chest" {
	"tofuplayer_anims\ref_shoot_chest.smd"
	fps 1
}
$Sequence "crouch_aim_chest" {
	"tofuplayer_anims\crouch_aim_chest.smd"
	fps 1
}
$Sequence "crouch_shoot_chest" {
	"tofuplayer_anims\crouch_shoot_chest.smd"
	fps 1
}
$Sequence "ref_aim_fists" {
	"tofuplayer_anims\ref_aim_fists.smd"
	fps 1
}
$Sequence "ref_shoot_fists" {
	"tofuplayer_anims\ref_shoot_fists.smd"
	fps 1
}
$Sequence "crouch_aim_fists" {
	"tofuplayer_anims\crouch_aim_fists.smd"
	fps 1
}
$Sequence "crouch_shoot_fists" {
	"tofuplayer_anims\crouch_shoot_fists.smd"
	fps 1
}
$Sequence "ref_aim_smallsword" {
	"tofuplayer_anims\ref_aim_smallsword.smd"
	fps 1
}
$Sequence "ref_shoot_smallsword" {
	"tofuplayer_anims\ref_shoot_smallsword.smd"
	fps 1
}
$Sequence "crouch_aim_smallsword" {
	"tofuplayer_anims\crouch_aim_smallsword.smd"
	fps 1
}
$Sequence "crouch_shoot_smallsword" {
	"tofuplayer_anims\crouch_shoot_smallsword.smd"
	fps 1
}
$Sequence "ref_aim_sword" {
	"tofuplayer_anims\ref_aim_sword.smd"
	fps 1
}
$Sequence "ref_shoot_sword" {
	"tofuplayer_anims\ref_shoot_sword.smd"
	fps 1
}
$Sequence "ref_shoot2_sword" {
	"tofuplayer_anims\ref_shoot2_sword.smd"
	fps 1
}
$Sequence "crouch_aim_sword" {
	"tofuplayer_anims\crouch_aim_sword.smd"
	fps 1
}
$Sequence "crouch_shoot_sword" {
	"tofuplayer_anims\crouch_shoot_sword.smd"
	fps 1
}
$Sequence "crouch_shoot2_sword" {
	"tofuplayer_anims\crouch_shoot2_sword.smd"
	fps 1
}
$Sequence "ref_aim_mace" {
	"tofuplayer_anims\ref_aim_mace.smd"
	fps 1
}
$Sequence "ref_shoot_mace" {
	"tofuplayer_anims\ref_shoot_mace.smd"
	fps 1
}
$Sequence "crouch_aim_mace" {
	"tofuplayer_anims\crouch_aim_mace.smd"
	fps 1
}
$Sequence "crouch_shoot_mace" {
	"tofuplayer_anims\crouch_shoot_mace.smd"
	fps 1
}
$Sequence "ref_aim_flail" {
	"tofuplayer_anims\ref_aim_flail.smd"
	fps 1
}
$Sequence "ref_shoot_flail" {
	"tofuplayer_anims\ref_shoot_flail.smd"
	fps 1
}
$Sequence "crouch_aim_flail" {
	"tofuplayer_anims\crouch_aim_flail.smd"
	fps 1
}
$Sequence "crouch_shoot_flail" {
	"tofuplayer_anims\crouch_shoot_flail.smd"
	fps 1
}
$Sequence "ref_aim_bow" {
	"tofuplayer_anims\ref_aim_bow.smd"
	fps 1
}
$Sequence "ref_shoot_bow" {
	"tofuplayer_anims\ref_shoot_bow.smd"
	fps 1
}
$Sequence "crouch_aim_bow" {
	"tofuplayer_anims\crouch_aim_bow.smd"
	fps 1
}
$Sequence "crouch_shoot_bow" {
	"tofuplayer_anims\crouch_shoot_bow.smd"
	fps 1
}
$Sequence "ref_aim_crossbow" {
	"tofuplayer_anims\ref_aim_crossbow.smd"
	fps 1
}
$Sequence "ref_shoot_crossbow" {
	"tofuplayer_anims\ref_shoot_crossbow.smd"
	fps 1
}
$Sequence "crouch_aim_crossbow" {
	"tofuplayer_anims\crouch_aim_crossbow.smd"
	fps 1
}
$Sequence "crouch_shoot_crossbow" {
	"tofuplayer_anims\crouch_shoot_crossbow.smd"
	fps 1
}
$Sequence "ref_load_crossbow" {
	"tofuplayer_anims\ref_load_crossbow.smd"
	fps 1
}
$Sequence "ref_aim_dagger" {
	"tofuplayer_anims\ref_aim_dagger.smd"
	fps 1
}
$Sequence "ref_shoot_dagger" {
	"tofuplayer_anims\ref_shoot_dagger.smd"
	fps 1
}
$Sequence "crouch_aim_dagger" {
	"tofuplayer_anims\crouch_aim_dagger.smd"
	fps 1
}
$Sequence "crouch_shoot_dagger" {
	"tofuplayer_anims\crouch_shoot_dagger.smd"
	fps 1
}
$Sequence "ref_aim_cutlass" {
	"tofuplayer_anims\ref_aim_cutlass.smd"
	fps 1
}
$Sequence "ref_shoot_cutlass" {
	"tofuplayer_anims\ref_shoot_cutlass.smd"
	fps 1
}
$Sequence "crouch_aim_cutlass" {
	"tofuplayer_anims\crouch_aim_cutlass.smd"
	fps 1
}
$Sequence "crouch_shoot_cutlass" {
	"tofuplayer_anims\crouch_shoot_cutlass.smd"
	fps 1
}
$Sequence "ref_aim_flintlock" {
	"tofuplayer_anims\ref_aim_flintlock.smd"
	fps 1
}
$Sequence "ref_shoot_flintlock" {
	"tofuplayer_anims\ref_shoot_flintlock.smd"
	fps 1
}
$Sequence "crouch_aim_flintlock" {
	"tofuplayer_anims\crouch_aim_flintlock.smd"
	fps 1
}
$Sequence "crouch_shoot_flintlock" {
	"tofuplayer_anims\crouch_shoot_flintlock.smd"
	fps 1
}
$Sequence "ref_load_flintlock" {
	"tofuplayer_anims\ref_load_flintlock.smd"
	fps 1
}
$Sequence "ref_aim_musketoon" {
	"tofuplayer_anims\ref_aim_musketoon.smd"
	fps 1
}
$Sequence "ref_shoot_musketoon" {
	"tofuplayer_anims\ref_shoot_musketoon.smd"
	fps 1
}
$Sequence "crouch_aim_musketoon" {
	"tofuplayer_anims\crouch_aim_musketoon.smd"
	fps 1
}
$Sequence "crouch_shoot_musketoon" {
	"tofuplayer_anims\crouch_shoot_musketoon.smd"
	fps 1
}
$Sequence "ref_load_musketoon" {
	"tofuplayer_anims\ref_load_musketoon.smd"
	fps 1
}
$Sequence "ref_aim_markmusket" {
	"tofuplayer_anims\ref_aim_markmusket.smd"
	fps 1
}
$Sequence "ref_shoot_markmusket" {
	"tofuplayer_anims\ref_shoot_markmusket.smd"
	fps 1
}
$Sequence "crouch_aim_markmusket" {
	"tofuplayer_anims\crouch_aim_markmusket.smd"
	fps 1
}
$Sequence "crouch_shoot_markmusket" {
	"tofuplayer_anims\crouch_shoot_markmusket.smd"
	fps 1
}
$Sequence "ref_load_markmusket" {
	"tofuplayer_anims\ref_load_markmusket.smd"
	fps 1
}
$Sequence "ref_aim_parrot" {
	"tofuplayer_anims\ref_aim_parrot.smd"
	fps 1
}
$Sequence "ref_shoot_parrot" {
	"tofuplayer_anims\ref_shoot_parrot.smd"
	fps 1
}
$Sequence "crouch_aim_parrot" {
	"tofuplayer_anims\crouch_aim_parrot.smd"
	fps 1
}
$Sequence "crouch_shoot_parrot" {
	"tofuplayer_anims\crouch_shoot_parrot.smd"
	fps 1
}
$Sequence "ref_aim_powderkeg" {
	"tofuplayer_anims\ref_aim_powderkeg.smd"
	fps 1
}
$Sequence "ref_shoot_powderkeg" {
	"tofuplayer_anims\ref_shoot_powderkeg.smd"
	fps 1
}
$Sequence "ref_shoot2_powderkeg" {
	"tofuplayer_anims\ref_shoot2_powderkeg.smd"
	fps 1
}
$Sequence "crouch_aim_powderkeg" {
	"tofuplayer_anims\crouch_aim_powderkeg.smd"
	fps 1
}
$Sequence "crouch_shoot_powderkeg" {
	"tofuplayer_anims\crouch_shoot_powderkeg.smd"
	fps 1
}
$Sequence "crouch_shoot2_powderkeg" {
	"tofuplayer_anims\crouch_shoot2_powderkeg.smd"
	fps 1
}
$Sequence "ref_aim_spear" {
	"tofuplayer_anims\ref_aim_spear.smd"
	fps 1
}
$Sequence "ref_shoot_spear" {
	"tofuplayer_anims\ref_shoot_spear.smd"
	fps 1
}
$Sequence "crouch_aim_spear" {
	"tofuplayer_anims\crouch_aim_spear.smd"
	fps 1
}
$Sequence "crouch_shoot_spear" {
	"tofuplayer_anims\crouch_shoot_spear.smd"
	fps 1
}
$Sequence "ref_aim_bigaxe" {
	"tofuplayer_anims\ref_aim_bigaxe.smd"
	fps 1
}
$Sequence "ref_shoot_bigaxe" {
	"tofuplayer_anims\ref_shoot_bigaxe.smd"
	fps 1
}
$Sequence "crouch_aim_bigaxe" {
	"tofuplayer_anims\crouch_aim_bigaxe.smd"
	fps 1
}
$Sequence "crouch_shoot_bigaxe" {
	"tofuplayer_anims\crouch_shoot_bigaxe.smd"
	fps 1
}
$Sequence "ref_aim_throwingaxe" {
	"tofuplayer_anims\ref_aim_throwingaxe.smd"
	fps 1
}
$Sequence "ref_shoot_throwingaxe" {
	"tofuplayer_anims\ref_shoot_throwingaxe.smd"
	fps 1
}
$Sequence "crouch_aim_throwingaxe" {
	"tofuplayer_anims\crouch_aim_throwingaxe.smd"
	fps 1
}
$Sequence "crouch_shoot_throwingaxe" {
	"tofuplayer_anims\crouch_shoot_throwingaxe.smd"
	fps 1
}
$Sequence "ref_aim_viksword" {
	"tofuplayer_anims\ref_aim_viksword.smd"
	fps 1
}
$Sequence "ref_shoot_viksword" {
	"tofuplayer_anims\ref_shoot_viksword.smd"
	fps 1
}
$Sequence "crouch_aim_viksword" {
	"tofuplayer_anims\crouch_aim_viksword.smd"
	fps 1
}
$Sequence "crouch_shoot_viksword" {
	"tofuplayer_anims\crouch_shoot_viksword.smd"
	fps 1
}
$Sequence "ref_aim_axes" {
	"tofuplayer_anims\ref_aim_axes.smd"
	fps 1
}
$Sequence "ref_shoot_axes" {
	"tofuplayer_anims\ref_shoot_axes.smd"
	fps 1
}
$Sequence "crouch_aim_axes" {
	"tofuplayer_anims\crouch_aim_axes.smd"
	fps 1
}
$Sequence "crouch_shoot_axes" {
	"tofuplayer_anims\crouch_shoot_axes.smd"
	fps 1
}
$Sequence "ref_aim_hammer" {
	"tofuplayer_anims\ref_aim_hammer.smd"
	fps 1
}
$Sequence "ref_shoot_hammer" {
	"tofuplayer_anims\ref_shoot_hammer.smd"
	fps 1
}
$Sequence "crouch_aim_hammer" {
	"tofuplayer_anims\crouch_aim_hammer.smd"
	fps 1
}
$Sequence "crouch_shoot_hammer" {
	"tofuplayer_anims\crouch_shoot_hammer.smd"
	fps 1
}
$Sequence "ref_aim_javelin" {
	"tofuplayer_anims\ref_aim_javelin.smd"
	fps 1
}
$Sequence "ref_shoot_javelin" {
	"tofuplayer_anims\ref_shoot_javelin.smd"
	fps 1
}
$Sequence "crouch_aim_javelin" {
	"tofuplayer_anims\crouch_aim_javelin.smd"
	fps 1
}
$Sequence "crouch_shoot_javelin" {
	"tofuplayer_anims\crouch_shoot_javelin.smd"
	fps 1
}
