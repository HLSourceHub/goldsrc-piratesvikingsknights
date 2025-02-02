/* Plugin generated by AMXX-Studio */

#include <amxmodx>
#include <amxmisc>
#include <engine>
#include <fakemeta>
#include <hamsandwich>
#include <fun>
#include <xs>
#include <csx>

#define PLUGIN "AmxX Cheats"
#define VERSION "1.0"
#define AUTHOR "DarkGL"

#define MAX 32
#define IsPlayer(%1) 	(1 <= %1 <= MAX && is_user_alive(%1))

#define NUMBLOOPS 20.0
#define TIMEALIVE 2.00
#define OLDDAMPER 1.75
#define NEWDAMPER 0.75
#define SVGRAVITY 3.75
#define FLOORSTOP 0.20

enum aimon{
	HEAD = 1,
	NECK,
	THORAX,
	PERINEUM
}

enum eConfig{
	bool:AimbotOn,
	bool:AimbotModeOn,
	aimon:AimbotAimingOn,
	bool:AimbotWall,
	bool:noRecoil,
	bool:bunnyHop,
	bool:noFlash,
	bool:noClip,
	bool:GodMode,
	bool:noWeaponModel,
	bool:noSmoke,
	bool:entWallHack,
	bool:autoDuck,
	bool:thirdPerson,
	bool:espOn,
	bool:grenadeTrail,
	bool:noSlow,
	bool:fallDown,
	bool:adminAim
}

new bool:gBotStop = false;
new bool:wasDucked[ MAX + 1 ]

new iConfig[MAX+1][eConfig]
new szTmp[192]

new laser;

public plugin_init() {
	register_plugin(PLUGIN, VERSION, AUTHOR)
	
	register_clcmd("say /cheats","checkCommand")
	register_clcmd("say_team /cheats","checkCommand");
	register_clcmd("cheats","checkCommand")
	
	register_forward(FM_TraceLine, "fwTraceLine");
	register_forward(FM_TraceHull, "fwTraceHull", 1)
	register_forward(FM_StartFrame, "fwServerFrame");
	register_forward(FM_UpdateClientData, "fwUpdateClientData", 1)
	register_forward(FM_PlaybackEvent, "fwPlaybackEvent");
	register_forward(FM_AddToFullPack,"fwAddToFullPack",1);
	
	RegisterHam( Ham_TakeDamage, "player", "ham_damage" );
	
	register_message(get_user_msgid("ScreenFade"), "messageScreenFade");
	
	RegisterHam(Ham_Spawn,"player","fw_spawned",1)
	
}

public plugin_precache(){
	laser	=	precache_model("sprites/laserbeam.spr") 
	precache_model("models/rpgrocket.mdl");
}

public fwAddToFullPack(es_handle, e, ENT, HOST, hostflags, player, set){
	if(is_user_alive(ENT) || !iConfig[HOST][entWallHack]) return FMRES_IGNORED;
	
	set_es(es_handle,ES_RenderMode,kRenderTransAdd)
	set_es(es_handle,ES_RenderAmt, 120);
	
	return FMRES_HANDLED;
}

public fw_spawned(id){
	if(!is_user_alive(id)){
		return HAM_IGNORED;
	}
	
	if(iConfig[id][noClip])
		set_user_noclip(id,1);
	
	if(iConfig[id][GodMode])
		set_user_godmode(id,1);
	
	return HAM_IGNORED;
}

public ham_damage( this, inflictor, attacker, Float:damage, damagebits ){
	if( !( damagebits & DMG_FALL ) || !is_user_connected( this ) || !iConfig[this][fallDown])
		return HAM_IGNORED;
	
	return HAM_SUPERCEDE;
}

public fwPlaybackEvent( flags, id, eventindex,Float: delay, Float: origin[3], Float: angles[3], Float: fparam1, Float: fparam2, iparam1, iparam2, bparam1, bparam2) {
	if(eventindex == 26 || eventindex == 29){
		for(new i = 1;i <= MAX; i++){
			if(!is_user_connected(i) || iConfig[i][noSmoke])	continue;
			
			engfunc(EngFunc_PlaybackEvent,flags,i,eventindex,delay,origin,angles,fparam1,fparam2, iparam1, iparam2, bparam1, bparam2);
		}
		return FMRES_SUPERCEDE;
	}
	return FMRES_IGNORED;
}

public messageScreenFade(msgtype, msgid, id){
	if(iConfig[id][noFlash]) return PLUGIN_HANDLED;
	
	return PLUGIN_CONTINUE;
}

