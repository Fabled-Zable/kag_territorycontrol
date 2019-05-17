#include "Hitters.as";
#include "HittersTC.as";
#include "CommonGun.as";

void onInit(CBlob@ this)
{
	// GunInitRaycast(
		// this,
		// true,				//If true, gun will be fully automatic and players will be able to just hold the fire button
		// 2.50f,			//Weapon damage / projectile blob name
		// 800.0f,				//Weapon raycast range
		// 2,				//Weapon fire delay, in ticks
		// 20,					//Weapon clip size
		// 1.00f,				//Ammo usage factor, completely ignore for now
		// 15,				//Weapon reload time
		// false,				//If true, gun will be reloaded like a shotgun
		// 0,					//For shotguns: Additional delay to reload end
		// 2,					// Bullet count - for shotguns
		// 2.50f,				// Bullet Jitter
		// "mat_mithril",		//Ammo item blob name
		// false,				//If true, firing sound will be looped until player stops firing
		// SoundInfo("ChargeRifle_Shoot",4,1.5f,0.8f),		//Sound to play when firing
		// SoundInfo("ChargeRifle_Reload",1,1.5f,1.0f),	//Sound to play when reloading
		// SoundInfo("",0,1.5f,1.0f),	//Sound to play some time after firing
		// 0,					//Delay for the delayed sound, in ticks
		// Vec2f(-8.0f,2.0f)	//Visual offset for raycast bullets
	// );
	
	this.set_f32("gun_damage_modifier", 3);
	
	this.set_u8("gun_shoot_delay", 3);
	
	this.set_u8("gun_bullet_count", 3);
	this.set_f32("gun_bullet_spread", 20);
	this.set_Vec2f("gun_muzzle_offset", Vec2f(-8.0f, -0.50f));
	
	this.set_string("gun_shoot_sound", "ChargeRifle_Shoot1");
	this.set_u8("gun_hitter", HittersTC::plasma);
}

void onTick(CBlob@ this)
{
	GunTick(this);
}