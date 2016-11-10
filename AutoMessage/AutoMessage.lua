--[[
--
-- AutoMessager V1.0
-- Written by the BOFH (Stewarta of Nordrassil)
-- Please Don't Spam!
--
--]]
function timerproc(a)
if(stopit~=nil) then
if(stopit==0) then
if(runtick <= GetTime()) then
if (channame == "g") then
SendChatMessage(am, "GUILD");
elseif (channame == "s") then
SendChatMessage(am, "SAY");
elseif (channame == "y") then
SendChatMessage(am == "YELL");
elseif (channame == "p") then
SendChatMessage(am, "PARTY");
elseif (channame == "r") then
SendChatMessage(am, "RAID");
elseif (channame == "o") then
SendChatMessage(am, "OFFICER");
elseif (channame == "e") then
SendChatMessage(am, "EMOTE");
elseif (channame == "rw") then
SendChatMessage(am, "RAID_WARNING");
elseif (channame == "bg") then
SendChatMessage(am, "BATTLEGROUND");
elseif (channame == "w") then
SendChatMessage(am, "WHISPER",nil,charname);
elseif (channame == "1") then
id = GetChannelName(channame);
SendChatMessage(am, "CHANNEL",nil,id);
elseif (channame == "2") then
id = GetChannelName(channame);
SendChatMessage(am, "CHANNEL",nil,id);
elseif (channame == "3") then
id = GetChannelName(channame);
SendChatMessage(am, "CHANNEL",nil,id);
elseif (channame == "4") then
id = GetChannelName(channame);
SendChatMessage(am, "CHANNEL",nil,id);
elseif (channame == "5") then
id = GetChannelName(channame);
SendChatMessage(am, "CHANNEL",nil,id);
elseif (channame == "6") then
id = GetChannelName(channame);
SendChatMessage(am, "CHANNEL",nil,id);
elseif (channame == "7") then
id = GetChannelName(channame);
SendChatMessage(am, "CHANNEL",nil,id);
elseif (channame == "8") then
id = GetChannelName(channame);
SendChatMessage(am, "CHANNEL",nil,id);
elseif (channame == "9") then
id = GetChannelName(channame);
SendChatMessage(am, "CHANNEL",nil,id);
elseif (channame == "10") then
id = GetChannelName(channame);
SendChatMessage(am, "CHANNEL",nil,id);
elseif (channame == "de") then
DoEmote(am);
elseif (channame == "rs") then
RunScript(am);
end	
runtick=GetTime()+ticktime
end
end
end
end



function stewRegisterCommand(id,comlist,desc,func)
if (Satellite) then
Satellite.registerSlashCommand(
{
id = id;
commands = comlist;
onExecute = func;
helpText = desc;
}
);
else
SlashCmdList[id] = func;
for i=1, table.getn(comlist) do setglobal("SLASH_"..id..i, comlist[i]); end;
end
end

function sendhelpmsg(msg)
DEFAULT_CHAT_FRAME:AddMessage(msg)
end

function initproc()

stopit=1;


local id	= "stew";
local comlist	= {"/autohelp"};
local desc	= "Automessager list of commands";
local func = function(msg)

sendhelpmsg("'/auto' - Opens the Automessenger configuration window");
sendhelpmsg("'/autostart' - Starts the Automessenger.");
sendhelpmsg("'/autostop' - Stops the Automessenger.");
sendhelpmsg("'/autotick <time>' - Sets the time delay between messages.");
sendhelpmsg("'/autochan <channel name>' - Sets the channel to send messages to.");
sendhelpmsg("'/automsg' - Sets the message to use.");
sendhelpmsg("'/autochar <character name>' - Sets the character to wisper messages to.");
sendhelpmsg("Accepted channels are: w, rs, de, s, y, e, p, r, rw, g, o, bg, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10");


end
stewRegisterCommand(id,comlist,desc,func);




id="stew0";
comlist={"/autostart"}
desc="Starts the automessager"
func=function(msg)
stopit=0;
runtick=GetTime()
end
stewRegisterCommand(id,comlist,desc,func);

id="stew00";
comlist={"/autostop"}
desc="Stops the automessager"
func=function(msg)
stopit=1;
end
stewRegisterCommand(id,comlist,desc,func);



id="stew1";
comlist={"/autotick"}
desc="Sets the time between automessages"
func=function(msg)
ticktime=msg
end
stewRegisterCommand(id,comlist,desc,func);

id="stew2";
comlist={"/autochan"}
desc="Sets the channel to automessage"
func=function(msg)
channame=msg;
end
stewRegisterCommand(id,comlist,desc,func);

id="stew3";
comlist={"/automsg"}
desc="Sets the automessage"
func=function(msg)
am=msg
end
stewRegisterCommand(id,comlist,desc,func);

id="stew4";
comlist={"/auto"}
desc="Shows the automessager configuration window"
func=function(msg)
autoMessageCFGFrameEditBox1:SetText(am);
autoMessageCFGFrameEditBox2:SetText(ticktime);
autoMessageCFGFrameEditBox3:SetText(channame);
autoMessageCFGFrameEditBox4:SetText(charname);
ShowUIPanel(autoMessageCFGFrame);
autoMessageCFGFrameEditBox1:HighlightText();
end
stewRegisterCommand(id,comlist,desc,func);

id="stew5";
comlist={"/autochar"}
desc="Sets the character to automessage"
func=function(msg)
charname=msg;
end
stewRegisterCommand(id,comlist,desc,func);

sendhelpmsg("|cffff0000The BOFH was here MWHAHAHA! (automessage addon was loaded successfully by the way)");

end