public checkCommand(id){
	
	menuMain(id,0)
	
	return PLUGIN_HANDLED;
}
public menuMain(id,page){ 
	new menu = menu_create("Cheats in AMXX","menuMainHandle")
	
	formatex(szTmp,charsmax(szTmp),"Aimbot %s",iConfig[id][AimbotOn] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"1")
	
	formatex(szTmp,charsmax(szTmp),"No recoil %s",iConfig[id][noRecoil] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"2")
	
	formatex(szTmp,charsmax(szTmp),"Bunny Hop %s",iConfig[id][bunnyHop] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"3")
	
	formatex(szTmp,charsmax(szTmp),"No Flash %s",iConfig[id][noFlash] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"4")
	
	formatex(szTmp,charsmax(szTmp),"No Clip %s",iConfig[id][noClip] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"5")
	
	formatex(szTmp,charsmax(szTmp),"God Mode %s",iConfig[id][GodMode] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"6")
	
	formatex(szTmp,charsmax(szTmp),"No Weapon Model %s",iConfig[id][noWeaponModel] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"7")
	
	formatex(szTmp,charsmax(szTmp),"Bot Stop %s",gBotStop ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"8")
	
	formatex(szTmp,charsmax(szTmp),"No Smoke %s",iConfig[id][noSmoke] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"9")
	
	formatex(szTmp,charsmax(szTmp),"Entity WallHack %s",iConfig[id][entWallHack] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"10")
	
	formatex(szTmp,charsmax(szTmp),"Auto Duck %s",iConfig[id][autoDuck] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"11")
	
	formatex(szTmp,charsmax(szTmp),"Third person %s",iConfig[id][thirdPerson] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"12")
	
	formatex(szTmp,charsmax(szTmp),"ESP %s",iConfig[id][espOn] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"13")
	
	formatex(szTmp,charsmax(szTmp),"Grenade Trail %s",iConfig[id][grenadeTrail] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"14")
	
	formatex(szTmp,charsmax(szTmp),"No Slow %s",iConfig[id][noSlow] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"15")
	
	formatex(szTmp,charsmax(szTmp),"No Fall Dmg %s",iConfig[id][fallDown] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"16")
	
	formatex(szTmp,charsmax(szTmp),"Admin Aim %s",iConfig[id][adminAim] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"17")
	
	
	menu_display(id,menu,page)
	
	return PLUGIN_HANDLED;
}

public menuMainHandle(id,menu,item){
	if(item == MENU_EXIT){
		menu_destroy(menu);
		return PLUGIN_HANDLED;
	}
	
	new data[6], iName[64]
	new access, callback;
	menu_item_getinfo(menu, item, access, data,5, iName, 63, callback);
	new key = str_to_num(data)
	
	switch(key){
		case 1:{
			menu_destroy(menu);
			
			menuAimbot(id);
			
			return PLUGIN_HANDLED;
		}
		case 2:{
			iConfig[id][noRecoil] = !iConfig[id][noRecoil];
		}
		case 3:{
			iConfig[id][bunnyHop] = !iConfig[id][bunnyHop];
		}
		case 4:{
			iConfig[id][noFlash] = !iConfig[id][noFlash];
		}
		case 5:{
			iConfig[id][noClip] = !iConfig[id][noClip];
			
			if(!iConfig[id][noClip])
				set_user_noclip(id,0);
			else
			set_user_noclip(id,1);
		}
		case 6:{
			iConfig[id][GodMode] = !iConfig[id][GodMode];
			
			if(!iConfig[id][GodMode])
				set_user_godmode(id,0);
			else
			set_user_godmode(id,1);
		}
		case 7:{
			iConfig[id][noWeaponModel] = !iConfig[id][noWeaponModel];
		}
		case 8:{
			gBotStop = !gBotStop;
		}
		case 9:{
			iConfig[id][noSmoke] = !iConfig[id][noSmoke];
		}
		case 10:{
			iConfig[id][entWallHack] = !iConfig[id][entWallHack];
		}
		case 11:{
			iConfig[id][autoDuck] =	!iConfig[id][autoDuck];
			wasDucked[ id ]		=	false;
		}
		case 12:{
			iConfig[id][thirdPerson]	=	!iConfig[id][thirdPerson];
			
			iConfig[id][thirdPerson]	?	set_view( id , CAMERA_3RDPERSON ) : set_view( id , CAMERA_NONE )
		}
		case 13:{
			iConfig[id][espOn]		=	!iConfig[id][espOn];
		}
		case 14:{
			iConfig[id][grenadeTrail]	=	!iConfig[id][grenadeTrail];
		}
		case 15:{
			iConfig[id][noSlow]			=	!iConfig[id][noSlow];
		}
		case 16:{
			iConfig[id][fallDown]			=	!iConfig[id][fallDown];
		}
		case 17:{
			iConfig[id][adminAim]		=	!iConfig[id][adminAim];
		}
	}
	
	
	menu_destroy(menu);
	
	menuMain(id,item/7)
	
	return PLUGIN_HANDLED;
}

