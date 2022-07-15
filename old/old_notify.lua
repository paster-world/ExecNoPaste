local _draw_SimpleText = draw.SimpleText
local _draw_RoundedBox = draw.RoundedBox
local _timer_Simple = timer.Simple
local _Color = Color
local _surface_CreateFont = surface.CreateFont
_surface_CreateFont("Font15",{font="Trebuchet24",size=16})

local function notifys(b)
	local rt=vgui.Create("DPanel")
	rt:SetSize(250,40)rt:SetPos(0,-50)
	rt.Paint=function(self,d,e)
		_draw_RoundedBox(0,0,0,d,e,_Color(30,30,30))
		_draw_SimpleText(b,"Font15",rt:GetWide()/2,rt:GetTall()/2,_Color(255,255,255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
	end;
	rt:MoveTo(250-rt:GetWide(),0,.2,0,-1,function()
		_timer_Simple(3,function()
			rt:MoveTo(250-rt:GetWide(),-50,.2,0,-1)
		end)
	end)
end

notifys('YOUR TEXT HERE')