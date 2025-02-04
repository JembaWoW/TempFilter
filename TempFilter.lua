if not TempFilter_Block then TempFilter_Block = { "媽已躲東首波自尤枝" } end
local gfind = string.gmatch or string.gfind
TempFilter_ChatFrame_OnEvent = ChatFrame_OnEvent
TempFilter_OldMessage = ""

function ChatFrame_OnEvent(event)

	if (event == "CHAT_MSG_CHANNEL" or
			event == "CHAT_MSG_YELL" or
			event == "CHAT_MSG_SAY" or
			event == "CHAT_MSG_GUILD" or
			event == "CHAT_MSG_OFFICER" or
			event == "CHAT_MSG_EMOTE" or
			event == "CHAT_MSG_PARTY" or
			event == "CHAT_MSG_RAID" or
			event == "CHAT_MSG_RAID_LEADER" or
			event == "CHAT_MSG_RAID_WARNING" or
			event == "CHAT_MSG_SYSTEM" or
			event == "CHAT_MSG_WHISPER") and arg2 and arg1 then

		for id, scan in pairs(TempFilter_Block) do
			if strfind(arg1, scan) then
			return false
			end
		end
	end
	TempFilter_ChatFrame_OnEvent(event);
end