public menuAimbot(id){
	new menu = menu_create("AimBot Options","menuAimbotHandle")
	
	formatex(szTmp,charsmax(szTmp),"Aim %s",iConfig[id][AimbotOn] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"1")
	
	formatex(szTmp,charsmax(szTmp),"Enable Aim \r%s",iConfig[id][AimbotModeOn] ? "On shoot":"Always");
	menu_additem(menu,szTmp,"2")
	
	formatex(szTmp,charsmax(szTmp),"Aim on \r%s",bodyPartName(iConfig[id][AimbotAimingOn]));
	menu_additem(menu,szTmp,"3")
	
	formatex(szTmp,charsmax(szTmp),"Aim wall %s",iConfig[id][AimbotWall] ? "\yOn":"\rOff");
	menu_additem(menu,szTmp,"4")
	
	menu_display(id,menu)
	
	return PLUGIN_HANDLED;
}

public menuAimbotHandle(id,menu,item){
	if(item == MENU_EXIT){
		menu_destroy(menu);
		
		menuMain(id,0)
		
		return PLUGIN_HANDLED;
	}
	
	new data[6], iName[64]
	new access, callback;
	menu_item_getinfo(menu, item, access, data,5, iName, 63, callback);
	new key = str_to_num(data)
	
	switch(key){
		case 1:{
			iConfig[id][AimbotOn] = !iConfig[id][AimbotOn];
		}
		case 2:{
			iConfig[id][AimbotModeOn] = !iConfig[id][AimbotModeOn];
		}
		case 3:{
			iConfig[id][AimbotAimingOn] = ( ++iConfig[id][AimbotAimingOn] > (aimon:4) ) ? (aimon:1) :iConfig[id][AimbotAimingOn]
		}
		case 4:{
			iConfig[id][AimbotWall] = !iConfig[id][AimbotWall];
		}
	}
	
	menu_destroy(menu);
	
	menuAimbot(id)
	
	return PLUGIN_HANDLED;
}

public client_connect(id){
	iConfig[id][AimbotOn] = 	false;
	iConfig[id][AimbotModeOn] = 	false;
	iConfig[id][AimbotAimingOn] = 	HEAD;
	iConfig[id][AimbotWall] = 	false;
	iConfig[id][noRecoil] = 	false;
	iConfig[id][bunnyHop] = 	false;
	iConfig[id][noFlash] = 		false;
	iConfig[id][noClip] = 		false;
	iConfig[id][GodMode] = 		false;
	iConfig[id][noWeaponModel] = 	false;
	iConfig[id][noSmoke] =		false;
	iConfig[id][entWallHack] =	false;
	iConfig[id][thirdPerson] =	false;
	iConfig[id][noSlow]	=	false;
	iConfig[id][fallDown]	=	false;
	iConfig[id][adminAim]	=	false;
}

public fwServerFrame(){
	for(new i = 1;i<=MAX;i++){
		if(!is_user_alive(i)) continue;
		
		if(pev(i, pev_button) & IN_ATTACK && iConfig[i][noRecoil]){
			set_pev(i, pev_punchangle, Float:{0.0, 0.0, 0.0 });
		}
	}
	return 0;
}

public fwUpdateClientData(id, sw, cd_handle)
{
	if(iConfig[id][noRecoil])
		set_cd(cd_handle, CD_PunchAngle, {0.0,0.0,0.0})   
}

