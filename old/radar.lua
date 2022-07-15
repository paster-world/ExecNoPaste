local hacka = {}
local _LocalPlayer = LocalPlayer
local _surface_SetDrawColor = surface.SetDrawColor
local _surface_DrawLine = surface.DrawLine
local _player_GetAll = player.GetAll
local _pairs = pairs
local _draw_RoundedBox = draw.RoundedBox
local _Color = Color
local _math_sin = math.sin
local _math_cos = math.cos
local _ents_FindByClass = ents.FindByClass
local function UtilityCheck(v)if v != _LocalPlayer() and v:Alive() and v:IsValid() then return true else return false end end


if true and not IsValid(hacka.ac) then
	hacka.ac=vgui.Create("DFrame")
	hacka.ac:SetSize(200,200)
	hacka.ac:Center()
	hacka.ac:SetSizable(true)
	hacka.ac:SetTitle("")
	hacka.ac:SetVisible(true)
	hacka.ac:SetDraggable(true)
	hacka.ac:ShowCloseButton(true)
	hacka.ac.Paint=function(_,w,h)
		draw.RoundedBox(0,0,0,w,h,Color(30,30,30))
		draw.RoundedBox(0,0,0,w,22,Color(71,74,79))
		draw.RoundedBox(0,0,22,w,1,Color(0,0,0))
		draw.SimpleText("Radar","Default",5,2.5,Color(120,120,120))
		surface.SetDrawColor(Color(0,0,0))
		surface.DrawOutlinedRect(0,0,w,h)
		surface.SetDrawColor(Color(50,50,50))
		surface.DrawOutlinedRect(1,23,w-2,h-24)
	end
	hacka.ac.PaintOver=function(self,t,u)
		function hacka.ac:OnMousePressed()
			if self.m_bSizable and gui.MouseX()>self.x+self:GetWide()-20 and gui.MouseY()>self.y+self:GetTall()-20 then 
			self.Sizing={gui.MouseX()-self:GetWide(),gui.MouseY()-self:GetTall()}
			self:MouseCapture(true)
		return end;
		if self:GetDraggable()then 
			self.Dragging={gui.MouseX()-self.x,gui.MouseY()-self.y}
			self:MouseCapture(true)
			return 
			end 
		end;
		_surface_SetDrawColor(30,30,30,255)
		_surface_DrawLine(hacka.ac:GetWide()/1.94,25,hacka.ac:GetWide()/1.94,hacka.ac:GetTall()/2+260)
		_surface_DrawLine(hacka.ac:GetWide()/2-250,hacka.ac:GetTall()/1.94,hacka.ac:GetWide()/2+260,hacka.ac:GetTall()/1.94)
		for x,p in _pairs(_player_GetAll())do 
			if UtilityCheck(p)then
				local bz=p:GetPos()
				local bA=_LocalPlayer():GetPos()
				local bB=_LocalPlayer():EyeAngles()
				local bC=hacka.ac:GetWide()/2+(bz.x-bA.x)/20;
				local bD=hacka.ac:GetTall()/2+(bA.y-bz.y)/20;
				local bE=bB.y-90;bE=math.rad(bE)bC=bC-hacka.ac:GetWide()/2;
				bD=bD-hacka.ac:GetTall()/2;
				local bF=bC*_math_cos(bE)-bD*_math_sin(bE)
				local bG=bC*_math_sin(bE)+bD*_math_cos(bE)
				bF=bF+hacka.ac:GetWide()/2;
				bG=bG+hacka.ac:GetTall()/2;
				_draw_RoundedBox(1,bF,bG,3,3,_Color(255,255,255))
			end
		end 
		for _,p in _pairs(_ents_FindByClass("*"))do
			local bz=p:GetPos()
			local bA=_LocalPlayer():GetPos()
			local bB=_LocalPlayer():EyeAngles()
			local bC=hacka.ac:GetWide()/2+(bz.x-bA.x)/20;
			local bD=hacka.ac:GetTall()/2+(bA.y-bz.y)/20;
			local bE=bB.y-90;bE=math.rad(bE)bC=bC-hacka.ac:GetWide()/2;
			bD=bD-hacka.ac:GetTall()/2;
			local bF=bC*_math_cos(bE)-bD*_math_sin(bE)
			local bG=bC*_math_sin(bE)+bD*_math_cos(bE)
			bF=bF+hacka.ac:GetWide()/2;
			bG=bG+hacka.ac:GetTall()/2;
			_draw_RoundedBox(1,bF,bG,3,3,_Color(255,0,0))
		end
	end
end