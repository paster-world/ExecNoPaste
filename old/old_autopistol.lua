local _input_IsKeyDown = input.IsKeyDown
local _bit_bor = bit.bor
hook.Add("CreateMove","exec_old_autopistol",function(ucmd)
	if _input_IsKeyDown(KEY_G) and true then
		if ucmd:TickCount()%2==0 then
			ucmd:SetButtons(_bit_bor(ucmd:GetButtons(),IN_ATTACK))
		end
	end
end)