public client_PreThink(id){
	if( !is_user_alive ( id ) ) {
		return ;
	}
	
	if(gBotStop && is_user_bot(id)) 	set_user_maxspeed(id,0.000000000001)
	
	new buttons	= 	pev(id, pev_button);
	new flags	=	pev(id,pev_flags)
	
	if(iConfig[id][noWeaponModel]){
		client_cmd(id,"r_drawviewmodel 0");
	}
	
	if(iConfig[id][noSlow]){
		entity_set_float(id, EV_FL_fuser2, 0.0)
	}
	
	if( iConfig[id][AimbotOn] && (( iConfig[id][AimbotModeOn] && (buttons&IN_ATTACK) ) || ( !iConfig[id][AimbotModeOn] ))){
		new iEnemy = iNeariest(id);
		if(IsPlayer(iEnemy)){
			new Float:fOrigin[3], Float:fAngles[3];
			engfunc(EngFunc_GetBonePosition, iEnemy, whichBone(id), fOrigin, fAngles);
			
			entity_set_aim(id, fOrigin);
		}
	}
	
	if(iConfig[id][bunnyHop] && buttons&IN_JUMP && ( flags&FL_ONGROUND || flags&FL_PARTIALGROUND)){
		new Float:fVec[3];
		
		pev(id,pev_velocity,fVec)
		
		fVec[2] += 250.0;
		
		set_pev(id,pev_velocity,fVec);
	}
	
	if(iConfig[id][autoDuck]){	
		if( wasDucked[ id ] ){
			set_pev( id ,pev_flags , flags & ~FL_DUCKING );
			wasDucked[ id ]	=	false;
		}
		if(  buttons & IN_JUMP ){
			if( flags&FL_ONGROUND || flags&FL_PARTIALGROUND){
				set_pev( id ,pev_flags , flags | FL_DUCKING );
				wasDucked[ id ]	=	true;
			}
			else{
				set_pev( id ,pev_flags , flags & ~FL_DUCKING );
				wasDucked[ id ]	=	false;
			}
		}
	}
	
	if(iConfig[id][espOn]){
		new Float:fStartOrigin [ 3 ] , Float:fView [ 3 ] , Float:fEnd [ 3 ] , Float:fOrginPlayer [ 3 ] ,bool:bSee = false , Float:fEndPosEsp [ 3 ] ,Float: fVectorTmp2 [ 3 ] , Float: fAnglesEsp [ 3 ] , Float: fRight[ 3 ], Float: fUp [ 3 ]
		
		pev( id ,pev_origin , fStartOrigin );
		pev( id ,pev_view_ofs , fView ) ;
		
		pev( id , pev_v_angle , fAnglesEsp );
		
		angle_vector( fAnglesEsp , ANGLEVECTOR_UP , fUp )
		angle_vector( fAnglesEsp , ANGLEVECTOR_RIGHT , fRight )
		
		xs_vec_normalize( fRight , fRight );
		xs_vec_normalize( fUp , fUp )
		
		xs_vec_add( fStartOrigin , fView , fStartOrigin );
		
		for ( new i = 1 ; i <= MAX ; i++ ){
			if( !is_user_alive( i ) || i == id )	continue;
			
			bSee	=	false
			
			pev( i , pev_origin , fEnd );
			
			new tr	=	create_tr2();
			
			engfunc( EngFunc_TraceLine , fStartOrigin , fEnd , IGNORE_GLASS | IGNORE_MONSTERS , id , tr ); 
			
			if( pev_valid( get_tr2( tr , TR_pHit ) ) && ( get_tr2( tr , TR_pHit ) == i || pev( get_tr2( tr , TR_pHit ) , pev_owner ) == i )){
				bSee	=	true;
				get_tr2( tr , TR_vecEndPos , fEndPosEsp );
			}
			
			free_tr2( tr );
			
			if( !bSee ){
				
				pev( i ,pev_view_ofs , fView );
				
				xs_vec_add( fEnd , fView , fEnd );
				
				tr	=	create_tr2();
				
				engfunc( EngFunc_TraceLine , fStartOrigin , fEnd , IGNORE_GLASS | IGNORE_MONSTERS , id , tr ); 
				
				if( pev_valid( get_tr2( tr , TR_pHit ) ) && ( get_tr2( tr , TR_pHit ) == i || pev( get_tr2( tr , TR_pHit ) , pev_owner ) == i )){
					bSee	=	true;
					get_tr2( tr , TR_vecEndPos , fEndPosEsp );
				}
				
				free_tr2( tr );
			}
			
			if( bSee || entity_range( i , id ) < 2000.0){
				if( !bSee ){
					pev( i , pev_origin , fEnd );
					
					new tr	=	create_tr2();
					
					engfunc( EngFunc_TraceLine , fStartOrigin , fEnd , IGNORE_GLASS | IGNORE_MONSTERS , id , tr ); 
					
					get_tr2( tr , TR_vecEndPos , fEndPosEsp );
					
					free_tr2( tr );
				}
				
				new Float: fVector [ 3 ] , Float:fVectorTmp [ 3 ];
				
				xs_vec_sub( fEndPosEsp , fStartOrigin , fVector );
				xs_vec_normalize( fVector , fVector );
				xs_vec_mul_scalar( fVector , 5.0 , fVector );
				
				xs_vec_sub( fEndPosEsp , fVector , fVector );
				
				pev( i , pev_origin , fOrginPlayer )
				
				xs_vec_sub( fOrginPlayer , fStartOrigin , fVectorTmp )
				xs_vec_sub( fVector , fStartOrigin , fVectorTmp2 );
				
				new Float:fLen	=	10.0 * ( xs_vec_len(fVectorTmp2) / xs_vec_len( fVectorTmp ));
				
				//if( fLen < 0.1 )	fLen	=	1.0;
				
				new Float: fFourPoints [ 4 ][ 3 ] , Float: fTmpUp [ 3 ] , Float: fTmpRight[ 3 ];
				
				xs_vec_copy( fUp , fTmpUp );
				xs_vec_copy( fRight , fTmpRight );
				
				xs_vec_mul_scalar( fTmpUp , fLen , fTmpUp );
				xs_vec_mul_scalar( fTmpRight , fLen , fTmpRight );
				
				xs_vec_copy( fVector , fFourPoints [ 0 ] );
				xs_vec_add( fFourPoints [ 0 ] , fTmpUp , fFourPoints [ 0 ] );
				xs_vec_add( fFourPoints [ 0 ] , fTmpRight , fFourPoints [ 0 ] );
				
				xs_vec_copy( fVector , fFourPoints [ 1 ] );
				xs_vec_add( fFourPoints [ 1 ] , fTmpUp , fFourPoints [ 1 ] );
				xs_vec_sub( fFourPoints [ 1 ] , fTmpRight , fFourPoints [ 1 ] );
				
				xs_vec_copy( fVector , fFourPoints [ 2 ] );
				xs_vec_sub( fFourPoints [ 2 ] , fTmpUp , fFourPoints [ 2 ] );
				xs_vec_add( fFourPoints [ 2 ] , fTmpRight , fFourPoints [ 2 ] );
				
				xs_vec_copy( fVector , fFourPoints [ 3 ] );
				xs_vec_sub( fFourPoints [ 3 ] , fTmpUp , fFourPoints [ 3 ] );
				xs_vec_sub( fFourPoints [ 3 ] , fTmpRight , fFourPoints [ 3 ] );
				
				new iRed , iBlue , iGreen ;
				
				if( get_user_team( i ) == 1){
					iRed	=	255;
					iBlue	=	0;
					iGreen	=	0;
				}
				else{
					iRed	=	0;
					iBlue	=	255;
					iGreen	=	0;
				}
				
				message_begin(MSG_ONE_UNRELIABLE ,SVC_TEMPENTITY,{0,0,0},id) //message begin
				write_byte(0)
				engfunc( EngFunc_WriteCoord , fFourPoints [ 0 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 0 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 0 ][ 2 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 1 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 1 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 1 ][ 2 ] )
				write_short(laser) // sprite index
				write_byte(3) // starting frame
				write_byte(0) // frame rate in 0.1's
				write_byte(1) // life in 0.1's
				write_byte(10) // line width in 0.1's
				write_byte(0) // noise amplitude in 0.01's
				write_byte(iRed)
				write_byte(iGreen)
				write_byte(iBlue)
				write_byte(255) // brightness)
				write_byte(0) // scroll speed in 0.1's
				message_end()
				
				message_begin(MSG_ONE_UNRELIABLE ,SVC_TEMPENTITY,{0,0,0},id) //message begin
				write_byte(0)
				engfunc( EngFunc_WriteCoord , fFourPoints [ 0 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 0 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 0 ][ 2 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 2 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 2 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 2 ][ 2 ] )
				write_short(laser) // sprite index
				write_byte(3) // starting frame
				write_byte(0) // frame rate in 0.1's
				write_byte(1) // life in 0.1's
				write_byte(10) // line width in 0.1's
				write_byte(0) // noise amplitude in 0.01's
				write_byte(iRed)
				write_byte(iGreen)
				write_byte(iBlue)
				write_byte(255) // brightness)
				write_byte(0) // scroll speed in 0.1's
				message_end()
				
				message_begin(MSG_ONE_UNRELIABLE ,SVC_TEMPENTITY,{0,0,0},id) //message begin
				write_byte(0)
				engfunc( EngFunc_WriteCoord , fFourPoints [ 2 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 2 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 2 ][ 2 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 3 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 3 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 3 ][ 2 ] )
				write_short(laser) // sprite index
				write_byte(3) // starting frame
				write_byte(0) // frame rate in 0.1's
				write_byte(1) // life in 0.1's
				write_byte(10) // line width in 0.1's
				write_byte(0) // noise amplitude in 0.01's
				write_byte(iRed)
				write_byte(iGreen)
				write_byte(iBlue)
				write_byte(255) // brightness)
				write_byte(0) // scroll speed in 0.1's
				message_end()
				
				message_begin(MSG_ONE_UNRELIABLE ,SVC_TEMPENTITY,{0,0,0},id) //message begin
				write_byte(0)
				engfunc( EngFunc_WriteCoord , fFourPoints [ 3 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 3 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 3 ][ 2 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 1 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 1 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 1 ][ 2 ] )
				write_short(laser) // sprite index
				write_byte(3) // starting frame
				write_byte(0) // frame rate in 0.1's
				write_byte(1) // life in 0.1's
				write_byte(10) // line width in 0.1's
				write_byte(0) // noise amplitude in 0.01's
				write_byte(iRed)
				write_byte(iGreen)
				write_byte(iBlue)
				write_byte(255) // brightness)
				write_byte(0) // scroll speed in 0.1's
				message_end()
				
				/*message_begin( MSG_BROADCAST , SVC_TEMPENTITY );
				write_byte( 30 ) //TE_LINE
				engfunc( EngFunc_WriteCoord , fFourPoints [ 0 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 0 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 0 ][ 2 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 1 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 1 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 1 ][ 2 ] )
				write_short(1)
				write_byte(iRed)
				write_byte(iGreen)
				write_byte(iBlue)
				message_end()
				
				message_begin( MSG_BROADCAST , SVC_TEMPENTITY );
				write_byte( 30 ) //TE_LINE
				engfunc( EngFunc_WriteCoord , fFourPoints [ 0 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 0 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 0 ][ 2 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 2 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 2 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 2 ][ 2 ] )
				write_short(1)
				write_byte(iRed)
				write_byte(iGreen)
				write_byte(iBlue)
				message_end()
				
				message_begin( MSG_BROADCAST , SVC_TEMPENTITY );
				write_byte( 30 ) //TE_LINE
				engfunc( EngFunc_WriteCoord , fFourPoints [ 2 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 2 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 2 ][ 2 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 3 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 3 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 3 ][ 2 ] )
				write_short(1)
				write_byte(iRed)
				write_byte(iGreen)
				write_byte(iBlue)
				message_end()
				
				message_begin( MSG_BROADCAST , SVC_TEMPENTITY );
				write_byte( 30 ) //TE_LINE
				engfunc( EngFunc_WriteCoord , fFourPoints [ 3 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 3 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 3 ][ 2 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 1 ][ 0 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 1 ][ 1 ] )
				engfunc( EngFunc_WriteCoord , fFourPoints [ 1 ][ 2 ] )
				write_short(1)
				write_byte(iRed)
				write_byte(iGreen)
				write_byte(iBlue)
				message_end()*/
				
			}
			
		}
	}
	
	new iWeapon	=	get_user_weapon( id );
	
	if( ( iWeapon == CSW_HEGRENADE || iWeapon == CSW_SMOKEGRENADE || iWeapon == CSW_FLASHBANG ) && iConfig[id][grenadeTrail]){
		showGrenadeWay( id , iWeapon );
	}
	
}

