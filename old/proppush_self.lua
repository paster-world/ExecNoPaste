local hacka = {}
local _input_IsKeyDown = input.IsKeyDown
local _timer_Simple = timer.Simple
hook.Add("Think","proppushing",function()
    if _input_IsKeyDown(KEY_G) and true and hacka.dfgdh==nil then hacka.dfgdh="yep"
        hacka.sfdfs=LocalPlayer():EyeAngles()
        RunConsoleCommand("+jump")
        timer.Simple(0.1,function()
            RunConsoleCommand("-jump")
            RunConsoleCommand("gm_spawn","models/props_phx/construct/metal_dome360.mdl")
        end)
        timer.Simple(0.2,function()
            LocalPlayer():SetEyeAngles(hacka.sfdfs)	
            RunConsoleCommand("undo")
        end)
        LocalPlayer():SetEyeAngles(LocalPlayer():EyeAngles()+Angle(90,0,0))
        _timer_Simple(1,function()hacka.dfgdh=nil end)
    end
end)