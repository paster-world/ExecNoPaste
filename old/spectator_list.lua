local hacka = {}
local _LocalPlayer = LocalPlayer
local _pairs = pairs
local _draw_SimpleText = draw.SimpleText
local _player_GetAll = player.GetAll
local _Color = Color
if true and not IsValid(hacka.specb) then
	hacka.specb=vgui.Create("DFrame")
	hacka.specb:SetSize(300,300)
	hacka.specb:Center()
	hacka.specb:SetTitle("")
	hacka.specb:SetSizable(true)
	hacka.specb:ShowCloseButton(true)
	hacka.specb.Paint=function(_,w,h)
		draw.RoundedBox(0,0,0,w,h,Color(30,30,30))
		draw.RoundedBox(0,0,0,w,22,Color(71,74,79))
		draw.RoundedBox(0,0,22,w,1,Color(0,0,0))
		draw.SimpleText("Spectators list","Default",5,2.5,Color(120,120,120))
		surface.SetDrawColor(Color(0,0,0))
		surface.DrawOutlinedRect(0,0,w,h)
		surface.SetDrawColor(Color(50,50,50))
		surface.DrawOutlinedRect(1,23,w-2,h-24)
		local allspectators=25
		for k, v in _pairs(_player_GetAll()) do
			if v!=_LocalPlayer()and v:GetObserverTarget()==_LocalPlayer()then
				_draw_SimpleText(v:Name().." "..v:GetUserGroup(),"Default",5,allspectators,_Color(255,0,0))
				allspectators=allspectators+20
			end
		end
	end
end