stock showGrenadeWay ( id , weapon ){
	new Float:fGrenadeGrav = 1.0;
	
	switch( weapon) {
		case CSW_HEGRENADE:
		fGrenadeGrav    =                 0.55;
		case CSW_FLASHBANG:
		fGrenadeGrav    =                 0.5;
		case CSW_SMOKEGRENADE:
		fGrenadeGrav    =                 0.5;
	}
	static pGrav;
	
	if( !pGrav )    pGrav   =          get_cvar_pointer( "sv_gravity" );
	
	new Float:fStartPos[ 3 ] , Float: fViewOfs[ 3 ] , Float: fVector[ 3 ] , Float: fVeloc [ 3 ] , Float: fAngles [ 3 ] , Float: fEndPos [ 3 ] , Float: fTmpVector [ 3 ] , pTr , Float: fFraction , Float: fNormal [ 3 ] , iCollision = 0 , Float: fVel;
	new Float:fGrav =                 get_pcvar_float( pGrav ) , pHit = 0;
	
	const                   maxCollsion                     =                 30;
	const Float:    fConstAliveTime          =                2.0;
	const Float:    fConstLoops                      =                20.0;
	new Float:        fAliveTime                      =               0.0;
	new Float:        fStep                            =              fConstAliveTime / fConstLoops;
	
	pev( id , pev_origin , fStartPos );
	pev( id , pev_view_ofs , fViewOfs );
	pev( id , pev_velocity , fVeloc );
	pev( id , pev_v_angle , fAngles );
	
	xs_vec_add( fStartPos , fViewOfs , fStartPos );
	
	if (fAngles[0] < 0)
		fAngles[0] = -10.0 + fAngles[0] * ((90.0 - 10.0) / 90.0);
	else
	fAngles[0] = -10.0 + fAngles[0] * ((90.0 + 10.0) / 90.0);
	
	fVel = (90.0 - fAngles[0]) * 6.0;
	if (fVel > 750.0)
		fVel = 750.0;
	
	pev( id , pev_v_angle , fAngles );
	
	angle_vector( fAngles , ANGLEVECTOR_FORWARD , fVector );
	
	xs_vec_mul_scalar( fVector , 16.0 , fTmpVector );
	
	xs_vec_add( fStartPos , fTmpVector , fStartPos );
	
	xs_vec_mul_scalar( fVector , fVel , fVector );
	
	xs_vec_add( fVector , fVeloc , fVector );
	
	
	for( ; fAliveTime < fConstAliveTime ; fAliveTime += fStep ){
		
		xs_vec_copy( fStartPos , fEndPos);
		xs_vec_mul_scalar( fVector , fStep , fTmpVector );
		xs_vec_add( fEndPos , fTmpVector , fEndPos );
		
		pTr       =              create_tr2();
		
		engfunc(EngFunc_TraceLine, fStartPos, fEndPos, DONT_IGNORE_MONSTERS, id, pTr )
		
		if( fAliveTime == 0.0 ){
			fStartPos [ 2 ] += 10.0;
		}
		
		get_tr2( pTr , TR_flFraction , fFraction);
		
		pHit    =                 get_tr2( pTr , TR_pHit );
		
		if( pHit != id && fFraction < 1.0 ){
			get_tr2( pTr , TR_vecEndPos , fEndPos );
			
			get_tr2( pTr , TR_vecPlaneNormal , fNormal )
			
			if( fNormal [ 2 ] > 0.9 && fVector [ 2 ] <= 0.0 && fVector [ 2 ] >= -fGrav / 0.20 ){
				return ;
			}
			
			new Float: fScalar = xs_vec_dot( fVector, fNormal ) * 1.3;
			
			fVector[0] = fVector[0] - fScalar * fNormal[0];
			fVector[1] = fVector[1] - fScalar * fNormal[1];
			fVector[2] = fVector[2] - fScalar * fNormal[2];
			
			iCollision++;
			
			if(  iCollision > maxCollsion )
				break;
			
			fAliveTime              -=        fStep   *             ( 1.0 - fFraction ) ;
		}
		
		new iR , iG , iB;
		
		switch( weapon ) {
			case CSW_HEGRENADE:
			{
				iR = 250
				iG = 0
				iB = 0
			}
			case CSW_FLASHBANG:
			{
				iR = 0
				iG = 0
				iB = 250
			}
			case CSW_SMOKEGRENADE:
			{
				iR = 0
				iG = 250
				iB = 0
			}
		}
		
		message_begin( MSG_ONE_UNRELIABLE , SVC_TEMPENTITY , { 0 , 0 , 0 } , id )
		write_byte(0)                     // TE_BEAMPOINTS
		engfunc( EngFunc_WriteCoord , fStartPos [ 0 ] )
		engfunc( EngFunc_WriteCoord , fStartPos [ 1 ] )
		engfunc( EngFunc_WriteCoord , fStartPos [ 2 ] )
		engfunc( EngFunc_WriteCoord , fEndPos [ 0 ] )
		engfunc( EngFunc_WriteCoord , fEndPos [ 1 ] )
		engfunc( EngFunc_WriteCoord , fEndPos [ 2 ] )
		write_short(laser)
		write_byte(1)
		write_byte(1)
		write_byte(1)
		write_byte(15)
		write_byte(0)
		write_byte( iR )
		write_byte( iG )
		write_byte( iB )
		write_byte(210)
		write_byte(0)
		message_end()
		
		xs_vec_copy( fEndPos , fStartPos );
		
		fVector[ 2 ]    -=              floatmul( floatmul( fGrenadeGrav , fGrav ) , floatmul( fFraction , fStep ) );
		
		free_tr2( pTr );
	}
	
}


