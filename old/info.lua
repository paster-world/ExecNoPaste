local hacka = {}
local _draw_SimpleText = draw.SimpleText
local _LocalPlayer = LocalPlayer
if true and not IsValid(hacka.info) then
	hacka.info=vgui.Create("DFrame")
	hacka.info:SetSize(300,300)
	hacka.info:Center()
	hacka.info:SetTitle("")
	hacka.info:SetSizable(true)
	hacka.info:ShowCloseButton(true)
	function hacka.info:Paint(w,h)
		draw.RoundedBox(0,0,0,w,h,Color(30,30,30))
		draw.RoundedBox(0,0,0,w,22,Color(71,74,79))
		draw.RoundedBox(0,0,22,w,1,Color(0,0,0))
		draw.SimpleText("Info","Default",5,2.5,Color(120,120,120))
		surface.SetDrawColor(Color(0,0,0))
		surface.DrawOutlinedRect(0,0,w,h)
		surface.SetDrawColor(Color(50,50,50))
		surface.DrawOutlinedRect(1,23,w-2,h-24)
		_draw_SimpleText("Health: ".._LocalPlayer():Health()or"Health: error","Default",2.5,25,Color(255,255,255))
		_draw_SimpleText("Armor: ".._LocalPlayer():Armor()or"Armor: error","Default",2.5,25+15,Color(255,255,255))
		_draw_SimpleText("Velocity: "..math.Round(_LocalPlayer():GetVelocity():Length())or"Velocity: error","Default",2.5,25+15+15,Color(255,255,255))
		_draw_SimpleText("Server: "..GetHostName()or"Server: error","Default",2.5,70,Color(255,255,255))
		_draw_SimpleText("Gamemode: "..engine.ActiveGamemode()or"Gamemode: error","Default",2.5,85,Color(255,255,255))
		_draw_SimpleText("Map: "..game.GetMap()or"Map: error","Default",2.5,100,Color(255,255,255))
		_draw_SimpleText("Entities: "..math.Round(ents.GetCount()-player.GetCount()*12)or"Entities: error","Default",2.5,115,Color(255,255,255))
		_draw_SimpleText("Frames: "..math.Round(1/FrameTime())or"Frames: error","Default",2.5,130,Color(255,255,255))
		_draw_SimpleText("Ping: ".._LocalPlayer():Ping()or"Ping: error","Default",2.5,145,Color(255,255,255))
		_draw_SimpleText("Date: "..os.date("%d %b %Y")or"Date: error","Default",2.5,160,Color(255,255,255))
		_draw_SimpleText("Time: "..os.date("%H:%M:%S")or"Time: error","Default",2.5,175,Color(255,255,255))
		_draw_SimpleText("Tickrate: "..1/engine.TickInterval()or"TickInterval: error","Default",2.5,190,Color(255,255,255))
	end
end