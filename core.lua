SlashCmdList["TRADERC"] = function(msg)
	
	local rcString = "";
	
	for i=1, MAX_TRADABLE_ITEMS do
		local tid = GetTradeTargetItemLink(i); 
		
		if tid ~= nil then
			if string.len(rcString) > 0 then
				rcString = rcString.." ";
			end
		
			rcString = rcString..tid;
		end
	end
	
	if rcString ~= "" then
		SlashCmdList["ACECONSOLE_RC"]("add "..rcString); 
	end
	
	if msg == "1" then
		AcceptTrade();
	end
end

SLASH_TRADERC1= "/traderc";