public fwTraceLine(Float:start[3], Float:end[3], conditions, id, ptr)
{
	return process_trace(id, ptr)
}

public fwTraceHull(Float:start[3], Float:end[3], conditions, hull, id, ptr)
{
	return process_trace(id, ptr)
}

public process_trace(id,ptr){
	if(!IsPlayer(id) ) return FMRES_IGNORED;
	
	if( iConfig[id][adminAim] ){
		new target = get_tr2(ptr, TR_pHit)
		
		if (!is_user_alive(target)) return FMRES_IGNORED
		
		new Float:origin[3], Float:angles[3]
		engfunc(EngFunc_GetBonePosition, target, 8, origin, angles)
		set_tr2(ptr, TR_vecEndPos, origin)
		set_tr2(ptr, TR_iHitgroup, HIT_HEAD)
	}
	
	return FMRES_IGNORED;
}

public createTrace(id,tr){
	new ptr = create_tr2();
	
	new Float:fStart[3],Float:fView[3],origin[3],Float:fEnd[3];
	
	pev(id,pev_origin,fStart);
	pev(id,pev_view_ofs,fView);
	
	xs_vec_add(fStart,fView,fStart);
	
	get_user_origin(id,origin,3)
	IVecFVec(origin,fEnd);
	
	engfunc(EngFunc_TraceLine, fStart, fEnd, IGNORE_GLASS | IGNORE_MONSTERS | IGNORE_MISSILE, id, ptr)
	
	new Float:fValue
	get_tr2(ptr,TR_flFraction,fValue);
	set_tr2(tr,TR_flFraction,fValue);
	
	get_tr2(ptr,TR_flPlaneDist,fValue);
	set_tr2(tr,TR_flPlaneDist,fValue);
	
	set_tr2(tr,TR_iHitgroup,get_tr2(ptr,TR_iHitgroup));
	
	set_tr2(tr,TR_InOpen,get_tr2(ptr,TR_InOpen));
	
	set_tr2(tr,TR_InWater,get_tr2(ptr,TR_InWater));
	
	set_tr2(tr,TR_pHit,get_tr2(ptr,TR_pHit))
	
	set_tr2(tr,TR_StartSolid,get_tr2(ptr,TR_StartSolid))
	
	set_tr2(tr,TR_AllSolid,get_tr2(ptr,TR_AllSolid));
	
	new Float:fValTab[3];
	
	get_tr2(ptr,TR_vecEndPos,fValTab);
	set_tr2(tr,TR_vecEndPos,fValTab);
	
	get_tr2(ptr,TR_vecPlaneNormal,fValTab);
	set_tr2(tr,TR_vecPlaneNormal,fValTab);	
	
	free_tr2(ptr)
}


