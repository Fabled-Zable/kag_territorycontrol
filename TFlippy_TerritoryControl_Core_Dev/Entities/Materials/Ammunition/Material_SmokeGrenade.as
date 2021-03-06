void onInit(CBlob@ this)
{	
	this.maxQuantity = 1;
}

void onCommand(CBlob@ this, u8 cmd, CBitStream @params)
{
    if(cmd == this.getCommandID("activate"))
    {
        if(isServer())
        {
    		AttachmentPoint@ point = this.getAttachments().getAttachmentPointByName("PICKUP");
            if(point is null){return;}
    		CBlob@ holder = point.getOccupied();

            if(holder !is null && this !is null)
            {
                CBlob@ blob = server_CreateBlob("smokegrenade", this.getTeamNum(), this.getPosition());
                holder.server_Pickup(blob);
                this.server_Die();
            }
        }
    }
}
