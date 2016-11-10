# AutoMessage
Allows automatic sending of a message to a channel at an interval specified by a user. 

# Original creator
[StewartA](https://wow.curseforge.com/addons/project-3158/)

# Showcase
![](http://imagehost.spark-media.ru/i4/F457F481-CBC1-90DF-ED80-DF8661E1FFE6.png)

# Changelog   		
* Changed many discriptions etc
* Added editbox for wisper name	
* Added /Emote, /Battleground, /RaidWarning, /1-10, /Wisper, DoEmote, /RunScript channels			

Based on `AutoMessage 1.1`

# Instalation
Put `AutoMessage` folder to `World of Warcraft\Interface\AddOns` 	

# Detailed description
Interval:     
The time between messages, in seconds.

Channels:     
* `w`   - Wisper Channel
* `rs`  - RunScript Channel
* `de`  - DoEmote Channel
* `s`   - Say Channel
* `y`   - Yell Channel
* `e`   - Emote Channel
* `p`   - Party Channel
* `r`   - Raid Channel
* `rw`  - RaidWarning Channel
* `g`   - Guild Channel
* `o`   - Officer Channel
* `bg`  - BattleGround Channel
* `1-10`- Custom Channel

Wisper to:      
* It is only used for channel `w`

Message:    
* For the text that you want to repeat   
* For `de` type without "/" e.g. `dance`
* For `rs` type any unprotected function e.g. `FollowUnit("target")`

Commands:     
* `/auto` - Opens the Automessenger configuration window");
* `/autostart` - Starts the Automessenger.");
* `/autostop` - Stops the Automessenger.");
* `/autotick <time>` - Sets the time delay between messages.");
* `/autochan <channel name>` - Sets the channel to send messages to.");
* `/automsg <message>` - Sets the message to use.");
* `/autochar <character name>` - Sets the character to wisper messages to.");

