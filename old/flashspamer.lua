local hacka = {}
local _input_IsKeyDown = input.IsKeyDown
local _hook_Add = hook.Add

_hook_Add("CreateMove","flashspam",function(bJ)
	if _input_IsKeyDown(KEY_G) and true then bJ:SetImpulse(100)end
end)