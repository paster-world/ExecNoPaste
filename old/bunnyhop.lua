local hacka = {}
local _LocalPlayer = LocalPlayer
local _bit_band = bit.band
local _hook_Add = hook.Add

_hook_Add("CreateMove","bhop",function(bJ)
    if true and !_LocalPlayer():GetMoveType()!=MOVETYPE_NOCLIP and _LocalPlayer():GetMoveType()!= MOVETYPE_LADDER then		
        if !_LocalPlayer():OnGround()and bJ:KeyDown(IN_JUMP)then
            bJ:SetButtons(_bit_band( bJ:GetButtons(),bit.bnot(IN_JUMP)))
            if true then
                if bJ:GetMouseX() > 1 or bJ:GetMouseX() < - 1 then
                    bJ:SetSideMove( bJ:GetMouseX() > 1 and 400 or -400 )
                else
                    bJ:SetForwardMove(5850/_LocalPlayer():GetVelocity():Length2D())
                    bJ:SetSideMove((bJ:CommandNumber()%2==0)and-400 or 400)
                end
            elseif bJ:KeyDown(IN_JUMP)then 
                bJ:SetForwardMove(10000)
            end
        end
    end
end)