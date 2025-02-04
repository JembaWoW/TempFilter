if not TempFilter_Block then TempFilter_Block = { "媽已躲東首波自尤枝" } end
local gfind = string.gmatch or string.gfind
TempFilter_ChatFrame_OnEvent = ChatFrame_OnEvent
TempFilter_OldMessage = ""

function ChatFrame_OnEvent(event)

	for id, scan in pairs(TempFilter_Block) do
		if strfind(string.lower(arg1), string.lower(scan)) then
		return false
		end
	end
	TempFilter_ChatFrame_OnEvent(event);
end
