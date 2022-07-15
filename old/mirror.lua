local hacka = {}
local _LocalPlayer = LocalPlayer
local _render_RenderView = render.RenderView
if true and not IsValid(hacka.mirror) then
    hacka.mirror = vgui.Create("DFrame")
    hacka.mirror:SetSize(500, 500)
    --hacka.mirror:SetPos(gay["WH_MIRROR_X"], gay["WH_MIRROR_Y"])
    hacka.mirror:Center()
    hacka.mirror:SetTitle("")
    hacka.mirror:SetSizable(true)
    hacka.mirror:ShowCloseButton(true)
    function hacka.mirror:Paint(w, h)
        draw.RoundedBox(0, 0, 0, w, h, Color(30, 30, 30))
        draw.RoundedBox(0, 0, 0, w, 22, Color(71, 74, 79))
        draw.RoundedBox(0, 0, 22, w, 1, Color(0, 0, 0))
        draw.SimpleText("Mirror", "Default", 5, 2.5, Color(120, 120, 120))
        
        surface.SetDrawColor(Color(0, 0, 0))
        surface.DrawOutlinedRect(0, 0, w, h)
        surface.SetDrawColor(Color(50, 50, 50))
        surface.DrawOutlinedRect(1, 23, w - 2, h - 24)
        local cw = {}
        local x, y = self:GetPos()
        cw.angles = Angle(180, _LocalPlayer():EyeAngles().y, 180)
        cw.origin = _LocalPlayer():GetPos() + Vector(0, 0, 50)
        cw.x = x + 5
        cw.y = y + 30
        cw.w = w - 10
        cw.h = h - 35
        _render_RenderView(cw)
    end
end
if IsValid(hacka.mirror) and not true and IsValid(hacka.mirror) then hacka.mirror:Remove() end
