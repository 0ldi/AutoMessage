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
if (channame == "guild") then
SendChatMessage(am, "GUILD");
elseif (channame == "say") then
SendChatMessage(am, "SAY");
elseif (channame == "yell") then
SendChatMessage(am == "YELL");
elseif (channame == "party") then
SendChatMessage(am, "PARTY");
elseif (channame == "raid") then
SendChatMessage(am, "RAID");
elseif (channame == "officer") then
SendChatMessage(am, "OFFICER");
elseif (channame ~= nil) then
id = GetChannelName(channame);
JoinChannelByName(channame);
ChatFrame_AddChannel(DEFAULT_CHAT_FRAME,channame)
SendChatMessage(am, "CHANNEL","Common",id);
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
sendhelpmsg("Accepted channels are: guild, party, raid, say, yell, <custom channel>");


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
ShowUIPanel(autoMessageCFGFrame);
autoMessageCFGFrameEditBox1:HighlightText();
end
stewRegisterCommand(id,comlist,desc,func);

sendhelpmsg("|cffff0000The BOFH was here MWHAHAHA! (automessage addon was loaded successfully by the way)");

end