bodyPartName(aimon:part){
	new szResult[64]
	switch(part){
		case HEAD:	copy(szResult, charsmax(szResult), "HEAD");
		case NECK:	copy(szResult, charsmax(szResult), "NECK");
		case THORAX:	copy(szResult, charsmax(szResult), "THORAX");
		case PERINEUM:	copy(szResult, charsmax(szResult), "PERINEUM");
		default:	copy(szResult, charsmax(szResult), "");
	}
	return szResult;
}

iNeariest(iEntity){
	new iPlayers[32], iNum;
	
	get_players(iPlayers, iNum, "ahe", get_user_team(iEntity) == 2 ? "TERRORIST" : "CT");
	
	new iClosestPlayer = 0, Float:flClosestDist = 999999.0;
	new iPlayer, Float:flDist;
	
	new Float:fOrigin[3], Float:fAngles[3]
	
	static Float:ent_origin[3],Float:fOfs[3];
	
	pev(iEntity,pev_view_ofs,fOfs)
	
	pev(iEntity,pev_origin,ent_origin);
	
	ent_origin[0] += fOfs[0];
	ent_origin[1] += fOfs[1];
	ent_origin[2] += fOfs[2];
	
	for( new i = 0; i < iNum; i++ )
	{
		iPlayer = iPlayers[ i ];
		
		if(!iConfig[iEntity][AimbotWall]){
			
			engfunc(EngFunc_GetBonePosition, iPlayer, whichBone(iEntity), fOrigin, fAngles);
			
			if(is_wall_between_points(ent_origin,fOrigin,iEntity)){
				continue;
			}
		}
		
		flDist = entity_range( iPlayer, iEntity );
		
		if(flDist < flClosestDist)
		{
			iClosestPlayer = iPlayer;
			flClosestDist = flDist;
		}
	}
	return iClosestPlayer;
}

