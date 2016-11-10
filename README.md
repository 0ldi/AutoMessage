# AutoMessage
Allows automatic sending of a message to a channel at an interval specified by a user. 

# Original creator
[StewartA](https://wow.curseforge.com/addons/project-3158/)

# Showcase
![](http://imagehost.spark-media.ru/i4/352C8EFB-00D3-AB48-2D04-91C6769AD518.png)

# Changelog   		
* Changed many discriptions etc
* Added editbox for wisper name	
* Added /Emote, /Battleground, /RaidWarning, /1-10, /Wisper, /RunScript channels			

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
* For `em` type without "/" e.g. `dance`
* For `rs` type any unprotected function e.g. `FollowUnit("target")`
