local hacka = {}
local _Color = Color
local _player_GetAll = player.GetAll
local _pairs = pairs
local _draw_SimpleText = draw.SimpleText

if true and not IsValid(hacka.adminlist) then
	hacka.adminlist=vgui.Create("DFrame")
	hacka.adminlist:SetSize(300,300)
	hacka.adminlist:Center()
	hacka.adminlist:SetTitle("")
	hacka.adminlist:SetSizable(true)
	hacka.adminlist:ShowCloseButton(true)
	hacka.adminlist.Paint=function(_,w,h)
		draw.RoundedBox(0,0,0,w,h,Color(30,30,30))
		draw.RoundedBox(0,0,0,w,22,Color(71,74,79))
		draw.RoundedBox(0,0,22,w,1,Color(0,0,0))
		draw.SimpleText("Admins list","Default",5,2.5,Color(120,120,120))
		surface.SetDrawColor(Color(0,0,0))
		surface.DrawOutlinedRect(0,0,w,h)
		surface.SetDrawColor(Color(50,50,50))
		surface.DrawOutlinedRect(1,23,w-2,h-24)
		local allspectators=25
		for k, v in _pairs(_player_GetAll()) do
			if v:IsAdmin()then
				_draw_SimpleText(v:Name().." "..v:GetUserGroup(),"Default",5,allspectators,_Color(255,255,255))
				allspectators=allspectators+20
			end
		end
	end
end