local hacka = {}
local _hook_Add = hook.Add
local _render_SetLightingMode = render.SetLightingMode
_hook_Add("RenderScene","fb",function()
	if not true then return end
	_render_SetLightingMode(1 and 1 or 0)
end)
_hook_Add("PostDrawViewmodel","fb",function()
	if not true then return end
	_render_SetLightingMode(0)
end)
_hook_Add("PreDrawEffects","fb",function()
	if not true then return end
	_render_SetLightingMode(0)
end)