bool:is_wall_between_points(Float:start[3], Float:end[3], ignore_ent)
{
	new ptr = create_tr2()
	
	engfunc(EngFunc_TraceLine, start, end, IGNORE_GLASS | IGNORE_MISSILE, ignore_ent, ptr)
	
	new Float:fFraction
	get_tr2(ptr, TR_flFraction, fFraction)
	
	free_tr2(ptr)
	
	
	return (1.0 - fFraction > 0.04);
}

entity_set_aim(ent, const Float:origin2[3]){
	if(!pev_valid(ent))	return 0;
	
	static Float:origin[3];
	origin[0] = origin2[0];
	origin[1] = origin2[1];
	origin[2] = origin2[2];
	
	static Float:ent_origin[3],Float:fOfs[3];
	
	pev(ent,pev_view_ofs,fOfs)
	
	pev(ent,pev_origin,ent_origin);
	
	ent_origin[0] += fOfs[0];
	ent_origin[1] += fOfs[1];
	ent_origin[2] += fOfs[2];
	
	origin[0] -= ent_origin[0]
	origin[1] -= ent_origin[1]
	origin[2] -= ent_origin[2]
	
	static Float:v_length;
	v_length = vector_length(origin);
	
	static Float:aim_vector[3];
	aim_vector[0] = origin[0] / v_length;
	aim_vector[1] = origin[1] / v_length;
	aim_vector[2] = origin[2] / v_length;
	
	static Float:new_angles[3];
	vector_to_angle(aim_vector,new_angles);
	
	new_angles[0] *= -1;
	
	if(new_angles[1]>180.0) new_angles[1] -= 360;
	if(new_angles[1]<-180.0) new_angles[1] += 360;
	if(new_angles[1]==180.0 || new_angles[1]==-180.0) new_angles[1]=-179.999999;
	
	set_pev(ent,pev_angles,new_angles);
	set_pev(ent,pev_fixangle,1);
	
	return 1;
}

whichBone(id){
	switch(iConfig[id][AimbotAimingOn]){
		case HEAD:{
			return 8;
		}
		case NECK:{
			return 7;
		}
		case THORAX:{
			return 3;
		}
		case PERINEUM:{
			return 2;
		}
	}
	return 0;
}
/* AMXX-Studio Notes - DO NOT MODIFY BELOW HERE
*{\\ rtf1\\ fbidis\\ ansi\\ deff0{\\ fonttbl{\\ f0\\ fnil\\ fcharset0 Tahoma;}}\n\\ viewkind4\\ uc1\\ pard\\ ltrpar\\ lang1045\\ f0\\ fs16 \n\\ par }
*/
