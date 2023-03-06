SetWorkingDir, %A_ScriptDir%

Premium = Essentials\premium.png

FileCreateDir, Essentials
IfNotExist, Essentials\osrslogo.jpg
URLDownloadToFile, http://i63.tinypic.com/33vc03c.jpg, Essentials\osrslogo.jpg

IfNotExist, Essentials\premium.png
URLDownloadToFile, http://i66.tinypic.com/jtncsp.png, Essentials\premium.png

IfNotExist, Essentials\knightsofardougne.jpg
URLDownloadToFile, http://i64.tinypic.com/161kfbp.jpg, Essentials\knightsofardougne.jpg

IfNotExist, Essentials\granite.jpg
URLDownloadToFile, http://i65.tinypic.com/9qigqa.jpg, Essentials\granite.jpg

IfNotExist, Essentials\logo.jpg
URLDownloadToFile, http://i63.tinypic.com/wa0u3o.jpg, Essentials\logo.jpg

IfNotExist, Essentials\3tickfishing.jpg
URLDownloadToFile, http://i63.tinypic.com/30kbvhc.jpg, Essentials\3tickfishing.jpg

IfNotExist, Essentials\BF1.jpg
URLDownloadToFile, http://i67.tinypic.com/35hkc9u.jpg, Essentials\BF1.jpg

IfExist, Essentials\BF.jpg
FileDelete, Essentials\BF.jpg

IfExist, Essentials\UpdateLogv24.txt
FileDelete, Essentials\UpdateLogv24.txt

IfNotExist, Essentials\UpdateLogv25.txt
FileAppend,
(
21/4/2017 Optimised and improved the Blast Furnace Script
17/4/2017 Optimised and improved the Blast Furnace Script
16/4/2017 Added in some fail-safes into the Blast Furnace script so that it's reliable.
15/4/2017 Fixed/Optimised Blast Furnace Script.
15/4/2017 Blast furnace script added.
10/4/2017 Implemented an "Automatic Updater" Into the tool, so I no longer need to advise premium users that there's an updated version available, and prompting the option to update upon opening if an update is available.
10/4/2017 Created a new script "Making Complete Potions" 
10/4/2017 Renamed the "Mixing Potion" Script to "Making Unfinished Potions" 
10/4/2017 Removed all auto-login features, as I don't recommend using this feature as it's only necessary to use if you're force-logged out from the 6h timer. Which I don't recommend botting for that long. 
9/4/2017 Fixed the barbarian fishing script so that it's now working once again.
26/3/2017 Fixed the NMZ prayer script so that it doens't bug out attempting to use an overload.
18/3/2017 Added 4 new enchanting jewellery scripts as per requested by premium user.
18/3/2017 Fixed the Barbarian Fishing script as it was being reported as broken.
18/3/2017 Added in a "Master Farmer" thieving script as requested.
28/2/2017 Added in an option to the "Timer" to close the bot when the timer runs out.
28/2/2017 Made it so most of the scripts that drop items now use the shift-drop method, so make sure if you use the updated version, that you have the "Shift Drop" function enabled.
28/2/2017 Added in a timer, essentially letting people choose how long they want a script to be used for. (This feature replaced the "Auto-Typer" which was at the bottom of the first tab.) 
27/2/2017 Added a 3-tick Barbarian fishing script. (Really only viable for 70+ Fishing)
26/2/2017 Made it so it's possible to type while a script it running, so ones able to reply while botting.
18/2/2017 Fixed the "Thieving Men" Script, because it was unreliable since the men in the ardougne building don't have any unique colours, (Men were same colour as the building which caused issues) the script has now been changed to be used upstairs in the Falador Pub on the "Drunken Man"
18/2/2017 Fixed the "Fly Fishing Trout" Script as it wasn't working before.
18/2/2017 Optimised the wine fermenting script, now has the capability to reach 500k+ exp/hour rather than 350k~ 
18/2/2017 Fixed the nightmare zone prayer script, it no longer requires OSBuddy PRO.
11/01/2017 Fixed both fishing scripts which broke after the OSBuddy overlay update.
26/8/2016 Fixed all the fletching scripts due to the latest update.
20/8/2016 Every script that uses the duel arena bank will now prioritize the bottom bank chest rather than the top one (more people stack on the bottom chest, so if you bot on world 2, you're less likely to get reported)
18/8/2016 Fixed a small bug with every script that runs at the duel arena where it was sometimes clicking the exp counter if it was open.
18/8/2016 Added in a fail-safe with every script that uses the duel-arena bank, if it somehow wanders off, it will click the bank on the minimap and find its way bank to the bank chest.
18/8/2016 Fixed a small bug with the "Granite Miner" Script.
18/8/2016 Slightly optimised the "Knights of Ardougne" Thieving Script
18/8/2016 Highly Optimised the "Iron Power Miner" Script
17/8/2016 Added a "Granite Miner" Script into the "Exp Bots" Tab
17/8/2016 Fixed and optimised the "Knights of Ardougne" Thieving script.
9/8/2016 Added a Karambwan cooking script into the "Money Making" Tab.
29/7/2016 Optimised the Knights of Ardougne thieving script.
17/7/2016 Added in 2 fishing scripts.
13/7/2016 Added in overload support into the "NightmareZonePrayer" Bot.
5/7/2016 Added "Arrow Fletcher" and "Dart Fletcher" Scripts
5/7/2016 Removed the specific fletching scripts and replaced them with a more general script that can fletch any type of log.
4/7/2016 Added several "Glassblowing" Crafting scripts.
3/7/2016 Replaced "Opal Cutter" and "Emerald Cutter" with a "Gem Cutter" Script, which works on any gem type.
19/6/2016 Created a "Maple Cutting" Woodcutting bot to the "Exp Bots" Tab
18/6/2016 Fixed the "UpdateLog" So it actually downloads and updates
18/6/2016 Slightly Improved the "Knights of Ardougne" Script.
18/6/2016 Massively Improved the "Willow Cutter" Although it now requires OSbussy PRO
13/6/2016 Fixed the auto login on multiple scripts.
13/6/2016 Added The "Update Log" to "Other Tab"
12/6/2016 Added both the "Cooking and Wine Fermenting" Script/Bot
11/6/2016 Added "Thieving Men/Warriors/Knights of Ardougne" Scripts/Bots
11/6/2016 Added the "High Alch Last Item" Script/Bot
), Essentials\UpdateLogv25.txt

Gui, Show , w500 h500, Sammich's Runescape Tools PREMIUM v21.5
TabControlHeight = 200
TabControlWidth = 500
TCS_FIXEDWIDTH = 0x350
TCM_FIRST = 0x1300
TCM_SETITEMSIZE := (TCM_FIRST + 41)

Gui, Tab, 1
Gui, Color, E2E2E2
Gui,Font,s12 bold c0000FF, Arial
Gui,Font,s8 c000000, Oswald
Gui, Add, Tab, +0x0 -0x200 +%TCS_FIXEDWIDTH% h%TabControlHeight% w%TabControlWidth% hwndTabHwnd, Utility|Money Making|Exp Bots|Levelling|Other
Gui, Add, Text, cBlue x80 y35 w380 , All Scripts must be used on "Fixed" in the Runescape Settings                         Press F12 To Stop ALL Actions and to reopen the GUI
Gui, Add, Text, cGreen x140 y62 w350 , Click the "?" Buttons for more information.
Gui, Add, Button, x440 y90 w20 h20 gnightmareprayer?, ?
Gui, Add, Button, x440 y130 w20 h20 gnightmareabsorb?, ?
Gui, Add, Button, x435 y340 w20 h20 gtimer?, ?
Gui, Add, Button, x20 y80 w180 h40 v123123467BUTTON, Drop 28 Items
Gui, Add, Button, x20 y120 w180 h40 v123789BUTTON, Drop last 20 Items
Gui, Add, Button, x20 y160 w180 h40 v22323123BUTTON, Drop last 10 Items
Gui, Add, Button, x260 y80 w180 h40 v23435345123424BUTTON, Nightmare Zone Prayer
Gui, Add, Button, x260 y120 w180 h40 v2343534542356867123424BUTTON, Nightmare Zone Absorbtion
Gui, Add, Picture, x100 y210 w300 h90, Essentials\osrslogo.jpg
Gui,Font,s12 bold c0000FF, Arial
	Gui, Add, GroupBox, x20 y300 w440 h100, Time (Mins)
	Gui, Font, S15 CBlack
	Gui, Add, Edit, x30 y320 w400 h40 gTimer_Preview vTimer_Minutes, 180
	Gui, Font, S9
	Gui, Add, DropdownList, w400 vTimer_Action, Close Runescape|Stop Script|Close Bot
	Gui, Font, S15 W600
	Gui, Add, Text, x15 w410 Center +BackGroundTrans, Your chosen action will be executed in
	Gui, Font, S20, Lucida Console
	Gui, Add, Text, x15 w410 Center +BackGroundTrans vTimer_Update, 3:00:00
	Gui, Font, S12 W400
	Gui, Add, Button, x20 w90 Center gTimer_Start, Start
	Gui, -SysMenu
	Gui, Show, , % ScriptName
	ShutdownGui=1

Gui, Tab, 2
Gui,Font,s12 bold c0000FF, Arial
Gui,Font,s8 c000000, Oswald
Gui, Add, Text, cBlue x80 y35 w380 , All Scripts must be used on "Fixed" in the Runescape Settings                         Press F12 To Stop ALL Actions and to reopen the GUI
Gui, Add, Text, cGreen x140 y62 w350 , Click the "?" Buttons for more information.
Gui, Add, Button, x200 y90 w20 h20 gNature1?, ?
Gui, Add, Button, x200 y130 w20 h20 gshortbows?, ?
Gui, Add, Button, x200 y170 w20 h20 glongsbows?, ?
Gui, Add, Button, x200 y210 w20 h20 gcannon1?, ?
Gui, Add, Button, x200 y250 w20 h20 galchlastitem?, ?
Gui, Add, Button, x200 y280 w20 h20 gknightsofardougne?, ?
Gui, Add, Button, x200 y300 w20 h20 gknightsofardougnepicture?, ?
Gui, Add, Button, x200 y330 w20 h20 gmixingpotions?, ?
Gui, Add, Button, x200 y370 w20 h20 gcompletepotions?, ?
Gui, Add, Button, x440 y130 w20 h20 gstringingbows?, ?
Gui, Add, Button, x440 y170 w20 h20 gfletchingarrows?, ?
Gui, Add, Button, x440 y210 w20 h20 genchanting?, ?
Gui, Add, Button, x440 y250 w20 h20 genchanting?, ?
Gui, Add, Button, x440 y290 w20 h20 genchanting?, ?
Gui, Add, Button, x440 y330 w20 h20 genchanting?, ?
Gui, Add, Button, x200 y410 w20 h20 gkarambwans?, ?
Gui, Add, Button, x440 y90 w20 h20 gShafts?, ?
Gui, Add, Button, x20 y80 w180 h40 v233124BUTTON, Nature Runes Thieving In Ardougne
Gui, Add, Button, x20 y120 w180 h40 v234435573424BUTTON, Fletching Shortbows
Gui, Add, Button, x20 y160 w180 h40 v23424BUTTON, Fletching Longbows
Gui, Add, Button, x260 y80 w180 h40 v23123442123122222BUTTON, Fletching Logs into Shafts
Gui, Add, Button, x260 y120 w180 h40 v223324234323223423442348435BUTTON, Stringing Bows
Gui, Add, Button, x260 y160 w180 h40 v2233242333423243244324322348435BUTTON, Fletching Arrows
Gui, Add, Button, x20 y200 w180 h40 v28432342345BUTTON, Cannonballs Neitz
Gui, Add, Button, x20 y240 w180 h40 v2843234231234232445BUTTON, High Alch Last Item
Gui, Add, Button, x20 y280 w180 h40 v284323423132435434234232445BUTTON, Knights of Ardougne
Gui, Add, Button, x20 y320 w180 h40 v284323423132435434354543453234232445BUTTON, Making Unfinished Potions
Gui, Add, Button, x20 y360 w180 h40 v28432342313243543435412323123543453234232445BUTTON, Making Complete Potions
Gui, Add, Button, x20 y400 w180 h40 v234212332434562234323443543343123432432212BUTTON, Cooking Karambwans
Gui, Add, Button, x260 y200 w180 h40 v223324233254354234522348435BUTTON, Enchanting Sapphire Jewellery
Gui, Add, Button, x260 y240 w180 h40 v223324233254354234522342342348435BUTTON, Enchanting Emerald Jewellery
Gui, Add, Button, x260 y280 w180 h40 v223324233222254354234522342342348435BUTTON, Enchanting Ruby Jewellery
Gui, Add, Button, x260 y320 w180 h40 v223324233222254354324324234522342342348435BUTTON, Enchanting Diamond Jewellery

Gui, Tab, 3
Gui, Add, Text, cBlue x80 y35 w380 , All Scripts must be used on "Fixed" in the Runescape Settings                         Press F12 To Stop ALL Actions and to reopen the GUI
Gui, Add, Text, cGreen x140 y62 w350 , Click the "?" Buttons for more information.
Gui, Add, Button, x200 y90 w20 h20 gcleaningherbs?, ?
Gui, Add, Button, x200 y130 w20 h20 gpowerminer?, ?
Gui, Add, Button, x200 y170 w20 h20 gcuttingwillows?, ?
Gui, Add, Button, x200 y210 w20 h20 ggems?, ?
Gui, Add, Button, x200 y250 w20 h20 gjogre1?, ?
Gui, Add, Button, x200 y290 w20 h20 gjogre2?, ?
Gui, Add, Button, x200 y330 w20 h20 gjogre3?, ?
Gui, Add, Button, x200 y370 w20 h20 gcooking?, ?
Gui, Add, Button, x200 y410 w20 h20 gwine?, ?
Gui, Add, Button, x200 y450 w20 h20 gcuttingmaples?, ?
Gui, Add, Button, x440 y90 w20 h20 gglassblow?, ?
Gui, Add, Button, x440 y130 w20 h20 gglassblow?, ?
Gui, Add, Button, x440 y170 w20 h20 gglassblow?, ?
Gui, Add, Button, x440 y210 w20 h20 gglassblow?, ?
Gui, Add, Button, x440 y250 w20 h20 gdarts?, ?
Gui, Add, Button, x440 y290 w20 h20 gflyfishing?, ?
Gui, Add, Button, x440 y330 w20 h20 gbarbarianfishing?, ?
Gui, Add, Button, x440 y360 w20 h20 ggranitemining?, ?
Gui, Add, Button, x440 y400 w20 h20 g3tickfishing?, ?
Gui, Add, Button, x440 y450 w20 h20 gblastfurnace?, ?
Gui, Add, Button, x440 y380 w20 h20 ggraniteminingpicture?, ?
Gui, Add, Button, x440 y420 w20 h20 g3tickfishingpic?, ?
Gui, Add, Button, x20 y80 w180 h40 v284323423123434432432232445BUTTON, Clean First Herb
Gui, Add, Button, x20 y120 w180 h40 v234222334522BUTTON, Iron Power Miner
Gui, Add, Button, x20 y160 w180 h40 v28435BUTTON, Cutting Willows
Gui, Add, Button, x20 y200 w180 h40 v234222212BUTTON, Cutting Gems
Gui, Add, Button, x20 y240 w180 h40 v23423456223122212BUTTON, Curse Jogre
Gui, Add, Button, x20 y280 w180 h40 v234234562234123323122212BUTTON, Curse Alch Jogre
Gui, Add, Button, x20 y320 w180 h40 v234212334562234323122212BUTTON, Stun Alch Jogre
Gui, Add, Button, x20 y360 w180 h40 v234212332434562234323443543343122212BUTTON, Cooking
Gui, Add, Button, x20 y400 w180 h40 v234212332434562234323234234234443543343122212BUTTON, Fermenting Wine
Gui, Add, Button, x20 y440 w180 h40 v22342348435BUTTON, Cutting Maples
Gui, Add, Button, x260 y80 w180 h40 v2233242343242348435BUTTON, Glassblow Fishbowl
Gui, Add, Button, x260 y120 w180 h40 v2233242343223442348435BUTTON, Glassblow Glass Orb
Gui, Add, Button, x260 y160 w180 h40 v223324233443242348435BUTTON, Glassblow Lantern Lens
Gui, Add, Button, x260 y200 w180 h40 v2233242343242323448435BUTTON, Glassblow Dorg Light Orb
Gui, Add, Button, x260 y240 w180 h40 v2233242343232443243243242323448435BUTTON, Fletching Darts
Gui, Add, Button, x260 y280 w180 h40 v2233242343232443243243243243242323448435BUTTON, Fly Fishing Trout
Gui, Add, Button, x260 y320 w180 h40 v222342342345644543243242323448435BUTTON, Barbarian Fishing
Gui, Add, Button, x260 y400 w180 h40 v222342342345644543243232432443242323448435BUTTON, Barbarian Fishing 3 Tick
Gui, Add, Button, x260 y440 w180 h40 v222342342345644543243232432443242432432234323448435BUTTON, Blast Furnace
Gui, Add, Button, x260 y360 w180 h40 v222342342345234432423323232644543243242323448435BUTTON, Granite Miner

Gui, Tab, 4
Gui, Add, Text, cBlue x80 y35 w380 , All Scripts must be used on "Fixed" in the Runescape Settings                         Press F12 To Stop ALL Actions and to reopen the GUI
Gui, Add, Text, cGreen x140 y62 w350 , Click the "?" Buttons for more information.
Gui, Add, Button, x200 y90 w20 h20 gthievingmen?, ?
Gui, Add, Button, x200 y130 w20 h20 gthievingwarriors?, ?
Gui, Add, Button, x440 y90 w20 h20 gmasterfarmer?, ?
Gui, Add, Button, x20 y80 w180 h40 v284323423132435434234232423432445BUTTON, Thieving Men
Gui, Add, Button, x260 y80 w180 h40 v223324234324224323423348435BUTTON, Thieving Master Farmer
Gui, Add, Button, x20 y120 w180 h40 v2843234231324354342343543435453245324232423432445BUTTON, Thieving Warriors
Gui, Add, Button, x20 y160 w180 h40 v2312344223144322342342222BUTTON, Glassblow Beer Glass
Gui, Add, Button, x20 y200 w180 h40 v2312342442221234322BUTTON, Glassblow Oil Lamp
Gui, Add, Button, x20 y240 w180 h40 v231232344323424422222BUTTON, Glassblow Oil Lantern
Gui, Add, Button, x20 y280 w180 h40 v231234422324432234222BUTTON, Glassblow Vial
Gui, Add, Button, x200 y170 w20 h20 gglassblow?, ?
Gui, Add, Button, x200 y210 w20 h20 gglassblow?, ?
Gui, Add, Button, x200 y250 w20 h20 gglassblow?, ?
Gui, Add, Button, x200 y290 w20 h20 gglassblow?, ?


Gui, Tab, 5
Gui, Add, Text, cGreen x140 y62 w380 , Click the "?" Buttons for more information.
Gui, Add, Text, cBlue x80 y35 w380 , All Scripts must be used on "Fixed" in the Runescape Settings                         Press F12 To Stop ALL Actions and to reopen the GUI
Gui, Add, Button, x20 y80 w180 h40 v278BUTTON, Contact Me
Gui, Add, Button, x135 y450 w180 h40 v27324328BUTTON, Auto Login Setup
Gui, Add, Button, x260 y80 w180 h40 v27234238BUTTON, Update Log
Gui, Add, Button, x135 y400 w180 h40 v27234245453435443554335435345345338BUTTON, Donate
Gui, Add, Picture, x125 y140 w200 h200, Essentials\logo.jpg


f12::Reload

F11::
loop {
MouseGetPos,x,y
PixelGetColor,pix,%x%,%y%
tooltip,%pix% at co-ordinates %x%`,%y%
}

return

;------( Convert input into HH:MM:SS for prevew

Timer_Preview:
	Gui, Submit, Nohide
	If !! Timer
	{
		SetTimer, Timer_Start, Off
		MsgBox, ,% ScriptName, Shutdown Timer Stopped. Restart timer with new time
		Timer=
	}
	Timer_Update:="", Timer_UpdateLast:="", TimeSet:="", Flash:="", PauseTime:=""
	SetFormat, Float, 0.0
	TimeSet:=A_TickCount, TimeSet:=FormatSeconds(((Timer_Minutes*60*1000) - (A_TickCount - TimeSet))/1000)
	If TimeSet = :00:00
		GuiControl, Text, Timer_Update, 0:00:00
	Else
		GuiControl, Text, Timer_Update, % TimeSet
Return

;------( Start

Timer_Start:
	If ! TimerRunning ; Whether the Timer is ON
	{
		Gui, Submit, Nohide
		If (!Timer_Minutes || !Timer_Action)
		{
			SetTimer, Timer_Start, Off
			MsgBox, ,% ScriptName, No time or action input.
		}
		Else
		{
			TimeSet:=A_TickCount
			Timer_Minutes:=(Timer_Minutes * 60) * 1000
			SetTimer, Timer_Start, 50
			TimerRunning := 1
		}
	}
	Else
	{
		SetFormat, Float, 0.0

		Timer_Update:=FormatSeconds((Timer_Minutes - (A_TickCount - TimeSet))/1000)

		If (Timer_Update="" || Timer_Update <> Timer_UpdateLast)
		{
			GuiControl, Text, Timer_Update, % Timer_Update
			Timer_UpdateLast:=Timer_Update
		}
		If % (A_TickCount - TimeSet) > Timer_Minutes
		{
			SetTimer, Timer_Start, Off

			If Timer_Action=Stop Script
reload
			If Timer_Action=Close Bot
Exitapp
			If Timer_Action=Close Runescape
Process, Close, OSBuddy.exe
reload
		}

		; Flash Window
		If (Timer_Minutes - (A_TickCount - TimeSet))/1000 < 60
		{
			If ! Flash
				WinSet, Alwaysontop, On, % ScriptName
			If (Flash="" || (A_TickCount-Flash) > 400)
			{
				Gui, Flash
				Flash:=A_TickCount
			}
		}
	}
Return

;------( Functions )----------------------------------------------------------

FormatSeconds(NumberOfSeconds) {
	Time = 19990101
	Time += %NumberOfSeconds%, seconds
	FormatTime, mmss, %time%, mm:ss
	Return NumberOfSeconds//3600 ":" mmss
}

premiumpayment:

Run https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=P3BPU9NMQC89N&lc=AU&item_name=Sammich`%27s`%20OSRS`%20AHK`%20Services&amount=20`%2e00&currency_code=AUD&bn=PP`%2dDonationsBF`%3abtn_donateCC_LG`%2egif`%3aNonHosted

return

knightsofardougnepicture?:
    Run Essentials\knightsofardougne.jpg
Return

blastfurnace?:
    Run Essentials\BF1.jpg
Return

blastfurnace2?:
    MsgBox, You must be zoomed out as far as possible for this script, refer to the other "Help" button for most of the required information, ADDITIONAL INFORMATION: Placeholder must be enabled in your bank, "Mouseover Text" Must be enabled in OSBuddy, and the "Experience Drop" Has to be enabled aswell (It has to have default settings, if you've changed the "Experience Drop" Settings, click on the "Reset Settings" In the settings of it.)
Return

graniteminingpicture?:
    Run Essentials\granite.jpg
Return

3tickfishingpic?:
    Run Essentials\3tickfishing.jpg
Return

autologin:
    MsgBox, This Button basically just logs you in quickly if you're on the log-in screen. (Assuming you've set up the "auto login" feature)
Return

autologinfeature:
    MsgBox, This Script supports auto login. To enable the auto-login feature, read the instructions in the "Other" Tab
Return

timer?:
    MsgBox,  Pretty self-explanatory, You need to set this timer before activating a script, If you set it to "Close Runescape" It will force close OSBuddy when the timer runs out (Essentially logging you out) or if you set it to "Stop Script" It will basically mimic the "F12" function, stopping any script, however if you use this, your character will be idle until it logs out from the afk-timer, unless you intervene. The "Close Bot" Option is basically the same as "Stop Script" Except it closes the bot aswell.
Return

flyfishing?:
    MsgBox,  Start this script at the fly-fishing trout/salman spot near barbarian village, and turn on the "Fishing Display" options in OsBuddy, and turn OFF the "Item Overlay" display. (Make sure to have feathers and a fly-fishing rod in the first two inventory spots) This script requires the "Shift Click to Drop" function to be turned on in your runescape settings.
Return

barbarianfishing?:
    MsgBox,  Start this script at the barbarian outpost fishing spot (south of barbarian outpost), and turn on the "Fishing Display" options in OsBuddy, and turn OFF the "Item Overlay" display. (Requires Feathers/Bait and a Barbarian Rod in the first two inventory spots) This script requires the "Shift Click to Drop" function to be turned on in your runescape settings.
Return

masterfarmer?:
    MsgBox,  This is not an "AFK" Script, You will need to babysit while it's running, I would advise to run this script at the Ardougne Master Farmer. This script will eat Shark/Lobster/Cakes.
Return

granitemining?:
    MsgBox, Start this script in the picture shown in the other help box, you NEED to have a hitpoints cape, and a regen bracelet to survive in the desert. Also you need to have "Exp Drop" Feature enabled in OSBuddy before starting the script. Also make sure you have nothing in your last inventory spot, because when the bot "detects" granite in your last inventory spot, it will begin dropping all the granite in your inventory. This script requires the "Shift Click to Drop" function to be turned on in your runescape settings.
Return

3tickfishing?:
    MsgBox, This script is identical to the Barbarian fishing script, however it uses the 3-tick method (LEVEL 70+ FISHING RECOMMENDED TO USE EFFICIENTLY), refer to the other help button to show how the inventory should be set out. (3-Tick method basically just catches fish faster by spamming a tonne of actions. Go figure. This script requires the "Shift Click to Drop" function to be turned on in your runescape settings.
Return

shortbows?:
    MsgBox, Stand at the duel arena bank and make sure you have your any type of logs in your first bank space and ATLEAST 2 knives in the 2nd space in your bank.
Return

stringingbows?:
    MsgBox, Stand at the duel arena bank and make sure you have strings in your first bank space and unstrung bows in the 2nd space in your bank. (MUST HAVE WITHDRAW "X" AMOUNT SET TO 14, IN YOUR BANK)
Return

mixingpotions?:
    MsgBox, Stand at the duel arena bank and make sure you have your vials of water and cleaned herbs in your first 2 bank slots. (MUST HAVE WITHDRAW "X" AMOUNT SET TO 14, IN YOUR BANK)
Return

completepotions?:
    MsgBox, Stand at the duel arena bank and make sure you have your (Unf) Potions and Secondary Ingredients in your first 2 bank slots. (MUST HAVE WITHDRAW "X" AMOUNT SET TO 14, IN YOUR BANK)
Return


longsbows?:
    MsgBox, Stand at the duel arena bank and make sure you have your any type of logs in your first bank space and ATLEAST 2 knives in the 2nd space in your bank.
Return

fletchingarrows?:
    MsgBox, Start this script anywhere you like, with atleast 2 of the following in your first 2 inventory spaces: Feathers, Arrowheads and Shafts.
Return

darts?:
    MsgBox, Start this script anywhere you like, with darts and feathers in your first 2 inventory slots.
Return

download1?:
    MsgBox, Click the link to download the files that are required for "Auto Logging" Once you've downloaded the files, extract them and put it straight into your C: Drive, make sure you don't change any of the file names. Once you've put the Folder in your C: Enter the folder and put your login details into the appropriate text Files, eg: Type your Username into the "AccountUsername.txt" Text file
Return

karambwans?:
    MsgBox, Start the script in rogues den whilst standing 1 step to the east of the banker with raw karambwans to cook in your first bank slot. I recommend zooming-in as far as possible in-game, this can be done by using ctrl+scroll wheel ingame. (Warning, don't use long-term to avoid reports)
Return

cooking?:
    MsgBox, Start the script in rogues den whilst standing 1 step to the east of the banker with the raw food you want to cook in your first bank slot. I recommend zooming-in as far as possible in-game, this can be done by using ctrl+scroll wheel ingame. (Warning, don't use long-term to avoid reports)
Return

thievingmen?:
    MsgBox, Set your "Attack NPC" Options to Hidden, Start the script upstairs in the Falador pub, near the "Drunken Man" This script will eat Cakes/Lobsters/Shark when you are on low health.
Return

enchanting?:
    MsgBox, The "Enchanting Helper" has to be enabled in the OSBuddy settings for this script to work, go to the duel-arena bank and have your enchanting runes in the first 2 inventory slots and whatever jewellery you want to enchant in the first (top left) bank slot before enabling this script.
Return

wine?:
    MsgBox, (BEFORE YOU USE THIS SCRIPT, MAKE SURE YOUR WITHDRAW "X" AMOUNT IN YOUR BANK IS SET TO 14) Just stand at the duel-arena bank and make sure you have your jugs of water and grapes in your first 2 bank slots. (Warning, don't use long-term to avoid reports)
Return

thievingwarriors?:
    MsgBox, Set your "Attack NPC" Options to Hidden, Start the script in a small room with a trapped Warrior WOMEN before starting. The Script will eat Shark/Lobsters and Cakes (Warning, don't use long-term to avoid reports)
Return

alchlastitem?:
    MsgBox, Just start the script anywhere with Fire Runes/Staff and Nature Runes, along with the item you want to alch in your last inventory spot. I recommend zooming-in as far as possible in-game, this can be done by using ctrl+scroll wheel ingame. (I'd recommend using this script in an instance such as your house to avoid being reported)
Return

knightsofardougne?:
    MsgBox, Set your "Attack NPC" Options to Hidden, Start the script in a small room with a trapped knight of ardougne before starting. you NEED to be zoomed in as far as possible for this script to work., this can be done by using ctrl+scroll wheel ingame. The Script will eat Shark/Lobsters and Cakes (Warning, don't use long-term to avoid reports)
Return

Nature1?:
    MsgBox, Stand next to the Nature Rune Chest in Ardougne before starting. (28 Thieve Req) This Script also eats Shark/Lobs/Cakes if you're missing health so it's viable on Deadman-Mode
Return

cleaningherbs?:
    MsgBox, Stand next to the duel arena bank chest with the herb you want to clean in your first bank slot (top left bank slot).
Return

maples1?:
    MsgBox, Stand next to the duel arena bank chest with a knife in your inventory and with your maple logs in your first 3 bank slots. 
Return

fletchingyews1?:
    MsgBox, Stand next to the duel arena bank chest with your knife in your inventory and your Yew logs, bow strings and uncut yew bows in your first 3 bank slots, this script will cut all your yew logs into longbows, and once running out of yew logs, it will begin stringing them.
Return

cannon1?:
    MsgBox, stand at the 2 Eastern chests (there's 4 chests in the bank building, stand infront of the 2 east chests) Make sure you have your cannon mould in your inventory, and your steel bars in your first 3 bank spaces, this isn't a flawless script, so keep an eye on it every hour or two, Also starting the script with the bank open will help things get started.
Return

nightmareprayer?:
    MsgBox, Just enter NMZ, turn on protect from melee, along with any other prayers you want to use, then open your inventory and turn the script on, it will drink prayer potions in your inventory when you reach around 20 percent prayer remaining, OSbuddy PRO is NOT required for this script.
Return

nightmareabsorb?:
    MsgBox, You NEED OSbuddy pro for this script to work, Disable Stat Boost overlay, and disable the creature information and enable the health regeneration indicator. Once all that is done, put your rapid heal prayer on "quick prayer" and enter the nightmare zone, lower your health if you want (Rock Cake and/or Overloads) and then use 3 doses of absorbtion potion, and then start the script and it will drink absorbtion potions and flick the rapid heal prayer when necessary.
Return

shafts?:
    MsgBox, Stand next to the duel arena bank chest with your knife and logs in your first 2 bank slots before starting the script.
Return

willows?:
    MsgBox, Stand next to the duel arena bank chest with a knife in your inventory and your willow logs in your first 3 bank slots before starting the script.
Return

opals?:
    MsgBox, Stand next to the duel arena bank chest with a chisel in your inventory and your uncut opals in your first 3 bank slots before starting the script.
Return

Gems?:
    MsgBox, Stand at the duel arena bank and make sure you have your uncut gems in your first bank space and ATLEAST 2 chisels in the 2nd space in your bank.
Return

glassblow?:
    MsgBox, Stand at the duel arena bank and make sure you have your molten glass in your first bank space and ATLEAST 2 glassblowing pipes in the 2nd space in your bank.
Return

jogre1?:
    MsgBox, [MAKE SURE YOUR HOTKEYS ARE DEFAULTED, OR ATLEAST MAKE SURE YOUR SPELLBOOK OPENS ON F6] Equip Splashing gear, and making sure you have required runes to cast "Curse" and stand next to the Jogre at the Ardougne Zoo, Preferably standing inbetween the jogre and the cyclops before enabling the script
Return

jogre2?:
    MsgBox, [MAKE SURE YOUR HOTKEYS ARE DEFAULTED, OR ATLEAST MAKE SURE YOUR SPELLBOOK OPENS ON F6] Equip Splashing gear, and making sure you have required runes to cast "Curse" and "High Alchemy" and put the item you want to Alch in the last slot of your inventory and stand next to the Jogre at the Ardougne Zoo, Preferably standing inbetween the jogre and the cyclops before enabling the script
Return

jogre3?:
    MsgBox, [MAKE SURE YOUR HOTKEYS ARE DEFAULTED, OR ATLEAST MAKE SURE YOUR SPELLBOOK OPENS ON F6] Equip Splashing gear, and making sure you have required runes to cast "Stun" and "High Alchemy" and put the item you want to Alch in the last slot of your inventory and stand next to the Jogre at the Ardougne Zoo, Preferably standing inbetween the jogre and the cyclops before enabling the script
Return

powerminer?:
    MsgBox, Go to ardougne mines (North east of Ardy near the Bears) and stand inbetween the 3 iron nodes and start the script to start power mining (Make sure your exp-drop feature is turned on in OSBuddy and make sure you last inventory spot is free). This script requires the "Shift Click to Drop" function to be turned on in your runescape settings.
Return

cuttingwillows?:
    MsgBox, You MUST go to OSBuddy Pro and turn on the "Woodcutting" display in the options, once you've done that... Start the script near some willow trees. This requires OSbuddy PRO. This script requires the "Shift Click to Drop" function to be turned on in your runescape settings.
Return

cuttingmaples?:
    MsgBox, You MUST go to OSBuddy Pro and turn on the "Woodcutting" display in the options, once you've done that... Start the script near some willow trees. This requires OSbuddy PRO. This script requires the "Shift Click to Drop" function to be turned on in your runescape settings.
Return

Buttondonate:
run, https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=sambostock`%40hotmail`%2ecom&lc=AU&item_name=Runescape`%20`%22OSRS`%22`%20AHK`%20Services&no_note=0&currency_code=AUD&bn=PP`%2dDonationsBF`%3abtn_donateCC_LG`%2egif`%3aNonHostedGuest
Return

ReloadScript:
SetTimer,  ReloadScript, Off
Reload
return

Buttondrop28items:
	BlockInput, MouseMove
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
MouseMove 578, 261 ; 28th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 620, 261 ; 27th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 664, 261 ; 26th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 261 ; 25th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 578, 300 ; 24th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 620, 300 ; 23th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 664, 300 ; 22th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 300 ; 21th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 578, 335 ; 20th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 620, 335 ; 19th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 664, 335 ; 18th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 335 ; 17th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 578, 371 ; 16th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 620, 371 ; 15th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 664, 371 ; 14th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 371 ; 13th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 578, 407 ; 12th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 620, 407 ; 11th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 664, 407 ; 10th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 407 ; 9th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 578, 441 ; 8th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 620, 441 ; 7th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 664, 441 ; 6th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 441 ; 5th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 578, 480 ; 4th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 620, 480 ; 3rd item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 664, 480 ; 2nd item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 480 ; 1st item
Send {Shift Down}
click
Send {Shift Up}
	BlockInput Off
return

Buttoncleanfirstherb:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3312342342342342345655441882):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up3341882)
Recovered(Up33123423455441882):
sleep 5000
Recovered(Up3341882):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334182282)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341882)
Recovered(Up334182282):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243432432432432656523418982323332987)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300002342341893232432342342843243243456564654654432)
Recover(Up3000023443543232443243432432432432656523418982323332987):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432654354354343554356523418982323332987)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300002342341893232432342342843243243456564654654432)
Recover(Up30000234435432324432432654354354343554356523418982323332987):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000243224332443232443234435432324432432656523418982323332987)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300002342341893232432342342843243243456564654654432)
Recover(Up30000243224332443232443234435432324432432656523418982323332987):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443243243243234235432324432432656523418982323332987)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300002342341893232432342342843243243456564654654432)
Recover(Up30000234443243243243234235432324432432656523418982323332987):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343543557657684435432324432432656523418982323332987)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300002342341893232432342342843243243456564654654432)
Recover(Up300002343543557657684435432324432432656523418982323332987):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443432423656735432324432432656523418982323332987)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300002342341893232432342342843243243456564654654432)
Recover(Up30000234443432423656735432324432432656523418982323332987):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30054334567867898797893332987)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300002342341893232432342342843243243456564654654432)
Recover(Up30054334567867898797893332987):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232432343244334432432656523418982323332987)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300002342341893232432342342843243243456564654654432)
Recover(Up3000023443543232432343244334432432656523418982323332987):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234324323424435432324432432656523418982323332987)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300002342341893232432342342843243243456564654654432)
Recover(Up30000234324323424435432324432432656523418982323332987):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418943243243243282323332987)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300002342341893232432342342843243243456564654654432)
Recover(Up30000234435432324432432656523418943243243243282323332987):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30432432342432000234435432324432432656523418982323332987)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300002342341893232432342342843243243456564654654432)
Recover(Up30432432342432000234435432324432432656523418982323332987):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418982323332987)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300002342341893232432342342843243243456564654654432)
Recover(Up30000234435432324432432656523418982323332987):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up3000023423418982)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up3341882)
Recover(Up300002342341893232432342342843243243456564654654432):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341882)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; Search first 3 bank spaces for herb boxes
click 443, 343
sleep 1000
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down110041882)
Recovered(Up3341132123123882):
PixelSearch, DX2E, DY2E, 55, 100, 206, 156, 0x054502, 1, Fast ; Search first 3 bank spaces for herb bxoes
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
Recover(Down110041882):
Recover(Down234020041882):
send {ESC}
click 578, 261 ; 28th item
sleep 20
click 620, 261 ; 27th item
sleep 20
click 664, 261 ; 26th item
sleep 20
click 707, 261 ; 25th item
sleep 20
click 578, 300 ; 24th item
sleep 20
click 620, 300 ; 23th item
sleep 20
click 664, 300 ; 22th item
sleep 20
click 707, 300 ; 21th item
sleep 20
click 578, 335 ; 20th item
sleep 20
click 620, 335 ; 19th item
sleep 20
click 664, 335 ; 18th item
sleep 20
click 707, 335 ; 17th item
sleep 20
click 578, 371 ; 16th item
sleep 20
click 620, 371 ; 15th item
sleep 20
click 664, 371 ; 14th item
sleep 20
click 707, 371 ; 13th item
sleep 20
click 578, 407 ; 12th item
sleep 20
click 620, 407 ; 11th item
sleep 20
click 664, 407 ; 10th item
sleep 20
click 707, 407 ; 9th item
sleep 20
click 578, 441 ; 8th item
sleep 20
click 620, 441 ; 7th item
sleep 20
click 664, 441 ; 6th item
sleep 20
click 707, 441 ; 5th item
sleep 20
click 578, 480 ; 4th item
sleep 20
click 620, 480 ; 3rd item
sleep 20
click 664, 480 ; 2nd item
sleep 20
click 707, 480 ; 1st item
	Goto, Recovered(Up3341882)
   GoTo, Recover(Down234020041882)
Recover(Down2000041882):	
	GoTo, Recovered(Up3341882)
Recover(Down3000041882):
SoundBeep
	GoTo, Recovered(Up3341882)
Recover(Down4912982):
sleep 30000
Recover(Up3000023423418982):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3341882)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up33123423455441882)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down30000234234123432428982)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down300002342354645416458982)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982)
else
	click 402, 312
sleep 100
Recover(Down300002342354645416458982):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up3312342342342342345655441882)
Recover(Down30000234234123432428982):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up3341882)
Recover(Down3000023423418982):
}
Return

Buttonfermentingwine:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up331234234554418834423432432432432211):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up334188211)
Recovered(Up3312342345544188211):
sleep 5000
Recovered(Up334188211):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418228211)
else
click 487, 56
sleep 1000
GoTo, Recovered(Up334188211)
Recovered(Up33418228211):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324343243243243265652341898232333298755441122)
   else
	click %X%, %Y%
	sleep 1000
   GoTo, Recover(Up300004323424326758767867862343543453435435767642341898211)
Recover(Up300002344354323244324343243243243265652341898232333298755441122):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265435435434355435652341898232333298755441122)
   else
	click %X%, %Y%
	sleep 1000
   GoTo, Recover(Up300004323424326758767867862343543453435435767642341898211)
Recover(Up3000023443543232443243265435435434355435652341898232333298755441122):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000024322433244323244323443543232443243265652341898232333298755441122)
   else
	click %X%, %Y%
	sleep 1000
   GoTo, Recover(Up300004323424326758767867862343543453435435767642341898211)
Recover(Up3000024322433244323244323443543232443243265652341898232333298755441122):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023444324324324323423543232443243265652341898232333298755441122)
   else
	click %X%, %Y%
	sleep 1000
   GoTo, Recover(Up300004323424326758767867862343543453435435767642341898211)
Recover(Up3000023444324324324323423543232443243265652341898232333298755441122):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234354355765768443543232443243265652341898232333298755441122)
   else
	click %X%, %Y%
	sleep 1000
   GoTo, Recover(Up300004323424326758767867862343543453435435767642341898211)
Recover(Up30000234354355765768443543232443243265652341898232333298755441122):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023444343242365673543232443243265652341898232333298755441122)
   else
	click %X%, %Y%
	sleep 1000
   GoTo, Recover(Up300004323424326758767867862343543453435435767642341898211)
Recover(Up3000023444343242365673543232443243265652341898232333298755441122):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3005433456786789879789333298755441122)
   else
	click %X%, %Y%
	sleep 1000
   GoTo, Recover(Up300004323424326758767867862343543453435435767642341898211)
Recover(Up3005433456786789879789333298755441122):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323243234324433443243265652341898232333298755441122)
   else
	click %X%, %Y%
	sleep 1000
   GoTo, Recover(Up300004323424326758767867862343543453435435767642341898211)
Recover(Up300002344354323243234324433443243265652341898232333298755441122):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023432432342443543232443243265652341898232333298755441122)
   else
	click %X%, %Y%
	sleep 1000
   GoTo, Recover(Up300004323424326758767867862343543453435435767642341898211)
Recover(Up3000023432432342443543232443243265652341898232333298755441122):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265652341894324324324328232333298755441122)
   else
	click %X%, %Y%
	sleep 1000
   GoTo, Recover(Up300004323424326758767867862343543453435435767642341898211)
Recover(Up3000023443543232443243265652341894324324324328232333298755441122):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3043243234243200023443543232443243265652341898232333298755441122)
   else
	click %X%, %Y%
	sleep 1000
   GoTo, Recover(Up300004323424326758767867862343543453435435767642341898211)
Recover(Up3043243234243200023443543232443243265652341898232333298755441122):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265652341898232333298755441122)
   else
	click %X%, %Y%
	sleep 1000
   GoTo, Recover(Up300004323424326758767867862343543453435435767642341898211)
Recover(Up3000023443543232443243265652341898232333298755441122):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up300002342341898211)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up334188211)
Recover(Up300004323424326758767867862343543453435435767642341898211):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334188211)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; Search first 3 bank spaces for wine
click 443, 343
sleep 200
	mousemove 92, 134
	click right
	MouseMove, 0, 70, 1, R
	sleep 50
	click left	
sleep 200
	mousemove 138, 134
	click right
	MouseMove, 0, 70, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 200
   GoTo, Recover(Down11004188211)
Recovered(Up334113212312388211):
PixelSearch, DX2E, DY2E, 55, 100, 206, 156, 0x054502, 1, Fast ; Search first 3 bank spaces for grapes
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 200
Recover(Down11004188211):
Recover(Down23402004188211):
send {ESC}
click 578, 261 ; 28th item
sleep 100
click 707, 480 ; 1st item
sleep 1000
click right 260, 425
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 17200
	Goto, Recovered(Up334188211)
   GoTo, Recover(Down23402004188211)
Recover(Down200004188211):	
	GoTo, Recovered(Up334188211)
Recover(Down300004188211):
SoundBeep
	GoTo, Recovered(Up334188211)
Recover(Down491298211):
sleep 30000
Recover(Up300002342341898211):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up334188211)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up3312342345544188211)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down3000023423412343242898211)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down30000234235464541645898211)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down300002342341898211)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down300002342341898211)
else
	click 402, 312
sleep 100
Recover(Down30000234235464541645898211):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341898211)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341898211)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up331234234554418834423432432432432211)
Recover(Down3000023423412343242898211):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up334188211)
Recover(Down300002342341898211):
}
Return

Buttonmakingunfinishedpotions:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33123423455441883442343243243243221164):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up33418821164)
Recovered(Up331234234554418821164):
sleep 5000
Recovered(Up33418821164):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341822821164)
else
click 487, 56
sleep 500
GoTo, Recovered(Up33418821164)
Recovered(Up3341822821164):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432434324324324326565234189823233329875544112286)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up2343244323423000345346575675678560234234189821164)
Recover(Up30000234435432324432434324324324326565234189823233329875544112286):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326543543543435543565234189823233329875544112286)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up2343244323423000345346575675678560234234189821164)
Recover(Up300002344354323244324326543543543435543565234189823233329875544112286):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002432243324432324432344354323244324326565234189823233329875544112286)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up2343244323423000345346575675678560234234189821164)
Recover(Up300002432243324432324432344354323244324326565234189823233329875544112286):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344432432432432342354323244324326565234189823233329875544112286)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up2343244323423000345346575675678560234234189821164)
Recover(Up300002344432432432432342354323244324326565234189823233329875544112286):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023435435576576844354323244324326565234189823233329875544112286)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up2343244323423000345346575675678560234234189821164)
Recover(Up3000023435435576576844354323244324326565234189823233329875544112286):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344434324236567354323244324326565234189823233329875544112286)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up2343244323423000345346575675678560234234189821164)
Recover(Up300002344434324236567354323244324326565234189823233329875544112286):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300543345678678987978933329875544112286)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up2343244323423000345346575675678560234234189821164)
Recover(Up300543345678678987978933329875544112286):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324323432443344324326565234189823233329875544112286)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up2343244323423000345346575675678560234234189821164)
Recover(Up30000234435432324323432443344324326565234189823233329875544112286):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343243234244354323244324326565234189823233329875544112286)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up2343244323423000345346575675678560234234189821164)
Recover(Up300002343243234244354323244324326565234189823233329875544112286):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326565234189432432432432823233329875544112286)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up2343244323423000345346575675678560234234189821164)
Recover(Up300002344354323244324326565234189432432432432823233329875544112286):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up304324323424320002344354323244324326565234189823233329875544112286)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up2343244323423000345346575675678560234234189821164)
Recover(Up304324323424320002344354323244324326565234189823233329875544112286):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326565234189823233329875544112286)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up2343244323423000345346575675678560234234189821164)
Recover(Up300002344354323244324326565234189823233329875544112286):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up30000234234189821164)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up33418821164)
Recover(Up2343244323423000345346575675678560234234189821164):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418821164)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; Search first 3 bank spaces for herb boxes
click 443, 343
sleep 200
	mousemove 92, 134
	click right
	MouseMove, 0, 70, 1, R
	sleep 50
	click left	
sleep 200
	mousemove 138, 134
	click right
	MouseMove, 0, 70, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 1300
   GoTo, Recover(Down1100418821164)
Recovered(Up33411321231238821164):
PixelSearch, DX2E, DY2E, 55, 100, 206, 156, 0x054502, 1, Fast ; Search first 3 bank spaces for herb bxoes
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
Recover(Down1100418821164):
Recover(Down2340200418821164):
send {ESC}
click 578, 261 ; 28th item
sleep 100
click 707, 480 ; 1st item
sleep 2000
click right 260, 425
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 9000
	Goto, Recovered(Up33418821164)
   GoTo, Recover(Down2340200418821164)
Recover(Down20000418821164):	
	GoTo, Recovered(Up33418821164)
Recover(Down30000418821164):
SoundBeep
	GoTo, Recovered(Up33418821164)
Recover(Down49129821164):
sleep 30000
Recover(Up30000234234189821164):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up33418821164)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up331234234554418821164)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down300002342341234324289821164)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down3000023423546454164589821164)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189821164)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189821164)
else
	click 402, 312
sleep 100
Recover(Down3000023423546454164589821164):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189821164)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189821164)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up33123423455441883442343243243243221164)
Recover(Down300002342341234324289821164):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up33418821164)
Recover(Down30000234234189821164):
}
Return

Buttonmakingcompletepotions:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3312342345544188344234324324324322116498):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up3341882116498)
Recovered(Up33123423455441882116498):
sleep 5000
Recovered(Up3341882116498):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334182282116498)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341882116498)
Recovered(Up334182282116498):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243432432432432656523418982323332987554411228698)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up234324432342300034534657567567856023423418982116498)
Recover(Up3000023443543232443243432432432432656523418982323332987554411228698):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432654354354343554356523418982323332987554411228698)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up234324432342300034534657567567856023423418982116498)
Recover(Up30000234435432324432432654354354343554356523418982323332987554411228698):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000243224332443232443234435432324432432656523418982323332987554411228698)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up234324432342300034534657567567856023423418982116498)
Recover(Up30000243224332443232443234435432324432432656523418982323332987554411228698):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443243243243234235432324432432656523418982323332987554411228698)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up234324432342300034534657567567856023423418982116498)
Recover(Up30000234443243243243234235432324432432656523418982323332987554411228698):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343543557657684435432324432432656523418982323332987554411228698)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up234324432342300034534657567567856023423418982116498)
Recover(Up300002343543557657684435432324432432656523418982323332987554411228698):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443432423656735432324432432656523418982323332987554411228698)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up234324432342300034534657567567856023423418982116498)
Recover(Up30000234443432423656735432324432432656523418982323332987554411228698):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30054334567867898797893332987554411228698)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up234324432342300034534657567567856023423418982116498)
Recover(Up30054334567867898797893332987554411228698):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232432343244334432432656523418982323332987554411228698)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up234324432342300034534657567567856023423418982116498)
Recover(Up3000023443543232432343244334432432656523418982323332987554411228698):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234324323424435432324432432656523418982323332987554411228698)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up234324432342300034534657567567856023423418982116498)
Recover(Up30000234324323424435432324432432656523418982323332987554411228698):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418943243243243282323332987554411228698)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up234324432342300034534657567567856023423418982116498)
Recover(Up30000234435432324432432656523418943243243243282323332987554411228698):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30432432342432000234435432324432432656523418982323332987554411228698)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up234324432342300034534657567567856023423418982116498)
Recover(Up30432432342432000234435432324432432656523418982323332987554411228698):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418982323332987554411228698)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up234324432342300034534657567567856023423418982116498)
Recover(Up30000234435432324432432656523418982323332987554411228698):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up3000023423418982116498)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up3341882116498)
Recover(Up234324432342300034534657567567856023423418982116498):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341882116498)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; Search first 3 bank spaces for herb boxes
click 443, 343
sleep 200
	mousemove 92, 134
	click right
	MouseMove, 0, 70, 1, R
	sleep 50
	click left	
sleep 200
	mousemove 138, 134
	click right
	MouseMove, 0, 70, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 1300
   GoTo, Recover(Down110041882116498)
Recovered(Up3341132123123882116498):
PixelSearch, DX2E, DY2E, 55, 100, 206, 156, 0x054502, 1, Fast ; Search first 3 bank spaces for herb bxoes
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
Recover(Down110041882116498):
Recover(Down234020041882116498):
send {ESC}
click 578, 261 ; 28th item
sleep 100
click 707, 480 ; 1st item
sleep 2000
click right 260, 425
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 17000
	Goto, Recovered(Up3341882116498)
   GoTo, Recover(Down234020041882116498)
Recover(Down2000041882116498):	
	GoTo, Recovered(Up3341882116498)
Recover(Down3000041882116498):
SoundBeep
	GoTo, Recovered(Up3341882116498)
Recover(Down4912982116498):
sleep 30000
Recover(Up3000023423418982116498):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3341882116498)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up33123423455441882116498)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down30000234234123432428982116498)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down300002342354645416458982116498)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982116498)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982116498)
else
	click 402, 312
sleep 100
Recover(Down300002342354645416458982116498):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982116498)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982116498)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up3312342345544188344234324324324322116498)
Recover(Down30000234234123432428982116498):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up3341882116498)
Recover(Down3000023423418982116498):
}
Return

Buttoncooking:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33123423455324657123789894418826):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps two seconds
Send {Up Up}
GoTo, Recovered(Up33418826)
Recovered(Up331234234554418826):
sleep 5000
Recovered(Up33418826):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341822826)
else
click 487, 56
sleep 500
GoTo, Recovered(Up33418826)
Recovered(Up3341822826):
PixelSearch, X, Y, 6, 38, 516, 370, 0x293C44, 1, Fast ; Rogues Den Banker ; 0x5A88C1
if Errorlevel = 1
   GoTo, Recover(Up30000234234189826)
   else
	mousemove X, Y
	click right
	MouseMove, 0, 40, 1, R
	sleep 500
	click left
	sleep 2000
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418826)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; Withdraw first bank item
click 443, 343
sleep 1000
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
click 578, 261 ; 28th item
sleep 20
   GoTo, Recover(Down1100418826)
Recovered(Up33411321231238826):
Recover(Down1100418826):
Recover(Down2340200418826):
PixelSearch, DX2E3, DY2E3, 147, 108, 600, 430, 0x001C26, 1, Fast ; Search fOR CAMPFIRE ;  001B24
if Errorlevel = 1
   GoTo, Recovered(Up33418826)
else
	mousemove DX2E3, DY2E3
	click right
	sleep 300
PixelSearch, F345546, H345456743, 147, 108, 600, 430, 0xFFFF00, 1, Fast ; Search fOR CAMPFIRE blue text
if Errorlevel = 1
   GoTo, Recovered(Up33418826)
else
	mousemove F345546, H345456743
sleep 100
	click
	sleep 2000
	click right 255, 421	
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 65000
	Goto, Recovered(Up33418826)
   GoTo, Recover(Down2340200418826)
Recover(Down20000418826):	
	GoTo, Recovered(Up33418826)
Recover(Down30000418826):
SoundBeep
	GoTo, Recovered(Up33418826)
Recover(Down49129826):
sleep 30000
Recover(Up30000234234189826):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up33418826)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up331234234554418826)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down300002342341234324289826)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down3000023423546454164589826)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189826)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189826)
else
	click 402, 312
sleep 100
Recover(Down3000023423546454164589826):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189826)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189826)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up33123423455324657123789894418826)
Recover(Down300002342341234324289826):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up33418826)
Recover(Down30000234234189826):
}
Return

Buttoncookingkarambwans:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3312342345532465712378989441882622):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps two seconds
Send {Up Up}
GoTo, Recovered(Up3341882622)
Recovered(Up33123423455441882622):
sleep 5000
Recovered(Up3341882622):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334182282622)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341882622)
Recovered(Up334182282622):
PixelSearch, X, Y, 6, 38, 516, 370, 0x293C44, 1, Fast ; Rogues Den Banker ; 0x5A88C1
if Errorlevel = 1
   GoTo, Recover(Up3000023423418982622)
   else
	mousemove X, Y
	click right
	MouseMove, 0, 40, 1, R
	sleep 500
	click left
	sleep 2000
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341882622)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; Withdraw first bank item
click 443, 343
sleep 1000
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
click 578, 261 ; 28th item
sleep 20
   GoTo, Recover(Down110041882622)
Recovered(Up3341132123123882622):
Recover(Down110041882622):
Recover(Down234020041882622):
PixelSearch, DX2E3, DY2E3, 147, 108, 600, 430, 0x001C26, 1, Fast ; Search fOR CAMPFIRE ;  001B24
if Errorlevel = 1
   GoTo, Recovered(Up3341882622)
else
	mousemove DX2E3, DY2E3
	click right
	sleep 300
PixelSearch, F345546, H345456743, 147, 108, 600, 430, 0xFFFF00, 1, Fast ; Search fOR CAMPFIRE blue text
if Errorlevel = 1
   GoTo, Recovered(Up3341882622)
else
	mousemove F345546, H345456743
sleep 100
	click
sleep 2000
PixelSearch, F34554622, H34545674322, 335, 407, 407, 466, 0xB1BABB, 1, Fast ; raw karambwan
if Errorlevel = 1
   GoTo, Recovered(Up3322241882345345345622)
else
   GoTo, Recovered(Up3341882343243232423232622)
Recovered(Up3322241882345345345622):
PixelSearch, F34554622, H34545674322, 335, 407, 407, 466, 0xA2ADAE, 1, Fast ; raw karambwan
if Errorlevel = 1
   GoTo, Recovered(Up3341882622)
else
   GoTo, Recovered(Up3341882343243232423232622)
Recovered(Up3341882343243232423232622):
	click right 375, 425
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 2000
send 99
send {enter}
sleep 65000
	Goto, Recovered(Up3341882622)
   GoTo, Recover(Down234020041882622)
Recover(Down2000041882622):	
	GoTo, Recovered(Up3341882622)
Recover(Down3000041882622):
SoundBeep
	GoTo, Recovered(Up3341882622)
Recover(Down4912982622):
sleep 30000
Recover(Up3000023423418982622):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3341882622)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up33123423455441882622)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down30000234234123432428982622)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down300002342354645416458982622)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982622)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982622)
else
	click 402, 312
sleep 100
Recover(Down300002342354645416458982622):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982622)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982622)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up3312342345532465712378989441882622)
Recover(Down30000234234123432428982622):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up3341882622)
Recover(Down3000023423418982622):
}
Return

Buttondroplast20items:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	BlockInput, MouseMove
MouseMove 578, 335 ; 20th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 620, 335 ; 19th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 664, 335 ; 18th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 335 ; 17th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 578, 371 ; 16th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 620, 371 ; 15th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 664, 371 ; 14th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 371 ; 13th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 578, 407 ; 12th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 620, 407 ; 11th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 664, 407 ; 10th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 407 ; 9th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 578, 441 ; 8th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 620, 441 ; 7th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 664, 441 ; 6th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 441 ; 5th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 578, 480 ; 4th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 620, 480 ; 3rd item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 664, 480 ; 2nd item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 480 ; 1st item
Send {Shift Down}
click
Send {Shift Up}
	BlockInput Off
return

Buttondroplast10items:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	BlockInput, MouseMove
MouseMove 664, 407 ; 10th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 407 ; 9th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 578, 441 ; 8th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 620, 441 ; 7th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 664, 441 ; 6th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 441 ; 5th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 578, 480 ; 4th item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 620, 480 ; 3rd item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 664, 480 ; 2nd item
Send {Shift Down}
click
Send {Shift Up}
MouseMove 707, 480 ; 1st item
Send {Shift Down}
click
Send {Shift Up}
	BlockInput Off
return

ButtonOk:
Gui, submit
f1::
Send %Typing%{Enter}
return
f2::
Send %Typing2%{Enter}
return

Buttonspamicelogin:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up4232):
Loop
{
Click 429, 354
sleep 200
}
Return

Buttonnaturerunesthievinginardougne:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	BlockInput, MouseMove
Recovered(Up33456758343):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
Recovered(Up33):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, PX, PY, 538, 77, 568, 106, 0x131313, 1, Fast ; Checking Health Full
if Errorlevel = 0
   GoTo, Recover(Down1100)
else
PixelSearch, X, Y, 147, 126, 257, 237, 0x21324B, 1, Fast ; Search for Chest
if Errorlevel = 1
   GoTo, Recover(Down2001)
   else
	mousemove X, Y
	click right X, Y
	sleep 1000
	MouseMove, 0, 40, 1, R	
	click left
	sleep 500
}
Recover(Down2001):
sleep 30000
Recover(Up47847467846731111):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up33)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recover(Down478247467846731111)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down478247467846731111)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down47847467846731111)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down47847467846731111)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down47847467846731111)
else
	click 402, 312
sleep 100
Recover(Down47847467846731111):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down47847467846731111)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down47847467846731111)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
	Goto, Recovered(Up33456758343)
Recover(Down478247467846731111):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up47847467846731111)
Recover(Down4784746784673):
	GoTo, Recovered(Up33)
Return
Recover(Down1100):
Soundbeep
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 550, 235, 740, 500, 0x455A74, 1, Fast ; Check Invent for Shark
if Errorlevel = 1
   GoTo, Recover(Down2340200)
	mousemove XXXXXX, YYYYYY
	click XXXXXX, YYYYYY
	GoTo, Recovered(Up33)
Recover(Down2340200):
send {ESC}
PixelSearch, XX, YY, 550, 235, 740, 500, 0x073986, 1, Fast ; Check Invent for Lobsters
if Errorlevel = 1
   GoTo, Recover(Down20000)
	mousemove XX, YY
	click XX, YY
	GoTo, Recovered(Up33)
Recover(Down20000):
send {ESC}
PixelSearch, XXX, YYY, 550, 235, 740, 500, 0xC1C2C9, 1, Fast ; Check Invent for Cakes
if Errorlevel = 1
   GoTo, Recover(Down30000)
	mousemove XXX, YYY
	click XXX, YYY
	GoTo, Recovered(Up33)
Recover(Down30000):
send {F10}
sleep 1000
PixelSearch, XXX3, YYY3, 574, 436, 710, 470, 0x202393, 1, Fast ; Log out if no food
if Errorlevel = 1
	GoTo, Recover(Down30000)
	else
	mousemove XXX3, YYY3
	click XXX3, YYY3
	sleep 13000
		GoTo, Recover(Down30000)
return

Buttonknightsofardougne:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33234234234124583):
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
Recovered(Up3383):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, PX, PY, 545, 87, 570, 93, 0x131313, 1, Fast ; Checking Health Full
if Errorlevel = 0
   GoTo, Recover(Down110083)
else
PixelSearch, X, Y, 127, 111, 435, 345, 0x700632, 1, Fast ; Search for Knight of Ardougne purple
if Errorlevel = 1
   GoTo, Recovered(Up3345343545345323423483)
   else
	click %X%, %Y%
sleep 2000
   GoTo, Recovered(Up3383)
Recovered(Up3345343545345323423483):
PixelSearch, X41, Y41, 127, 111, 435, 345, 0x700636, 1, Fast ; Search for Knight of Ardougne purple
if Errorlevel = 1
   GoTo, Recovered(Up345343453435345343545345383)
   else
	click %X41%, %Y41%
sleep 2000
   GoTo, Recovered(Up3383)
Recovered(Up345343453435345343545345383):
PixelSearch, X412, Y412, 127, 111, 435, 345, 0x480220, 1, Fast ; Search for Knight of Ardougne purple
if Errorlevel = 1
   GoTo, Recovered(Up3345343545345383)
   else
	click %X412%, %Y412%
sleep 2000
   GoTo, Recovered(Up3383)
Recovered(Up3345343545345383):
PixelSearch, X76, Y76, 127, 111, 435, 345, 0x03094A, 1, Fast ; Search for Knight of Ardougne red
if Errorlevel = 1
   GoTo, Recover(Up478474678324324324342324673111183)
   else
	click %X76%, %Y76%
sleep 2000
   GoTo, Recovered(Up3383)
Recover(Up478474678324324324342324673111183):
PixelSearch, X7611, Y7611, 127, 111, 435, 345, 0x050851, 1, Fast ; Search for Knight of Ardougne red
if Errorlevel = 1
   GoTo, Recover(Up47847467846732343243427676878111183)
   else
	click %X7611%, %Y7611%
sleep 2000
   GoTo, Recovered(Up3383)
Recover(Up47847467846732343243427676878111183):
PixelSearch, X76113, Y76113, 127, 111, 435, 345, 0x050C6C, 1, Fast ; Search for Knight of Ardougne red
if Errorlevel = 1
   GoTo, Recover(Up4784746784673111183)
   else
	click %X76113%, %Y76113%
sleep 500
   GoTo, Recovered(Up3383)
}
Recover(Down200183):
sleep 30000
Recover(Up4784746784673111183):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3383)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recover(Down47824746784673111183)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down47824746784673111183)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down4784746784673111183)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down4784746784673111183)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down4784746784673111183)
else
	click 402, 312
sleep 100
Recover(Down4784746784673111183):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down4784746784673111183)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down4784746784673111183)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
	Goto, Recovered(Up33234234234124583)
Recover(Down47824746784673111183):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up4784746784673111183)
Recover(Down478474678467383):
	GoTo, Recovered(Up3383)
Return
Recover(Down110083):
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 550, 235, 740, 500, 0x455A74, 1, Fast ; Check Invent for Shark
if Errorlevel = 1
   GoTo, Recover(Down234020083)
	mousemove XXXXXX, YYYYYY
	click XXXXXX, YYYYYY
	GoTo, Recovered(Up3383)
Recover(Down234020083):
send {ESC}
PixelSearch, XX, YY, 550, 235, 740, 500, 0x073986, 1, Fast ; Check Invent for Lobsters
if Errorlevel = 1
   GoTo, Recover(Down20546544343232400083)
	mousemove XX, YY
	click XX, YY
	GoTo, Recovered(Up3383)
Recover(Down20546544343232400083):
PixelSearch, XX7, YY7, 550, 235, 740, 500, 0x0B4BAE, 1, Fast ; Check Invent for Lobsters
if Errorlevel = 1
   GoTo, Recover(Down2000083)
	mousemove XX7, YY7
	click XX7, YY7
	GoTo, Recovered(Up3383)
Recover(Down2000083):
send {ESC}
PixelSearch, XXX, YYY, 550, 235, 740, 500, 0xC1C2C9, 1, Fast ; Check Invent for Cakes
if Errorlevel = 1
   GoTo, Recover(Down3000083)
	mousemove XXX, YYY
	click XXX, YYY
	GoTo, Recovered(Up3383)
Recover(Down3000083):
send {F10}
sleep 1000
click 642, 518
sleep 2000
click 728, 482
sleep 2000 
click 639, 451
return

Buttonthievingmasterfarmer:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up332342342341245832):
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
Recovered(Up33832):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, PX, PY, 545, 87, 570, 93, 0x131313, 1, Fast ; Checking Health Full
if Errorlevel = 0
   GoTo, Recover(Down1100832)
else
PixelSearch, X, Y, 6, 38, 515, 370, 0x1B3F4D, 1, Fast ; Search for masterfarmer colour 1
if Errorlevel = 1
   GoTo, Recovered(Up33453435453453234234832)
   else
	click %X%, %Y%
sleep 1000
   GoTo, Recovered(Up33832)
Recovered(Up33453435453453234234832):
PixelSearch, X41, Y41, 6, 38, 515, 370, 0x132D37, 1, Fast ; Search for masterfarmer colour 2 
if Errorlevel = 1
   GoTo, Recovered(Up3453434534353453435453453832)
   else
	click %X41%, %Y41%
sleep 1000
   GoTo, Recovered(Up33832)
Recovered(Up3453434534353453435453453832):
PixelSearch, X412, Y412, 6, 38, 515, 370, 0x686E73, 1, Fast ; Search for masterfarmer colour 2
if Errorlevel = 1
   GoTo, Recovered(Up33832)
   else
	click %X412%, %Y412%
sleep 1000
   GoTo, Recovered(Up33832)
Recover(Down2001832):
sleep 30000
Recover(Up47847467846731111832):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up33832)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recover(Down478247467846731111832)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down478247467846731111832)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down47847467846731111832)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down47847467846731111832)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down47847467846731111832)
else
	click 402, 312
sleep 100
Recover(Down47847467846731111832):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down47847467846731111832)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down47847467846731111832)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
	Goto, Recovered(Up332342342341245832)
Recover(Down478247467846731111832):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up47847467846731111832)
Recover(Down4784746784673832):
	GoTo, Recovered(Up33832)
Return
Recover(Down1100832):
Soundbeep
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 550, 235, 740, 500, 0x455A74, 1, Fast ; Check Invent for Shark
if Errorlevel = 1
   GoTo, Recover(Down2340200832)
	mousemove XXXXXX, YYYYYY
	click XXXXXX, YYYYYY
	GoTo, Recovered(Up33832)
Recover(Down2340200832):
send {ESC}
PixelSearch, XX, YY, 550, 235, 740, 500, 0x073986, 1, Fast ; Check Invent for Lobsters
if Errorlevel = 1
   GoTo, Recover(Down205465443432324000832)
	mousemove XX, YY
	click XX, YY
	GoTo, Recovered(Up33832)
Recover(Down205465443432324000832):
PixelSearch, XX7, YY7, 550, 235, 740, 500, 0x0B4BAE, 1, Fast ; Check Invent for Lobsters
if Errorlevel = 1
   GoTo, Recover(Down20000832)
	mousemove XX7, YY7
	click XX7, YY7
	GoTo, Recovered(Up33832)
Recover(Down20000832):
send {ESC}
PixelSearch, XXX, YYY, 550, 235, 740, 500, 0xC1C2C9, 1, Fast ; Check Invent for Cakes
if Errorlevel = 1
   GoTo, Recover(Down30000832)
	mousemove XXX, YYY
	click XXX, YYY
	GoTo, Recovered(Up33832)
Recover(Down30000832):
send {F10}
sleep 1000
click 642, 518
sleep 2000
click 728, 482
sleep 2000 
click 639, 451
}
return

Buttonthievingmen:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
Recovered(Up33833):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, PX, PY, 545, 87, 570, 93, 0x131313, 1, Fast ; Checking Health Full
if Errorlevel = 0
   GoTo, Recover(Down1100833)
else
PixelSearch, X, Y, 5, 36, 517, 370, 0x12120A, 1, Fast ; Search for man
if Errorlevel = 1
   GoTo, Recovered(Up33453435453453833)
   else
	mousemove X, Y
	click right X, Y
	sleep 1000
	MouseMove, 0, 40, 1, R	
	click left
	sleep 500
   GoTo, Recovered(Up33833)
Recovered(Up33453435453453833):
PixelSearch, X76, Y76, 5, 36, 517, 370, 0x152424, 1, Fast ; Search for MAN
if Errorlevel = 1
   GoTo, Recovered(Up33833)
   else
	mousemove X76, Y76
	click right X76, Y76
	sleep 1000
	MouseMove, 0, 40, 1, R	
	click left
	sleep 500
   GoTo, Recovered(Up33833)
}
Recover(Down2001833):
sleep 30000
Recover(Up47847467846731111833):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up33833)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recover(Down478247467846731111833)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down478247467846731111833)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down47847467846731111833)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down47847467846731111833)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down47847467846731111833)
else
	click 402, 312
sleep 100
Recover(Down47847467846731111833):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down47847467846731111833)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down47847467846731111833)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
	Goto, Recovered(Up33833)
Recover(Down478247467846731111833):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up47847467846731111833)
Recover(Down4784746784673833):
	GoTo, Recovered(Up33833)
Return
Recover(Down1100833):
Soundbeep
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 550, 235, 740, 500, 0x455A74, 1, Fast ; Check Invent for Shark
if Errorlevel = 1
   GoTo, Recover(Down2340200833)
	mousemove XXXXXX, YYYYYY
	click XXXXXX, YYYYYY
	GoTo, Recovered(Up33833)
Recover(Down2340200833):
send {ESC}
PixelSearch, XX, YY, 550, 235, 740, 500, 0x073986, 1, Fast ; Check Invent for Lobsters
if Errorlevel = 1
   GoTo, Recover(Down20054364645457600833)
	mousemove XX, YY
	click XX, YY
	GoTo, Recovered(Up33833)
Recover(Down20054364645457600833):
PixelSearch, XX7, YY7, 550, 235, 740, 500, 0x0B4BAE, 1, Fast ; Check Invent for Lobsters
if Errorlevel = 1
   GoTo, Recover(Down20000833)
	mousemove XX7, YY7
	click XX7, YY7
	GoTo, Recovered(Up33833)
Recover(Down20000833):
send {ESC}
PixelSearch, XXX, YYY, 550, 235, 740, 500, 0xC1C2C9, 1, Fast ; Check Invent for Cakes
if Errorlevel = 1
   GoTo, Recover(Down30000833)
	mousemove XXX, YYY
	click XXX, YYY
	GoTo, Recovered(Up33833)
Recover(Down30000833):
send {F10}
sleep 1000
PixelSearch, XXX3, YYY3, 574, 436, 710, 470, 0x202393, 1, Fast ; Log out if no food
if Errorlevel = 1
	GoTo, Recover(Down30000833)
	else
	mousemove XXX3, YYY3
	click XXX3, YYY3
	sleep 13000
		GoTo, Recover(Down30000833)
return

Buttonthievingwarriors:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
Recovered(Up338332):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, PX, PY, 545, 87, 570, 93, 0x131313, 1, Fast ; Checking Health Full
if Errorlevel = 0
   GoTo, Recover(Down11008332)
else
PixelSearch, X, Y, 5, 36, 517, 370, 0x39A1DC, 1, Fast ; Search for warrior woman
if Errorlevel = 1
   GoTo, Recovered(Up334534354534538332)
   else
	mousemove X, Y
	click right X, Y
	sleep 1000
	MouseMove, 0, 24, 1, R	
	click left
	sleep 500
   GoTo, Recovered(Up338332)
Recovered(Up334534354534538332):
PixelSearch, X76, Y76, 5, 36, 517, 370, 0x41A7E0, 1, Fast ; Search for warrior woman
if Errorlevel = 1
   GoTo, Recovered(Up338332)
   else
	mousemove X76, Y76
	click right X76, Y76
	sleep 1000
	MouseMove, 0, 24, 1, R	
	click left
	sleep 500
   GoTo, Recovered(Up338332)
}
Recover(Down20018332):
sleep 30000
Recover(Up478474678467311118332):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up338332)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recover(Down4782474678467311118332)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down4782474678467311118332)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down478474678467311118332)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down478474678467311118332)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down478474678467311118332)
else
	click 402, 312
sleep 100
Recover(Down478474678467311118332):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down47847467846731111833)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down478474678467311118332)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
	Goto, Recovered(Up338332)
Recover(Down4782474678467311118332):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up478474678467311118332)
Recover(Down47847467846738332):
	GoTo, Recovered(Up338332)
Return
Recover(Down11008332):
Soundbeep
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 550, 235, 740, 500, 0x455A74, 1, Fast ; Check Invent for Shark
if Errorlevel = 1
   GoTo, Recover(Down23402008332)
	mousemove XXXXXX, YYYYYY
	click XXXXXX, YYYYYY
	GoTo, Recovered(Up338332)
Recover(Down23402008332):
send {ESC}
PixelSearch, XX, YY, 550, 235, 740, 500, 0x073986, 1, Fast ; Check Invent for Lobsters
if Errorlevel = 1
   GoTo, Recover(Down20000345345345347678)
	mousemove XX, YY
	click XX, YY
	GoTo, Recovered(Up338332)
Recover(Down20000345345345347678):
PixelSearch, XX7, YY7, 550, 235, 740, 500, 0x0B4BAE, 1, Fast ; Check Invent for Lobsters
if Errorlevel = 1
   GoTo, Recover(Down200008332)
	mousemove XX7, YY7
	click XX7, YY7
	GoTo, Recovered(Up338332)
Recover(Down200008332):
send {ESC}
PixelSearch, XXX, YYY, 550, 235, 740, 500, 0xC1C2C9, 1, Fast ; Check Invent for Cakes
if Errorlevel = 1
   GoTo, Recover(Down300008332)
	mousemove XXX, YYY
	click XXX, YYY
	GoTo, Recovered(Up338332)
Recover(Down300008332):
send {F10}
sleep 1000
PixelSearch, XXX3, YYY3, 574, 436, 710, 470, 0x202393, 1, Fast ; Log out if no food
if Errorlevel = 1
	GoTo, Recover(Down300008332)
	else
	mousemove XXX3, YYY3
	click XXX3, YYY3
	sleep 13000
		GoTo, Recover(Down300008332)
return

Buttonbronzearrows:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	Loop
{
	BlockInput, MouseMove
mousemove 397, 214
click right
sleep 50
mousemove 397, 284
click left
sleep 50
}

return

Buttonironarrows:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	Loop
{
	BlockInput, MouseMove
mousemove 443, 214
click right
sleep 50
mousemove 443, 284
click left
sleep 50
}

return

return

Buttonsteelarrows:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	Loop
{
	BlockInput, MouseMove
mousemove 492, 214
click right
sleep 50
mousemove 492, 284
click left
sleep 50
}

return

Buttonearthrunes:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	Loop
{
	BlockInput, MouseMove
sleep 100
mousemove 191, 112
click right
sleep 100
mousemove 191, 197
click left
sleep 100
}

return

Buttonfirerunes:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	Loop
{
	BlockInput, MouseMove
sleep 100
mousemove 238, 112
click right
sleep 100
mousemove 238, 197
click left
sleep 100
}

return

Buttonmindrunes:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	Loop
{
	BlockInput, MouseMove
sleep 100
mousemove 285, 112
click right
sleep 100
mousemove 285, 197
click left
sleep 100
}

return

Buttonbodyrunes:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	Loop
{
	BlockInput, MouseMove
sleep 100
mousemove 332, 112
click right
sleep 100
mousemove 332, 197
click left
sleep 100
}

return

Buttonchaosrunes:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	Loop
{
	BlockInput, MouseMove
sleep 100
mousemove 380, 112
click right
sleep 100
mousemove 380, 197
click left
sleep 100
}

return

Buttondeathrunes:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	Loop
{
	BlockInput, MouseMove
sleep 100
mousemove 426, 112
click right
sleep 100
mousemove 426, 197
click left
sleep 100
}

return

Buttonbloodrunes:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	Loop
{
	BlockInput, MouseMove
sleep 100
mousemove 97, 157
click right
sleep 100
mousemove 97, 242
click left
sleep 100
}

return

Buttonsoulrunes:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	Loop
{
	BlockInput, MouseMove
sleep 100
mousemove 191, 157
click right
sleep 100
mousemove 191, 242
click left
sleep 100
}

return

Buttonastralrunes:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	Loop
{
	BlockInput, MouseMove
sleep 100
mousemove 239, 157
click right
sleep 100
mousemove 239, 242
click left
sleep 100
}

return

Buttonfletching:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	Loop
{
	BlockInput, MouseMove
mousemove 707, 471
click left
mousemove 662, 471
click left
}

return

Buttonloseskullhouse:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	Loop
{
	BlockInput, MouseMove
PixelSearch, PX, PY, 172, 77, 1135, 676, 0x033931, 1, Fast
if Errorlevel = 0
	mousemove PX, PY
	click PX, PY
	sleep 2500
PixelSearch, XX, XY, 172, 77, 1135, 676, 0xE8E6E6, 1, Fast
if Errorlevel = 0
	mousemove XX, XY
	click XX, XY
	sleep 2500

}

return

Buttondetectwhitedots:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3):
Loop
{
	BlockInput, MouseMove
PixelSearch, PX, PY, 1211, 40, 1363, 191, 0xECECEC, 1, Fast
if Errorlevel = 0
soundbeep
}
Recover(Down3):
Soundbeep
sleep 5000
PixelSearch, DX, DY, 127, 81, 215, 155, 0xB9C8D1, 1, Fast
	mousemove DX, DY
	click DX, DY
	sleep 3500
   GoTo, Recovered(Up3)
Return

Buttonsuperheatitem:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Loop
{
	BlockInput, MouseMove
send {F6}
click 1267, 528
sleep 100
click 1306, 668
sleep 1500
}
Return

Buttonhighalchlastitem:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up331):
Loop
{
	BlockInput, MouseMove
WinActivate, ahk_class SunAwtFrame
PixelSearch, PX, PY, 1179, 75, 1211, 108, 0x131313, 1, Fast ; Check Health
if Errorlevel = 0
   GoTo, Recover(Down11001)
else
send {F6}
PixelSearch, X, Y, 701, 345, 730, 373, 0x09D2D2, 1, Fast  ; Check for High alch
if Errorlevel = 1
   GoTo, Recover(Down20011)
   else
	mousemove X, Y
	click left
	sleep 100
	GoTo, Recover(Down200112)
	sleep 2000
}
Recover(Down200112):
click 706, 478
sleep 2300
GoTo, Recovered(Up331)
Return
Recover(Down20011):
sleep 50
Recover(Up30000234234163):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up331)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recover(Down300002342341234324263)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down300002342341234324263)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down3000023423546454164563)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234163)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234163)
else
	click 402, 312
sleep 100
Recover(Down3000023423546454164563):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234163)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234163)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
	Goto, Recovered(Up331)
Recover(Down300002342341234324263):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up331)
Recover(Down30000234234163):
Return
Recover(Down11001):
Soundbeep
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 1158, 438, 1345, 692, 0x455A74, 1, Fast ; search for sharks
if Errorlevel = 1
   GoTo, Recover(Down23402001)
	mousemove XXXXXX, YYYYYY
	click XXXXXX, YYYYYY
	GoTo, Recovered(Up331)
Recover(Down23402001):
send {ESC}
PixelSearch, XX, YY, 1158, 438, 1345, 692, 0x073986, 1, Fast ; search for lobsters
if Errorlevel = 1
   GoTo, Recover(Down200001)
	mousemove XX, YY
	click XX, YY
	GoTo, Recovered(Up331)
Recover(Down200001):
send {ESC}
PixelSearch, XXX, YYY, 1158, 438, 1345, 692, 0xC1C2C9, 1, Fast ; Search for cakes
if Errorlevel = 1
   GoTo, Recover(Down300001)
	mousemove XXX, YYY
	click XXX, YYY
	GoTo, Recovered(Up331)
Recover(Down300001):
sleep 1000
PixelSearch, XXX3, YYY3, 632, 501, 657, 352, 0x2F4368, 1, Fast ; Click on logout door
if Errorlevel = 1
	GoTo, Recover(Down300001)
	else
	mousemove XXX3, YYY3
	click XXX3, YYY3
PixelSearch, XX2X3, YY2Y3, 575, 436, 712, 446, 0x181A6A, 1, Fast ; click the big red logout button
if Errorlevel = 1
	GoTo, Recover(Down54353456)
	else
	mousemove XX2X3, YY2Y3
	click XX2X3, YY2Y3
	GoTo, Recover(Down543533424564456)
Recover(Down54353456):
PixelSearch, X1X2X3, Y1Y2Y3, 711, 467, 745, 498, 0x233D5B, 1, Fast ; Checking for logout door in world select screen
if Errorlevel = 1
	GoTo, Recover(Down54353456)
	else
	mousemove X1X2X3, Y1Y2Y3
	click X1X2X3, Y1Y2Y3
Recover(Down543533424564456):
return

Buttoncannonballsneitz:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up334184194556567645734342565463261):
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
   GoTo, Recovered(Up334184161)
Recovered(Up33418419261):
sleep 5000
Recovered(Up334184161):
Loop
{
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3341678234873234289221387984161):
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341826575675624161)
else
GoTo, Recovered(Up334187862342324234234344161)
GoTo, Recovered(Up334184161)
Recovered(Up3341826575675624161):
PixelSearch, X62146, Y62146, 10, 206, 151, 343, 0x0A2F43, 1, Fast ; Checking not standing at furnace
if Errorlevel = 1
	GoTo, Recovered(Up33416782348789221387984161)
   else
	mousemove X62146, Y62146
	sleep 500
	click left
	sleep 7000
   	GoTo, Recovered(Up334184161)
Recovered(Up33416782348789221387984161):
PixelSearch, X621461, Y621461, 10, 206, 151, 343, 0x0C354C, 1, Fast ; Checking not standing at furnace
if Errorlevel = 1
	GoTo, Recovered(Up3341845756767224161)
   else
	mousemove X621461, Y621461
	sleep 500
	click left
	sleep 7000
   	GoTo, Recovered(Up334184161)
Recovered(Up3341845756767224161):
PixelSearch, X6214611, Y6214611, 10, 206, 151, 343, 0x082C40, 1, Fast ; Checking not standing at furnace
if Errorlevel = 1
	GoTo, Recovered(Up33418224161)
   else
	mousemove X6214611, Y6214611          
	sleep 500
	click left
	sleep 7000
   	GoTo, Recovered(Up334184161)
Recovered(Up33418224161):
PixelSearch, X64, Y64, 230, 141, 400, 300, 0x0C354C, 1, Fast ; Neitz Bank Chest Search
if Errorlevel = 1
   GoTo, Recovered(Up334187862342344161)
   else
	mousemove X64, Y64
	sleep 500
	click left
	sleep 2000
   GoTo, Recovered(Up334187862342324234234344161)
Recovered(Up334187862342344161):
PixelSearch, X64D, Y64D, 230, 141, 400, 300, 0x0A2F43, 1, Fast ; Neitz Bank Chest Search
if Errorlevel = 1
   GoTo, Recover(Up300002453345345345765131)
   else
	mousemove X64D, Y64D
	sleep 500
	click left
	sleep 2000
Recovered(Up334187862342324234234344161):
PixelSearch, DX, DY, 55, 100, 206, 156, 0x6B6B76, 1, Fast ; Search first 3 bank spaces for steel bars
if Errorlevel = 1
   GoTo, Recovered(Up3341512312312464756784161)
else
	mousemove DX, DY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 100, 1, R
	Click left	
sleep 500
	click 487 56
sleep 2000
	Goto, Recover(Down11004184161)
Recovered(Up3341512312312464756784161):
PixelSearch, DXB, DYB, 55, 100, 206, 156, 0x6D6D78, 1, Fast ; Search first 3 bank spaces for steel bars
if Errorlevel = 1
   GoTo, Recovered(Up33415464756784161)
else
	mousemove DXB, DYB
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 100, 1, R
	Click left	
sleep 500
	click 487 56
sleep 2000
	Goto, Recover(Down11004184161)
Recovered(Up33415464756784161):
PixelSearch, DSX, DSY, 55, 100, 206, 156, 0x6E6F7B, 1, Fast ; Search first 3 bank spaces for steel bars
if Errorlevel = 1
   GoTo, Recovered(Up334184161)
else
	mousemove DSX, DSY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 100, 1, R
	Click left	
sleep 500
	click 487 56
sleep 2000
Recover(Down11004184161):
send {ESC}
PixelSearch, XXXXXNX, YYYYYNY, 551, 287, 738, 496, 0x6B6B76, 1, Fast ; Search Invent for steel bars
if Errorlevel = 1
   GoTo, Recovered(Up334181234235635764161)
else
	mousemove XXXXXNX, YYYYYNY
	click XXXXXNX, YYYYYNY
sleep 1000
   GoTo, Recover(Down23402004184161)
Recovered(Up334181234235635764161):
PixelSearch, XX2XXXX, YY2YYYY, 551, 287, 738, 496, 0x6D6D78, 1, Fast ; Search Invent for steel bars
if Errorlevel = 1
   GoTo, Recovered(Up334184161)
else
	mousemove XX2XXXX, YY2YYYY
	click XX2XXXX, YY2YYYY
sleep 1000
   GoTo, Recover(Down23402004184161)
PixelSearch, XXXXXX, YYYYYY, 551, 287, 738, 496, 0x6B6B76, 1, Fast ; Search Invent for steel bars
if Errorlevel = 1
   GoTo, Recovered(Up334184161)
else
	mousemove XXXXXX, YYYYYY
	click XXXXXX, YYYYYY
sleep 1000
Recover(Down23402004184161):
send {ESC}
PixelSearch, XNX, YNY, 229, 37, 522, 165, 0x51696F, 1, Fast ; Search for furnace
if Errorlevel = 1
   GoTo, Recovered(Up3134142353456484161)
	mousemove XNX, YNY
	click XNX, YNY
sleep 8000
   GoTo, Recover(Down200004184161)
Recovered(Up3134142353456484161):
PixelSearch, XX, YY, 229, 37, 522, 165, 0x556E74, 1, Fast ; Search for furnace
if Errorlevel = 1
   GoTo, Recovered(Up3343764389184161)
	mousemove XX, YY
	click XX, YY
	sleep 9000
   GoTo, Recover(Down200004184161)
Recovered(Up3343764389184161):
PixelSearch, GXX121, GYY121, 229, 37, 522, 165, 0x536B72, 1, Fast ; Search for furnace
if Errorlevel = 1
   GoTo, Recovered(Up3324234234923434290342344184161)
	mousemove GXX121, GYY121
	click GXX121, GYY121
	sleep 9000
   GoTo, Recover(Down200004184161)
Recovered(Up3324234234923434290342344184161):
PixelSearch, XX121, YY121, 229, 37, 522, 165, 0x577076, 1, Fast ; Search for furnace
if Errorlevel = 1
   GoTo, Recovered(Up33234290342344184161)
	mousemove XX121, YY121
	click XX121, YY121
	sleep 9000
   GoTo, Recover(Down200004184161)
Recovered(Up33234290342344184161):
PixelSearch, XX121J, YY121J, 229, 37, 522, 165, 0x5C767D, 1, Fast ; Search for furnace
if Errorlevel = 1
   GoTo, Recovered(Up334184161)
	mousemove XX121J, YY121J
	click XX121J, YY121J
	sleep 9000
   GoTo, Recover(Down200004184161)
Recover(Down200004184161):
PixelSearch, XXTX, YYTY, 186, 385, 337, 500, 0x6E6E79, 1, Fast ; Search Chat Box for steel bar Option
if Errorlevel = 1
   GoTo, Recover(Down30000234112341231122323478856512843161)
	mousemove XXTX, YYTY
	click right XXTX, YYTY
	MouseMove, 0, 70, 1, R
click left
sleep 2000
sleep 155000	
	GoTo, Recovered(Up334184161)
Recover(Down30000234112341231122323478856512843161):
PixelSearch, X4XTX, Y4YTY, 186, 385, 337, 500, 0x303136, 1, Fast ; Search Chat Box for steel bar Option
if Errorlevel = 1
   GoTo, Recover(Down3000023441231232347889184161)
	mousemove X4XTX, Y4YTY
	click right X4XTX, Y4YTY
	MouseMove, 0, 70, 1, R
click left
sleep 2000
sleep 155000	
	GoTo, Recovered(Up334184161)
Recover(Down3000023441231232347889184161):
PixelSearch, XXX, YYY, 186, 385, 337, 500, 0x6B6B76, 1, Fast ; Search Chat Box for steel bar Option
if Errorlevel = 1
   GoTo, Recover(Down3000041231237889184161)
	mousemove XXX, YYY
	click right XXX, YYY
	MouseMove, 0, 70, 1, R
click left
sleep 2000
sleep 155000	
	GoTo, Recovered(Up334184161)
Recover(Down3000041231237889184161):
PixelSearch, XQXX, YQYY, 186, 385, 337, 500, 0x2D2F33, 1, Fast ; Search Chat Box for steel bar option
if Errorlevel = 1
   GoTo, Recover(Down300234768345004123123123184161)
	mousemove XQXX, YQYY
	click right XQXX, YQYY
	MouseMove, 0, 70, 1, R
click left
sleep 2000
sleep 155000	
	GoTo, Recovered(Up334184161)
Recover(Down300234768345004123123123184161):
PixelSearch, XQXgX, YQYgY, 186, 385, 337, 500, 0x6D6D78, 1, Fast ; Search Chat Box for steel bar option
if Errorlevel = 1
   GoTo, Recover(Down300004123123123184161)
	mousemove XQXgX, YQYgY
	click right XQXgX, YQYgY
	MouseMove, 0, 70, 1, R
click left
sleep 2000
sleep 155000	
	GoTo, Recovered(Up334184161)
Recover(Down300004123123123184161):
PixelSearch, XQXEX, YQYEY, 186, 385, 337, 500, 0x51525B, 1, Fast ; Search Chat Box for steel bar option
if Errorlevel = 1
   GoTo, Recovered(Up334184161)
	mousemove XQXEX, YQYEY
	click right XQXEX, YQYEY
	MouseMove, 0, 70, 1, R
click left
sleep 2000
sleep 155000	
	GoTo, Recovered(Up334183434543564161)
Recovered(Up334183434543564161):
PixelSearch, X624, Y624, 10, 179, 163, 369, 0x0C354C, 1, Fast ; Neitz Bank Chest Search
if Errorlevel = 1
	GoTo, Recovered(Up334167823487984161)
   else
	mousemove X624, Y624
	sleep 500
	click left
	sleep 7000
   	GoTo, Recovered(Up334184161)
}
Recovered(Up334167823487984161):
PixelSearch, X6214, Y6214, 10, 179, 163, 369, 0x0A2F43, 1, Fast ; Neitz Bank Chest Search
if Errorlevel = 1
	GoTo, Recovered(Up33242342334167823487984161)
   else
	mousemove X6214, Y6214
	sleep 500
	click left
	sleep 7000
   	GoTo, Recovered(Up334184161)
Recovered(Up33242342334167823487984161):
PixelSearch, X62148, Y62148, 10, 179, 163, 369, 0x082C40, 1, Fast ; Neitz Bank Chest Search
if Errorlevel = 1
	GoTo, Recovered(Up334167823487984161)
   else
	mousemove X62148, Y62148
	sleep 500
	click left
	sleep 7000
   	GoTo, Recovered(Up334184161)
Return

Buttonfletchingandstringingyews:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up334425634567184192):
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
Recovered(Up334184192):
sleep 5000
Recovered(Up3341841):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334182241)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341841)
Recovered(Up334182241):
PixelSearch, X, Y, 6, 38, 516, 370, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Down4912941)
   else
	mousemove X, Y
	sleep 500
	click left
	sleep 2000
PixelSearch, RX, RY, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334184192)
else
PixelSearch, X, Y, 555, 241, 739, 499, 0x0986A0, 1, Fast ; Deposit Unstrung Yew Longs
if Errorlevel = 1
   GoTo, Recover(Down2001418465768651)
   else
	mousemove X, Y
	sleep 500
	click right
sleep 500
	MouseMove, 0, 100, 1, R
sleep 100
click left
	sleep 2000
   GoTo, Recover(Down200141841)
Recover(Down2001418465768651):
PixelSearch, BX, BY, 555, 241, 739, 499, 0x097C93, 1, Fast ; Deposit Unstrung Yew Longs
if Errorlevel = 1
   GoTo, Recover(Down200141841)
   else
	mousemove BX, BY
	sleep 500
	click right
sleep 500
	MouseMove, 0, 100, 1, R
sleep 100
click left
	sleep 2000
   GoTo, Recover(Down200141841)
Recover(Down200141841):
sleep 50
PixelSearch, DX, DY, 55, 100, 206, 156, 0x022B40, 1, Fast ; Search first 3 bank spaces for yew logs
if Errorlevel = 1
   GoTo, Recovered(Up334154647567841)
else
	mousemove DX, DY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 100, 1, R
	Click left	
sleep 500
	click 487 56
sleep 2000
	Goto, Recover(Down110041841)
Recovered(Up334154647567841):
PixelSearch, DSX, DSY, 55, 100, 206, 156, 0x032C42, 1, Fast ; Search first 3 bank spaces for yew logs
if Errorlevel = 1
   GoTo, Recovered(Up33234365867234897756341841)
else
	mousemove DSX, DSY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 100, 1, R
	Click left	
sleep 500
	click 487 56
sleep 2000
Recover(Down110041841):
send {ESC}
PixelSearch, XXXXXNX, YYYYYNY, 551, 235, 738, 496, 0x595962, 1, Fast ; Search Inventory for Knife
if Errorlevel = 1
   GoTo, Recovered(Up3341812342356357641)
else
	mousemove XXXXXNX, YYYYYNY
	click XXXXXNX, YYYYYNY
sleep 1000
   GoTo, Recover(Down234020041841)
Recovered(Up3341812342356357641):
PixelSearch, XXXXXX, YYYYYY, 551, 235, 738, 496, 0x4D45D4, 1, Fast ; Search Inventory for Knife
if Errorlevel = 1
   GoTo, Recovered(Up3341841)
else
	mousemove XXXXXX, YYYYYY
	click XXXXXX, YYYYYY
sleep 1000
Recover(Down234020041841):
send {ESC}
PixelSearch, XNX, YNY, 551, 235, 738, 496, 0x022B40, 1, Fast ; Search Invent for Yew Logs
if Errorlevel = 1
   GoTo, Recovered(Up31341423534564841)
	mousemove XNX, YNY
	click XNX, YNY
sleep 2000
   GoTo, Recover(Down2000041841)
Recovered(Up31341423534564841):
PixelSearch, XX, YY, 551, 235, 738, 496, 0x032C42, 1, Fast ; Search Invent for Yew Logs
if Errorlevel = 1
   GoTo, Recovered(Up3341841)
	mousemove XX, YY
	click XX, YY
	sleep 2000
Recover(Down2000041841):
PixelSearch, XXX, YYY, 186, 385, 337, 500, 0x054553, 1, Fast ; Search Chat Box for yew Long Option
if Errorlevel = 1
   GoTo, Recover(Down30000412312378891841)
	mousemove XXX, YYY
	click right XXX, YYY
	MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000	
	GoTo, Recovered(Up3341841)
Recover(Down30000412312378891841):
PixelSearch, XQXX, YQYY, 186, 385, 337, 500, 0x033E4B, 1, Fast ; Search Chat Box for yew Long Option
if Errorlevel = 1
   GoTo, Recover(Down3000041231231231841)
	mousemove XQXX, YQYY
	click right XQXX, YQYY
	MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000	
	GoTo, Recovered(Up3341841)
Recover(Down3000041231231231841):
PixelSearch, XQXEX, YQYEY, 186, 385, 337, 500, 0x054351, 1, Fast ; Search Chat Box for yew Long Option
if Errorlevel = 1
   GoTo, Recover(Down3000041841)
	mousemove XQXEX, YQYEY
	click right XQXEX, YQYEY
	MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000	
	GoTo, Recovered(Up3341841)
Recovered(Up33234365867234897756341841):
Recover(Down3000041841):
Recover(Down4912941):
click 445, 344
Recovered(Up3341822423123198):
sleep 5000
Recovered(Up334184198):
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418224198)
else
click 487, 56
sleep 500
GoTo, Recovered(Up334184198)
Recovered(Up33418224198):
PixelSearch, X, Y, 6, 38, 516, 370, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234234123445765324432322343242352613111765131)
   else
	mousemove X, Y
	sleep 500
	click left
	sleep 2000
PixelSearch, RX, RY, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341822423123198)
else
PixelSearch, X, Y, 555, 241, 739, 499, 0x097B92, 1, Fast ; Deposit Strung Yew Longs
if Errorlevel = 1
   GoTo, Recover(Down20014184156756798)
   else
	mousemove X, Y
	sleep 500
	click right
sleep 500
	MouseMove, 0, 100, 1, R
sleep 100
click left
	sleep 2000
   GoTo, Recover(Down20014184198)
Recover(Down20014184156756798):
PixelSearch, JX, JY, 555, 241, 739, 499, 0x045768, 1, Fast ; Deposit Strung Yew Longs different colour
if Errorlevel = 1
   GoTo, Recover(Down20014184198)
   else
	mousemove JX, JY
	sleep 500
	click right
sleep 500
	MouseMove, 0, 100, 1, R
sleep 100
click left
	sleep 2000
   GoTo, Recover(Down20014184198)
Recover(Down20014184198):
sleep 50
PixelSearch, TEDX, TEDY, 551, 235, 738, 496, 0x3F5D69, 1, Fast ; make sure no strings in inventory
if Errorlevel = 1
	   GoTo, Recovered(Down6736574564534534)
   else
	mousemove TEDX, TEDY
	sleep 500
	click right
sleep 500
	MouseMove, 0, 100, 1, R
sleep 100
click left
	sleep 2000
	   GoTo, Recovered(Down6736574564)
Recovered(Down6736574564534534):
PixelSearch, EEDX, EEDY, 551, 235, 738, 496, 0x3D5B67, 1, Fast ; make sure no strings in inventory DIFF COLOUR
if Errorlevel = 1
	   GoTo, Recovered(Down6736574564)
   else
	mousemove EEDX, EEDY
	sleep 500
	click right
sleep 500
	MouseMove, 0, 100, 1, R
sleep 100
click left
	sleep 2000
Recovered(Down6736574564):
PixelSearch, DLXX, DLYY, 55, 100, 206, 156, 0x3F5D69, 1, Fast ; Search first 3 bank spaces for Bow Strings
if Errorlevel = 1
   GoTo, Recovered(Down6736531247)
else
	mousemove DLXX, DLYY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 85, 1, R
	Click left	
sleep 1500
send 14 {enter}
   GoTo, Recovered(Down673657)
Recovered(Down6736531247):
PixelSearch, DLXXW, DLYYW, 55, 100, 206, 156, 0x3D5B67, 1, Fast ; Search first 3 bank spaces for Bow Strings Diff Colour
if Errorlevel = 1
   GoTo, Recovered(Down673657)
else
	mousemove DLXXW, DLYYW
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 85, 1, R
	Click left	
sleep 1500
send 14 {enter}
Recovered(Down673657):
PixelSearch, DTX, DTY, 55, 100, 206, 156, 0x0B92AE, 1, Fast ; Search first 3 bank spaces for Uncut Yew Longs
if Errorlevel = 1
   GoTo, Recovered(Up334184312312198)
else
	mousemove DTX, DTY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 85, 1, R
	Click left	
sleep 1500
send 14 {enter}
	click 487 56	; close bank
sleep 2000
   GoTo, Recover(Down11004184198)
Recovered(Up334184312312198):
PixelSearch, DTX, DTY, 55, 100, 206, 156, 0x045768, 1, Fast ; Search first 3 bank spaces for Uncut Yew Longs diff colour
if Errorlevel = 1
   GoTo, Recovered(Up334184198)
else
	mousemove DTX, DTY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 85, 1, R
	Click left	
sleep 1500
send 14 {enter}
	click 487 56	; close bank
sleep 2000
Recover(Down11004184198):
send {ESC}
PixelSearch, XXWXXXX, YYWYYYY, 551, 235, 738, 496, 0x3F5D69, 1, Fast ; Search Inventory for Strings
if Errorlevel = 1
   GoTo, Recovered(Up3341841654698)
else
	mousemove XXWXXXX, YYWYYYY
	click XXWXXXX, YYWYYYY
sleep 1000
   GoTo, Recover(Down23402004184198)
Recovered(Up3341841654698):
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 551, 235, 738, 496, 0x3D5B67, 1, Fast ; Search Inventory for Strings diff colour
if Errorlevel = 1
   GoTo, Recovered(Up3341824342564198)
else
	mousemove XXXXXX, YYYYYY
	click XXXXXX, YYYYYY
sleep 1000
   GoTo, Recover(Down23402004184198)
Recovered(Up3341824342564198):
PixelSearch, XXXXX1X, YYYYY1Y, 551, 235, 738, 496, 0x3F5E6A, 1, Fast ; Search Inventory for Strings diff colour
if Errorlevel = 1
   GoTo, Recovered(Up334184198)
else
	mousemove XXXXX1X, YYYYY1Y
	click XXXXX1X, YYYYY1Y
sleep 1000
Recover(Down23402004184198):
send {ESC}
PixelSearch, XX, YY, 551, 235, 738, 496, 0x0B92AE, 1, Fast ; Search Invent for Uncut Yew Longs
if Errorlevel = 1
   GoTo, Recovered(Up3341841645645698)
else
	mousemove XX, YY
	click XX, YY
	sleep 2000
   GoTo, Recover(Down200004184198)
Recovered(Up3341841645645698):
send {ESC}
PixelSearch, XXI, YYI, 551, 235, 738, 496, 0x045768, 1, Fast ; Search Invent for Uncut Yew Longs diff colour
if Errorlevel = 1
   GoTo, Recovered(Up3341841)
else
	mousemove XXI, YYI
	click XXI, YYI
	sleep 2000
Recover(Down200004184198):
PixelSearch, XXX, YYY, 186, 385, 337, 500, 0x055362, 1, Fast ; Search Chat Box for yew Long Option
if Errorlevel = 1
   GoTo, Recover(Down300004181231234198)
	mousemove XXX, YYY
	click right XXX, YYY
	MouseMove, 0, 70, 1, R
click left
sleep 19000	
	GoTo, Recovered(Up334184198)
Recover(Down300004181231234198):
PixelSearch, XXXO, YYYO, 186, 385, 337, 500, 0x044654, 1, Fast ; Search Chat Box for yew Long Option DIFF COLOUR
if Errorlevel = 1
   GoTo, Recovered(Up334184198)
	mousemove XXXO, YYYO
	click right XXXO, YYYO
	MouseMove, 0, 70, 1, R
click left
sleep 19000	
	GoTo, Recovered(Up334184198)
}
Return

Buttonstringingmaples:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33412):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 254, 168, 298, 222, 0x44454C, 1, Fast
if Errorlevel = 1
   GoTo, Recovered(Up33412)
   else
	mousemove X, Y
	sleep 500
	click left
	sleep 2000
PixelSearch, X, Y, 555, 241, 739, 499, 0x4D4D55, 1, Fast
if Errorlevel = 1
   GoTo, Recover(Down2001412)
   else
	mousemove X, Y
	sleep 500
	click right
sleep 500
	MouseMove, 0, 100, 1, R
sleep 100
click left
	sleep 2000
   GoTo, Recover(Down2001412)
}
Recover(Down2001412):
sleep 1000
PixelSearch, DX, DY, 330, 107, 445, 218, 0x3E5C68, 1, Fast
if Errorlevel = 1
   GoTo, Recover(Down2001412)
else
	mousemove DX, DY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 85, 1, R
	Click left	
sleep 2000
send 14 {enter}
sleep 2000
PixelSearch, DRX, DRY, 330, 107, 445, 218, 0x4D5469, 1, Fast
if Errorlevel = 1
   GoTo, Recovered(Up33412)
else
	mousemove DRX, DRY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 85, 1, R
	Click left	
sleep 2000
send 14 {enter}
	click 487 56
sleep 2000
Recover(Down1100412):
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 551, 235, 738, 496, 0x3E5C68, 1, Fast
if Errorlevel = 1
   GoTo, Recovered(Up33412)
else
	mousemove XXXXXX, YYYYYY
	click XXXXXX, YYYYYY
sleep 1000
Recover(Down2340200412):
send {ESC}
PixelSearch, XX, YY, 551, 235, 738, 496, 0x565D75, 1, Fast
if Errorlevel = 1
   GoTo, Recovered(Up33412)
	mousemove XX, YY
	click left XX, YY
	sleep 2000
Recover(Down20000412):
PixelSearch, XXX, YYY, 186, 385, 337, 500, 0x555C73, 1, Fast
if Errorlevel = 1
   GoTo, Recover(Down30000412)
	mousemove XXX, YYY
	click right XXX, YYY
sleep 1000
	MouseMove, 0, 60, 1, R
	click left
sleep 17000	
	GoTo, Recovered(Up33412)
Recover(Down30000412):
SoundBeep
	GoTo, Recovered(Up33412)
return

Buttonfletchingwillows:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up33418)
Recovered(Up331234234554418):
sleep 5000
Recovered(Up33418):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341822)
else
click 487, 56
sleep 500
GoTo, Recovered(Up33418)
Recovered(Up3341822):
PixelSearch, X, Y, 6, 38, 516, 370, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Down4912235467899)
   else
	mousemove X, Y
	sleep 500
	click left
	sleep 2000
GoTo, Recovered(Up33418235678922)
Recover(Down4912235467899):
PixelSearch, JX, JY, 558, 38, 722, 195, 0x59EAF6, 1, Fast ; Click Bank on minimap
if Errorlevel = 1
   GoTo, Recovered(Up3341841111)
   else
	mousemove JX, JY
	sleep 500
	click left
	sleep 15000
GoTo, Recovered(Up33418)
Recovered(Up33418235678922):
PixelSearch, RX, RY, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up331234234554418)
else
PixelSearch, X, Y, 555, 241, 739, 499, 0x1C6A72, 1, Fast ; Deposit Unstrung Willow Longs
if Errorlevel = 1
   GoTo, Recover(Down2001418)
   else
	mousemove X, Y
	sleep 500
	click right
sleep 500
	MouseMove, 0, 100, 1, R
sleep 100
click left
	sleep 2000
   GoTo, Recover(Down2001418)
}
Recover(Down2001418):
sleep 50
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0F333B, 1, Fast ; Search first 3 bank spaces for willow logs
if Errorlevel = 1
   GoTo, Recovered(Up33411321231238)
else
	mousemove DX, DY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 100, 1, R
	Click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down1100418)
Recovered(Up33411321231238):
PixelSearch, DX, DY, 55, 100, 206, 156, 0x264951, 1, Fast ; Search first 3 bank spaces for willow logs
if Errorlevel = 1
   GoTo, Recovered(Up33411321231238)
else
	mousemove DX, DY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 100, 1, R
	Click left	
sleep 500
	click 487 56
sleep 2000
Recover(Down1100418):
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 551, 235, 738, 496, 0x595962, 1, Fast ; Search Inventory for Knife
if Errorlevel = 1
   GoTo, Recovered(Up33418)
else
	mousemove XXXXXX, YYYYYY
	click XXXXXX, YYYYYY
sleep 1000
Recover(Down2340200418):
send {ESC}
PixelSearch, XX, YY, 551, 235, 738, 496, 0x0F333B, 1, Fast ; Search Invent for Willow Logs
if Errorlevel = 1
   GoTo, Recovered(Up333423543576418)
	mousemove XX, YY
	click XX, YY
	sleep 2000
GoTo, Recover(Down20000418)
Recovered(Up333423543576418):
PixelSearch, XX, YY, 551, 235, 738, 496, 0x264951, 1, Fast ; Search Invent for Willow Logs
if Errorlevel = 1
   GoTo, Recovered(Up33418)
	mousemove XX, YY
	click XX, YY
	sleep 2000
Recover(Down20000418):
PixelSearch, XXX, YYY, 186, 385, 337, 500, 0x155056, 1, Fast ; Search Chat Box for Willow Long Option
if Errorlevel = 1
   GoTo, Recover(Down30000418)
	mousemove XXX, YYY
	click right XXX, YYY
	MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000	
	GoTo, Recovered(Up33418)
Recover(Down30000418):
SoundBeep
	GoTo, Recovered(Up33418)
Recover(Down49129):
sleep 30000
Recover(Up30000234234189):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up33418)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up331234234554418)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down300002342341234324289)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down3000023423546454164589)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189)
else
	click 402, 312
sleep 100
Recover(Down3000023423546454164589):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up33418)
Recover(Down300002342341234324289):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up33418)
Recover(Down30000234234189):
Return

Buttonfletchingmaples:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up334189123234234232341236):
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
   GoTo, Recovered(Up3341896)
Recovered(Up3341891231236):
sleep 5000
Recovered(Up3341896):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334182296)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341896)
Recovered(Up334182296):
PixelSearch, X2, Y2, 6, 38, 516, 370, 0x1C2B41, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recovered(Down12323436232456785334184111176324)
   else
	mousemove X2, Y2
	sleep 500
	click left
	sleep 2000
   GoTo, Recovered(Up234365335678324184111176)
Recovered(Down12323436232456785334184111176324):
PixelSearch, XBH, YBH, 558, 38, 722, 195, 0x59EAF6, 1, Fast ; Click Bank on minimap
if Errorlevel = 1
   GoTo, Recovered(Up334184111123657892311761421)
   else
	mousemove XBH, YBH
	sleep 500
	click left
	sleep 15000
   GoTo, Recovered(Up234365335678324184111176)
Recovered(Up334184111123657892311761421):
PixelSearch, XTBH, YTBH, 558, 38, 722, 195, 0x4CD6ED, 1, Fast ; Click Bank on minimap
if Errorlevel = 1
   GoTo, Recover(Up3000023423413579)
   else
	mousemove XTBH, YTBH
	sleep 500
	click left
	sleep 15000
GoTo, Recovered(Up3341891231236)
Recovered(Up234365335678324184111176):
PixelSearch, RTFYX, RTFYY, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341891231236)
else
Recovered(Up334189132546768231234231231245346):
PixelSearch, XM, YM, 555, 241, 739, 499, 0x565E76, 1, Fast ; Deposit Unstrung Maple Longs
if Errorlevel = 1
   GoTo, Recover(Down200141812312396)
   else
	mousemove XM, YM
	sleep 500
	click right
sleep 500
	MouseMove, 0, 100, 1, R
sleep 100
click left
	sleep 2000
   GoTo, Recover(Down200141896)
Recover(Down200141812312396):
PixelSearch, XL, YL, 555, 241, 739, 499, 0x4C5468, 1, Fast ; Deposit Unstrung Maple Longs
if Errorlevel = 1
   GoTo, Recover(Down2001423245341896)
   else
	mousemove XL, YL
	sleep 500
	click right
sleep 500
	MouseMove, 0, 100, 1, R
sleep 100
click left
	sleep 2000
   GoTo, Recover(Down200141896)
Recover(Down2001423245341896):
PixelSearch, XDO, YDO, 555, 241, 739, 499, 0x69728F, 1, Fast ; Deposit Unstrung Maple Longs
if Errorlevel = 1
   GoTo, Recover(Down200141896)
   else
	mousemove XDO, YOD
	sleep 500
	click right
sleep 500
	MouseMove, 0, 100, 1, R
sleep 100
click left
	sleep 2000
Recover(Down200141896):
sleep 50
PixelSearch, DX, DY, 55, 100, 206, 156, 0x053052, 1, Fast ; Search first 3 bank spaces for maple logs
if Errorlevel = 1
   GoTo, Recovered(Up3341896342)
else
	mousemove DX, DY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 100, 1, R
	Click left	
sleep 500
	click 487 56
sleep 2000
	Goto, Recover(Down110041896)
Recovered(Up3341896342):
PixelSearch, DHX, DHY, 55, 100, 206, 156, 0x053153, 1, Fast ; Search first 3 bank spaces for maple logs
if Errorlevel = 1
   GoTo, Recovered(Up3341896)
else
	mousemove DHX, DHY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 100, 1, R
	Click left	
sleep 500
	click 487 56
sleep 2000
Recover(Down110041896):
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 551, 235, 738, 496, 0x595962, 1, Fast ; Search Inventory for Knife
if Errorlevel = 1
   GoTo, Recovered(Up3341896123)
else
	mousemove XXXXXX, YYYYYY
	click XXXXXX, YYYYYY
sleep 1000
	Goto, Recovered(Up3341892131236123)
Recovered(Up3341896123):
PixelSearch, XXXXDXX, YYYYDYY, 551, 235, 738, 496, 0x4E4E56, 1, Fast ; Search Inventory for Knife
if Errorlevel = 1
   GoTo, Recovered(Up3341896)
else
	mousemove XXXXDXX, YYYYDYY
	click XXXXDXX, YYYYDYY
sleep 1000
send {ESC}
Recovered(Up3341892131236123):
PixelSearch, XX, YY, 551, 235, 738, 496, 0x053052, 1, Fast ; Search Invent for maple Logs
if Errorlevel = 1
   GoTo, Recovered(Up33418231296)
	mousemove XX, YY
	click XX, YY
	sleep 2000
	Goto, Recover(Down2000041896)
Recovered(Up33418231296):
PixelSearch, XWX, YWY, 551, 235, 738, 496, 0x053153, 1, Fast ; Search Invent for maple Logs
if Errorlevel = 1
   GoTo, Recovered(Up3341896)
	mousemove XWX, YWY
	click XWX, YWY
	sleep 2000
Recover(Down2000041896):
PixelSearch, XXX, YYY, 186, 385, 337, 500, 0x3B3F4F, 1, Fast ; Search Chat Box for maple Long Option
if Errorlevel = 1
   GoTo, Recover(Down300004423421896)
	mousemove XXX, YYY
	click right XXX, YYY
	MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000	
	GoTo, Recovered(Up3341896)
Recover(Down300004423421896):
PixelSearch, XXRX, YYRY, 186, 385, 337, 500, 0x484D61, 1, Fast ; Search Chat Box for maple Long Option
if Errorlevel = 1
   GoTo, Recover(Down3000041896)
	mousemove XXRX, YYRY
	click right XXRX, YYRY
	MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000	
	GoTo, Recovered(Up3341896)
Recover(Down3000041896):
SoundBeep
	GoTo, Recovered(Up3341896)
Recover(Down4912996):
sleep 30000
Recover(Up3000023423413579):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3341896)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recover(Down30000234234123432423579)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down30000234234123432423579)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down300002342354645416453579)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423413579)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423413579)
else
	click 402, 312
sleep 100
Recover(Down300002342354645416453579):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423413579)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423413579)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up334189123234234232341236)
Recover(Down30000234234123432423579):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up3000023423413579)
Recover(Down3000023423413579):
	GoTo, Recovered(Up3341896)
}
Return

Buttoncursejogre:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33412124321278894351):
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
Recovered(Up3341211):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, XDE, YDE, 8, 62, 517, 371, 0x055140, 1, Fast ; Search for Jogre
if Errorlevel = 1
   GoTo, Recovered(Up33345345645641211)
   else
Send {F6}
click 669, 288
	mousemove XDE, YDE
	click XDE, YDE
	sleep 800
   GoTo, Recovered(Up3341211)
Recovered(Up33345345645641211):
PixelSearch, X, Y, 8, 62, 517, 371, 0x055F4A, 1, Fast ; Search for Jogre
if Errorlevel = 1
   GoTo, Recover(Up3002343768784354343434465131)
   else
Send {F6}
click 669, 288
	mousemove X, Y
	click X, Y
	sleep 800
   GoTo, Recovered(Up3341211)
Recover(Down20014112323543211):
PixelSearch, XP, YP, 8, 62, 517, 371, 0x024032, 1, Fast ; Search for Jogre second colour
if Errorlevel = 1
   GoTo, Recovered(Up3341211)
   else
	mousemove XP, YP
	click XP, YP
	sleep 800
   GoTo, Recovered(Up3341211)
}
return

; Auto Login curse alching jogre
Recover(Up3002343768784354343434465131): ; IF COPY PASTE, CHANGE THIS TO UNIQUE
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3341211) ; IF COPY PASTE, CHANGE THIS TO BEGINNING LABEL
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recover(Down47824746784673111145645645644217554)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down47824746784673111145645645644217554)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down4784746784673111145645645644217554)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down4784746784673111145645645644217554)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down4784746784673111145645645644217554)
else
	click 402, 312
sleep 100
Recover(Down4784746784673111145645645644217554):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down4784746784673111145645645644217554)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down4784746784673111145645645644217554)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
	Goto, Recovered(Up33412124321278894351) ; IF COPY PASTE, CHANGE THIS TO BEGINNING LABEL
Recover(Down47824746784673111145645645644217554):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up3002343768784354343434465131) ; CHANGE THIS TO THE SAME UNIQUE
Recover(Down478474678467345645645644217554):
	GoTo, Recovered(Up3341211) ; IF COPY PASTE, CHANGE THIS TO BEGINNING LABEL
return

Buttoncursealchjogre:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33413243452435314521144):
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
Recovered(Up334121144):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 8, 62, 517, 371, 0x055F4A, 1, Fast ; Search for Jogre
if Errorlevel = 1
   GoTo, Recovered(Up33412345342131144)
   else
Send {F6}
click 669, 288
	mousemove X, Y
	click X, Y
	sleep 800
	Send {F6}
	click 722, 364
	sleep 50
	click 711, 478
	sleep 1400
	click 646, 218
   GoTo, Recovered(Up334121144)
Recovered(Up33412345342131144):
PixelSearch, X, Y, 8, 62, 517, 371, 0x055140, 1, Fast ; Search for Jogre
if Errorlevel = 1
   GoTo, Recover(Up300002453345345345744356467234233243434465131)
   else
Send {F6}
click 669, 288
	mousemove X, Y
	click X, Y
	sleep 800
	Send {F6}
	click 722, 364
	sleep 50
	click 711, 478
	sleep 1400
	click 646, 218
   GoTo, Recovered(Up334121144)
Recover(Down2001411232354321144):
PixelSearch, XP, YP, 8, 62, 517, 371, 0x024032, 1, Fast ; Search for Jogre second colour
if Errorlevel = 1
   GoTo, Recovered(Up334121144)
   else
	mousemove XP, YP
	click XP, YP
	sleep 800
	Send {F6}
	click 722, 364
	sleep 50
	click 711, 478
	sleep 1400
	click 646, 218
   GoTo, Recovered(Up334121144)
}
return

; Auto Login curse alching jogre
Recover(Up300002453345345345744356467234233243434465131): ; IF COPY PASTE, CHANGE THIS TO UNIQUE
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up334121144) ; IF COPY PASTE, CHANGE THIS TO BEGINNING LABEL
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recover(Down478247467846731111456456456442175)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down478247467846731111456456456442175)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down47847467846731111456456456442175)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down47847467846731111456456456442175)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down47847467846731111456456456442175)
else
	click 402, 312
sleep 100
Recover(Down47847467846731111456456456442175):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down47847467846731111456456456442175)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down47847467846731111456456456442175)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
	Goto, Recovered(Up33413243452435314521144) ; IF COPY PASTE, CHANGE THIS TO BEGINNING LABEL
Recover(Down478247467846731111456456456442175):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up300002453345345345744356467234233243434465131) ; CHANGE THIS TO THE SAME UNIQUE
Recover(Down4784746784673456456456442175):
	GoTo, Recovered(Up334121144) ; IF COPY PASTE, CHANGE THIS TO BEGINNING LABEL
return

Buttonstunalchjogre:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33412118973232414433):
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
Recovered(Up33412114433):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 8, 62, 517, 371, 0x055F4A, 1, Fast ; Search for Jogre
if Errorlevel = 1
   GoTo, Recovered(Up32342342346753412114433)
   else
Send {F6}
click 625, 456
	mousemove X, Y
	click X, Y
	sleep 800
	Send {F6}
	click 722, 364
	sleep 50
	click 711, 478
	sleep 1400
	click 646, 218
   GoTo, Recovered(Up33412114433)
Recovered(Up32342342346753412114433):
PixelSearch, X, Y, 8, 62, 517, 371, 0x055140, 1, Fast ; Search for Jogre second colour
if Errorlevel = 1
   GoTo, Recover(Up30000245334534534574435646723423465131)
   else
Send {F6}
click 625, 456
	mousemove X, Y
	click X, Y
	sleep 800
	Send {F6}
	click 722, 364
	sleep 50
	click 711, 478
	sleep 1400
	click 646, 218
   GoTo, Recovered(Up33412114433)
Recover(Down200141123235432114433):
PixelSearch, XP, YP, 8, 62, 517, 371, 0x024032, 1, Fast ; Search for Jogre second colour
if Errorlevel = 1
   GoTo, Recover(Up30000245334534534574435646723423465131)
   else
	mousemove XP, YP
	click XP, YP
	sleep 800
	Send {F6}
	click 722, 364
	sleep 50
	click 711, 478
	sleep 1400
	click 646, 218
   GoTo, Recovered(Up33412114433)
}
return

; Auto Login stun alching jogre
Recover(Up30000245334534534574435646723423465131): ; IF COPY PASTE, CHANGE THIS TO UNIQUE
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up33412114433) ; IF COPY PASTE, CHANGE THIS TO BEGINNING LABEL
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recover(Down4782474678467311114564564564421)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down4782474678467311114564564564421)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down478474678467311114564564564421)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down478474678467311114564564564421)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down478474678467311114564564564421)
else
	click 402, 312
sleep 100
Recover(Down478474678467311114564564564421):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down478474678467311114564564564421)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down478474678467311114564564564421)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
	Goto, Recovered(Up33412118973232414433) ; IF COPY PASTE, CHANGE THIS TO BEGINNING LABEL
Recover(Down4782474678467311114564564564421):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up30000245334534534574435646723423465131)
Recover(Down47847467846734564564564421):
	GoTo, Recovered(Up33412114433) ; IF COPY PASTE, CHANGE THIS TO BEGINNING LABEL
return

Buttonhalberdlesserdemon:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3341):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, PX, PY, 538, 77, 568, 106, 0x131313, 1, Fast ; Checking Health Full
if Errorlevel = 0
   GoTo, Recover(Down110041)
else
PixelSearch, X, Y, 6, 36, 517, 371, 0x091342, 1, Fast ; Search for Jogre
if Errorlevel = 1
   GoTo, Recover(Down20014112323543)
   else
	mousemove X, Y
	click X, Y
	sleep 2000
	click 576, 218
	sleep 3000
	click 646, 218
   GoTo, Recovered(Up3341)
Recover(Down20014112323543):
PixelSearch, XP, YP, 6, 36, 517, 371, 0x000725, 1, Fast ; Search for Jogre second colour
if Errorlevel = 1
   GoTo, Recover(Down200141)
   else
	mousemove XP, YP
	click XP, YP
	sleep 2000
	click 576, 218
	sleep 3000
	click 646, 218
   GoTo, Recovered(Up3341)
}
Recover(Down200141):
sleep 30000
Recover(Up4784746784673111141):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3341)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recover(Down47824746784673111141)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down47824746784673111141)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down4784746784673111141)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down4784746784673111141)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down4784746784673111141)
else
	click 402, 312
sleep 100
Recover(Down4784746784673111141):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down4784746784673111141)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down4784746784673111141)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up3341)
Recover(Down47824746784673111141):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up4784746784673111141)
Recover(Down478474678467341):
	GoTo, Recovered(Up3341)
Return
Recover(Down110041):
Soundbeep
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 550, 235, 740, 500, 0x455A74, 1, Fast ; Check Invent for Shark
if Errorlevel = 1
   GoTo, Recover(Down234020041)
	mousemove XXXXXX, YYYYYY
	click XXXXXX, YYYYYY
	GoTo, Recovered(Up3341)
Recover(Down234020041):
send {ESC}
PixelSearch, XX, YY, 550, 235, 740, 500, 0x073986, 1, Fast ; Check Invent for Lobsters
if Errorlevel = 1
   GoTo, Recover(Down2000041)
	mousemove XX, YY
	click XX, YY
	GoTo, Recovered(Up3341)
Recover(Down2000041):
send {ESC}
PixelSearch, XXX, YYY, 550, 235, 740, 500, 0xC1C2C9, 1, Fast ; Check Invent for Cakes
if Errorlevel = 1
   GoTo, Recover(Down3000041)
	mousemove XXX, YYY
	click XXX, YYY
	GoTo, Recovered(Up3341)
Recover(Down3000041):
send {F10}
sleep 1000
PixelSearch, XXX3, YYY3, 574, 436, 710, 470, 0x202393, 1, Fast ; Log out if no food
if Errorlevel = 1
	GoTo, Recover(Down3000041)
	else
	mousemove XXX3, YYY3
	click XXX3, YYY3
	sleep 13000
		GoTo, Recover(Down3000041)
return

Buttonfletchinglogsintoshafts:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3312342342342342345655441882323332666):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up3341882323332666)
Recovered(Up33123423455441882323332666):
sleep 5000
Recovered(Up3341882323332666):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334182282323332666)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341882323332666)
Recovered(Up334182282323332666):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243432432432432656523418982323332666)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332666)
Recover(Up3000023443543232443243432432432432656523418982323332666):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432654354354343554356523418982323332666)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332666)
Recover(Up30000234435432324432432654354354343554356523418982323332666):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000243224332443232443234435432324432432656523418982323332666)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332666)
Recover(Up30000243224332443232443234435432324432432656523418982323332666):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443243243243234235432324432432656523418982323332666)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332666)
Recover(Up30000234443243243243234235432324432432656523418982323332666):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343543557657684435432324432432656523418982323332666)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332666)
Recover(Up300002343543557657684435432324432432656523418982323332666):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443432423656735432324432432656523418982323332666)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332666)
Recover(Up30000234443432423656735432324432432656523418982323332666):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30054334567867898797893332666)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332666)
Recover(Up30054334567867898797893332666):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232432343244334432432656523418982323332666)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332666)
Recover(Up3000023443543232432343244334432432656523418982323332666):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234324323424435432324432432656523418982323332666)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332666)
Recover(Up30000234324323424435432324432432656523418982323332666):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418943243243243282323332666)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332666)
Recover(Up30000234435432324432432656523418943243243243282323332666):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30432432342432000234435432324432432656523418982323332666)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332666)
Recover(Up30432432342432000234435432324432432656523418982323332666):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418982323332666)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332666)
Recover(Up30000234435432324432432656523418982323332666):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up3000023423418982323332666)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up3341882323332666)
Recover(Up3000023443543234324432566757864324432432656523418982323332666):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341882323332666)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw knife and logs
click 443, 343
sleep 1000
sleep 500
	mousemove 138, 131
	click left
	sleep 50
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down110041882323332666)
Recover(Down110041882323332666):
Recover(Down234020041882323332666):
send {ESC}
click 578, 261 ; 28th item
sleep 500
click 623, 262 ; 27st item
sleep 2000
	click right 79, 436	
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 2000
send 99
send {enter}
sleep 50000
   GoTo, Recovered(Up3341882323332666)
	Goto, Recovered(Up3341882323332666)
   GoTo, Recover(Down234020041882323332666)
Recover(Down2000041882323332666):	
	GoTo, Recovered(Up3341882323332666)
Recover(Down3000041882323332666):
SoundBeep
	GoTo, Recovered(Up3341882323332666)
Recover(Down4912982323332666):
sleep 30000
Recover(Up3000023423418982323332666):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3341882323332666)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up33123423455441882323332666)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down30000234234123432428982323332666)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down300002342354645416458982323332666)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323332666)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323332666)
else
	click 402, 312
sleep 100
Recover(Down300002342354645416458982323332666):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323332666)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323332666)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up3312342342342342345655441882323332666)
Recover(Down30000234234123432428982323332666):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up3341882323332666)
Recover(Down3000023423418982323332666):
}
Return

Buttoncuttingopals:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
Recovered(Up334184192111):
sleep 5000
Recovered(Up3341841111):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334182241111)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341841111)
Recovered(Up334182241111):
PixelSearch, XB, YB, 6, 38, 516, 370, 0x1C2B41, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recovered(Down123234362324567853341841111)
   else
	mousemove XB, YB
	sleep 500
	click left
	sleep 2000
GoTo, Recovered(Up2343653341841111)
Recovered(Down123234362324567853341841111):
PixelSearch, XBH, YBH, 558, 38, 722, 195, 0x59EAF6, 1, Fast ; Click Bank on minimap
if Errorlevel = 1
   GoTo, Recovered(Up3341842354671111)
   else
	mousemove XBH, YBH
	sleep 500
	click left
	sleep 15000
GoTo, Recovered(Up2343653341841111)
Recovered(Up3341842354671111):
PixelSearch, XTBH, YTBH, 558, 38, 722, 195, 0x0x4CD6ED, 1, Fast ; Click Bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up300002342341352613111)
   else
	mousemove XTBH, YTBH
	sleep 500
	click left
	sleep 15000
GoTo, Recovered(Up3341841111)
Recovered(Up2343653341841111):
PixelSearch, RX, RY, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334184192111)
else
PixelSearch, X, Y, 555, 241, 739, 499, 0x577576, 1, Fast ; Deposit Gems
if Errorlevel = 1
   GoTo, Recover(Down20014184657232354342368651111)
   else
	mousemove X, Y
	sleep 500
	click right
sleep 500
	MouseMove, 0, 100, 1, R
sleep 100
click left
	sleep 2000
Recover(Down20014184657232354342368651111):
PixelSearch, X, Y, 555, 241, 739, 499, 0x8B8B98, 1, Fast ; Deposit Broken Gems
if Errorlevel = 1
   GoTo, Recover(Down2001418465768651111)
   else
	mousemove X, Y
	sleep 500
	click right
sleep 500
	MouseMove, 0, 100, 1, R
sleep 100
click left
	sleep 2000
Recover(Down2001418465768651111):
sleep 50
PixelSearch, DX, DY, 55, 100, 206, 156, 0x547071, 1, Fast ; Search first 3 bank spaces for Uncut Opals
if Errorlevel = 1
   GoTo, Recovered(Up334154647567841111)
else
	mousemove DX, DY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 100, 1, R
	Click left	
sleep 500
	click 487 56
sleep 2000
	Goto, Recover(Down110041841111)
Recovered(Up334154647567841111):
PixelSearch, DSX, DSY, 55, 100, 206, 156, 0xB4BABA, 1, Fast ; Search first 3 bank spaces for Uncut Opals
if Errorlevel = 1
   GoTo, Recovered(Up3341231423452841111)
else
	mousemove DSX, DSY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 100, 1, R
	Click left	
sleep 500
	click 487 56
sleep 2000
Recovered(Up3341231423452841111):
PixelSearch, DSFX, DSFY, 55, 100, 206, 156, 0x4C6767, 1, Fast ; Search first 3 bank spaces for Uncut Opals
if Errorlevel = 1
   GoTo, Recovered(Up3341841111)
else
	mousemove DSFX, DSFY
	sleep 500
	click right
	sleep 500
	MouseMove, 0, 100, 1, R
	Click left	
sleep 500
	click 487 56
sleep 2000
Recover(Down110041841111):
send {ESC}
PixelSearch, XXXXXNX, YYYYYNY, 551, 235, 738, 496, 0x032B4A, 1, Fast ; Search Inventory for Chisel
if Errorlevel = 1
   GoTo, Recovered(Up3341812342356357641111)
else
	mousemove XXXXXNX, YYYYYNY
	click XXXXXNX, YYYYYNY
sleep 1000
   GoTo, Recover(Down234020041841111)
Recovered(Up3341812342356357641111):
PixelSearch, XXXXXX, YYYYYY, 551, 235, 738, 496, 0x414248, 1, Fast ; Search Inventory for Chisel
if Errorlevel = 1
   GoTo, Recovered(Up3341841111)
else
	mousemove XXXXXX, YYYYYY
	click XXXXXX, YYYYYY
sleep 1000
Recover(Down234020041841111):
send {ESC}
PixelSearch, XNX, YNY, 551, 235, 738, 496, 0x547071, 1, Fast ; Search inventory for Uncut Opals
if Errorlevel = 1
   GoTo, Recovered(Up31341423534564841111)
	mousemove XNX, YNY
	click XNX, YNY
sleep 2000
   GoTo, Recover(Down2000041841111)
Recovered(Up31341423534564841111):
PixelSearch, XX, YY, 551, 235, 738, 496, 0xB4BABA, 1, Fast ; Search inventory for Uncut Opals
if Errorlevel = 1
   GoTo, Recovered(Up3341841111)
	mousemove XX, YY
	click XX, YY
	sleep 2000
Recover(Down2000041841111):
PixelSearch, XXX, YYY, 186, 385, 337, 500, 0x7FA5AA, 1, Fast ; Search Chat Box for CUT OPAL Option
if Errorlevel = 1
   GoTo, Recover(Down30000412312378891841111)
	mousemove XXX, YYY
	click right XXX, YYY
	MouseMove, 0, 70, 1, R
click left
sleep 33000	
	GoTo, Recovered(Up3341841111)
Recover(Down30000412312378891841111):
PixelSearch, XQXX, YQYY, 186, 385, 337, 500, 0x448181, 1, Fast ; Search Chat Box for CUT OPAL Option
if Errorlevel = 1
   GoTo, Recover(Down3000041231231231841111)
	mousemove XQXX, YQYY
	click right XQXX, YQYY
	MouseMove, 0, 70, 1, R
click left
sleep 33000	
	GoTo, Recovered(Up3341841111)
Recover(Down3000041231231231841111):
PixelSearch, XQXEX, YQYEY, 186, 385, 337, 500, 0x438283, 1, Fast ; Search Chat Box for CUT OPAL Option
if Errorlevel = 1
   GoTo, Recover(Down3000041841111)
	mousemove XQXEX, YQYEY
	click right XQXEX, YQYEY
	MouseMove, 0, 70, 1, R
click left
sleep 30000	
	GoTo, Recovered(Up3341841111)
Recover(Down3000041841111):
SoundBeep
	GoTo, Recovered(Up3341841111)
Recover(Down4912941111):
sleep 30000
Recover(Up300002342341352613111):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up334184192111)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recover(Down3000023423412343242352613111)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down3000023423412343242352613111)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down30000234235464541645352613111)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down300002342341352613111)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down300002342341352613111)
else
	click 402, 312
sleep 100
Recover(Down30000234235464541645352613111):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341352613111)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341352613111)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up334184192111)
Recover(Down3000023423412343242352613111):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up300002342341352613111)
Recover(Down300002342341352613111):
	GoTo, Recovered(Up3341841111)
}
Return

Buttoncuttinggems:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up331234234234234234565544188232):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up334188232)
Recovered(Up3312342345544188232):
sleep 5000
Recovered(Up334188232):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418228232)
else
click 487, 56
sleep 500
GoTo, Recovered(Up334188232)
Recovered(Up33418228232):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243432432432432656523418982323332987554411)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300003432342564654678767864543543434345879872342341898232)
Recover(Up3000023443543232443243432432432432656523418982323332987554411):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432654354354343554356523418982323332987554411)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300003432342564654678767864543543434345879872342341898232)
Recover(Up30000234435432324432432654354354343554356523418982323332987554411):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000243224332443232443234435432324432432656523418982323332987554411)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300003432342564654678767864543543434345879872342341898232)
Recover(Up30000243224332443232443234435432324432432656523418982323332987554411):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443243243243234235432324432432656523418982323332987554411)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300003432342564654678767864543543434345879872342341898232)
Recover(Up30000234443243243243234235432324432432656523418982323332987554411):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343543557657684435432324432432656523418982323332987554411)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300003432342564654678767864543543434345879872342341898232)
Recover(Up300002343543557657684435432324432432656523418982323332987554411):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443432423656735432324432432656523418982323332987554411)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300003432342564654678767864543543434345879872342341898232)
Recover(Up30000234443432423656735432324432432656523418982323332987554411):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30054334567867898797893332987554411)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300003432342564654678767864543543434345879872342341898232)
Recover(Up30054334567867898797893332987554411):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232432343244334432432656523418982323332987554411)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300003432342564654678767864543543434345879872342341898232)
Recover(Up3000023443543232432343244334432432656523418982323332987554411):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234324323424435432324432432656523418982323332987554411)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300003432342564654678767864543543434345879872342341898232)
Recover(Up30000234324323424435432324432432656523418982323332987554411):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418943243243243282323332987554411)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300003432342564654678767864543543434345879872342341898232)
Recover(Up30000234435432324432432656523418943243243243282323332987554411):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30432432342432000234435432324432432656523418982323332987554411)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300003432342564654678767864543543434345879872342341898232)
Recover(Up30432432342432000234435432324432432656523418982323332987554411):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418982323332987554411)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up300003432342564654678767864543543434345879872342341898232)
Recover(Up30000234435432324432432656523418982323332987554411):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up300002342341898232)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up334188232)
Recover(Up300003432342564654678767864543543434345879872342341898232):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334188232)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; Search first 3 bank spaces for herb boxes
click 443, 343
sleep 1000
sleep 500
	mousemove 138, 131
	click left
	sleep 50
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down11004188232)
Recover(Down11004188232):
Recover(Down23402004188232):
send {ESC}
click 578, 261 ; 28th item
sleep 500
click 623, 262 ; 27st item
sleep 2000
	click right 255, 421	
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 34000
   GoTo, Recovered(Up334188232)
	Goto, Recovered(Up334188232)
   GoTo, Recover(Down23402004188232)
Recover(Down200004188232):	
	GoTo, Recovered(Up334188232)
Recover(Down300004188232):
SoundBeep
	GoTo, Recovered(Up334188232)
Recover(Down491298232):
sleep 30000
Recover(Up300002342341898232):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up334188232)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up3312342345544188232)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down3000023423412343242898232)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down30000234235464541645898232)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down300002342341898232)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down300002342341898232)
else
	click 402, 312
sleep 100
Recover(Down30000234235464541645898232):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341898232)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341898232)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up331234234234234234565544188232)
Recover(Down3000023423412343242898232):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up334188232)
Recover(Down300002342341898232):
}
Return

Buttonglassblowvial:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3312342342342342345655441882323321332):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up3341882323321332)
Recovered(Up33123423455441882323321332):
sleep 5000
Recovered(Up3341882323321332):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334182282323321332)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341882323321332)
Recovered(Up334182282323321332):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324343243243243265652341898232333298755441122864379061)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3244435543453435435543323426577657653000023423418982323321332)
Recover(Up300002344354323244324343243243243265652341898232333298755441122864379061):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265435435434355435652341898232333298755441122864379061)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3244435543453435435543323426577657653000023423418982323321332)
Recover(Up3000023443543232443243265435435434355435652341898232333298755441122864379061):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000024322433244323244323443543232443243265652341898232333298755441122864379061)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3244435543453435435543323426577657653000023423418982323321332)
Recover(Up3000024322433244323244323443543232443243265652341898232333298755441122864379061):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023444324324324323423543232443243265652341898232333298755441122864379061)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3244435543453435435543323426577657653000023423418982323321332)
Recover(Up3000023444324324324323423543232443243265652341898232333298755441122864379061):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234354355765768443543232443243265652341898232333298755441122864379061)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3244435543453435435543323426577657653000023423418982323321332)
Recover(Up30000234354355765768443543232443243265652341898232333298755441122864379061):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023444343242365673543232443243265652341898232333298755441122864379061)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3244435543453435435543323426577657653000023423418982323321332)
Recover(Up3000023444343242365673543232443243265652341898232333298755441122864379061):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3005433456786789879789333298755441122864379061)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3244435543453435435543323426577657653000023423418982323321332)
Recover(Up3005433456786789879789333298755441122864379061):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323243234324433443243265652341898232333298755441122864379061)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3244435543453435435543323426577657653000023423418982323321332)
Recover(Up300002344354323243234324433443243265652341898232333298755441122864379061):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023432432342443543232443243265652341898232333298755441122864379061)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3244435543453435435543323426577657653000023423418982323321332)
Recover(Up3000023432432342443543232443243265652341898232333298755441122864379061):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265652341894324324324328232333298755441122864379061)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3244435543453435435543323426577657653000023423418982323321332)
Recover(Up3000023443543232443243265652341894324324324328232333298755441122864379061):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3043243234243200023443543232443243265652341898232333298755441122864379061)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3244435543453435435543323426577657653000023423418982323321332)
Recover(Up3043243234243200023443543232443243265652341898232333298755441122864379061):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265652341898232333298755441154345334522864379061)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3244435543453435435543323426577657653000023423418982323321332)
Recover(Up3000023443543232443243265652341898232333298755441154345334522864379061):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up3000023423418982323321332)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up3341882323321332)
Recover(Up3244435543453435435543323426577657653000023423418982323321332):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341882323321332)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw glassblow pipe and first item
click 443, 343
sleep 1000
sleep 500
	mousemove 138, 131
	click left
	sleep 50
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down110041882323321332)
Recover(Down110041882323321332):
Recover(Down234020041882323321332):
send {ESC}
click 578, 261 ; 28th item
sleep 500
click 623, 262 ; 27st item
sleep 2000
	click right 384, 133
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 2000
send 99
send {enter}
sleep 49000
   GoTo, Recovered(Up3341882323321332)
	Goto, Recovered(Up3341882323321332)
   GoTo, Recover(Down234020041882323321332)
Recover(Down2000041882323321332):	
	GoTo, Recovered(Up3341882323321332)
Recover(Down3000041882323321332):
SoundBeep
	GoTo, Recovered(Up3341882323321332)
Recover(Down4912982323321332):
sleep 30000
Recover(Up3000023423418982323321332):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3341882323321332)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up33123423455441882323321332)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down30000234234123432428982323321332)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down300002342354645416458982323321332)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323321332)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323321332)
else
	click 402, 312
sleep 100
Recover(Down300002342354645416458982323321332):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323321332)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323321332)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up3312342342342342345655441882323321332)
Recover(Down30000234234123432428982323321332):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up3341882323321332)
Recover(Down3000023423418982323321332):
}
Return

Buttonblastfurnace:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up331234234234234234565544188232332133244):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up334188232332133244)
Recovered(Up3312342345544188232332133244):
sleep 5000
Recovered(Up334188232332133244):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418228232332133244)
else
click 487, 56
sleep 500
GoTo, Recovered(Up334188232332133244)
Recovered(Up33418228232332133244):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432434324324324326565234189823233329875544112286437906144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up324443554345343543554332342657765765300002342341898232332133244)
Recover(Up30000234435432324432434324324324326565234189823233329875544112286437906144):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326543543543435543565234189823233329875544112286437906144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up324443554345343543554332342657765765300002342341898232332133244)
Recover(Up300002344354323244324326543543543435543565234189823233329875544112286437906144):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002432243324432324432344354323244324326565234189823233329875544112286437906144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up324443554345343543554332342657765765300002342341898232332133244)
Recover(Up300002432243324432324432344354323244324326565234189823233329875544112286437906144):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344432432432432342354323244324326565234189823233329875544112286437906144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up324443554345343543554332342657765765300002342341898232332133244)
Recover(Up300002344432432432432342354323244324326565234189823233329875544112286437906144):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023435435576576844354323244324326565234189823233329875544112286437906144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up324443554345343543554332342657765765300002342341898232332133244)
Recover(Up3000023435435576576844354323244324326565234189823233329875544112286437906144):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344434324236567354323244324326565234189823233329875544112286437906144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up324443554345343543554332342657765765300002342341898232332133244)
Recover(Up300002344434324236567354323244324326565234189823233329875544112286437906144):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300543345678678987978933329875544112286437906144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up324443554345343543554332342657765765300002342341898232332133244)
Recover(Up300543345678678987978933329875544112286437906144):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324323432443344324326565234189823233329875544112286437906144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up324443554345343543554332342657765765300002342341898232332133244)
Recover(Up30000234435432324323432443344324326565234189823233329875544112286437906144):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343243234244354323244324326565234189823233329875544112286437906144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up324443554345343543554332342657765765300002342341898232332133244)
Recover(Up300002343243234244354323244324326565234189823233329875544112286437906144):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326565234189432432432432823233329875544112286437906144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up324443554345343543554332342657765765300002342341898232332133244)
Recover(Up300002344354323244324326565234189432432432432823233329875544112286437906144):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up304324323424320002344354323244324326565234189823233329875544112286437906144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up324443554345343543554332342657765765300002342341898232332133244)
Recover(Up304324323424320002344354323244324326565234189823233329875544112286437906144):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326565234189823233329875544115434533452286437906144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up324443554345343543554332342657765765300002342341898232332133244)
Recover(Up300002344354323244324326565234189823233329875544115434533452286437906144):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recovered(Up334188232332133244)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up334188232332133244)
Recover(Up324443554345343543554332342657765765300002342341898232332133244):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334188232332133244)
else
click 445, 347
PixelSearch, X62, Y62, 569, 167, 600, 185, 0x131313, 1, Fast ; checking energy
if Errorlevel = 1
   GoTo, Recovered(Up3341882323546457576856786578567832133244)
else
PixelSearch, X62445, Y62445, 115, 115, 302, 150, 0x305F85, 1, Fast ; looking for stamina potion
if Errorlevel = 1
   GoTo, Recovered(Up3341882323546457576856786578567832133244)
else
mousemove X62445, Y62445
click
click 486, 56
sleep 1000
Recovered(Up334188232354645757685678657856783213563454567576567543433244):
PixelSearch, X62445, Y62445, 560, 244, 646, 281, 0x305F85, 1, Fast ; looking for stamina potion in inventory
if Errorlevel = 1
   GoTo, Recovered(Up334188232354645757685678657856783213563454567576567543433244)
else
mousemove X62445, Y62445
click
sleep 1000
   GoTo, Recovered(Up334188232332133244)
Recovered(Up3341882323546457576856786578567832133244):
sleep 200
PixelSearch, X6244599, Y6244599, 304, 114, 353, 148, 0xBDA759, 1, Fast ; looking for ice gloves in bank
if Errorlevel = 1
   GoTo, Recovered(Up3341882323546457576856786578566345634563456345634567832133244)
else
mousemove X6244599, Y6244599 
click
Recovered(Up3341882323546457576856786578566345634563456345634567832133244):
mousemove 91, 131
click right
MouseMove, 0, 100, 1, R
sleep 50
click left
sleep 100
click 489, 56
Recovered(Up33418823233456435643345435656756445643240980789657547645633452345243243232133244):
PixelSearch, X62222, Y62222, 609, 87, 629, 101, 0x013CFD, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up334188232334564356433454356567564456432433452345243243232133244)
else
mousemove X62222, Y62222
MouseMove, -4, -10, 1, R
click
   GoTo, Recovered(Up3543345435435435543341882356443563546645343564536233263745674563452345345324532453452133244)
Recovered(Up334188232334564356433454356567564456432433452345243243232133244):
PixelSearch, X62222, Y62222, 609, 87, 629, 101, 0x002BDE, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up334188232334564356433243243232133244)
else
mousemove X62222, Y62222
MouseMove, -4, -10, 1, R
click
   GoTo, Recovered(Up3543345435435435543341882356443563546645343564536233263745674563452345345324532453452133244)
Recovered(Up334188232334564356433243243232133244):
PixelSearch, X62222, Y62222, 609, 87, 629, 101, 0x0x1142F4, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up33453343554343554656456454188232334564356433243243232133244)
else
mousemove X62222, Y62222
MouseMove, -4, -10, 1, R
click
   GoTo, Recovered(Up3543345435435435543341882356443563546645343564536233263745674563452345345324532453452133244)
Recovered(Up33453343554343554656456454188232334564356433243243232133244):
PixelSearch, X62222, Y62222, 609, 87, 629, 101, 0x002AEA, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up33413456345765678456345234534588232334564356433243243232133244)
else
mousemove X62222, Y62222
MouseMove, -4, -10, 1, R
sleep 800
click
   GoTo, Recovered(Up3543345435435435543341882356443563546645343564536233263745674563452345345324532453452133244)
Recovered(Up33413456345765678456345234534588232334564356433243243232133244):
PixelSearch, X62222, Y62222, 609, 87, 629, 101, 0x1242FC, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up334188233645345636543456356456347867862334564356433243243232133244)
else
mousemove X62222, Y62222
MouseMove, -4, -10, 1, R
sleep 800
click
   GoTo, Recovered(Up3543345435435435543341882356443563546645343564536233263745674563452345345324532453452133244)
Recovered(Up334188233645345636543456356456347867862334564356433243243232133244):
PixelSearch, X62222, Y62222, 609, 87, 629, 101, 0x1242FC, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up33418823645456345634563564578678632334564356433243243232133244)
else
mousemove X62222, Y62222
MouseMove, -4, -10, 1, R
sleep 800
click
   GoTo, Recovered(Up3543345435435435543341882356443563546645343564536233263745674563452345345324532453452133244)
Recovered(Up33418823645456345634563564578678632334564356433243243232133244):
PixelSearch, X62222, Y62222, 609, 87, 629, 101, 0x144EFE, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up3341882323345643564332432432321332675457647564657476544)
else
mousemove X62222, Y62222
MouseMove, -4, -10, 1, R
sleep 800
click
   GoTo, Recovered(Up3543345435435435543341882356443563546645343564536233263745674563452345345324532453452133244)
Recovered(Up3341882323345643564332432432321332675457647564657476544):
PixelSearch, X62222, Y62222, 609, 87, 629, 101, 0x0741FF, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up3341882323345643564332432456335643546654345643232133244)
else
mousemove X62222, Y62222
MouseMove, -4, -10, 1, R
sleep 800
click
   GoTo, Recovered(Up3543345435435435543341882356443563546645343564536233263745674563452345345324532453452133244)
Recovered(Up3341882323345643564332432456335643546654345643232133244):
PixelSearch, X62222, Y62222, 609, 87, 629, 101, 0x0941FF, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up3341882323345643564376547564475647655463435345543243243232133244)
else
mousemove X62222, Y62222
MouseMove, -4, -10, 1, R
sleep 800
click
   GoTo, Recovered(Up3543345435435435543341882356443563546645343564536233263745674563452345345324532453452133244)
Recovered(Up3341882323345643564376547564475647655463435345543243243232133244):
PixelSearch, X62222, Y62222, 609, 87, 629, 101, 0x1741FE, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up334188232335436543345223543454354354564356433243243232133244)
else
mousemove X62222, Y62222
MouseMove, -4, -10, 1, R
sleep 800
click
   GoTo, Recovered(Up3543345435435435543341882356443563546645343564536233263745674563452345345324532453452133244)
Recovered(Up334188232335436543345223543454354354564356433243243232133244):
PixelSearch, X62222, Y62222, 609, 87, 629, 101, 0x013AF4, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up3341882323345643564332432432321398778697986678967899768789678963244)
else
mousemove X62222, Y62222
MouseMove, -4, -10, 1, R
sleep 800
click
   GoTo, Recovered(Up3543345435435435543341882356443563546645343564536233263745674563452345345324532453452133244)
Recovered(Up3341882323345643564332432432321398778697986678967899768789678963244):
PixelSearch, X62222, Y62222, 609, 87, 629, 101, 0x1B58FF, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up334188232334564356433243243232133244)
else
mousemove X62222, Y62222
MouseMove, -4, -10, 1, R
sleep 800
click
   GoTo, Recovered(Up3543345435435435543341882356443563546645343564536233263745674563452345345324532453452133244)
Recovered(Up3543345435435435543341882356443563546645343564536233263745674563452345345324532453452133244):
sleep 100
PixelSearch, X62222, Y62222, 573, 37, 691, 154, 0x0000FF, 1, Fast ; checking that movement has stopped
if Errorlevel = 1
   GoTo, Recovered(Up35433454354354355433418823564435635466453435645362332637456745634523453453245324534654345645635465436356452133244)
else
   GoTo, Recovered(Up3543345435435435543341882356443563546645343564536233263745674563452345345324532453452133244)
Recovered(Up35433454354354355433418823564435635466453435645362332637456745634523453453245324534654345645635465436356452133244):
sleep 2000
   GoTo, Recovered(Up35433454354354355433418823233263745674563452345345324532453452133244)
Recovered(Up35433454354354355433418823233263745674563452345345324532453452133244):
PixelSearch, X6222412, Y6222412, 220, 144, 430, 370, 0x15588D, 1, Fast ; conveyer belt
if Errorlevel = 1
   GoTo, Recovered(Up33418823233453456564354643564356643564343554343543543534543565675644564324334523452432432321332441)
else
mousemove X6222412, Y6222412
MouseMove, 10, -90, 3, R
   GoTo, Recovered(Up33418823456776567546475244)
Recovered(Up33418823233453456564354643564356643564343554343543543534543565675644564324334523452432432321332441):
PixelSearch, X6222412, Y6222412, 220, 144, 430, 370, 0x165689, 1, Fast ; conveyer belt
if Errorlevel = 1
   GoTo, Recovered(Up33418823233453456564354643564356643564334543565675644564324334523452432432321332441)
else
mousemove X6222412, Y6222412
MouseMove, 10, -90, 3, R
   GoTo, Recovered(Up33418823456776567546475244)
Recovered(Up33418823456776567546475244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up3567867856767645345564775244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up3567867856767645345564775244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up33418834523452345234565723456776567546454624564363474657564775244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up33418834523452345234565723456776567546454624564363474657564775244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up3341882345234523453246577566776567546454624564363474657564775244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up3341882345234523453246577566776567546454624564363474657564775244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up33418823456776567546454624564363423453445634563232174657564775244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up33418823456776567546454624564363423453445634563232174657564775244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up33418823456776509875445454775244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up33418823456776509875445454775244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up33418823456776567546454624564363345634564563456474657564775244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up33418823456776567546454624564363345634564563456474657564775244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up6534634563456333418823456776567546454624564363474657564775244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up6534634563456333418823456776567546454624564363474657564775244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up33418345634756784567456823456776567546454624564363474657564775244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up33418345634756784567456823456776567546454624564363474657564775244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up33418823456776567546454678978945544564363474657564775244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up33418823456776567546454678978945544564363474657564775244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up33418823456776567546454624564374657657657674546574675467563474657564775244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up33418823456776567546454624564374657657657674546574675467563474657564775244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up33418823456776567546454624564654354533546786786786786543345363474657564775244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up33418823456776567546454624564654354533546786786786786543345363474657564775244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up334188234567765674532456456745675467546454624564363474657564775244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up334188234567765674532456456745675467546454624564363474657564775244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up3341882345677656754645462456436343456453756785678567874657564775244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up3341882345677656754645462456436343456453756785678567874657564775244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up33418823456776567546454624576547674564342324364363474657564775244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up33418823456776567546454624576547674564342324364363474657564775244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up33418823233453456564354643564356643564334543565675644564324334523452432432321332441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up33418823233453456564354643564356643564334543565675644564324334523452432432321332441):
PixelSearch, X6222412, Y6222412, 220, 144, 430, 370, 0x15588D, 1, Fast ; conveyer belt
if Errorlevel = 1
   GoTo, Recovered(Up35433454354354355433418823233213564335463546354634563564365436543244)
else
mousemove X6222412, Y6222412
MouseMove, 10, -110, 3, R
sleep 100
   GoTo, Recovered(Up334188234563456435634564563456776567546475244)
Recovered(Up35433454354354355433418823233213564335463546354634563564365436543244):
PixelSearch, X6222412, Y6222412, 220, 144, 430, 370, 0x165689, 1, Fast ; conveyer belt
if Errorlevel = 1
   GoTo, Recovered(Up334188234563456435634564563456776567546475244)
else
mousemove X6222412, Y6222412
MouseMove, 3, -110, 3, R
sleep 100
   GoTo, Recovered(Up334188234563456435634564563456776567546475244)
Recovered(Up334188234563456435634564563456776567546475244):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up4567456745675467535643456345645633564465647567456645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up45674567456754675465647567456645441):
Recovered(Up4567456745675467535643456345645633564465647567456645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up4567465654756465475647645567456754675465647567456645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up4567465654756465475647645567456754675465647567456645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up4567456745675467546564756745465476345673564673453245234656645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up4567456745675467546564756745465476345673564673453245234656645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up4567456456747564756457687877456754675465647567456645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up4567456456747564756457687877456754675465647567456645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up45674567456754675476544756756457645674567456765647567456645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up45674567456754675476544756756457645674567456765647567456645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up456745674567546754656475674567546457645674567567546754767564645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up456745674567546754656475674567546457645674567567546754767564645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up45765446576754576654343565463354656474756674567456754675465647567456645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up45765446576754576654343565463354656474756674567456754675465647567456645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up45765446654345635463435657675457656474756674567456754675465647567456645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up45765446654345635463435657675457656474756674567456754675465647567456645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up4576544665433465635435643546354657675457656474756674567456754675465647567456645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up4576544665433465635435643546354657675457656474756674567456754675465647567456645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up45765446576754576564747566745674567546754656475674566454653543656434536645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up45765446576754576564747566745674567546754656475674566454653543656434536645441):

PixelSearch, X6222412, Y6222412, 220, 144, 430, 370, 0x15588D, 1, Fast ; conveyer belt
if Errorlevel = 1
   GoTo, Recovered(Up35433454354354355433418823233213564335463546354634563564365454354343545354336543244)
else
mousemove X6222412, Y6222412
MouseMove, 3, -103, 3, R
sleep 100
   GoTo, Recovered(Up33418823456776567546475635443564563463543564563244)
Recovered(Up35433454354354355433418823233213564335463546354634563564365454354343545354336543244):
PixelSearch, X6222412, Y6222412, 220, 144, 430, 370, 0x165689, 1, Fast ; conveyer belt
if Errorlevel = 1
   GoTo, Recovered(Up35433454354354355433418823233263745674563452345345324532453452133244)
else
mousemove X6222412, Y6222412
MouseMove, 3, -103, 3, R
sleep 100
   GoTo, Recovered(Up33418823456776567546475635443564563463543564563244)
Recovered(Up33418823456776567546475635443564563463543564563244):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up45765446576754576564747566745674567546754656475674566454653653433564635435643546543656434536645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up45765446576754576564747566745674567546754656475674566454653653433564635435643546543656434536645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up457654465767545765433456456345366564747566745674567546754656475674566454653543656434536645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up457654465767545765433456456345366564747566745674567546754656475674566454653543656434536645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up457654465767545765646533456356454364747566745674567546754656475674566454653543656434536645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up457654465767545765646533456356454364747566745674567546754656475674566454653543656434536645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up457654465767545776546757656564747566745674567546754656475674566454653543656434536645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up457654465767545776546757656564747566745674567546754656475674566454653543656434536645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up457654465775645676576754576564747566745674567546754656475674566454653543656434536645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up457654465775645676576754576564747566745674567546754656475674566454653543656434536645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up4576544656546454564563456376754576564747566745674567546754656475674566454653543656434536645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up4576544656546454564563456376754576564747566745674567546754656475674566454653543656434536645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up4576544657675457656474756674567456754675465647567456645465345676754476545674567543656434536645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up4576544657675457656474756674567456754675465647567456645465345676754476545674567543656434536645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up4576544657675457656474756674567456343654345654363564567546754656475674566454653543656434536645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up4576544657675457656474756674567456343654345654363564567546754656475674566454653543656434536645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up457654465767545765647475667456745646754567475647654765889774567546754656475674566454653543656434536645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up457654465767545765647475667456745646754567475647654765889774567546754656475674566454653543656434536645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up4576544657675457656474756676544576476574654657467546754567745674567546754656475674566454653543656434536645441)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up4576544657675457656474756676544576476574654657467546754567745674567546754656475674566454653543656434536645441):
sleep 200
PixelSearch, X62222755211422444, Y62222755211422444, 87, 38, 645, 369, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up35433454354354355433418823233263745674563452345345324532453452133244)
else
click
sleep 1500
   GoTo, Recovered(Up354334543543543554334188234563456345766786732332133244)
Recovered(Up354334543543543554334188234563456345766786732332133244):
PixelSearch, X6222412, Y6222412, 141, 390, 379, 415, 0x000080, 1, Fast ; check that conveyer belt has been clicked
if Errorlevel = 1
   GoTo, Recovered(Up334188232333453453453453453452133244)
else
send 1
sleep 500
   GoTo, Recovered(Up334188232333453453455344354354534534534521332444)
Recovered(Up334188232333453453453453453452133244):
sleep 1000
PixelSearch, X6222412, Y6222412, 141, 390, 379, 415, 0x000080, 1, Fast ; check that conveyer belt has been clicked
if Errorlevel = 1
   GoTo, Recovered(Up33418823233345344535434355435343534534553453453453452133244)
else
send 1
sleep 500
   GoTo, Recovered(Up334188232333453453455344354354534534534521332444)
Recovered(Up33418823233345344535434355435343534534553453453453452133244):
sleep 1000
PixelSearch, X6222412, Y6222412, 141, 390, 379, 415, 0x000080, 1, Fast ; check that conveyer belt has been clicked
if Errorlevel = 1
   GoTo, Recovered(Up33418823233345344534354453345435434355434355435343534534553453453453452133244)
else
send 1
sleep 500
   GoTo, Recovered(Up334188232333453453455344354354534534534521332444)
Recovered(Up33418823233345344534354453345435434355434355435343534534553453453453452133244):
sleep 1000
PixelSearch, X6222412, Y6222412, 141, 390, 379, 415, 0x000080, 1, Fast ; check that conveyer belt has been clicked
if Errorlevel = 1
   GoTo, Recovered(Up334188234353544355435435434353454353543453453452133244)
else
send 1
sleep 500
   GoTo, Recovered(Up334188232333453453455344354354534534534521332444)
Recovered(Up334188234353544355435435434353454353543453453452133244):
sleep 1000
PixelSearch, X6222412, Y6222412, 141, 390, 379, 415, 0x000080, 1, Fast ; check that conveyer belt has been clicked
if Errorlevel = 1
   GoTo, Recovered(Up33418823435354423657567234234353454353543453453452133244)
else
send 1
sleep 500
   GoTo, Recovered(Up334188232333453453455344354354534534534521332444)
Recovered(Up33418823435354423657567234234353454353543453453452133244):
sleep 1000
PixelSearch, X6222412, Y6222412, 141, 390, 379, 415, 0x000080, 1, Fast ; check that conveyer belt has been clicked
if Errorlevel = 1
   GoTo, Recovered(Up3341823423423435354423657567234234353454353543453453452133244)
else
send 1
sleep 500
   GoTo, Recovered(Up334188232333453453455344354354534534534521332444)
Recovered(Up3341823423423435354423657567234234353454353543453453452133244):
sleep 1000
PixelSearch, X6222412, Y6222412, 141, 390, 379, 415, 0x000080, 1, Fast ; check that conveyer belt has been clicked
if Errorlevel = 1
   GoTo, Recovered(Up33415436456345657653453452133244)
else
send 1
sleep 500
   GoTo, Recovered(Up334188232333453453455344354354534534534521332444)
Recovered(Up33415436456345657653453452133244):
sleep 1000
PixelSearch, X6222412, Y6222412, 141, 390, 379, 415, 0x000080, 1, Fast ; check that conveyer belt has been clicked
if Errorlevel = 1
   GoTo, Recovered(Up3344567647854646356345345324523452345567)
else
send 1
sleep 500
   GoTo, Recovered(Up334188232333453453455344354354534534534521332444)
Recovered(Up334188232333453453455344354354534534534521332444):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x013CFD, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up335342534562345637546745674567523454188232332133244)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4000
   GoTo, Recovered(Up3353425345623456345634565678634523454188232332133244)
Recovered(Up335342534562345637546745674567523454188232332133244):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x002BDE, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up33534253456234523454188232332133244)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4000
   GoTo, Recovered(Up3353425345623456345634565678634523454188232332133244)
Recovered(Up33534253456234523454188232332133244):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x002AEA, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up33534253456236453645675678567857684523454188232332133244)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4000
   GoTo, Recovered(Up3353425345623456345634565678634523454188232332133244)
Recovered(Up33534253456236453645675678567857684523454188232332133244):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x1142F4, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up33418823233345345345576765655467354364536344354354534534534521332444)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4200
   GoTo, Recovered(Up3353425345623456345634565678634523454188232332133244)
Recovered(Up33418823233345345345576765655467354364536344354354534534534521332444):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x1242FC, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up3341882323334534534553443543545345345345657756475647655654454521332444)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4200
   GoTo, Recovered(Up3353425345623456345634565678634523454188232332133244)
Recovered(Up3341882323334534534553443543545345345345657756475647655654454521332444):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x144EFE, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up3341882323334534534553443543545345345345436345634563456345634563456521332444)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4200
   GoTo, Recovered(Up3353425345623456345634565678634523454188232332133244)
Recovered(Up3341882323334534534553443543545345345345436345634563456345634563456521332444):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x0741FF, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up334188232333453453455344354354533645346543565644534534521332444)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4200
   GoTo, Recovered(Up3353425345623456345634565678634523454188232332133244)
Recovered(Up334188232333453453455344354354533645346543565644534534521332444):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x0941FF, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up33418823233345345345564754756756454674756456747566344354354534534534521332444)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4200
   GoTo, Recovered(Up3353425345623456345634565678634523454188232332133244)
Recovered(Up33418823233345345345564754756756454674756456747566344354354534534534521332444):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x1741FE, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up33418823233345345345534435435453453442352435243524352543534521332444)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4200
   GoTo, Recovered(Up3353425345623456345634565678634523454188232332133244)
Recovered(Up33418823233345345345534435435453453442352435243524352543534521332444):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x013AF4, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up33418823233345345345534435435457867867686785678578656785687534534534521332444)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4200
   GoTo, Recovered(Up3353425345623456345634565678634523454188232332133244)
Recovered(Up33418823233345345345534435435457867867686785678578656785687534534534521332444):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x1B58FF, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up334188232333453453455344354354534534534521332444)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4200
   GoTo, Recovered(Up3353425345623456345634565678634523454188232332133244)
Recovered(Up3353425345623456345634565678634523454188232332133244):
sleep 100
PixelSearch, X622227, Y622227, 372, 41, 516, 67, 0xFFFFFF, 1, Fast ; checking for xp drop
if Errorlevel = 1
   GoTo, Recovered(Up3353425345623456345634565678634523454188232332133244)
else
   GoTo, Recovered(Up334188232332136564657634543552435345234234523456342e34253445564657683244)
Recovered(Up334188232332136564657634543552435345234234523456342e34253445564657683244):
PixelSearch, X62222700, Y62222700, 559, 243, 602, 279, 0xBDA759, 1, Fast ; checking for ice gloves in invent
if Errorlevel = 1
   GoTo, Recovered(Up334542435456256546354365647675418823233213656465763456342e34253445564657683244)
else
mousemove X62222700, Y62222700
click
   GoTo, Recovered(Up33418823233213656465763456342e34253445564657683244)
Recovered(Up334542435456256546354365647675418823233213656465763456342e34253445564657683244):
PixelSearch, X62222700, Y62222700, 559, 243, 602, 279, 0xB6A154, 1, Fast ; checking for ice gloves in invent
if Errorlevel = 1
   GoTo, Recovered(Up3365433456356435463564418823233213656465763456342e34253445564657683244)
else
mousemove X62222700, Y62222700
click
   GoTo, Recovered(Up33418823233213656465763456342e34253445564657683244)
Recovered(Up3365433456356435463564418823233213656465763456342e34253445564657683244):
PixelSearch, X62222700, Y62222700, 559, 243, 602, 279, 0xC6B063, 1, Fast ; checking for ice gloves in invent
if Errorlevel = 1
   GoTo, Recovered(Up33418823233213656465763456342e34253445564657683244)
else
mousemove X62222700, Y62222700
click
   GoTo, Recovered(Up33418823233213656465763456342e34253445564657683244)
Recovered(Up33418823233213656465763456342e34253445564657683244):
PixelSearch, X622227558, Y622227558, 241, 75, 500, 250, 0x15588D, 1, Fast ; checking for bar dispenser
if Errorlevel = 1
   GoTo, Recovered(Up334188234353544356345634563457654366345654355432332133244)
else
mousemove X622227558, Y622227558
MouseMove, -70, 17, 3, R
MouseMove, 0, -2, 1, R
Recovered(Up334188232332765465745674567456434374567456745674567453244):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up35678678567676453455647752440)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up35678678567676453455647752440):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up334188345234523452345657234567765675464546245643634746575647752440)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188345234523452345657234567765675464546245643634746575647752440):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up33418823452345234532465775667765675464546245643634746575647752440)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up33418823452345234532465775667765675464546245643634746575647752440):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up334188234567765675464546245643634234534456345632321746575647752440)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188234567765675464546245643634234534456345632321746575647752440):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up334188234567765098754454547752440)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188234567765098754454547752440):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up334188234567765675464546245643633456345645634564746575647752440)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188234567765675464546245643633456345645634564746575647752440):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up65346345634563334188234567765675464546245643634746575647752440)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up65346345634563334188234567765675464546245643634746575647752440):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up334183456347567845674568234567765675464546245643634746575647752440)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334183456347567845674568234567765675464546245643634746575647752440):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up334188234567765675464546789789455445643634746575647752440)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188234567765675464546789789455445643634746575647752440):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up334188234567765675464546245643746576576576745465746754675634746575647752440)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188234567765675464546245643746576576576745465746754675634746575647752440):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up334188234567765675464546245646543545335467867867867865433453634746575647752440)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188234567765675464546245646543545335467867867867865433453634746575647752440):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up3341882345677656745324564567456754675464546245643634746575647752440)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up3341882345677656745324564567456754675464546245643634746575647752440):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up33418823456776567546454624564363434564537567856785678746575647752440)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up33418823456776567546454624564363434564537567856785678746575647752440):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up334188234567765675464546245765476745643423243643634746575647752440)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188234567765675464546245765476745643423243643634746575647752440):
sleep 100
PixelSearch, X62222755211422444, Y62222755211422444, 66, 57, 414, 298, 0xFFFF00, 1, Fast ; checking for blue text
if Errorlevel = 1
   GoTo, Recovered(Up33418823233213656465763456342e34253445564657683244)
else
click
   GoTo, Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244)
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188234353544354366345654355432332133244):
PixelSearch, X622227558, Y622227558, 241, 75, 500, 250, 0x165689, 1, Fast ; checking for bar dispenser
if Errorlevel = 1
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
else
mousemove X622227558, Y622227558
MouseMove, -70, 15, 3, R
MouseMove, 0, -2, 1, R
sleep 100
   GoTo, Recovered(Up334188232332765465745674567456434374567456745674567453244)
Recovered(Up334188234353544356345634563457654366345654355432332133244):
PixelSearch, X622227558, Y622227558, 241, 75, 500, 250, 0x165689, 1, Fast ; checking for bar dispenser
if Errorlevel = 1
   GoTo, Recovered(Up33436545436564356476788675188232332765465745674567456434374567456745674567453244)
else
mousemove X622227558, Y622227558
MouseMove, -73, 15, 3, R
MouseMove, 0, -2, 1, R
sleep 100
   GoTo, Recovered(Up334188232332765465745674567456434374567456745674567453244)
Recovered(Up33436545436564356476788675188232332765465745674567456434374567456745674567453244):
PixelSearch, X622227558, Y622227558, 241, 75, 500, 250, 0x165689, 1, Fast ; checking for bar dispenser
if Errorlevel = 1
   GoTo, Recovered(Up33409878989089067453244)
else
mousemove X622227558, Y622227558
MouseMove, -73, 13, 3, R
MouseMove, 0, -2, 1, R
sleep 100
   GoTo, Recovered(Up334188232332765465745674567456434374567456745674567453244)
Recovered(Up33409878989089067453244):
PixelSearch, X622227558, Y622227558, 241, 75, 500, 250, 0x165689, 1, Fast ; checking for bar dispenser
if Errorlevel = 1
   GoTo, Recovered(Up33436908643563456678244)
else
mousemove X622227558, Y622227558
MouseMove, -70, 16, 3, R
MouseMove, 0, -2, 1, R
sleep 100
   GoTo, Recovered(Up334188232332765465745674567456434374567456745674567453244)
Recovered(Up33436908643563456678244):
PixelSearch, X622227558, Y622227558, 241, 75, 500, 250, 0x15588D, 1, Fast ; checking for bar dispenser
if Errorlevel = 1
   GoTo, Recovered(Up334369876456435675892332765465745674567456434374567456745674567453244)
else
mousemove X622227558, Y622227558
MouseMove, -70, 16, 3, R
MouseMove, 0, -2, 1, R
sleep 100
   GoTo, Recovered(Up334188232332765465745674567456434374567456745674567453244)
Recovered(Up334369876456435675892332765465745674567456434374567456745674567453244):
PixelSearch, X622227558, Y622227558, 241, 75, 500, 250, 0x15588D, 1, Fast ; checking for bar dispenser
if Errorlevel = 1
   GoTo, Recovered(Up90887645745645343234267453244)
else
mousemove X622227558, Y622227558
MouseMove, -76, 15, 3, R
MouseMove, 0, -2, 1, R
sleep 100
   GoTo, Recovered(Up334188232332765465745674567456434374567456745674567453244)
Recovered(Up90887645745645343234267453244):
PixelSearch, X622227558, Y622227558, 241, 75, 500, 250, 0x15588D, 1, Fast ; checking for bar dispenser
if Errorlevel = 1
   GoTo, Recovered(Up3343675765856786576578657865765644565465644564)
else
mousemove X622227558, Y622227558
MouseMove, -60, 18, 3, R
MouseMove, 0, -2, 1, R
sleep 100
   GoTo, Recovered(Up334188232332765465745674567456434374567456745674567453244)
Recovered(Up334188234353544363456454356645343564356435654366345654355432332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up3341882343535443543665654375634254534536345654355432332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up3341882343535443543665654375634254534536345654355432332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up334188234353544354366345464356456345633645435635465654355432332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188234353544354366345464356456345633645435635465654355432332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up334654345645635645678768678188234353544354366345654355432332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334654345645635645678768678188234353544354366345654355432332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up33418823435354435436634565435543237657564465745765432434332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up33418823435354435436634565435543237657564465745765432434332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up33418823435354435436634565435543233270890789056756133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up33418823435354435436634565435543233270890789056756133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up3341882343535443543663456543554654768435643532332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up3341882343535443543663456543554654768435643532332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up3341882745675674567456734353544354366345654355432332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up3341882745675674567456734353544354366345654355432332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up334188234353544354366345667987456435454355432332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188234353544354366345667987456435454355432332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up334188234353544356543645643554366345654355432332675133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188234353544356543645643554366345654355432332675133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up33418823435354434565674675475645674756456754366345654355432332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up33418823435354434565674675475645674756456754366345654355432332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up3341882343535443435654375464567847654366345654355432332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up3341882343535443435654375464567847654366345654355432332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up3341882376544576567445677564654353544354366345654355432332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up3341882376544576567445677564654353544354366345654355432332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up334188234457676564767544567353544354366345654355432332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188234457676564767544567353544354366345654355432332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up334188234353544354366345654355432332138976789546432523453244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188234353544354366345654355432332138976789546432523453244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up334188234353567765756567443543663456543467565755432332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334188234353567765756567443543663456543467565755432332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up3341882343536577654456756754435436634565435456745675645675432332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up3341882343536577654456756754435436634565435456745675645675432332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlev	el = 1
   GoTo, Recovered(Up334183645354635643564364582343535443543663456543546345364356364555432332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up334183645354635643564364582343535443543663456543546345364356364555432332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up33418823435354435436634565435768768575865786576875687685432332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up33418823435354435436634565435768768575865786576875687685432332133244):
sleep 100
PixelSearch, X622227558, Y622227558, 457, 57, 503, 61, 0x292C2C, 1, Fast ; checking that smelting window has opened
if Errorlevel = 1
   GoTo, Recovered(Up334188234353544354366345654355432332133244)
else
click 237, 294
   GoTo, Recovered(Up33418823233213453454565433435453433232244)
Recovered(Up33418823233213453454565433435453433232244):
Recovered(Up3346754456747567546756454674567576457676786244):
PixelSearch, X62222755211422, Y62222755211422, 608, 70, 692, 159, 0x013CFD, 1, Fast ; checking for red dot to go to bank
if Errorlevel = 1
   GoTo, Recovered(Up334188232356745674567456733245365675678658567856784545133244)
else
mousemove X62222755211422, Y62222755211422
MouseMove, 10, 21, 1, R
click
   GoTo, Recovered(Up3341845676457475676458998089745453455678658567856784545133244)
Recovered(Up334188232356745674567456733245365675678658567856784545133244):
PixelSearch, X62222755211422, Y62222755211422, 608, 70, 692, 159, 0x002AEA, 1, Fast ; checking for red dot to go to bank
if Errorlevel = 1
   GoTo, Recovered(Up33418823233245365675678658567856784545133244)
else
mousemove X62222755211422, Y62222755211422
MouseMove, 10, 21, 1, R
click
   GoTo, Recovered(Up3341845676457475676458998089745453455678658567856784545133244)
Recovered(Up33418823233245365675678658567856784545133244):
PixelSearch, X62222755211422, Y62222755211422, 608, 70, 692, 159, 0x002BDE, 1, Fast ; checking for red dot to go to bank
if Errorlevel = 1
   GoTo, Recovered(Up334188345634557686786758567823233245365675678658567856784545133244)
else
mousemove X62222755211422, Y62222755211422
MouseMove, 10, 21, 1, R
click
   GoTo, Recovered(Up3341845676457475676458998089745453455678658567856784545133244)
Recovered(Up334188345634557686786758567823233245365675678658567856784545133244):
PixelSearch, X62222755211422, Y62222755211422, 608, 70, 692, 159, 0x1142F4, 1, Fast ; checking for red dot to go to bank
if Errorlevel = 1
   GoTo, Recovered(Up33418834563457654756745674567456745675457686786758567823233245365675678658567856784545133244)
else
mousemove X62222755211422, Y62222755211422
MouseMove, 10, 21, 1, R
click
   GoTo, Recovered(Up3341845676457475676458998089745453455678658567856784545133244)
Recovered(Up33418834563457654756745674567456745675457686786758567823233245365675678658567856784545133244):
PixelSearch, X62222755211422, Y62222755211422, 608, 70, 692, 159, 0x1242FC, 1, Fast ; checking for red dot to go to bank
if Errorlevel = 1
   GoTo, Recovered(Up334188345634557686786758567654456354363456543654363645823233245365675678658567856784545133244)
else
mousemove X62222755211422, Y62222755211422
MouseMove, 10, 21, 1, R
click
   GoTo, Recovered(Up3341845676457475676458998089745453455678658567856784545133244)
Recovered(Up334188345634557686786758567654456354363456543654363645823233245365675678658567856784545133244):
PixelSearch, X62222755211422, Y62222755211422, 608, 70, 692, 159, 0x144EFE, 1, Fast ; checking for red dot to go to bank
if Errorlevel = 1
   GoTo, Recovered(Up334188345634557686786758567823233245365675678658567856354635465643354635466784545133244)
else
mousemove X62222755211422, Y62222755211422
MouseMove, 10, 21, 1, R
click
   GoTo, Recovered(Up3341845676457475676458998089745453455678658567856784545133244)
Recovered(Up334188345634557686786758567823233245365675678658567856354635465643354635466784545133244):
PixelSearch, X62222755211422, Y62222755211422, 608, 70, 692, 159, 0x0741FF, 1, Fast ; checking for red dot to go to bank
if Errorlevel = 1
   GoTo, Recovered(Up33418834563455768678654656434563456456758567823233245365675678658567856784545133244)
else
mousemove X62222755211422, Y62222755211422
MouseMove, 10, 21, 1, R
click
   GoTo, Recovered(Up3341845676457475676458998089745453455678658567856784545133244)
Recovered(Up33418834563455768678654656434563456456758567823233245365675678658567856784545133244):
PixelSearch, X62222755211422, Y62222755211422, 608, 70, 692, 159, 0x0941FF, 1, Fast ; checking for red dot to go to bank
if Errorlevel = 1
   GoTo, Recovered(Up33418834563455768678675856782323324536563544563654546345636453456675678658567856784545133244)
else
mousemove X62222755211422, Y62222755211422
MouseMove, 10, 21, 1, R
click
   GoTo, Recovered(Up3341845676457475676458998089745453455678658567856784545133244)
Recovered(Up33418834563455768678675856782323324536563544563654546345636453456675678658567856784545133244):
PixelSearch, X62222755211422, Y62222755211422, 608, 70, 692, 159, 0x1741FE, 1, Fast ; checking for red dot to go to bank
if Errorlevel = 1
   GoTo, Recovered(Up334188345634557686786758567823233245365456465346534654365465365675678658567856784545133244)
else
mousemove X62222755211422, Y62222755211422
MouseMove, 10, 21, 1, R
click
   GoTo, Recovered(Up3341845676457475676458998089745453455678658567856784545133244)
Recovered(Up334188345634557686786758567823233245365456465346534654365465365675678658567856784545133244):
PixelSearch, X62222755211422, Y62222755211422, 608, 70, 692, 159, 0x1741FE, 1, Fast ; checking for red dot to go to bank
if Errorlevel = 1
   GoTo, Recovered(Up3341883456345576867867585678232332453656756786585678567845455786578657865786578657685786687133244)
else
mousemove X62222755211422, Y62222755211422
MouseMove, 10, 21, 1, R
click
   GoTo, Recovered(Up3341845676457475676458998089745453455678658567856784545133244)
Recovered(Up3341883456345576867867585678232332453656756786585678567845455786578657865786578657685786687133244):
PixelSearch, X62222755211422, Y62222755211422, 608, 70, 692, 159, 0x1B58FF, 1, Fast ; checking for red dot to go to bank
if Errorlevel = 1
   GoTo, Recovered(Up334188345634557686786758567823233245365675678658567856784545133244)
else
mousemove X62222755211422, Y62222755211422
MouseMove, 10, 21, 1, R
click
   GoTo, Recovered(Up3341845676457475676458998089745453455678658567856784545133244)
Recovered(Up3341845676457475676458998089745453455678658567856784545133244):
PixelSearch, X62222755211422000, Y62222755211422000, 559, 243, 602, 279, 0x509AAB, 1, Fast ; checking for gold gloves in invent
if Errorlevel = 1
   GoTo, Recovered(Up33413645634563456435643565643433244)
else
mousemove X62222755211422000, Y62222755211422000
click
Recovered(Up334188232333453454576543674567276546574567456745643433244):
sleep 5000
   GoTo, Recovered(Up334188232332133244)
Recovered(Up33413645634563456435643565643433244):
PixelSearch, X62222755211422000, Y62222755211422000, 559, 243, 602, 279, 0x55A4B6, 1, Fast ; checking for gold gloves in invent
if Errorlevel = 1
   GoTo, Recovered(Up334188232333453454576543674567276546574567456745643433244)
else
mousemove X62222755211422000, Y62222755211422000
click
sleep 5000
   GoTo, Recovered(Up334188232332133244)
Recovered(Up3344567647854646356345345324523452345567):
PixelSearch, X62222755211422, Y62222755211422, 657, 92, 699, 148, 0x2DBDD3, 1, Fast ; checking for bank minimap
if Errorlevel = 1
   GoTo, Recovered(Up334188232332133244)
else
mousemove X62222755211422, Y62222755211422
MouseMove, 0, 10, 1, R
click
sleep 15000
   GoTo, Recovered(Up334188232332133244)
Recovered(Up33418823233276546574567456745643433244): ; if blue text not detected
mousemove 720, 70
sleep 100
mousemove, 35, 61
    GoTo, Recovered(Up33418823233213656465763456342e34253445564657683244)
Recovered(Up33418823233276546574567456745643445645456343433244):
Recovered(Up334188232332765465745674567454567756487655675647345342234643433244): ; if blue text not detected
mousemove 720, 70
sleep 100
mousemove, 35, 61
    GoTo, Recovered(Up35433454354354355433418823233263745674563452345345324532453452133244)
Recovered(Up3343675765856786576578657865765644565465644564):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x013CFD, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up3353567867585678758657865768758676587865244)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4000
   GoTo, Recovered(Up334188232332136564657634543552435345234234523456342e34253445564657683244)
Recovered(Up3353567867585678758657865768758676587865244):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x002BDE, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up335342697896784564563244)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4000
   GoTo, Recovered(Up334188232332136564657634543552435345234234523456342e34253445564657683244)
Recovered(Up335342697896784564563244):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x002AEA, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up98756943563465446436345633244)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4000
   GoTo, Recovered(Up334188232332136564657634543552435345234234523456342e34253445564657683244)
Recovered(Up98756943563465446436345633244):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x1142F4, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up334188654364564356345623233345345345576765655467354364536344354354534534534521332444)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4200
   GoTo, Recovered(Up334188232332136564657634543552435345234234523456342e34253445564657683244)
Recovered(Up334188654364564356345623233345345345576765655467354364536344354354534534534521332444):
PixelSearch, X622227, Y622227, 642, 124, 657, 136, 0x1242FC, 1, Fast ; checking for minimap icon (red dot)
if Errorlevel = 1
   GoTo, Recovered(Up3343675765856786576578657865765644565465644564)
else
mousemove X622227, Y622227
MouseMove, -15, 0, 1, R
click
sleep 4200
   GoTo, Recovered(Up334188232332136564657634543552435345234234523456342e34253445564657683244)
}
Return

Buttonglassblowoillantern:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up331234234234234234565544188232332133):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up334188232332133)
Recovered(Up3312342345544188232332133):
sleep 5000
Recovered(Up334188232332133):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418228232332133)
else
click 487, 56
sleep 500
GoTo, Recovered(Up334188232332133)
Recovered(Up33418228232332133):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432434324324324326565234189823233329875544112286437906)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30034432243567675756434343223432767689980002342341898232332133)
Recover(Up30000234435432324432434324324324326565234189823233329875544112286437906):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326543543543435543565234189823233329875544112286437906)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30034432243567675756434343223432767689980002342341898232332133)
Recover(Up300002344354323244324326543543543435543565234189823233329875544112286437906):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002432243324432324432344354323244324326565234189823233329875544112286437906)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30034432243567675756434343223432767689980002342341898232332133)
Recover(Up300002432243324432324432344354323244324326565234189823233329875544112286437906):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344432432432432342354323244324326565234189823233329875544112286437906)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30034432243567675756434343223432767689980002342341898232332133)
Recover(Up300002344432432432432342354323244324326565234189823233329875544112286437906):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023435435576576844354323244324326565234189823233329875544112286437906)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30034432243567675756434343223432767689980002342341898232332133)
Recover(Up3000023435435576576844354323244324326565234189823233329875544112286437906):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344434324236567354323244324326565234189823233329875544112286437906)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30034432243567675756434343223432767689980002342341898232332133)
Recover(Up300002344434324236567354323244324326565234189823233329875544112286437906):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300543345678678987978933329875544112286437906)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30034432243567675756434343223432767689980002342341898232332133)
Recover(Up300543345678678987978933329875544112286437906):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324323432443344324326565234189823233329875544112286437906)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30034432243567675756434343223432767689980002342341898232332133)
Recover(Up30000234435432324323432443344324326565234189823233329875544112286437906):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343243234244354323244324326565234189823233329875544112286437906)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30034432243567675756434343223432767689980002342341898232332133)
Recover(Up300002343243234244354323244324326565234189823233329875544112286437906):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326565234189432432432432823233329875544112286437906)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30034432243567675756434343223432767689980002342341898232332133)
Recover(Up300002344354323244324326565234189432432432432823233329875544112286437906):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up304324323424320002344354323244324326565234189823233329875544112286437906)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30034432243567675756434343223432767689980002342341898232332133)
Recover(Up304324323424320002344354323244324326565234189823233329875544112286437906):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326565234189823233329875544112286437906)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30034432243567675756434343223432767689980002342341898232332133)
Recover(Up300002344354323244324326565234189823233329875544112286437906):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up300002342341898232332133)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up334188232332133)
Recover(Up30034432243567675756434343223432767689980002342341898232332133):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334188232332133)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw glassblow pipe and first item
click 443, 343
sleep 1000
sleep 500
	mousemove 138, 131
	click left
	sleep 50
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down11004188232332133)
Recover(Down11004188232332133):
Recover(Down23402004188232332133):
send {ESC}
click 578, 261 ; 28th item
sleep 500
click 623, 262 ; 27st item
sleep 2000
	click right 205, 124	
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 2000
send 99
send {enter}
sleep 49000
   GoTo, Recovered(Up334188232332133)
	Goto, Recovered(Up334188232332133)
   GoTo, Recover(Down23402004188232332133)
Recover(Down200004188232332133):	
	GoTo, Recovered(Up334188232332133)
Recover(Down300004188232332133):
SoundBeep
	GoTo, Recovered(Up334188232332133)
Recover(Down491298232332133):
sleep 30000
Recover(Up300002342341898232332133):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up334188232332133)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up3312342345544188232332133)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down3000023423412343242898232332133)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down30000234235464541645898232332133)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down300002342341898232332133)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down300002342341898232332133)
else
	click 402, 312
sleep 100
Recover(Down30000234235464541645898232332133):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341898232332133)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341898232332133)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up331234234234234234565544188232332133)
Recover(Down3000023423412343242898232332133):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up334188232332133)
Recover(Down300002342341898232332133):
}
Return

Buttonglassblowoillamp:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33123423423423423456554418823233213):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up33418823233213)
Recovered(Up331234234554418823233213):
sleep 5000
Recovered(Up33418823233213):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341822823233213)
else
click 487, 56
sleep 500
GoTo, Recovered(Up33418823233213)
Recovered(Up3341822823233213):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243432432432432656523418982323332987554411228643790)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up43244323423424324323432767887434330000234234189823233213)
Recover(Up3000023443543232443243432432432432656523418982323332987554411228643790):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432654354354343554356523418982323332987554411228643790)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up43244323423424324323432767887434330000234234189823233213)
Recover(Up30000234435432324432432654354354343554356523418982323332987554411228643790):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000243224332443232443234435432324432432656523418982323332987554411228643790)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up43244323423424324323432767887434330000234234189823233213)
Recover(Up30000243224332443232443234435432324432432656523418982323332987554411228643790):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443243243243234235432324432432656523418982323332987554411228643790)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up43244323423424324323432767887434330000234234189823233213)
Recover(Up30000234443243243243234235432324432432656523418982323332987554411228643790):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343543557657684435432324432432656523418982323332987554411228643790)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up43244323423424324323432767887434330000234234189823233213)
Recover(Up300002343543557657684435432324432432656523418982323332987554411228643790):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443432423656735432324432432656523418982323332987554411228643790)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up43244323423424324323432767887434330000234234189823233213)
Recover(Up30000234443432423656735432324432432656523418982323332987554411228643790):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30054334567867898797893332987554411228643790)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up43244323423424324323432767887434330000234234189823233213)
Recover(Up30054334567867898797893332987554411228643790):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232432343244334432432656523418982323332987554411228643790)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up43244323423424324323432767887434330000234234189823233213)
Recover(Up3000023443543232432343244334432432656523418982323332987554411228643790):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234324323424435432324432432656523418982323332987554411228643790)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up43244323423424324323432767887434330000234234189823233213)
Recover(Up30000234324323424435432324432432656523418982323332987554411228643790):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418943243243243282323332987554411228643790)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up43244323423424324323432767887434330000234234189823233213)
Recover(Up30000234435432324432432656523418943243243243282323332987554411228643790):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30432432342432000234435432324432432656523418982323332987554411228643790)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up43244323423424324323432767887434330000234234189823233213)
Recover(Up30432432342432000234435432324432432656523418982323332987554411228643790):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418982323332987554411228643790)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up43244323423424324323432767887434330000234234189823233213)
Recover(Up30000234435432324432432656523418982323332987554411228643790):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up30000234234189823233213)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up33418823233213)
Recover(Up43244323423424324323432767887434330000234234189823233213):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418823233213)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw glassblow pipe and first item
click 443, 343
sleep 1000
sleep 500
	mousemove 138, 131
	click left
	sleep 50
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down1100418823233213)
Recover(Down1100418823233213):
Recover(Down2340200418823233213):
send {ESC}
click 578, 261 ; 28th item
sleep 500
click 623, 262 ; 27st item
sleep 2000
	click right 289, 122	
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 2000
send 99
send {enter}
sleep 49000
   GoTo, Recovered(Up33418823233213)
	Goto, Recovered(Up33418823233213)
   GoTo, Recover(Down2340200418823233213)
Recover(Down20000418823233213):	
	GoTo, Recovered(Up33418823233213)
Recover(Down30000418823233213):
SoundBeep
	GoTo, Recovered(Up33418823233213)
Recover(Down49129823233213):
sleep 30000
Recover(Up30000234234189823233213):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up33418823233213)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up331234234554418823233213)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down300002342341234324289823233213)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down3000023423546454164589823233213)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233213)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233213)
else
	click 402, 312
sleep 100
Recover(Down3000023423546454164589823233213):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233213)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233213)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up33123423423423423456554418823233213)
Recover(Down300002342341234324289823233213):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up33418823233213)
Recover(Down30000234234189823233213):
}
Return

Buttonglassblowbeerglass:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3312342342342342345655441882323321):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up3341882323321)
Recovered(Up33123423455441882323321):
sleep 5000
Recovered(Up3341882323321):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334182282323321)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341882323321)
Recovered(Up334182282323321):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324343243243243265652341898232333298755441122864379)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up332432524343243243254456546456676767887000023423418982323321)
Recover(Up300002344354323244324343243243243265652341898232333298755441122864379):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265435435434355435652341898232333298755441122864379)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up332432524343243243254456546456676767887000023423418982323321)
Recover(Up3000023443543232443243265435435434355435652341898232333298755441122864379):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000024322433244323244323443543232443243265652341898232333298755441122864379)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up332432524343243243254456546456676767887000023423418982323321)
Recover(Up3000024322433244323244323443543232443243265652341898232333298755441122864379):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023444324324324323423543232443243265652341898232333298755441122864379)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up332432524343243243254456546456676767887000023423418982323321)
Recover(Up3000023444324324324323423543232443243265652341898232333298755441122864379):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234354355765768443543232443243265652341898232333298755441122864379)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up332432524343243243254456546456676767887000023423418982323321)
Recover(Up30000234354355765768443543232443243265652341898232333298755441122864379):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023444343242365673543232443243265652341898232333298755441122864379)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up332432524343243243254456546456676767887000023423418982323321)
Recover(Up3000023444343242365673543232443243265652341898232333298755441122864379):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3005433456786789879789333298755441122864379)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up332432524343243243254456546456676767887000023423418982323321)
Recover(Up3005433456786789879789333298755441122864379):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323243234324433443243265652341898232333298755441122864379)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up332432524343243243254456546456676767887000023423418982323321)
Recover(Up300002344354323243234324433443243265652341898232333298755441122864379):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023432432342443543232443243265652341898232333298755441122864379)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up332432524343243243254456546456676767887000023423418982323321)
Recover(Up3000023432432342443543232443243265652341898232333298755441122864379):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265652341894324324324328232333298755441122864379)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up332432524343243243254456546456676767887000023423418982323321)
Recover(Up3000023443543232443243265652341894324324324328232333298755441122864379):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3043243234243200023443543232443243265652341898232333298755441122864379)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up332432524343243243254456546456676767887000023423418982323321)
Recover(Up3043243234243200023443543232443243265652341898232333298755441122864379):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265652341898232333298755441122864379)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up332432524343243243254456546456676767887000023423418982323321)
Recover(Up3000023443543232443243265652341898232333298755441122864379):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up3000023423418982323321)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up3341882323321)
Recover(Up332432524343243243254456546456676767887000023423418982323321):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341882323321)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw glassblow pipe and first item
click 443, 343
sleep 1000
sleep 500
	mousemove 138, 131
	click left
	sleep 50
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down110041882323321)
Recover(Down110041882323321):
Recover(Down234020041882323321):
send {ESC}
click 578, 261 ; 28th item
sleep 500
click 623, 262 ; 27st item
sleep 2000
	click right 110, 122	
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 2000
send 99
send {enter}
sleep 49000
   GoTo, Recovered(Up3341882323321)
	Goto, Recovered(Up3341882323321)
   GoTo, Recover(Down234020041882323321)
Recover(Down2000041882323321):	
	GoTo, Recovered(Up3341882323321)
Recover(Down3000041882323321):
SoundBeep
	GoTo, Recovered(Up3341882323321)
Recover(Down4912982323321):
sleep 30000
Recover(Up3000023423418982323321):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3341882323321)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up33123423455441882323321)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down30000234234123432428982323321)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down300002342354645416458982323321)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323321)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323321)
else
	click 402, 312
sleep 100
Recover(Down300002342354645416458982323321):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323321)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323321)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up3312342342342342345655441882323321)
Recover(Down30000234234123432428982323321):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up3341882323321)
Recover(Down3000023423418982323321):
}
Return

Buttonfletchingdarts:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3312342342342342345655441882323344):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up3341882323344)
Recovered(Up33123423455441882323344):
sleep 5000
Recovered(Up3341882323344):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
click 578, 261 ; 28th item
click 623, 262 ; 27st item
GoTo, Recovered(Up3341882323344)
}
Return

Buttonfletchingarrows:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up331234234234234234565544188232334411):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up334188232334411)
Recovered(Up3312342345544188232334411):
sleep 5000
Recovered(Up334188232334411):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
click 578, 261 ; 28th item
click 623, 262 ; 27st item
sleep 2000
	mousemove 254, 417
	click right
	MouseMove, 0, 55, 1, R

	sleep 50
	click left
sleep 13000
GoTo, Recovered(Up334188232334411)
}
Return

Buttonglassblowfishbowl:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33123423423423423456554418823233):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up33418823233)
Recovered(Up331234234554418823233):
sleep 5000
Recovered(Up33418823233):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341822823233)
else
click 487, 56
sleep 500
GoTo, Recovered(Up33418823233)
Recovered(Up3341822823233):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432434324324324326565234189823233329875544112286437)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3002323432342656565756423423487878700234234189823233)
Recover(Up30000234435432324432434324324324326565234189823233329875544112286437):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326543543543435543565234189823233329875544112286437)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3002323432342656565756423423487878700234234189823233)
Recover(Up300002344354323244324326543543543435543565234189823233329875544112286437):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002432243324432324432344354323244324326565234189823233329875544112286437)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3002323432342656565756423423487878700234234189823233)
Recover(Up300002432243324432324432344354323244324326565234189823233329875544112286437):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344432432432432342354323244324326565234189823233329875544112286437)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3002323432342656565756423423487878700234234189823233)
Recover(Up300002344432432432432342354323244324326565234189823233329875544112286437):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023435435576576844354323244324326565234189823233329875544112286437)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3002323432342656565756423423487878700234234189823233)
Recover(Up3000023435435576576844354323244324326565234189823233329875544112286437):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344434324236567354323244324326565234189823233329875544112286437)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3002323432342656565756423423487878700234234189823233)
Recover(Up300002344434324236567354323244324326565234189823233329875544112286437):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300543345678678987978933329875544112286437)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3002323432342656565756423423487878700234234189823233)
Recover(Up300543345678678987978933329875544112286437):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324323432443344324326565234189823233329875544112286437)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3002323432342656565756423423487878700234234189823233)
Recover(Up30000234435432324323432443344324326565234189823233329875544112286437):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343243234244354323244324326565234189823233329875544112286437)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3002323432342656565756423423487878700234234189823233)
Recover(Up300002343243234244354323244324326565234189823233329875544112286437):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326565234189432432432432823233329875544112286437)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3002323432342656565756423423487878700234234189823233)
Recover(Up300002344354323244324326565234189432432432432823233329875544112286437):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up304324323424320002344354323244324326565234189823233329875544112286437)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3002323432342656565756423423487878700234234189823233)
Recover(Up304324323424320002344354323244324326565234189823233329875544112286437):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326565234189823233329875544112286437)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3002323432342656565756423423487878700234234189823233)
Recover(Up300002344354323244324326565234189823233329875544112286437):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up30000234234189823233)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up33418823233)
Recover(Up3002323432342656565756423423487878700234234189823233):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418823233)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw glassblow pipe and first item
click 443, 343
sleep 1000
sleep 500
	mousemove 138, 131
	click left
	sleep 50
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down1100418823233)
Recover(Down1100418823233):
Recover(Down2340200418823233):
send {ESC}
click 578, 261 ; 28th item
sleep 500
click 623, 262 ; 27st item
sleep 2000
	click right 115, 245	
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 2000
send 99
send {enter}
sleep 49000
   GoTo, Recovered(Up33418823233)
	Goto, Recovered(Up33418823233)
   GoTo, Recover(Down2340200418823233)
Recover(Down20000418823233):	
	GoTo, Recovered(Up33418823233)
Recover(Down30000418823233):
SoundBeep
	GoTo, Recovered(Up33418823233)
Recover(Down49129823233):
sleep 30000
Recover(Up30000234234189823233):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up33418823233)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up331234234554418823233)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down300002342341234324289823233)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down3000023423546454164589823233)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233)
else
	click 402, 312
sleep 100
Recover(Down3000023423546454164589823233):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up33123423423423423456554418823233)
Recover(Down300002342341234324289823233):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up33418823233)
Recover(Down30000234234189823233):
}
Return

Buttonfletchingshortbows:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33123423423423423456554418823233321):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up33418823233321)
Recovered(Up331234234554418823233321):
sleep 5000
Recovered(Up33418823233321):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341822823233321)
else
click 487, 56
sleep 500
GoTo, Recovered(Up33418823233321)
Recovered(Up3341822823233321):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324343243243243265652341898232333298)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30324432564678898043554300023423443543543543232323189823233321)
Recover(Up300002344354323244324343243243243265652341898232333298):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265435435434355435652341898232333298)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30324432564678898043554300023423443543543543232323189823233321)
Recover(Up3000023443543232443243265435435434355435652341898232333298):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000024322433244323244323443543232443243265652341898232333298)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30324432564678898043554300023423443543543543232323189823233321)
Recover(Up3000024322433244323244323443543232443243265652341898232333298):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023444324324324323423543232443243265652341898232333298)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30324432564678898043554300023423443543543543232323189823233321)
Recover(Up3000023444324324324323423543232443243265652341898232333298):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234354355765768443543232443243265652341898232333298)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30324432564678898043554300023423443543543543232323189823233321)
Recover(Up30000234354355765768443543232443243265652341898232333298):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023444343242365673543232443243265652341898232333298)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30324432564678898043554300023423443543543543232323189823233321)
Recover(Up3000023444343242365673543232443243265652341898232333298):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3005433456786789879789333298)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30324432564678898043554300023423443543543543232323189823233321)
Recover(Up3005433456786789879789333298):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323243234324433443243265652341898232333298)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30324432564678898043554300023423443543543543232323189823233321)
Recover(Up300002344354323243234324433443243265652341898232333298):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023432432342443543232443243265652341898232333298)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30324432564678898043554300023423443543543543232323189823233321)
Recover(Up3000023432432342443543232443243265652341898232333298):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265652341894324324324328232333298)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30324432564678898043554300023423443543543543232323189823233321)
Recover(Up3000023443543232443243265652341894324324324328232333298):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3043243234243200023443543232443243265652341898232333298)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30324432564678898043554300023423443543543543232323189823233321)
Recover(Up3043243234243200023443543232443243265652341898232333298):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265652341898232333298)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30324432564678898043554300023423443543543543232323189823233321)
Recover(Up3000023443543232443243265652341898232333298):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up30000234234189823233321)
   else
	mousemove X433, Y433
	click 
sleep 10000
	Goto, Recovered(Up33418823233321)
Recover(Up30324432564678898043554300023423443543543543232323189823233321):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418823233321)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw knife and logs
click 443, 343
sleep 1000
sleep 500
	mousemove 138, 131
	click left
	sleep 50
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down1100418823233321)
Recover(Down1100418823233321):
Recover(Down2340200418823233321):
send {ESC}
click 578, 261 ; 28th item
sleep 500
click 623, 262 ; 27st item
sleep 2000
	click right 195, 431	
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 2000
send 99
send {enter}
sleep 50000
   GoTo, Recovered(Up33418823233321)
	Goto, Recovered(Up33418823233321)
   GoTo, Recover(Down2340200418823233321)
Recover(Down20000418823233321):	
	GoTo, Recovered(Up33418823233321)
Recover(Down30000418823233321):
SoundBeep
	GoTo, Recovered(Up33418823233321)
Recover(Down49129823233321):
sleep 30000
Recover(Up30000234234189823233321):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up33418823233321)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up331234234554418823233321)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down300002342341234324289823233321)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down3000023423546454164589823233321)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233321)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233321)
else
	click 402, 312
sleep 100
Recover(Down3000023423546454164589823233321):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233321)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233321)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up33123423423423423456554418823233321)
Recover(Down300002342341234324289823233321):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up33418823233321)
Recover(Down30000234234189823233321):
}
Return

Buttonstringingbows:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up331234234234234234565544188232333215):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up334188232333215)
Recovered(Up3312342345544188232333215):
sleep 5000
Recovered(Up334188232333215):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418228232333215)
else
click 487, 56
sleep 500
GoTo, Recovered(Up334188232333215)
Recovered(Up33418228232333215):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324343243243243265652341898232333298755)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30003443232443243254645664523423402342341898232333215)
Recover(Up300002344354323244324343243243243265652341898232333298755):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265435435434355435652341898232333298755)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30003443232443243254645664523423402342341898232333215)
Recover(Up3000023443543232443243265435435434355435652341898232333298755):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000024322433244323244323443543232443243265652341898232333298755)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30003443232443243254645664523423402342341898232333215)
Recover(Up3000024322433244323244323443543232443243265652341898232333298755):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023444324324324323423543232443243265652341898232333298755)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30003443232443243254645664523423402342341898232333215)
Recover(Up3000023444324324324323423543232443243265652341898232333298755):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234354355765768443543232443243265652341898232333298755)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30003443232443243254645664523423402342341898232333215)
Recover(Up30000234354355765768443543232443243265652341898232333298755):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023444343242365673543232443243265652341898232333298755)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30003443232443243254645664523423402342341898232333215)
Recover(Up3000023444343242365673543232443243265652341898232333298755):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3005433456786789879789333298755)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30003443232443243254645664523423402342341898232333215)
Recover(Up3005433456786789879789333298755):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323243234324433443243265652341898232333298755)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30003443232443243254645664523423402342341898232333215)
Recover(Up300002344354323243234324433443243265652341898232333298755):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023432432342443543232443243265652341898232333298755)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30003443232443243254645664523423402342341898232333215)
Recover(Up3000023432432342443543232443243265652341898232333298755):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265652341894324324324328232333298755)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30003443232443243254645664523423402342341898232333215)
Recover(Up3000023443543232443243265652341894324324324328232333298755):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3043243234243200023443543232443243265652341898232333298755)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30003443232443243254645664523423402342341898232333215)
Recover(Up3043243234243200023443543232443243265652341898232333298755):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265652341898232333298755)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30003443232443243254645664523423402342341898232333215)
Recover(Up3000023443543232443243265652341898232333298755):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up300002342341898232333215)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up334188232333215)
Recover(Up30003443232443243254645664523423402342341898232333215):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334188232333215)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw strings and unstrung bows
click 443, 343
sleep 1000
sleep 500
	mousemove 138, 131
	click right
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
	sleep 300
	mousemove 92, 134
	click right
	MouseMove, 0, 70, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down11004188232333215)
Recover(Down11004188232333215):
Recover(Down23402004188232333215):
send {ESC}
click 578, 261 ; 28th item
sleep 500
click 661, 369 ; 27st item
sleep 2000
	click right 253, 432	
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 2000
send {enter}
sleep 17000
   GoTo, Recovered(Up334188232333215)
	Goto, Recovered(Up334188232333215)
   GoTo, Recover(Down23402004188232333215)
Recover(Down200004188232333215):	
	GoTo, Recovered(Up334188232333215)
Recover(Down300004188232333215):
SoundBeep
	GoTo, Recovered(Up334188232333215)
Recover(Down491298232333215):
sleep 30000
Recover(Up300002342341898232333215):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up334188232333215)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up3312342345544188232333215)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down3000023423412343242898232333215)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down30000234235464541645898232333215)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down300002342341898232333215)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down300002342341898232333215)
else
	click 402, 312
sleep 100
Recover(Down30000234235464541645898232333215):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341898232333215)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341898232333215)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up331234234234234234565544188232333215)
Recover(Down3000023423412343242898232333215):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up334188232333215)
Recover(Down300002342341898232333215):
}
Return

Buttonfletchinglongbows:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3312342342342342345655441882323332):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up3341882323332)
Recovered(Up33123423455441882323332):
sleep 5000
Recovered(Up3341882323332):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334182282323332)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341882323332)
Recovered(Up334182282323332):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243432432432432656523418982323332)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332)
Recover(Up3000023443543232443243432432432432656523418982323332):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432654354354343554356523418982323332)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332)
Recover(Up30000234435432324432432654354354343554356523418982323332):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000243224332443232443234435432324432432656523418982323332)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332)
Recover(Up30000243224332443232443234435432324432432656523418982323332):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443243243243234235432324432432656523418982323332)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332)
Recover(Up30000234443243243243234235432324432432656523418982323332):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343543557657684435432324432432656523418982323332)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332)
Recover(Up300002343543557657684435432324432432656523418982323332):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443432423656735432324432432656523418982323332)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332)
Recover(Up30000234443432423656735432324432432656523418982323332):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30054334567867898797893332)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332)
Recover(Up30054334567867898797893332):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232432343244334432432656523418982323332)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332)
Recover(Up3000023443543232432343244334432432656523418982323332):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234324323424435432324432432656523418982323332)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332)
Recover(Up30000234324323424435432324432432656523418982323332):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418943243243243282323332)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332)
Recover(Up30000234435432324432432656523418943243243243282323332):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30432432342432000234435432324432432656523418982323332)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332)
Recover(Up30432432342432000234435432324432432656523418982323332):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418982323332)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3000023443543234324432566757864324432432656523418982323332)
Recover(Up30000234435432324432432656523418982323332):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up3000023423418982323332)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up3341882323332)
Recover(Up3000023443543234324432566757864324432432656523418982323332):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341882323332)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw knife and logs
click 443, 343
sleep 1000
sleep 500
	mousemove 138, 131
	click left
	sleep 50
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down110041882323332)
Recover(Down110041882323332):
Recover(Down234020041882323332):
send {ESC}
click 578, 261 ; 28th item
sleep 500
click 623, 262 ; 27st item
sleep 2000
	click right 324, 435	
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 2000
send 99
send {enter}
sleep 50000
   GoTo, Recovered(Up3341882323332)
	Goto, Recovered(Up3341882323332)
   GoTo, Recover(Down234020041882323332)
Recover(Down2000041882323332):	
	GoTo, Recovered(Up3341882323332)
Recover(Down3000041882323332):
SoundBeep
	GoTo, Recovered(Up3341882323332)
Recover(Down4912982323332):
sleep 30000
Recover(Up3000023423418982323332):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3341882323332)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up33123423455441882323332)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down30000234234123432428982323332)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down300002342354645416458982323332)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323332)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323332)
else
	click 402, 312
sleep 100
Recover(Down300002342354645416458982323332):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323332)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323332)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up3312342342342342345655441882323332)
Recover(Down30000234234123432428982323332):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up3341882323332)
Recover(Down3000023423418982323332):
}
Return

Buttonglassblowglassorb:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up331234234234234234565544188232332):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up334188232332)
Recovered(Up3312342345544188232332):
sleep 5000
Recovered(Up334188232332):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418228232332)
else
click 487, 56
sleep 500
GoTo, Recovered(Up334188232332)
Recovered(Up33418228232332):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243432432432432656523418982323332987554411228643)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332)
Recover(Up3000023443543232443243432432432432656523418982323332987554411228643):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432654354354343554356523418982323332987554411228643)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332)
Recover(Up30000234435432324432432654354354343554356523418982323332987554411228643):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000243224332443232443234435432324432432656523418982323332987554411228643)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332)
Recover(Up30000243224332443232443234435432324432432656523418982323332987554411228643):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443243243243234235432324432432656523418982323332987554411228643)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332)
Recover(Up30000234443243243243234235432324432432656523418982323332987554411228643):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343543557657684435432324432432656523418982323332987554411228643)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332)
Recover(Up300002343543557657684435432324432432656523418982323332987554411228643):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443432423656735432324432432656523418982323332987554411228643)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332)
Recover(Up30000234443432423656735432324432432656523418982323332987554411228643):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30054334567867898797893332987554411228643)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332)
Recover(Up30054334567867898797893332987554411228643):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232432343244334432432656523418982323332987554411228643)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332)
Recover(Up3000023443543232432343244334432432656523418982323332987554411228643):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234324323424435432324432432656523418982323332987554411228643)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332)
Recover(Up30000234324323424435432324432432656523418982323332987554411228643):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418943243243243282323332987554411228643)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332)
Recover(Up30000234435432324432432656523418943243243243282323332987554411228643):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30432432342432000234435432324432432656523418982323332987554411228643)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332)
Recover(Up30432432342432000234435432324432432656523418982323332987554411228643):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418982323332987554411228643)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332)
Recover(Up30000234435432324432432656523418982323332987554411228643):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up300002342341898232332)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up334188232332)
Recover(Up303434234234243234232432465562234236565650002342341898232332):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334188232332)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw glassblow pipe and first item
click 443, 343
sleep 1000
sleep 500
	mousemove 138, 131
	click left
	sleep 50
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down11004188232332)
Recover(Down11004188232332):
Recover(Down23402004188232332):
send {ESC}
click 578, 261 ; 28th item
sleep 500
click 623, 262 ; 27st item
sleep 2000
	click right 206, 244	
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 2000
send 99
send {enter}
sleep 49000
   GoTo, Recovered(Up334188232332)
	Goto, Recovered(Up334188232332)
   GoTo, Recover(Down23402004188232332)
Recover(Down200004188232332):	
	GoTo, Recovered(Up334188232332)
Recover(Down300004188232332):
SoundBeep
	GoTo, Recovered(Up334188232332)
Recover(Down491298232332):
sleep 30000
Recover(Up300002342341898232332):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up334188232332)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up3312342345544188232332)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down3000023423412343242898232332)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down30000234235464541645898232332)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down300002342341898232332)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down300002342341898232332)
else
	click 402, 312
sleep 100
Recover(Down30000234235464541645898232332):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341898232332)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341898232332)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up331234234234234234565544188232332)
Recover(Down3000023423412343242898232332):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up334188232332)
Recover(Down300002342341898232332):
}
Return

Buttonenchantingsapphirejewellery:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33123423423423423456554418823233231):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up33418823233231)
Recovered(Up331234234554418823233231):
sleep 5000
Recovered(Up33418823233231):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341822823233231)
else
click 487, 56
sleep 500
GoTo, Recovered(Up33418823233231)
Recovered(Up3341822823233231):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324343243243243265652341898232333298755441122864331)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30343423423424323423243246556223423656565000234234189823233231)
Recover(Up300002344354323244324343243243243265652341898232333298755441122864331):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265435435434355435652341898232333298755441122864331)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30343423423424323423243246556223423656565000234234189823233231)
Recover(Up3000023443543232443243265435435434355435652341898232333298755441122864331):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000024322433244323244323443543232443243265652341898232333298755441122864331)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30343423423424323423243246556223423656565000234234189823233231)
Recover(Up3000024322433244323244323443543232443243265652341898232333298755441122864331):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023444324324324323423543232443243265652341898232333298755441122864331)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30343423423424323423243246556223423656565000234234189823233231)
Recover(Up3000023444324324324323423543232443243265652341898232333298755441122864331):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234354355765768443543232443243265652341898232333298755441122864331)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30343423423424323423243246556223423656565000234234189823233231)
Recover(Up30000234354355765768443543232443243265652341898232333298755441122864331):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023444343242365673543232443243265652341898232333298755441122864331)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30343423423424323423243246556223423656565000234234189823233231)
Recover(Up3000023444343242365673543232443243265652341898232333298755441122864331):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3005433456786789879789333298755441122864331)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30343423423424323423243246556223423656565000234234189823233231)
Recover(Up3005433456786789879789333298755441122864331):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323243234324433443243265652341898232333298755441122864331)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30343423423424323423243246556223423656565000234234189823233231)
Recover(Up300002344354323243234324433443243265652341898232333298755441122864331):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023432432342443543232443243265652341898232333298755441122864331)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30343423423424323423243246556223423656565000234234189823233231)
Recover(Up3000023432432342443543232443243265652341898232333298755441122864331):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265652341894324324324328232333298755441122864331)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30343423423424323423243246556223423656565000234234189823233231)
Recover(Up3000023443543232443243265652341894324324324328232333298755441122864331):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3043243234243200023443543232443243265652341898232333298755441122864331)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30343423423424323423243246556223423656565000234234189823233231)
Recover(Up3043243234243200023443543232443243265652341898232333298755441122864331):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265652341898232333298755441122864331)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up30343423423424323423243246556223423656565000234234189823233231)
Recover(Up3000023443543232443243265652341898232333298755441122864331):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up30000234234189823233231)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up33418823233231)
Recover(Up30343423423424323423243246556223423656565000234234189823233231):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418823233231)
else
mousemove 661, 258
click right
	MouseMove, 0, 100, 1, R
click
sleep 1000
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw unehnchanted sapphire jewellery
sleep 1000
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down1100418823233231)
Recover(Down1100418823233231):
Recover(Down2340200418823233231):
send {ESC}
click 744, 216
sleep 200
Recover(Down110041882326543645634575683433231):
click 692, 266 ; click spell
sleep 1000
PixelSearch, X43341, Y43341, 555, 242, 728, 497, 0x338856, 1, Fast ; looking for unenchanted shit
if Errorlevel = 1
   GoTo, Recover(Up3034342342343456435643564356234234189823233231)
   else
mousemove X43341, Y43341
click
sleep 1500
   GoTo, Recover(Down110041882326543645634575683433231)
Recover(Up3034342342343456435643564356234234189823233231):
click 645, 220
sleep 100
   GoTo, Recovered(Up3341822823233231)
sleep 2000
send 99
send {enter}
sleep 49000
   GoTo, Recovered(Up33418823233231)
	Goto, Recovered(Up33418823233231)
   GoTo, Recover(Down2340200418823233231)
Recover(Down20000418823233231):	
	GoTo, Recovered(Up33418823233231)
Recover(Down30000418823233231):
SoundBeep
	GoTo, Recovered(Up33418823233231)
Recover(Down49129823233231):
sleep 30000
Recover(Up30000234234189823233231):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up33418823233231)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up331234234554418823233231)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down300002342341234324289823233231)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down3000023423546454164589823233231)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233231)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233231)
else
	click 402, 312
sleep 100
Recover(Down3000023423546454164589823233231):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233231)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233231)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up33123423423423423456554418823233231)
Recover(Down300002342341234324289823233231):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up33418823233231)
Recover(Down30000234234189823233231):
}
Return

Buttonenchantingemeraldjewellery:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3312342342342342345655441882323323144):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up3341882323323144)
Recovered(Up33123423455441882323323144):
sleep 5000
Recovered(Up3341882323323144):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334182282323323144)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341882323323144)
Recovered(Up334182282323323144):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432434324324324326565234189823233329875544112286433144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144)
Recover(Up30000234435432324432434324324324326565234189823233329875544112286433144):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326543543543435543565234189823233329875544112286433144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144)
Recover(Up300002344354323244324326543543543435543565234189823233329875544112286433144):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002432243324432324432344354323244324326565234189823233329875544112286433144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144)
Recover(Up300002432243324432324432344354323244324326565234189823233329875544112286433144):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344432432432432342354323244324326565234189823233329875544112286433144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144)
Recover(Up300002344432432432432342354323244324326565234189823233329875544112286433144):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023435435576576844354323244324326565234189823233329875544112286433144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144)
Recover(Up3000023435435576576844354323244324326565234189823233329875544112286433144):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344434324236567354323244324326565234189823233329875544112286433144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144)
Recover(Up300002344434324236567354323244324326565234189823233329875544112286433144):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300543345678678987978933329875544112286433144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144)
Recover(Up300543345678678987978933329875544112286433144):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324323432443344324326565234189823233329875544112286433144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144)
Recover(Up30000234435432324323432443344324326565234189823233329875544112286433144):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343243234244354323244324326565234189823233329875544112286433144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144)
Recover(Up300002343243234244354323244324326565234189823233329875544112286433144):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326565234189432432432432823233329875544112286433144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144)
Recover(Up300002344354323244324326565234189432432432432823233329875544112286433144):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up304324323424320002344354323244324326565234189823233329875544112286433144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144)
Recover(Up304324323424320002344354323244324326565234189823233329875544112286433144):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326565234189823233329875544112286433144)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144)
Recover(Up300002344354323244324326565234189823233329875544112286433144):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up3000023423418982323323144)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up3341882323323144)
Recover(Up3034342342342432342324324655622342365656500023423418982323323144):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341882323323144)
else
mousemove 661, 258
click right
	MouseMove, 0, 100, 1, R
click
sleep 1000
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw unehnchanted sapphire jewellery
sleep 1000
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down110041882323323144)
Recover(Down110041882323323144):
Recover(Down234020041882323323144):
send {ESC}
click 744, 216
sleep 200
Recover(Down11004188232654364563457568343323144):
click 620, 311 ; click spell
sleep 1000
PixelSearch, X43341, Y43341, 555, 242, 728, 497, 0x338856, 1, Fast ; looking for unenchanted shit
if Errorlevel = 1
   GoTo, Recover(Up303434234234345643564356435623423418982323323144)
   else
mousemove X43341, Y43341
click
sleep 1500
   GoTo, Recover(Down11004188232654364563457568343323144)
Recover(Up303434234234345643564356435623423418982323323144):
click 645, 220
sleep 100
   GoTo, Recovered(Up334182282323323144)
sleep 2000
send 99
send {enter}
sleep 49000
   GoTo, Recovered(Up3341882323323144)
	Goto, Recovered(Up3341882323323144)
   GoTo, Recover(Down234020041882323323144)
Recover(Down2000041882323323144):	
	GoTo, Recovered(Up3341882323323144)
Recover(Down3000041882323323144):
SoundBeep
	GoTo, Recovered(Up3341882323323144)
Recover(Down4912982323323144):
sleep 30000
Recover(Up3000023423418982323323144):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3341882323323144)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up33123423455441882323323144)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down30000234234123432428982323323144)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down300002342354645416458982323323144)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323323144)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323323144)
else
	click 402, 312
sleep 100
Recover(Down300002342354645416458982323323144):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323323144)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323323144)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up3312342342342342345655441882323323144)
Recover(Down30000234234123432428982323323144):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up3341882323323144)
Recover(Down3000023423418982323323144):
}
Return

Buttonenchantingrubyjewellery:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up331234234234234234565544188232332314466):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up334188232332314466)
Recovered(Up3312342345544188232332314466):
sleep 5000
Recovered(Up334188232332314466):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418228232332314466)
else
click 487, 56
sleep 500
GoTo, Recovered(Up334188232332314466)
Recovered(Up33418228232332314466):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243432432432432656523418982323332987554411228643314466)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332314466)
Recover(Up3000023443543232443243432432432432656523418982323332987554411228643314466):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432654354354343554356523418982323332987554411228643314466)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332314466)
Recover(Up30000234435432324432432654354354343554356523418982323332987554411228643314466):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000243224332443232443234435432324432432656523418982323332987554411228643314466)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332314466)
Recover(Up30000243224332443232443234435432324432432656523418982323332987554411228643314466):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443243243243234235432324432432656523418982323332987554411228643314466)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332314466)
Recover(Up30000234443243243243234235432324432432656523418982323332987554411228643314466):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343543557657684435432324432432656523418982323332987554411228643314466)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332314466)
Recover(Up300002343543557657684435432324432432656523418982323332987554411228643314466):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234443432423656735432324432432656523418982323332987554411228643314466)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332314466)
Recover(Up30000234443432423656735432324432432656523418982323332987554411228643314466):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30054334567867898797893332987554411228643314466)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332314466)
Recover(Up30054334567867898797893332987554411228643314466):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232432343244334432432656523418982323332987554411228643314466)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332314466)
Recover(Up3000023443543232432343244334432432656523418982323332987554411228643314466):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234324323424435432324432432656523418982323332987554411228643314466)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332314466)
Recover(Up30000234324323424435432324432432656523418982323332987554411228643314466):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418943243243243282323332987554411228643314466)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332314466)
Recover(Up30000234435432324432432656523418943243243243282323332987554411228643314466):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30432432342432000234435432324432432656523418982323332987554411228643314466)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332314466)
Recover(Up30432432342432000234435432324432432656523418982323332987554411228643314466):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432432656523418982323332987554411228643314466)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up303434234234243234232432465562234236565650002342341898232332314466)
Recover(Up30000234435432324432432656523418982323332987554411228643314466):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up300002342341898232332314466)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up334188232332314466)
Recover(Up303434234234243234232432465562234236565650002342341898232332314466):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334188232332314466)
else
mousemove 661, 258
click right
	MouseMove, 0, 100, 1, R
click
sleep 1000
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw unehnchanted sapphire jewellery
sleep 1000
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down11004188232332314466)
Recover(Down11004188232332314466):
Recover(Down23402004188232332314466):
send {ESC}
click 744, 216
sleep 200
Recover(Down1100418823265436456345756834332314466):
click 573, 359 ; click spell
sleep 1000
PixelSearch, X43341, Y43341, 555, 242, 728, 497, 0x338856, 1, Fast ; looking for unenchanted shit
if Errorlevel = 1
   GoTo, Recover(Up30343423423434564356435643562342341898232332314466)
   else
mousemove X43341, Y43341
click
sleep 1500
   GoTo, Recover(Down1100418823265436456345756834332314466)
Recover(Up30343423423434564356435643562342341898232332314466):
click 645, 220
sleep 100
   GoTo, Recovered(Up33418228232332314466)
sleep 2000
send 99
send {enter}
sleep 49000
   GoTo, Recovered(Up334188232332314466)
	Goto, Recovered(Up334188232332314466)
   GoTo, Recover(Down23402004188232332314466)
Recover(Down200004188232332314466):	
	GoTo, Recovered(Up334188232332314466)
Recover(Down300004188232332314466):
SoundBeep
	GoTo, Recovered(Up334188232332314466)
Recover(Down491298232332314466):
sleep 30000
Recover(Up300002342341898232332314466):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up334188232332314466)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up3312342345544188232332314466)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down3000023423412343242898232332314466)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down30000234235464541645898232332314466)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down300002342341898232332314466)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down300002342341898232332314466)
else
	click 402, 312
sleep 100
Recover(Down30000234235464541645898232332314466):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341898232332314466)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341898232332314466)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up331234234234234234565544188232332314466)
Recover(Down3000023423412343242898232332314466):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up334188232332314466)
Recover(Down300002342341898232332314466):
}
Return

Buttonenchantingdiamondjewellery:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3312342342342342345655441882323323144667):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up3341882323323144667)
Recovered(Up33123423455441882323323144667):
sleep 5000
Recovered(Up3341882323323144667):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334182282323323144667)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341882323323144667)
Recovered(Up334182282323323144667):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432434324324324326565234189823233329875544112286433144667)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144667)
Recover(Up30000234435432324432434324324324326565234189823233329875544112286433144667):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326543543543435543565234189823233329875544112286433144667)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144667)
Recover(Up300002344354323244324326543543543435543565234189823233329875544112286433144667):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002432243324432324432344354323244324326565234189823233329875544112286433144667)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144667)
Recover(Up300002432243324432324432344354323244324326565234189823233329875544112286433144667):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344432432432432342354323244324326565234189823233329875544112286433144667)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144667)
Recover(Up300002344432432432432342354323244324326565234189823233329875544112286433144667):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023435435576576844354323244324326565234189823233329875544112286433144667)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144667)
Recover(Up3000023435435576576844354323244324326565234189823233329875544112286433144667):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344434324236567354323244324326565234189823233329875544112286433144667)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144667)
Recover(Up300002344434324236567354323244324326565234189823233329875544112286433144667):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300543345678678987978933329875544112286433144667)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144667)
Recover(Up300543345678678987978933329875544112286433144667):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324323432443344324326565234189823233329875544112286433144667)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144667)
Recover(Up30000234435432324323432443344324326565234189823233329875544112286433144667):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343243234244354323244324326565234189823233329875544112286433144667)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144667)
Recover(Up300002343243234244354323244324326565234189823233329875544112286433144667):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326565234189432432432432823233329875544112286433144667)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144667)
Recover(Up300002344354323244324326565234189432432432432823233329875544112286433144667):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up304324323424320002344354323244324326565234189823233329875544112286433144667)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144667)
Recover(Up304324323424320002344354323244324326565234189823233329875544112286433144667):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326565234189823233329875544112286433144667)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3034342342342432342324324655622342365656500023423418982323323144667)
Recover(Up300002344354323244324326565234189823233329875544112286433144667):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up3000023423418982323323144667)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up3341882323323144667)
Recover(Up3034342342342432342324324655622342365656500023423418982323323144667):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341882323323144667)
else
mousemove 661, 258
click right
	MouseMove, 0, 100, 1, R
click
sleep 1000
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw unehnchanted sapphire jewellery
sleep 1000
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down110041882323323144667)
Recover(Down110041882323323144667):
Recover(Down234020041882323323144667):
send {ESC}
click 744, 216
sleep 200
Recover(Down11004188232654364563457568343323144667):
click 597, 384 ; click spell
sleep 1000
PixelSearch, X43341, Y43341, 555, 242, 728, 497, 0x338856, 1, Fast ; looking for unenchanted shit
if Errorlevel = 1
   GoTo, Recover(Up303434234234345643564356435623423418982323323144667)
   else
mousemove X43341, Y43341
click
sleep 1500
   GoTo, Recover(Down11004188232654364563457568343323144667)
Recover(Up303434234234345643564356435623423418982323323144667):
click 645, 220
sleep 100
   GoTo, Recovered(Up334182282323323144667)
sleep 2000
send 99
send {enter}
sleep 49000
   GoTo, Recovered(Up3341882323323144667)
	Goto, Recovered(Up3341882323323144667)
   GoTo, Recover(Down234020041882323323144667)
Recover(Down2000041882323323144667):	
	GoTo, Recovered(Up3341882323323144667)
Recover(Down3000041882323323144667):
SoundBeep
	GoTo, Recovered(Up3341882323323144667)
Recover(Down4912982323323144667):
sleep 30000
Recover(Up3000023423418982323323144667):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3341882323323144667)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up33123423455441882323323144667)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down30000234234123432428982323323144667)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down300002342354645416458982323323144667)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323323144667)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323323144667)
else
	click 402, 312
sleep 100
Recover(Down300002342354645416458982323323144667):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323323144667)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323323144667)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up3312342342342342345655441882323323144667)
Recover(Down30000234234123432428982323323144667):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up3341882323323144667)
Recover(Down3000023423418982323323144667):
}
Return

Buttonglassblowlanternlens:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3312342342342342345655441882323324):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up3341882323324)
Recovered(Up33123423455441882323324):
sleep 5000
Recovered(Up3341882323324):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up334182282323324)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341882323324)
Recovered(Up334182282323324):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324343243243243265652341898232333298755441122864)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3456783443434324323424324324323000023423418982323324)
Recover(Up300002344354323244324343243243243265652341898232333298755441122864):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265435435434355435652341898232333298755441122864)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3456783443434324323424324324323000023423418982323324)
Recover(Up3000023443543232443243265435435434355435652341898232333298755441122864):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000024322433244323244323443543232443243265652341898232333298755441122864)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3456783443434324323424324324323000023423418982323324)
Recover(Up3000024322433244323244323443543232443243265652341898232333298755441122864):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023444324324324323423543232443243265652341898232333298755441122864)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3456783443434324323424324324323000023423418982323324)
Recover(Up3000023444324324324323423543232443243265652341898232333298755441122864):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234354355765768443543232443243265652341898232333298755441122864)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3456783443434324323424324324323000023423418982323324)
Recover(Up30000234354355765768443543232443243265652341898232333298755441122864):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023444343242365673543232443243265652341898232333298755441122864)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3456783443434324323424324324323000023423418982323324)
Recover(Up3000023444343242365673543232443243265652341898232333298755441122864):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3005433456786789879789333298755441122864)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3456783443434324323424324324323000023423418982323324)
Recover(Up3005433456786789879789333298755441122864):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323243234324433443243265652341898232333298755441122864)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3456783443434324323424324324323000023423418982323324)
Recover(Up300002344354323243234324433443243265652341898232333298755441122864):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023432432342443543232443243265652341898232333298755441122864)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3456783443434324323424324324323000023423418982323324)
Recover(Up3000023432432342443543232443243265652341898232333298755441122864):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265652341894324324324328232333298755441122864)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3456783443434324323424324324323000023423418982323324)
Recover(Up3000023443543232443243265652341894324324324328232333298755441122864):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3043243234243200023443543232443243265652341898232333298755441122864)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3456783443434324323424324324323000023423418982323324)
Recover(Up3043243234243200023443543232443243265652341898232333298755441122864):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023443543232443243265652341898232333298755441122864)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up3456783443434324323424324324323000023423418982323324)
Recover(Up3000023443543232443243265652341898232333298755441122864):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up3000023423418982323324)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up3341882323324)
Recover(Up3456783443434324323424324324323000023423418982323324):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341882323324)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw glassblow pipe and first item
click 443, 343
sleep 1000
sleep 500
	mousemove 138, 131
	click left
	sleep 50
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down110041882323324)
Recover(Down110041882323324):
Recover(Down234020041882323324):
send {ESC}
click 578, 261 ; 28th item
sleep 500
click 623, 262 ; 27st item
sleep 2000
	click right 292, 241	
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 2000
send 99
send {enter}
sleep 49000
   GoTo, Recovered(Up3341882323324)
	Goto, Recovered(Up3341882323324)
   GoTo, Recover(Down234020041882323324)
Recover(Down2000041882323324):	
	GoTo, Recovered(Up3341882323324)
Recover(Down3000041882323324):
SoundBeep
	GoTo, Recovered(Up3341882323324)
Recover(Down4912982323324):
sleep 30000
Recover(Up3000023423418982323324):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3341882323324)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up33123423455441882323324)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down30000234234123432428982323324)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down300002342354645416458982323324)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323324)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323324)
else
	click 402, 312
sleep 100
Recover(Down300002342354645416458982323324):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323324)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down3000023423418982323324)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up3312342342342342345655441882323324)
Recover(Down30000234234123432428982323324):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up3341882323324)
Recover(Down3000023423418982323324):
}
Return

Buttonglassblowdorglightorb:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33123423423423423456554418823233244):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
GoTo, Recovered(Up33418823233244)
Recovered(Up331234234554418823233244):
sleep 5000
Recovered(Up33418823233244):
Loop
{
	BlockInput, MouseMove
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up3341822823233244)
else
click 487, 56
sleep 500
GoTo, Recovered(Up33418823233244)
Recovered(Up3341822823233244):
PixelSearch, X, Y, 5, 337, 516, 371, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324432434324324324326565234189823233329875544)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up302344342432432432432655632432432786789898000234234189823233244)
Recover(Up30000234435432324432434324324324326565234189823233329875544):
PixelSearch, X, Y, 5, 300, 516, 337, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326543543543435543565234189823233329875544)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up302344342432432432432655632432432786789898000234234189823233244)
Recover(Up300002344354323244324326543543543435543565234189823233329875544):
PixelSearch, X, Y, 5, 270, 516, 300, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002432243324432324432344354323244324326565234189823233329875544)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up302344342432432432432655632432432786789898000234234189823233244)
Recover(Up300002432243324432324432344354323244324326565234189823233329875544):
PixelSearch, X, Y, 5, 240, 516, 270, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344432432432432342354323244324326565234189823233329875544)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up302344342432432432432655632432432786789898000234234189823233244)
Recover(Up300002344432432432432342354323244324326565234189823233329875544):
PixelSearch, X, Y, 5, 210, 516, 240, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up3000023435435576576844354323244324326565234189823233329875544)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up302344342432432432432655632432432786789898000234234189823233244)
Recover(Up3000023435435576576844354323244324326565234189823233329875544):
PixelSearch, X, Y, 5, 180, 516, 210, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344434324236567354323244324326565234189823233329875544)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up302344342432432432432655632432432786789898000234234189823233244)
Recover(Up300002344434324236567354323244324326565234189823233329875544):
PixelSearch, X, Y, 5, 150, 516, 180, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300543345678678987978933329875544)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up302344342432432432432655632432432786789898000234234189823233244)
Recover(Up300543345678678987978933329875544):
PixelSearch, X, Y, 5, 120, 516, 150, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up30000234435432324323432443344324326565234189823233329875544)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up302344342432432432432655632432432786789898000234234189823233244)
Recover(Up30000234435432324323432443344324326565234189823233329875544):
PixelSearch, X, Y, 5, 90, 516, 120, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002343243234244354323244324326565234189823233329875544)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up302344342432432432432655632432432786789898000234234189823233244)
Recover(Up300002343243234244354323244324326565234189823233329875544):
PixelSearch, X, Y, 5, 60, 516, 90, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326565234189432432432432823233329875544)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up302344342432432432432655632432432786789898000234234189823233244)
Recover(Up300002344354323244324326565234189432432432432823233329875544):
PixelSearch, X, Y, 5, 30, 516, 60, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up304324323424320002344354323244324326565234189823233329875544)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up302344342432432432432655632432432786789898000234234189823233244)
Recover(Up304324323424320002344354323244324326565234189823233329875544):
PixelSearch, X, Y, 5, 5, 516, 30, 0x141E2D, 1, Fast ; Blast Furnace Bank Chest
if Errorlevel = 1
   GoTo, Recover(Up300002344354323244324326565234189823233329875544)
   else
	click %X%, %Y%
	sleep 2000
   GoTo, Recover(Up302344342432432432432655632432432786789898000234234189823233244)
Recover(Up300002344354323244324326565234189823233329875544):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast ; bank on minimap 
if Errorlevel = 1
   GoTo, Recover(Up30000234234189823233244)
   else
	mousemove X433, Y433
	MouseMove, -15, 4, 1, R
	click 
sleep 10000
	Goto, Recovered(Up33418823233244)
Recover(Up302344342432432432432655632432432786789898000234234189823233244):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast ; checking if bank open
if Errorlevel = 1
   GoTo, Recovered(Up33418823233244)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast ; withdraw glassblow pipe and first item
click 443, 343
sleep 1000
sleep 500
	mousemove 138, 131
	click left
	sleep 50
	mousemove 92, 134
	click right
	MouseMove, 0, 100, 1, R
	sleep 50
	click left	
sleep 500
	click 487 56
sleep 2000
   GoTo, Recover(Down1100418823233244)
Recover(Down1100418823233244):
Recover(Down2340200418823233244):
send {ESC}
click 578, 261 ; 28th item
sleep 500
click 623, 262 ; 27st item
sleep 2000
	click right 388, 229
sleep 100
	MouseMove, 0, 70, 1, R
	sleep 50
	click left
sleep 2000
send 99
send {enter}
sleep 49000
   GoTo, Recovered(Up33418823233244)
	Goto, Recovered(Up33418823233244)
   GoTo, Recover(Down2340200418823233244)
Recover(Down20000418823233244):	
	GoTo, Recovered(Up33418823233244)
Recover(Down30000418823233244):
SoundBeep
	GoTo, Recovered(Up33418823233244)
Recover(Down49129823233244):
sleep 30000
Recover(Up30000234234189823233244):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up33418823233244)
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recovered(Up331234234554418823233244)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down300002342341234324289823233244)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down3000023423546454164589823233244)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233244)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233244)
else
	click 402, 312
sleep 100
Recover(Down3000023423546454164589823233244):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233244)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234189823233244)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up33123423423423423456554418823233244)
Recover(Down300002342341234324289823233244):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recovered(Up33418823233244)
Recover(Down30000234234189823233244):
}
Return

Buttonnightmarezoneprayer:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
Recovered(Up3341841113453451769764):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, XB5335ASD, YB5335ASD, 435, 322, 520, 372, 0x0A0A0B, 1, Fast ; Checking for overload
if Errorlevel = 1
GoTo, Recovered(Up3546456756324467942342347809789785832123123)
   else
GoTo, Recovered(Up3546456756324467942344353456243564356345754675462347809789785832123123)
Recovered(Up3546456756324467942344353456243564356345754675462347809789785832123123):
PixelSearch, XB533, YB533, 545, 141, 576, 150, 0x131313, 1, Fast ; Checking for prayer alert
if Errorlevel = 1
GoTo, Recovered(Up3341841113453451769764)
   else
   GoTo, Recovered(Up3344353453453451841113453451769764)
Recovered(Up3344353453453451841113453451769764):
PixelSearch, XB2, YB2, 562, 241, 738, 499, 0x6EA119, 1, Fast ; Checking for inv prayer
if Errorlevel = 1
   GoTo, Recovered(Up334184111334234234453451769764)
   else
	mousemove XB2, YB2
	sleep 500
	click left
	sleep 3000
	GoTo, Recovered(Up3341841113453451769764)
Recovered(Up334184111334234234453451769764):
PixelSearch, XB25, YB25, 562, 241, 738, 499, 0x8ACB1F, 1, Fast ; Checking for inv prayer
if Errorlevel = 1
   GoTo, Recovered(Up334184111354634563546356436543334234234453451769764)
   else
	mousemove XB25, YB25
	sleep 500
	click left
	sleep 3000
	GoTo, Recovered(Up3341841113453451769764)
Recovered(Up334184111354634563546356436543334234234453451769764):
PixelSearch, XB25, YB25, 562, 241, 738, 499, 0x92CF32, 1, Fast ; Checking for inv prayer
if Errorlevel = 1
   GoTo, Recovered(Up33418411133564456645345636453564786786534234234453451769764)
   else
	mousemove XB25, YB25
	sleep 500
	click left
	sleep 3000
	GoTo, Recovered(Up3341841113453451769764)

Recovered(Up33418411133564456645345636453564786786534234234453451769764):
PixelSearch, XB25, YB25, 562, 241, 738, 499, 0x95CF39, 1, Fast ; Checking for inv prayer
if Errorlevel = 1
   GoTo, Recovered(Up334184111334234234453451769764)
   else
	mousemove XB25, YB25
	sleep 500
	click left
	sleep 3000
	GoTo, Recovered(Up3341841113453451769764)
Recovered(Up3546456756324467942342347809789785832123123):
PixelSearch, XBD25FBV4, YBD25FBV4, 562, 241, 738, 499, 0x060607, 1, Fast ; Checking for inv overload
if Errorlevel = 1
   GoTo, Recovered(Up33418412344564563411345345176976483321)
   else
	mousemove XBD25FBV4, YBD25FBV4
	sleep 1500
	click left
	GoTo, Recovered(Up3341841113453451769764)
Recovered(Up33418412344564563411345345176976483321):
	PixelSearch, XBD25FEEE, YBD25FEEE, 562, 241, 738, 499, 0x050507, 1, Fast ; Checking for inv overload
if Errorlevel = 1
   GoTo, Recovered(Up3546456756324467942344353456243564356345754675462347809789785832123123)
   else
	mousemove XBD25FEEE, YBD25FEEE
	sleep 1500
	click left
	GoTo, Recovered(Up3341841113453451769764)
}
return

Buttonnightmarezoneabsorbtion:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000 ;Sleeps ten seconds and then sends spacebar up
Send {Up Up}
Recovered(Up334184111345345176976483):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, XB5335ER, YB5335ER, 518, 83, 543, 93, 0x6E7A86, 1, Fast ; Checking HEALTH TICK
if Errorlevel = 1
GoTo, Recovered(Up3546434564423445675675632424583)
   else
   GoTo, Recovered(Up3657856782457869)
Recovered(Up3546434564423445675675632424583):
PixelSearch, XB5335ASD, YB5335ASD, 435, 322, 520, 372, 0x408493, 1, Fast ; Checking for overload
if Errorlevel = 1
GoTo, Recovered(Up354645675632446794234234780978978583)
   else
   GoTo, Recovered(Up334435345345345184111345345176973468782342436483)
Recovered(Up334435345345345184111345345176973468782342436483):
PixelSearch, XB53355ERE, YB53355ERE, 7, 52, 107, 119, 0x9F9FFF, 1, Fast ; Checking for absorbtion
if Errorlevel = 1
GoTo, Recovered(Up334184111231342789453445344768978684483)
   else
	Goto, Recovered(Up33418411133423423445345176976483)
Recovered(Up334184111231342789453445344768978684483):
PixelSearch, XB533E55, YB533E55, 7, 52, 107, 119, 0x9F9FFF, 1, Fast ; Checking for absorbtion
if Errorlevel = 1
GoTo, Recovered(Up33418411123123123123123123178978684483)
   else
	Goto, Recovered(Up33418411133423423445345176976483)
Recovered(Up33418411123123123123123123178978684483):
PixelSearch, XB533GH55, YB533GH55, 7, 52, 107, 119, 0xAAAAFF, 1, Fast ; Checking for absorbtion
if Errorlevel = 1
GoTo, Recovered(Up33418411123123123134534517697624334234231237684483)
   else
	Goto, Recovered(Up33418411133423423445345176976483)
Recovered(Up33418411123123123134534517697624334234231237684483):
PixelSearch, XBE53355, YBE53355, 7, 52, 107, 119, 0x5555FF, 1, Fast ; Checking for absorbtion
if Errorlevel = 1
GoTo, Recovered(Up33418411123123123134534517697624334234234483)
   else
	Goto, Recovered(Up33418411133423423445345176976483)
Recovered(Up33418411123123123134534517697624334234234483):
PixelSearch, XB5Q33, YB5Q33, 7, 52, 107, 119, 0xBCBCFF, 1, Fast ; Checking for absorbtion
if Errorlevel = 1
GoTo, Recovered(Up334184111231231231345345176976483)
   else
	Goto, Recovered(Up33418411133423423445345176976483)
Recovered(Up334184111231231231345345176976483):
PixelSearch, XB, YB, 7, 52, 107, 119, 0xECECFF, 1, Fast ; Checking for for absorbtion
if Errorlevel = 1
GoTo, Recovered(Up334184111231231231345345176976434234234234483)
   else
	Goto, Recovered(Up33418411133423423445345176976483)
Recovered(Up334184111231231231345345176976434234234234483):
PixelSearch, XB9, YB9, 7, 52, 107, 119, 0x8888FF, 1, Fast ; Checking for for absorbtion
if Errorlevel = 1
	GoTo, Recovered(Up334435345345345184111345345176976483)
   else
	Goto, Recovered(Up33418411133423423445345176976483)
Recovered(Up334435345345345184111345345176976483):
PixelSearch, XB2, YB2, 562, 241, 738, 499, 0x9E9EFF, 1, Fast ; Checking for absorbtion
if Errorlevel = 1
   GoTo, Recovered(Up334184111345345176976483)
   else
	Goto, Recovered(Up33418411133423423445345176976483)
Recovered(Up33418411133423423445345176976483):
PixelSearch, XB25, YB25, 562, 241, 738, 499, 0xC4BFB6, 1, Fast ; Checking for inv absorbtion
if Errorlevel = 1
   GoTo, Recovered(Up334184111312312456453423423445345176976483)
   else
	mousemove XB25, YB25
	sleep 1500
	click left
	sleep 3000
	mousemove XB25, YB25
	sleep 1500
	click left
	mousemove XB25, YB25
	sleep 1500
	click left
	mousemove XB25, YB25
	sleep 1500
	click left
	mousemove XB25, YB25
	sleep 1500
	click left
	GoTo, Recovered(Up334184111345345176976483)
Recovered(Up334184111312312456453423423445345176976483):
PixelSearch, XBD25, YBD25, 562, 241, 738, 499, 0xBDB6AC, 1, Fast ; Checking for inv absorbtion
if Errorlevel = 1
   GoTo, Recovered(Up33418411133423423445345176976483)
   else
	mousemove XBD25, YBD25
	sleep 1500
	click left
	sleep 1500
	mousemove XBD25, YBD25
	sleep 1500
	click left
	sleep 1500
	mousemove XBD25, YBD25
	sleep 1500
	click left
	sleep 1500
	mousemove XBD25, YBD25
	sleep 1500
	click left
	sleep 1500
	mousemove XBD25, YBD25
	sleep 1500
	click left
	sleep 1500
	GoTo, Recovered(Up334184111345345176976483)
Recovered(Up354645675632446794234234780978978583):
PixelSearch, XBD25FBV, YBD25FBV, 562, 241, 738, 499, 0x060607, 1, Fast ; Checking for inv overload
if Errorlevel = 1
   GoTo, Recovered(Up33418412344564563411345345176976483)
   else
	mousemove XBD25FBV, YBD25FBV
	sleep 1500
	click left
	GoTo, Recovered(Up334184111345345176976483)
Recovered(Up33418412344564563411345345176976483):
	PixelSearch, XBD25FEEE, YBD25FEEE, 562, 241, 738, 499, 0x050507, 1, Fast ; Checking for inv overload
if Errorlevel = 1
   GoTo, Recovered(Up334184111345345176976483)
   else
	mousemove XBD25FEEE, YBD25FEEE
	sleep 1500
	click left
	GoTo, Recovered(Up334184111345345176976483)
Recovered(Up3657856782457869):
click 558, 134
sleep 1500
click 558, 134
sleep 5000
GoTo, Recovered(Up334184111345345176976483)
}
return

Buttonironpowerminer:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up3341841922344355676321117697643399):
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up33418411117697643399)
Recovered(Up3341841921117697643399):
sleep 3000
Recovered(Up33418411117697643399):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, XF1123456741, YF1123456741, 687, 463, 728, 494, 0x0F182E, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224111423443243243243243243256456546546454517697643399)
else
   GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up33418224111423443243243243243243256456546546454517697643399):
PixelSearch, XF1123456741, YF1123456741, 687, 463, 728, 494, 0x0E152B, 1, Fast ; checking 1st spot for logs  0
if Errorlevel = 1
   GoTo, Recovered(Up33418224111456456546546454517697643399)
else
   GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up33418224111456456546546454517697643399):
PixelSearch, XF1123456731, YF1123456731, 687, 463, 728, 494, 0x111A32, 1, Fast ; checking 1st spot for logs F
if Errorlevel = 1
   GoTo, Recovered(Up3344323424324323421822411117697643399)
else
   GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up3344323424324323421822411117697643399):
PixelSearch, XF1123456731, YF1123456731, 647, 463, 685, 494, 0x111A32, 1, Fast ; checking 2st spot for logs F
if Errorlevel = 1
   GoTo, Recovered(Up33418224111176976432342342342345656399)
else
   GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up33418224111176976432342342342345656399):
PixelSearch, XF1123456731, YF1123456731, 647, 463, 685, 494, 0x0E152B, 1, Fast ; checking 2st spot for logs F
if Errorlevel = 1
   GoTo, Recovered(Up334182241113423423417697643242343399)
else
   GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up334182241113423423417697643242343399):
PixelSearch, XF1123456731, YF1123456731, 647, 463, 685, 494, 0x0F182E, 1, Fast ; checking 2st spot for logs F
if Errorlevel = 1
   GoTo, Recovered(Up333242344324341822411117697643399)
else
   GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up333242344324341822411117697643399):
PixelSearch, XF1123456731, YF1123456731, 602, 463, 643, 494, 0x0F182E, 1, Fast ; checking 3rd spot for logs F
if Errorlevel = 1
   GoTo, Recovered(Up3341822411117632434243243297643399)
else
   GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up3341822411117632434243243297643399):
PixelSearch, XF1123456731, YF1123456731, 602, 463, 643, 494, 0x0E152B, 1, Fast ; checking 3rd spot for logs F
if Errorlevel = 1
   GoTo, Recovered(Up334182243324234234323423423399)
else
   GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up334182243324234234323423423399):
PixelSearch, XF1123456731, YF1123456731, 602, 463, 643, 494, 0x111A32, 1, Fast ; checking 3rd spot for logs F
if Errorlevel = 1
   GoTo, Recovered(Up334354354534354323424323248778341822411117697643399)
else
   GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up334354354534354323424323248778341822411117697643399):
PixelSearch, XF1123456731, YF1123456731, 560, 463, 601, 494, 0x111A32, 1, Fast ; checking 4th spot for logs F
if Errorlevel = 1
   GoTo, Recovered(Up4354354534534354353323424323248778341822411117697643399)
else
   GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up4354354534534354353323424323248778341822411117697643399):
PixelSearch, XF1123456731, YF1123456731, 560, 463, 601, 494, 0x0E152B, 1, Fast ; checking 4th spot for logs F
if Errorlevel = 1
   GoTo, Recovered(Up365565656323424343434343523248778341822411117697643399)
else
   GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up365565656323424343434343523248778341822411117697643399):
PixelSearch, XF1123456731, YF1123456731, 560, 463, 601, 494, 0x0F182E, 1, Fast ; checking 4th spot for logs F
if Errorlevel = 1
   GoTo, Recovered(Up3341822411117697643399)
else
   GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up334182241231231234353453453451234545632132112332131211117697643399):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x3A597F, 1, Fast ; checking 28th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up8975434354312099899)
else
mousemove X3223, Y3223
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up8975434354312099899):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x0F182E, 1, Fast ; checking 27th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up345653634563435436099899)
else
mousemove X32231, Y32231
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up345653634563435436099899):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x0F182E, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341823443542342342241111769712099899)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341823443542342342241111769712099899):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x0F182E, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up333456735673335467099899)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up333456735673335467099899):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x0F182E, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up343243325233443224343243562234534099899)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up343243325233443224343243562234534099899):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x0F182E, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up11111334182241111769712099899)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up11111334182241111769712099899):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x0F182E, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up22222334182241111769712099899)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up22222334182241111769712099899):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x0F182E, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33333334182241111769712099899)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33333334182241111769712099899):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x0F182E, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3444434182241111769712099899)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3444434182241111769712099899):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x0F182E, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up444444334182241111769712099899)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up444444334182241111769712099899):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x0F182E, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3555534182241111769712099899)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3555534182241111769712099899):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x0F182E, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up55555555334182241111769712099899)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up55555555334182241111769712099899):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x0F182E, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up66666334182241111769712099899)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up66666334182241111769712099899):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x0F182E, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up777777334182241111769712099899)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up777777334182241111769712099899):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x0F182E, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up888888334182241111769712099899)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up888888334182241111769712099899):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x0F182E, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up999999334182241111769712099899)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up999999334182241111769712099899):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x0F182E, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up2834324334182241111769712099899)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up2834324334182241111769712099899):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x0F182E, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3423456756434334182241111769712099899)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3423456756434334182241111769712099899):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x0F182E, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3234234564341822556641111769712099899)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3234234564341822556641111769712099899):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x0F182E, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241111769712544565432423099899)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182241111769712544565432423099899):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x0F182E, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up4343334182234434111176971232143099899)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up4343334182234434111176971232143099899):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x0F182E, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up234235667556334182241111769712099899)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up234235667556334182241111769712099899):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x0F182E, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up85647344343334182241111769712099899)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up85647344343334182241111769712099899):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x0F182E, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up434354665767686776334182241111769712099899)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up434354665767686776334182241111769712099899):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x0F182E, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up93456743567334182241111769712099899)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up93456743567334182241111769712099899):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x0F182E, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33895768934567099899)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33895768934567099899):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x0F182E, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up332343423456677643434182241111769712099899)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up332343423456677643434182241111769712099899):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x0F182E, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418342324324234234234223342376576784343120999)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418342324324234234234223342376576784343120999):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x0E152B, 1, Fast ; checking 27th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3456536345634354360999)
else
mousemove X32231, Y32231
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3456536345634354360999):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x0E152B, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418234435423423422411117697120999)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418234435423423422411117697120999):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x0E152B, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3334567356733354670999)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3334567356733354670999):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x0E152B, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3432433252334432243432435622345340999)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3432433252334432243432435622345340999):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x0E152B, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up111113341822411117697120999)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up111113341822411117697120999):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x0E152B, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up222223341822411117697120999)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up222223341822411117697120999):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x0E152B, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up333333341822411117697120999)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up333333341822411117697120999):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x0E152B, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up34444341822411117697120999)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up34444341822411117697120999):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x0E152B, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up4444443341822411117697120999)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up4444443341822411117697120999):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x0E152B, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up35555341822411117697120999)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up35555341822411117697120999):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x0E152B, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up555555553341822411117697120999)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up555555553341822411117697120999):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x0E152B, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up666663341822411117697120999)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up666663341822411117697120999):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x0E152B, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up7777773341822411117697120999)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up7777773341822411117697120999):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x0E152B, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up8888883341822411117697120999)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up8888883341822411117697120999):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x0E152B, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up9999993341822411117697120999)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up9999993341822411117697120999):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x0E152B, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up28343243341822411117697120999)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up28343243341822411117697120999):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x0E152B, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up34234567564343341822411117697120999)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up34234567564343341822411117697120999):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x0E152B, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up32342345643418225566411117697120999)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up32342345643418225566411117697120999):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x0E152B, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411117697125445654324230999)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822411117697125445654324230999):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x0E152B, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up43433341822344341111769712321430999)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up43433341822344341111769712321430999):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x0E152B, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up2342356675563341822411117697120999)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up2342356675563341822411117697120999):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x0E152B, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up856473443433341822411117697120999)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up856473443433341822411117697120999):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x0E152B, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up4343546657676867763341822411117697120999)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up4343546657676867763341822411117697120999):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x0E152B, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up934567435673341822411117697120999)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up934567435673341822411117697120999):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x0E152B, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up338957689345670999)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up338957689345670999):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x0E152B, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3323434234566776434341822411117697120999)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3323434234566776434341822411117697120999):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x0E152B, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418223342376576784343120999)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418223342376576784343120999):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x111A32, 1, Fast ; checking 28th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418234543564545767120999)
else
mousemove X3223, Y3223
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418234543564545767120999):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x111A32, 1, Fast ; checking 27th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up123456457643341822411117697120999)
else
mousemove X32231, Y32231
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up123456457643341822411117697120999):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x111A32, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33342222224134534534530999)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33342222224134534534530999):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x111A32, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up9433453453341822411117697120999)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up9433453453341822411117697120999):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x111A32, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up4564332233341822411117697120999)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up4564332233341822411117697120999):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x111A32, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up323465756434343341822411117697120999)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up323465756434343341822411117697120999):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x111A32, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up92456432563341822411117697120999)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up92456432563341822411117697120999):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x111A32, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up234234564563341822411117697120999)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up234234564563341822411117697120999):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x111A32, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up4523456453765675463341822411117697120999)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up4523456453765675463341822411117697120999):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x111A32, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3654632453533420999)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3654632453533420999):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x111A32, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3242346556434311117697120999)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3242346556434311117697120999):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x111A32, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up544367867343341822411117697120999)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up544367867343341822411117697120999):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x111A32, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up787878945453341822411117697120999)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up787878945453341822411117697120999):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x111A32, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up89707854645643341822411117697120999)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up89707854645643341822411117697120999):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x111A32, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up78945634563341822411117697120999)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up78945634563341822411117697120999):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x111A32, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up8745243564563341822411117697120999)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up8745243564563341822411117697120999):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x111A32, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up768574235634563341822411117697120999)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up768574235634563341822411117697120999):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x111A32, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up90684536345634563341822411117697120999)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up90684536345634563341822411117697120999):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x111A32, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up9873456435643533341822411117697120999)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up9873456435643533341822411117697120999):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x111A32, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241117645435433215678786556417697120999)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182241117645435433215678786556417697120999):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x111A32, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341843534534222222344444422411117697120999)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341843534534222222344444422411117697120999):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x111A32, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33454354354334333333341822411117697120999)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33454354354334333333341822411117697120999):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x111A32, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up98745435634563341822411117697120999)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up98745435634563341822411117697120999):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x111A32, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up333453678678564564341822411117697120999)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up333453678678564564341822411117697120999):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x111A32, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822413243223434234324324324324231117697120999)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822413243223434234324324324324231117697120999):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x111A32, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3897554345453453341822411117697120999)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3897554345453453341822411117697120999):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x111A32, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3123123123123123123123123341822411117697120999)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3123123123123123123123123341822411117697120999):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x111A32, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411117697643399)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822411117697643399):
PixelSearch, XB65112, YB65112, 82, 173, 409, 345, 0x16203E, 1, Fast ; Checking for iron
if Errorlevel = 1
GoTo, Recovered(Up33418211212124111223423423342341762343423423567657567765233297643399)
   else
	click %XB65112%, %YB65112%
sleep 2000
	GoTo, Recovered(Up33418411117697642343534523324657832453351599)
Recovered(Up33418211212124111223423423342341762343423423567657567765233297643399):
PixelSearch, XB6511, YB6511, 82, 173, 409, 345, 0x050811, 1, Fast ; Checking for iron
if Errorlevel = 1
GoTo, Recovered(Up334184111223423423342341762343423423567657567765233297643399)
   else
	click %XB6511%, %YB6511%
sleep 2000
	GoTo, Recovered(Up33418411117697642343534523324657832453351599)
Recovered(Up334184111223423423342341762343423423567657567765233297643399):
PixelSearch, XB65, YB65, 82, 173, 409, 345, 0x182447, 1, Fast ; Checking for iron
if Errorlevel = 1
GoTo, Recovered(Up3341841112234234233423417697643399)
   else
	click %XB65%, %YB65%
sleep 2000
	GoTo, Recovered(Up33418411117697642343534523324657832453351599)
Recovered(Up3341841112234234233423417697643399):
PixelSearch, XB28, YB28, 82, 173, 409, 345, 0x16203E, 1, Fast ; Checking for iron
if Errorlevel = 1
   GoTo, Recovered(Up33418443224324343232442343232233211117697643399)
   else
	click %XB28%, %YB28%
sleep 2000
	GoTo, Recovered(Up33418411117697642343534523324657832453351599)
Recovered(Up33418443224324343232442343232233211117697643399):
PixelSearch, XB41, YB41, 82, 173, 409, 345, 0x16203E, 1, Fast ; Checking for iron
if Errorlevel = 1
   GoTo, Recovered(Up334184111176976433342324324234235445645233423499)
   else
	click %XB41%, %YB41%
sleep 2000
	GoTo, Recovered(Up33418411117697642343534523324657832453351599)
Recovered(Up334184111176976433342324324234235445645233423499):
PixelSearch, XB23, YB23, 82, 173, 409, 345, 0x16203E, 1, Fast ; Checking for iron
if Errorlevel = 1
	GoTo, Recovered(Up33418411117697643399)
   else
	click %XB23%, %YB23%
sleep 2000
	GoTo, Recovered(Up33418411117697642343534523324657832453351599)
Recovered(Up33418411117697642343534523324657832453351599):
PixelSearch, XB, YB, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up33418411117697642343534523324657832453351543243232434299)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up33418411117697642343534523324657832453351543243232434299):
sleep 500
PixelSearch, XB442, YB442, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up334184111172342342697642343534523324657832453351543243232434299)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up334184111172342342697642343534523324657832453351543243232434299):
sleep 500
PixelSearch, XB4423, YB4423, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up334184111172342342342342342342697642343534523324657832453351543243232434299)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up334184111172342342342342342342697642343534523324657832453351543243232434299):
sleep 500
PixelSearch, XB44234, YB44234, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up334184134234234332434299)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up334184134234234332434299):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up334184234432432432432432879734532344345645611117697643399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up334184234432432432432432879734532344345645611117697643399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up33418411117623234297643399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up33418411117623234297643399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up33242342343418411117697643399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up33242342343418411117697643399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up3341841111769754454568778643399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up3341841111769754454568778643399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up33423423423443214332328411117697643399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up33423423423443214332328411117697643399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up3341841111765647434343434397643399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up3341841111765647434343434397643399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up3341841111769765676756574343221343399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up3341841111769765676756574343221343399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up3341841111769763232433422343243243243232399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up3341841111769763232433422343243243243232399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up332323234184111176976433422343243243243232399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up332323234184111176976433422343243243243232399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up332342342342344184111176976433422343243243243232399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up332342342342344184111176976433422343243243243232399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up332232342344184111176976433422343243242343243243243232399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up332232342344184111176976433422343243242343243243243232399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up33223234234418413232233211176976433422343243243243232399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up33223234234418413232233211176976433422343243243243232399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up332232342344184111176976433422343243248797897897893243232399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up332232342344184111176976433422343243248797897897893243232399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up3322323424234234234234234344184111176976433422343243243243232399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up3322323424234234234234234344184111176976433422343243243243232399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up332232342344184111176976433422343243243243232546546546546564399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up332232342344184111176976433422343243243243232546546546546564399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up33418411117697643399)
else
GoTo, Recovered(Up33418411117697643399)
}
return

Buttoncuttingmaples:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33418413245676834439211176971288):
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up334184111176971288)
Recovered(Up33418419211176971288):
sleep 5000
Recovered(Up334184111176971288):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x053154, 1, Fast ; checking 28th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241111334234234276971288)
else
mousemove X3223, Y3223
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182241111334234234276971288):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x053154, 1, Fast ; checking 27th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33443561789818224111176971288)
else
mousemove X32231, Y32231
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33443561789818224111176971288):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x053154, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224534523437689111176971288)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418224534523437689111176971288):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x053154, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241111764355476763223971288)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182241111764355476763223971288):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x053154, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241113232325467578176971288)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182241113232325467578176971288):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x053154, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3374567786556445288)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3374567786556445288):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x053154, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418567452225288)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418567452225288):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x053154, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418434322411117323423566971288)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418434322411117323423566971288):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x053154, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224111176973223456653232561288)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418224111176973223456653232561288):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x053154, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3546354343271288)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3546354343271288):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x053154, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up389765564534571288)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up389765564534571288):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x053154, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up345234576524111176971288)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up345234576524111176971288):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x053154, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334183564782276971288)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334183564782276971288):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x053154, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up335674672288)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up335674672288):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x053154, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334567764545453288)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334567764545453288):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x053154, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up335434567322271288)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up335434567322271288):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x053154, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411117697432534523452345288)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822411117697432534523452345288):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x053154, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3343456567586573336971288)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3343456567586573336971288):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x053154, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182234563456435433453288)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182234563456435433453288):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x053154, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up344657844352454531288)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up344657844352454531288):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x053154, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up456767865423323176971288)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up456767865423323176971288):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x053154, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224343242354532454534111176971288)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418224343242354532454534111176971288):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x053154, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241111213123123124343576971288)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182241111213123123124343576971288):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x053154, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418223222332454532464111176971288)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418223222332454532464111176971288):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x053154, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822342346576786434324111176971288)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822342346576786434324111176971288):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x053154, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33456344234234276576454355645688)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33456344234234276576454355645688):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x053154, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418242342455678891288)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418242342455678891288):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x053154, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3234234234288)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3234234234288):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x052F51, 1, Fast ; checking 28th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up897543435431288)
else
mousemove X3223, Y3223
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up897543435431288):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x052F51, 1, Fast ; checking 27th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up34565363456343543688)
else
mousemove X32231, Y32231
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up34565363456343543688):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x052F51, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182344354234234224111176971288)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182344354234234224111176971288):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x052F51, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33345673567333546788)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33345673567333546788):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x052F51, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up34324332523344322434324356223453488)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up34324332523344322434324356223453488):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x052F51, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up1111133418224111176971288)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up1111133418224111176971288):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x052F51, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up2222233418224111176971288)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up2222233418224111176971288):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x052F51, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3333333418224111176971288)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3333333418224111176971288):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x052F51, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up344443418224111176971288)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up344443418224111176971288):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x052F51, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up44444433418224111176971288)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up44444433418224111176971288):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x052F51, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up355553418224111176971288)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up355553418224111176971288):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x052F51, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up5555555533418224111176971288)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up5555555533418224111176971288):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x052F51, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up6666633418224111176971288)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up6666633418224111176971288):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x052F51, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up77777733418224111176971288)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up77777733418224111176971288):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x052F51, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up88888833418224111176971288)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up88888833418224111176971288):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x052F51, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up99999933418224111176971288)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up99999933418224111176971288):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x052F51, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up283432433418224111176971288)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up283432433418224111176971288):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x052F51, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up342345675643433418224111176971288)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up342345675643433418224111176971288):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x052F51, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up323423456434182255664111176971288)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up323423456434182255664111176971288):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x052F51, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224111176971254456543242388)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418224111176971254456543242388):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x052F51, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up434333418223443411117697123214388)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up434333418223443411117697123214388):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x052F51, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up23423566755633418224111176971288)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up23423566755633418224111176971288):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x052F51, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up8564734434333418224111176971288)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up8564734434333418224111176971288):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x052F51, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up43435466576768677633418224111176971288)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up43435466576768677633418224111176971288):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x052F51, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up9345674356733418224111176971288)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up9345674356733418224111176971288):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x052F51, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3389576893456788)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3389576893456788):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x052F51, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33234342345667764343418224111176971288)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33234342345667764343418224111176971288):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x052F51, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182233423765767843431288)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182233423765767843431288):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x022844, 1, Fast ; checking 28th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182345435645457671288)
else
mousemove X3223, Y3223
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182345435645457671288):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x022844, 1, Fast ; checking 27th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up1234564576433418224111176971288)
else
mousemove X32231, Y32231
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up1234564576433418224111176971288):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x022844, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up333422222241345345345388)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up333422222241345345345388):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x022844, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up94334534533418224111176971288)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up94334534533418224111176971288):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x022844, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up45643322333418224111176971288)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up45643322333418224111176971288):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x022844, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3234657564343433418224111176971288)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3234657564343433418224111176971288):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x022844, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up924564325633418224111176971288)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up924564325633418224111176971288):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x022844, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up2342345645633418224111176971288)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up2342345645633418224111176971288):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x022844, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up45234564537656754633418224111176971288)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up45234564537656754633418224111176971288):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x022844, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up36546324535334288)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up36546324535334288):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x022844, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up32423465564343111176971288)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up32423465564343111176971288):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x022844, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up5443678673433418224111176971288)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up5443678673433418224111176971288):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x022844, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up7878789454533418224111176971288)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up7878789454533418224111176971288):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x022844, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up897078546456433418224111176971288)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up897078546456433418224111176971288):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x022844, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up789456345633418224111176971288)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up789456345633418224111176971288):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x022844, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up87452435645633418224111176971288)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up87452435645633418224111176971288):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x022844, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up7685742356345633418224111176971288)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up7685742356345633418224111176971288):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x022844, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up906845363456345633418224111176971288)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up906845363456345633418224111176971288):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x022844, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up98734564356435333418224111176971288)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up98734564356435333418224111176971288):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x022844, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411176454354332156787865564176971288)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822411176454354332156787865564176971288):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x022844, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418435345342222223444444224111176971288)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418435345342222223444444224111176971288):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x022844, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334543543543343333333418224111176971288)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334543543543343333333418224111176971288):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x022844, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up987454356345633418224111176971288)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up987454356345633418224111176971288):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x022844, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3334536786785645643418224111176971288)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3334536786785645643418224111176971288):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x022844, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224132432234342343243243243242311176971288)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418224132432234342343243243243242311176971288):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x022844, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up38975543454534533418224111176971288)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up38975543454534533418224111176971288):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x022844, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up31231231231231231231231233418224111176971288)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up31231231231231231231231233418224111176971288):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x022844, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224111176971288)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418224111176971288):
PixelSearch, XB, YB, 4, 100, 510, 367, 0x004C75, 1, Fast ; Checking for MAPLE Trees
if Errorlevel = 1
	GoTo, Recover(Up300002342423412345456547435T754367456534135261311176971288)
   else
	mousemove XB, YB
	sleep 500
	click left
	sleep 2000
	mousemove XB, YB
sleep 3000
Recover(Up300002342423412345456547435T754367456534135261311176971288):
PixelSearch, XB87, YB87, 4, 100, 510, 367, 0x001F47, 1, Fast ; Checking for MAPLE Trees
if Errorlevel = 1
	GoTo, Recover(Up30000234234135261311176971288)
   else
	mousemove XB87, YB87
	sleep 500
	click left
	sleep 2000
	mousemove XB87, YB87
sleep 3000
Recovered(Up3341841114324324351243176971288):
PixelSearch, XB2, YB2, 90, 58, 121, 75, 0x009CFF, 1, Fast ; Checking for "IDLE" text
if Errorlevel = 1
	GoTo, Recover(Up30000234234135261311176971288)
   else
	Goto, Recovered(Up334184111176971288)
Recover(Up30000234234135261311176971288):
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recovered(Up3341841114324324351243176971288)
else
	click 402, 312
sleep 100
Recover(Down3000023423546454164535261311176971288):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234135261311176971288)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234135261311176971288)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up33418413245676834439211176971288)
Recover(Down300002342341234324235261311176971288):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up30000234234135261311176971288)
Recover(Down30000234234135261311176971288):
	GoTo, Recovered(Up334184111176971288)
}
Return

Buttongildedprayer:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33418413245676834439211176971233):
	BlockInput, MouseMove
GoTo, Recovered(Up334184111176971233)
Recovered(Up33418419211176971233):
Recovered(Up334184111176971233):
Loop
{
	WinActivate, ahk_class SunAwtFrame
Recovered(Up334182241111334234234276971233):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x61626C, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224534523437689111176971233)
else
mousemove X322313, Y322313
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33418224534523437689111176971233):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x61626C, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241111764355476763223971233)
else
mousemove X3223133, Y3223133
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up334182241111764355476763223971233):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x61626C, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241113232325467578176971233)
else
mousemove X3789, Y3789
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up334182241113232325467578176971233):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x61626C, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3374567786556445233)
else
mousemove X37891, Y37891
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up3374567786556445233):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x61626C, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418567452225233)
else
mousemove X378912, Y378912
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33418567452225233):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x61626C, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418434322411117323423566971233)
else
mousemove X3789123, Y3789123
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33418434322411117323423566971233):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x61626C, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224111176973223456653232561233)
else
mousemove X37891234, Y37891234
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33418224111176973223456653232561233):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x61626C, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3546354343271233)
else
mousemove X378912345, Y378912345
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up3546354343271233):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x61626C, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up389765564534571233)
else
mousemove X3789123456, Y3789123456
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up389765564534571233):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x61626C, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up345234576524111176971233)
else
mousemove X37891234567, Y37891234567
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up345234576524111176971233):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x61626C, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334183564782276971233)
else
mousemove X91, Y91
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up334183564782276971233):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x61626C, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up335674672233)
else
mousemove X912, Y912
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up335674672233):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x61626C, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334567764545453233)
else
mousemove X9123, Y9123
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up334567764545453233):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x61626C, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up335434567322271233)
else
mousemove X91234, Y91234
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up335434567322271233):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x61626C, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411117697432534523452345233)
else
mousemove X912345, Y912345
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up3341822411117697432534523452345233):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x61626C, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3343456567586573336971233)
else
mousemove X9123456, Y9123456
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up3343456567586573336971233):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x61626C, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182234563456435433453233)
else
mousemove X91234567, Y91234567
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up334182234563456435433453233):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x61626C, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up344657844352454531233)
else
mousemove X912345678, Y912345678
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up344657844352454531233):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x61626C, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up456767865423323176971233)
else
mousemove XF1, YF1
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up456767865423323176971233):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x61626C, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224343242354532454534111176971233)
else
mousemove XF11, YF11
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33418224343242354532454534111176971233):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x61626C, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241111213123123124343576971233)
else
mousemove XF112, YF112
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up334182241111213123123124343576971233):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x61626C, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418223222332454532464111176971233)
else
mousemove XF1123, YF1123
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33418223222332454532464111176971233):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x61626C, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822342346576786434324111176971233)
else
mousemove XF11234, YF11234
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up3341822342346576786434324111176971233):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x61626C, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33456344234234276576454355645633)
else
mousemove XF112345, YF112345
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33456344234234276576454355645633):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x61626C, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418242342455678891233)
else
mousemove XF1123456, YF1123456
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33418242342455678891233):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x61626C, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334184111176971233)
else
mousemove XF11234567, YF11234567
click
sleep 200
mousemove 236, 261
click right
sleep 200
	MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
}
return

Buttongraniteminer:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33418419223443556763211176976433):
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up334184111176976433)
Recovered(Up33418419211176976433):
sleep 3000
Recovered(Up334184111176976433):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, XF1123456741, YF1123456741, 687, 463, 728, 494, 0x3C5A81, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241114234432432432432432432564565465464545176976433)
else
   GoTo, Recovered(Up3341822412312312343534534534512345456321321123321312111176976433)
Recovered(Up334182241114234432432432432432432564565465464545176976433):
PixelSearch, XF1123456741, YF1123456741, 687, 463, 728, 494, 0x426490, 1, Fast ; checking 1st spot for logs  0
if Errorlevel = 1
   GoTo, Recovered(Up334182241114564565465464545176976433)
else
   GoTo, Recovered(Up3341822412312312343534534534512345456321321123321312111176976433)
Recovered(Up334182241114564565465464545176976433):
PixelSearch, XF1123456731, YF1123456731, 687, 463, 728, 494, 0x3A597F, 1, Fast ; checking 1st spot for logs F
if Errorlevel = 1
   GoTo, Recovered(Up33418224111176976433)
else
   GoTo, Recovered(Up3341822412312312343534534534512345456321321123321312111176976433)
Recovered(Up3341822412312312343534534534512345456321321123321312111176976433):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x3A597F, 1, Fast ; checking 28th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up89754343543120998)
else
mousemove X3223, Y3223
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up89754343543120998):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x3C5A81, 1, Fast ; checking 27th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3456536345634354360998)
else
mousemove X32231, Y32231
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3456536345634354360998):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x3C5A81, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418234435423423422411117697120998)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418234435423423422411117697120998):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x3C5A81, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3334567356733354670998)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3334567356733354670998):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x3C5A81, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3432433252334432243432435622345340998)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3432433252334432243432435622345340998):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x3C5A81, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up111113341822411117697120998)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up111113341822411117697120998):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x3C5A81, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up222223341822411117697120998)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up222223341822411117697120998):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x3C5A81, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up333333341822411117697120998)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up333333341822411117697120998):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x3C5A81, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up34444341822411117697120998)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up34444341822411117697120998):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x3C5A81, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up4444443341822411117697120998)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up4444443341822411117697120998):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x3C5A81, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up35555341822411117697120998)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up35555341822411117697120998):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x3C5A81, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up555555553341822411117697120998)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up555555553341822411117697120998):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x3C5A81, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up666663341822411117697120998)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up666663341822411117697120998):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x3C5A81, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up7777773341822411117697120998)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up7777773341822411117697120998):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x3C5A81, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up8888883341822411117697120998)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up8888883341822411117697120998):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x3C5A81, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up9999993341822411117697120998)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up9999993341822411117697120998):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x3C5A81, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up28343243341822411117697120998)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up28343243341822411117697120998):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x3C5A81, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up34234567564343341822411117697120998)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up34234567564343341822411117697120998):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x3C5A81, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up32342345643418225566411117697120998)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up32342345643418225566411117697120998):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x3C5A81, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411117697125445654324230998)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822411117697125445654324230998):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x3C5A81, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up43433341822344341111769712321430998)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up43433341822344341111769712321430998):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x3C5A81, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up2342356675563341822411117697120998)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up2342356675563341822411117697120998):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x3C5A81, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up856473443433341822411117697120998)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up856473443433341822411117697120998):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x3C5A81, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up4343546657676867763341822411117697120998)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up4343546657676867763341822411117697120998):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x3C5A81, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up934567435673341822411117697120998)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up934567435673341822411117697120998):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x3C5A81, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up338957689345670998)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up338957689345670998):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x3C5A81, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3323434234566776434341822411117697120998)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3323434234566776434341822411117697120998):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x3C5A81, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334183423243242342342342233423765767843431209)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334183423243242342342342233423765767843431209):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x3A597F, 1, Fast ; checking 27th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up34565363456343543609)
else
mousemove X32231, Y32231
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up34565363456343543609):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x3A597F, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182344354234234224111176971209)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182344354234234224111176971209):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x3A597F, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33345673567333546709)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33345673567333546709):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x3A597F, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up34324332523344322434324356223453409)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up34324332523344322434324356223453409):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x3A597F, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up1111133418224111176971209)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up1111133418224111176971209):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x3A597F, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up2222233418224111176971209)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up2222233418224111176971209):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x3A597F, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3333333418224111176971209)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3333333418224111176971209):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x3A597F, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up344443418224111176971209)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up344443418224111176971209):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x3A597F, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up44444433418224111176971209)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up44444433418224111176971209):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x3A597F, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up355553418224111176971209)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up355553418224111176971209):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x3A597F, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up5555555533418224111176971209)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up5555555533418224111176971209):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x3A597F, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up6666633418224111176971209)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up6666633418224111176971209):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x3A597F, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up77777733418224111176971209)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up77777733418224111176971209):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x3A597F, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up88888833418224111176971209)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up88888833418224111176971209):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x3A597F, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up99999933418224111176971209)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up99999933418224111176971209):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x3A597F, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up283432433418224111176971209)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up283432433418224111176971209):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x3A597F, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up342345675643433418224111176971209)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up342345675643433418224111176971209):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x3A597F, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up323423456434182255664111176971209)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up323423456434182255664111176971209):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x3A597F, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224111176971254456543242309)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418224111176971254456543242309):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x3A597F, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up434333418223443411117697123214309)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up434333418223443411117697123214309):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x3A597F, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up23423566755633418224111176971209)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up23423566755633418224111176971209):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x3A597F, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up8564734434333418224111176971209)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up8564734434333418224111176971209):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x3A597F, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up43435466576768677633418224111176971209)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up43435466576768677633418224111176971209):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x3A597F, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up9345674356733418224111176971209)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up9345674356733418224111176971209):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x3A597F, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3389576893456709)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3389576893456709):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x3A597F, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33234342345667764343418224111176971209)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33234342345667764343418224111176971209):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x3A597F, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182233423765767843431209)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182233423765767843431209):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x426490, 1, Fast ; checking 28th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182345435645457671209)
else
mousemove X3223, Y3223
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182345435645457671209):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x426490, 1, Fast ; checking 27th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up1234564576433418224111176971209)
else
mousemove X32231, Y32231
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up1234564576433418224111176971209):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x426490, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up333422222241345345345309)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up333422222241345345345309):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x426490, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up94334534533418224111176971209)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up94334534533418224111176971209):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x426490, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up45643322333418224111176971209)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up45643322333418224111176971209):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x426490, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3234657564343433418224111176971209)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3234657564343433418224111176971209):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x426490, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up924564325633418224111176971209)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up924564325633418224111176971209):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x426490, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up2342345645633418224111176971209)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up2342345645633418224111176971209):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x426490, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up45234564537656754633418224111176971209)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up45234564537656754633418224111176971209):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x426490, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up36546324535334209)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up36546324535334209):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x426490, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up32423465564343111176971209)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up32423465564343111176971209):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x426490, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up5443678673433418224111176971209)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up5443678673433418224111176971209):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x426490, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up7878789454533418224111176971209)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up7878789454533418224111176971209):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x426490, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up897078546456433418224111176971209)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up897078546456433418224111176971209):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x426490, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up789456345633418224111176971209)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up789456345633418224111176971209):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x426490, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up87452435645633418224111176971209)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up87452435645633418224111176971209):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x426490, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up7685742356345633418224111176971209)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up7685742356345633418224111176971209):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x426490, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up906845363456345633418224111176971209)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up906845363456345633418224111176971209):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x426490, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up98734564356435333418224111176971209)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up98734564356435333418224111176971209):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x426490, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411176454354332156787865564176971209)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822411176454354332156787865564176971209):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x426490, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418435345342222223444444224111176971209)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418435345342222223444444224111176971209):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x426490, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334543543543343333333418224111176971209)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334543543543343333333418224111176971209):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x426490, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up987454356345633418224111176971209)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up987454356345633418224111176971209):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x426490, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3334536786785645643418224111176971209)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3334536786785645643418224111176971209):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x426490, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224132432234342343243243243242311176971209)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418224132432234342343243243243242311176971209):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x426490, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up38975543454534533418224111176971209)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up38975543454534533418224111176971209):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x426490, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up31231231231231231231231233418224111176971209)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up31231231231231231231231233418224111176971209):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x426490, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224111176976433)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418224111176976433):
PixelSearch, XB65112, YB65112, 82, 173, 409, 345, 0x346690, 1, Fast ; Checking for granite
if Errorlevel = 1
GoTo, Recovered(Up334182112121241112234234233423417623434234235676575677652332976433)
   else
	click %XB65112%, %YB65112%
sleep 2000
	GoTo, Recovered(Up334184111176976423435345233246578324533515)
Recovered(Up334182112121241112234234233423417623434234235676575677652332976433):
PixelSearch, XB6511, YB6511, 82, 173, 409, 345, 0x264C6C, 1, Fast ; Checking for granite
if Errorlevel = 1
GoTo, Recovered(Up3341841112234234233423417623434234235676575677652332976433)
   else
	click %XB6511%, %YB6511%
sleep 2000
	GoTo, Recovered(Up334184111176976423435345233246578324533515)
Recovered(Up3341841112234234233423417623434234235676575677652332976433):
PixelSearch, XB65, YB65, 82, 173, 409, 345, 0x3D7AAD, 1, Fast ; Checking for granite
if Errorlevel = 1
GoTo, Recovered(Up33418411122342342334234176976433)
   else
	click %XB65%, %YB65%
sleep 2000
	GoTo, Recovered(Up334184111176976423435345233246578324533515)
Recovered(Up33418411122342342334234176976433):
PixelSearch, XB28, YB28, 82, 173, 409, 345, 0x38709F, 1, Fast ; Checking for granite 
if Errorlevel = 1
   GoTo, Recovered(Up334184432243243432324423432322332111176976433)
   else
	click %XB28%, %YB28%
sleep 2000
	GoTo, Recovered(Up334184111176976423435345233246578324533515)
Recovered(Up334184432243243432324423432322332111176976433):
PixelSearch, XB41, YB41, 82, 173, 409, 345, 0x2B587D, 1, Fast ; Checking for granite
if Errorlevel = 1
   GoTo, Recovered(Up3341841111769764333423243242342354456452334234)
   else
	click %XB41%, %YB41%

sleep 2000
	GoTo, Recovered(Up334184111176976423435345233246578324533515)
Recovered(Up3341841111769764333423243242342354456452334234):
PixelSearch, XB23, YB23, 82, 173, 409, 345, 0x2D5A80, 1, Fast ; Checking for granite
if Errorlevel = 1
	GoTo, Recovered(Up334184111176976433)
   else
	click %XB23%, %YB23%
sleep 2000
	GoTo, Recovered(Up334184111176976423435345233246578324533515)
Recovered(Up334184111176976423435345233246578324533515):
PixelSearch, XB, YB, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up334184111176976423435345233246578324533515432432324342)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up334184111176976423435345233246578324533515432432324342):
sleep 500
PixelSearch, XB442, YB442, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up3341841111723423426976423435345233246578324533515432432324342)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3341841111723423426976423435345233246578324533515432432324342):
sleep 500
PixelSearch, XB4423, YB4423, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up3341841111723423423423423423426976423435345233246578324533515432432324342)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3341841111723423423423423423426976423435345233246578324533515432432324342):
sleep 500
PixelSearch, XB44234, YB44234, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up3341841342342343324342)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3341841342342343324342):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up3341842344324324324324328797345323443456456111176976433)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3341842344324324324324328797345323443456456111176976433):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up334184111176232342976433)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up334184111176232342976433):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up332423423434184111176976433)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up332423423434184111176976433):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up33418411117697544545687786433)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up33418411117697544545687786433):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up334234234234432143323284111176976433)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up334234234234432143323284111176976433):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up33418411117656474343434343976433)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up33418411117656474343434343976433):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up33418411117697656767565743432213433)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up33418411117697656767565743432213433):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up33418411117697632324334223432432432432323)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up33418411117697632324334223432432432432323):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up3323232341841111769764334223432432432432323)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3323232341841111769764334223432432432432323):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up3323423423423441841111769764334223432432432432323)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3323423423423441841111769764334223432432432432323):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up3322323423441841111769764334223432432423432432432432323)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3322323423441841111769764334223432432423432432432432323):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up332232342344184132322332111769764334223432432432432323)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up332232342344184132322332111769764334223432432432432323):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up3322323423441841111769764334223432432487978978978932432323)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3322323423441841111769764334223432432487978978978932432323):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up33223234242342342342342343441841111769764334223432432432432323)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up33223234242342342342342343441841111769764334223432432432432323):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up3322323423441841111769764334223432432432432325465465465465643)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3322323423441841111769764334223432432432432325465465465465643):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast ; Checking for exp gained 
if Errorlevel = 1
GoTo, Recovered(Up334184111176976433)
else
GoTo, Recovered(Up334184111176976433)
}
return

Buttoncuttingwillows:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up334184132456768344392111769712):
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up3341841111769712)
Recovered(Up334184192111769712):
sleep 5000
Recovered(Up3341841111769712):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x0E323A, 1, Fast ; checking 28th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411113342342342769712)
else
mousemove X3223, Y3223
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822411113342342342769712):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x0E323A, 1, Fast ; checking 27th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334435617898182241111769712)
else
mousemove X32231, Y32231
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334435617898182241111769712):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x0E323A, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182245345234376891111769712)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182245345234376891111769712):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x0E323A, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411117643554767632239712)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822411117643554767632239712):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x0E323A, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411132323254675781769712)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822411132323254675781769712):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x0E323A, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33745677865564452)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33745677865564452):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x0E323A, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334185674522252)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334185674522252):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x0E323A, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334184343224111173234235669712)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334184343224111173234235669712):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x0E323A, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241111769732234566532325612)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182241111769732234566532325612):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x0E323A, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up35463543432712)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up35463543432712):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x0E323A, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3897655645345712)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3897655645345712):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x0E323A, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3452345765241111769712)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3452345765241111769712):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x0E323A, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341835647822769712)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341835647822769712):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x0E323A, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3356746722)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3356746722):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x0E323A, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3345677645454532)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3345677645454532):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x0E323A, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3354345673222712)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3354345673222712):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x0E323A, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224111176974325345234523452)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418224111176974325345234523452):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x0E323A, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33434565675865733369712)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33434565675865733369712):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x0E323A, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822345634564354334532)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822345634564354334532):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x0E323A, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3446578443524545312)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3446578443524545312):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x0E323A, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up4567678654233231769712)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up4567678654233231769712):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x0E323A, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182243432423545324545341111769712)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182243432423545324545341111769712):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x0E323A, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411112131231231243435769712)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822411112131231231243435769712):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x0E323A, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182232223324545324641111769712)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182232223324545324641111769712):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x0E323A, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418223423465767864343241111769712)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418223423465767864343241111769712):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x0E323A, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334563442342342765764543556456)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334563442342342765764543556456):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x0E323A, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182423424556788912)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182423424556788912):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x0E323A, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up32342342342)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up32342342342):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x0E313A, 1, Fast ; checking 28th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up8975434354312)
else
mousemove X3223, Y3223
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up8975434354312):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x0E313A, 1, Fast ; checking 27th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up345653634563435436)
else
mousemove X32231, Y32231
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up345653634563435436):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x0E313A, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341823443542342342241111769712)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341823443542342342241111769712):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x0E313A, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up333456735673335467)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up333456735673335467):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x0E313A, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up343243325233443224343243562234534)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up343243325233443224343243562234534):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x0E313A, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up11111334182241111769712)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up11111334182241111769712):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x0E313A, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up22222334182241111769712)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up22222334182241111769712):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x0E313A, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33333334182241111769712)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33333334182241111769712):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x0E313A, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3444434182241111769712)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3444434182241111769712):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x0E313A, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up444444334182241111769712)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up444444334182241111769712):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x0E313A, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3555534182241111769712)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3555534182241111769712):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x0E313A, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up55555555334182241111769712)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up55555555334182241111769712):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x0E313A, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up66666334182241111769712)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up66666334182241111769712):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x0E313A, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up777777334182241111769712)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up777777334182241111769712):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x0E313A, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up888888334182241111769712)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up888888334182241111769712):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x0E313A, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up999999334182241111769712)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up999999334182241111769712):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x0E313A, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up2834324334182241111769712)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up2834324334182241111769712):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x0E313A, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3423456756434334182241111769712)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3423456756434334182241111769712):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x0E313A, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3234234564341822556641111769712)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3234234564341822556641111769712):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x0E313A, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241111769712544565432423)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182241111769712544565432423):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x0E313A, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up4343334182234434111176971232143)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up4343334182234434111176971232143):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x0E313A, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up234235667556334182241111769712)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up234235667556334182241111769712):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x0E313A, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up85647344343334182241111769712)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up85647344343334182241111769712):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x0E313A, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up434354665767686776334182241111769712)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up434354665767686776334182241111769712):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x0E313A, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up93456743567334182241111769712)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up93456743567334182241111769712):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x0E313A, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33895768934567)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33895768934567):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x0E313A, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up332343423456677643434182241111769712)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up332343423456677643434182241111769712):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x0E313A, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822334237657678434312)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822334237657678434312):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x0D3038, 1, Fast ; checking 28th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341823454356454576712)
else
mousemove X3223, Y3223
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341823454356454576712):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x0D3038, 1, Fast ; checking 27th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up12345645764334182241111769712)
else
mousemove X32231, Y32231
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up12345645764334182241111769712):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x0D3038, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3334222222413453453453)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3334222222413453453453):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x0D3038, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up943345345334182241111769712)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up943345345334182241111769712):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x0D3038, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up456433223334182241111769712)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up456433223334182241111769712):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x0D3038, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up32346575643434334182241111769712)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up32346575643434334182241111769712):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x0D3038, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up9245643256334182241111769712)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up9245643256334182241111769712):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x0D3038, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up23423456456334182241111769712)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up23423456456334182241111769712):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x0D3038, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up452345645376567546334182241111769712)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up452345645376567546334182241111769712):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x0D3038, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up365463245353342)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up365463245353342):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x0D3038, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up324234655643431111769712)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up324234655643431111769712):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x0D3038, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up54436786734334182241111769712)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up54436786734334182241111769712):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x0D3038, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up78787894545334182241111769712)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up78787894545334182241111769712):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x0D3038, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up8970785464564334182241111769712)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up8970785464564334182241111769712):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x0D3038, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up7894563456334182241111769712)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up7894563456334182241111769712):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x0D3038, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up874524356456334182241111769712)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up874524356456334182241111769712):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x0D3038, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up76857423563456334182241111769712)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up76857423563456334182241111769712):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x0D3038, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up9068453634563456334182241111769712)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up9068453634563456334182241111769712):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x0D3038, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up987345643564353334182241111769712)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up987345643564353334182241111769712):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x0D3038, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224111764543543321567878655641769712)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418224111764543543321567878655641769712):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x0D3038, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334184353453422222234444442241111769712)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334184353453422222234444442241111769712):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x0D3038, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3345435435433433333334182241111769712)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3345435435433433333334182241111769712):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x0D3038, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up9874543563456334182241111769712)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up9874543563456334182241111769712):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x0D3038, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33345367867856456434182241111769712)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33345367867856456434182241111769712):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x0D3038, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241324322343423432432432432423111769712)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182241324322343423432432432432423111769712):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x0D3038, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up389755434545345334182241111769712)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up389755434545345334182241111769712):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x0D3038, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up312312312312312312312312334182241111769712)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up312312312312312312312312334182241111769712):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x0D3038, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241111769712)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182241111769712):
PixelSearch, XB, YB, 4, 100, 510, 367, 0x1B2726, 1, Fast ; Checking for WILLOW Trees
if Errorlevel = 1
	GoTo, Recover(Up300002342341352613111769712)
   else
	mousemove XB, YB
	sleep 500
	click left
	sleep 2000
	mousemove XB, YB
sleep 3000
Recovered(Up33418411143243243512431769712):
PixelSearch, XB2, YB2, 90, 58, 121, 75, 0x009CFF, 1, Fast ; Checking for "IDLE" text
if Errorlevel = 1
	GoTo, Recover(Up300002342341352613111769712)
   else
	Goto, Recovered(Up3341841111769712)
Recover(Up300002342341352613111769712):
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recovered(Up33418411143243243512431769712)
else
	click 402, 312
sleep 100
Recover(Down30000234235464541645352613111769712):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341352613111769712)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341352613111769712)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up334184132456768344392111769712)
Recover(Down3000023423412343242352613111769712):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up300002342341352613111769712)
Recover(Down300002342341352613111769712):
	GoTo, Recovered(Up3341841111769712)
}
Return

Buttonbarbarianfishing:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up334184132456768344392111769712551):
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up3341841111769712551)
Recovered(Up334184192111769712551):
sleep 5000
Recovered(Up3341841111769712551):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X322313432, Y322313432, 10, 379, 514, 507, 0xA3A4AE, 1, Fast ; checking for lvl up
if Errorlevel = 1
   GoTo, Recovered(Up33418411143243243512431769712551)
else
	Goto, Recovered(Up334182241111769712551)
Recovered(Up33418224534523437689111176971253424324325134545332551):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x192323, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182245345234376891111769712551)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182245345234376891111769712551):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x192323, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411117643554767632239712551)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822411117643554767632239712551):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x192323, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411132323254675781769712551)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822411132323254675781769712551):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x192323, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33745677865564452551)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33745677865564452551):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x192323, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334185674522252551)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334185674522252551):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x192323, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334184343224111173234235669712551)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334184343224111173234235669712551):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x192323, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241111769732234566532325612551)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182241111769732234566532325612551):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x192323, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up35463543432712551)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up35463543432712551):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x192323, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3897655645345712551)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3897655645345712551):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x192323, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3452345765241111769712551)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3452345765241111769712551):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x192323, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341835647822769712551)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341835647822769712551):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x192323, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3356746722551)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3356746722551):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x192323, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3345677645454532551)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3345677645454532551):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x192323, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3354345673222712551)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3354345673222712551):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x192323, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224111176974325345234523452551)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418224111176974325345234523452551):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x192323, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33434565675865733369712551)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33434565675865733369712551):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x192323, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822345634564354334532551)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822345634564354334532551):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x192323, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3446578443524545312551)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3446578443524545312551):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x192323, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up4567678654233231769712551)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up4567678654233231769712551):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x192323, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182243432423545324545341111769712551)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182243432423545324545341111769712551):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x192323, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411112131231231243435769712551)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822411112131231231243435769712551):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x192323, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182232223324545324641111769712551)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182232223324545324641111769712551):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x192323, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418223423465767864343241111769712551)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418223423465767864343241111769712551):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x192323, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334563442342342765764543556456551)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334563442342342765764543556456551):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x192323, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182423424556788912551)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182423424556788912551):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x192323, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up32342342342551)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up32342342342551):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x212EFC, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341823443542342342241111769712551)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341823443542342342241111769712551):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x2F2E1C, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up333456735673335467551)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up333456735673335467551):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x2F2E1C, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up343243325233443224343243562234534551)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up343243325233443224343243562234534551):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x2F2E1C, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up11111334182241111769712551)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up11111334182241111769712551):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x2F2E1C, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up22222334182241111769712551)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up22222334182241111769712551):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x2F2E1C, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33333334182241111769712551)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33333334182241111769712551):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x2F2E1C, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3444434182241111769712551)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3444434182241111769712551):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x2F2E1C, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up444444334182241111769712551)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up444444334182241111769712551):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x2F2E1C, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3555534182241111769712551)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3555534182241111769712551):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x2F2E1C, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up55555555334182241111769712551)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up55555555334182241111769712551):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x2F2E1C, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up66666334182241111769712551)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up66666334182241111769712551):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x2F2E1C, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up777777334182241111769712551)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up777777334182241111769712551):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x2F2E1C, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up888888334182241111769712551)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up888888334182241111769712551):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x2F2E1C, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up999999334182241111769712551)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up999999334182241111769712551):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x2F2E1C, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up2834324334182241111769712551)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up2834324334182241111769712551):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x2F2E1C, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3423456756434334182241111769712551)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3423456756434334182241111769712551):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x2F2E1C, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3234234564341822556641111769712551)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3234234564341822556641111769712551):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x2F2E1C, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241111769712544565432423551)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182241111769712544565432423551):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x2F2E1C, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up4343334182234434111176971232143551)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up4343334182234434111176971232143551):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x2F2E1C, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up234235667556334182241111769712551)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up234235667556334182241111769712551):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x2F2E1C, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up85647344343334182241111769712551)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up85647344343334182241111769712551):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x2F2E1C, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up434354665767686776334182241111769712551)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up434354665767686776334182241111769712551):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x2F2E1C, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up93456743567334182241111769712551)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up93456743567334182241111769712551):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x2F2E1C, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33895768934567551)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33895768934567551):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x2F2E1C, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up332343423456677643434182241111769712551)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up332343423456677643434182241111769712551):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x2F2E1C, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822334237657678434312551)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3341822334237657678434312551):
Recovered(Up12345645764334182241111769712551):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x4E4F6A, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3334222222413453453453551)
else
mousemove X322313, Y322313
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3334222222413453453453551):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x4E4F6A, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up943345345334182241111769712551)
else
mousemove X3223133, Y3223133
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up943345345334182241111769712551):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x4E4F6A, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up456433223334182241111769712551)
else
mousemove X3789, Y3789
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up456433223334182241111769712551):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x4E4F6A, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up32346575643434334182241111769712551)
else
mousemove X37891, Y37891
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up32346575643434334182241111769712551):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x4E4F6A, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up9245643256334182241111769712551)
else
mousemove X378912, Y378912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up9245643256334182241111769712551):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x4E4F6A, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up23423456456334182241111769712551)
else
mousemove X3789123, Y3789123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up23423456456334182241111769712551):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x4E4F6A, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up452345645376567546334182241111769712551)
else
mousemove X37891234, Y37891234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up452345645376567546334182241111769712551):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x4E4F6A, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up365463245353342551)
else
mousemove X378912345, Y378912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up365463245353342551):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x4E4F6A, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up324234655643431111769712551)
else
mousemove X3789123456, Y3789123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up324234655643431111769712551):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x4E4F6A, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up54436786734334182241111769712551)
else
mousemove X37891234567, Y37891234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up54436786734334182241111769712551):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x4E4F6A, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up78787894545334182241111769712551)
else
mousemove X91, Y91
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up78787894545334182241111769712551):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x4E4F6A, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up8970785464564334182241111769712551)
else
mousemove X912, Y912
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up8970785464564334182241111769712551):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x4E4F6A, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up7894563456334182241111769712551)
else
mousemove X9123, Y9123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up7894563456334182241111769712551):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x4E4F6A, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up874524356456334182241111769712551)
else
mousemove X91234, Y91234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up874524356456334182241111769712551):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x4E4F6A, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up76857423563456334182241111769712551)
else
mousemove X912345, Y912345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up76857423563456334182241111769712551):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x4E4F6A, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up9068453634563456334182241111769712551)
else
mousemove X9123456, Y9123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up9068453634563456334182241111769712551):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x4E4F6A, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up987345643564353334182241111769712551)
else
mousemove X91234567, Y91234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up987345643564353334182241111769712551):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x4E4F6A, 1, Fast ; checking 9th spot for logs 
if Errorlevel = 1
   GoTo, Recovered(Up33418224111764543543321567878655641769712551)
else
mousemove X912345678, Y912345678
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33418224111764543543321567878655641769712551):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x4E4F6A, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334184353453422222234444442241111769712551)
else
mousemove XF1, YF1
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334184353453422222234444442241111769712551):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x4E4F6A, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3345435435433433333334182241111769712551)
else
mousemove XF11, YF11
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up3345435435433433333334182241111769712551):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x4E4F6A, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up9874543563456334182241111769712551)
else
mousemove XF112, YF112
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up9874543563456334182241111769712551):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x4E4F6A, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33345367867856456434182241111769712551)
else
mousemove XF1123, YF1123
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up33345367867856456434182241111769712551):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x4E4F6A, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241324322343423432432432432423111769712551)
else
mousemove XF11234, YF11234
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182241324322343423432432432432423111769712551):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x4E4F6A, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up389755434545345334182241111769712551)
else
mousemove XF112345, YF112345
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up389755434545345334182241111769712551):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x4E4F6A, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up312312312312312312312312334182241111769712551)
else
mousemove XF1123456, YF1123456
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up312312312312312312312312334182241111769712551):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x4E4F6A, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241111769712551)
else
mousemove XF11234567, YF11234567
Send {Shift Down}
click
Send {Shift Up}
sleep 50
Recovered(Up334182241111769712551):
PixelSearch, XB, YB, 4, 100, 510, 367, 0xFFFF00, 1, Fast ; Checking for fish
if Errorlevel = 1
	GoTo, Recover(Up300002342341352613111769714355434354354352551)
   else
	mousemove XB, YB
	sleep 500
	MouseMove, 38, 20, 1, R
	sleep 500
	click left
	sleep 2000
	mousemove XB, YB
sleep 3000
Recovered(Up33418411143243243512431769712551):
PixelSearch, XB2, YB2, 406, 59, 513, 84, 0x0000FF, 1, Fast ; Checking for "IDLE" text 
if Errorlevel = 1
	GoTo, Recovered(Up3341841111769712551)
   else
	Goto, Recovered(Up33418224534523437689111176971253424324325134545332551)
Recover(Up300002342341352613111769714355434354354352551):
PixelSearch, XB432, YB432, 577, 48, 733, 197, 0xFFFF00, 1, Fast ; Checking for fish on minimap
if Errorlevel = 1
	GoTo, Recover(Up300002342341352613111769712551)
   else
	mousemove XB432, YB432
	click left
	sleep 10000
Recover(Up300002342341352613111769712551):
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recovered(Up3341841111769712551)
else
	click 402, 312
sleep 100
Recover(Down30000234235464541645352613111769712551):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341352613111769712551)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down300002342341352613111769712551)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up334184132456768344392111769712551)
Recover(Down3000023423412343242352613111769712551):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up300002342341352613111769712551)
Recover(Down300002342341352613111769712551):
	GoTo, Recovered(Up3341841111769712551)
}
Return

Buttonflyfishingtrout:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33418413245676834439211176971255):
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up334184111176971255)
Recovered(Up33418419211176971255):
sleep 5000
Recovered(Up334184111176971255):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X322313432, Y322313432, 10, 379, 514, 507, 0xA3A4AE, 1, Fast ; checking for lvl up
if Errorlevel = 1
   GoTo, Recovered(Up3341841114324324351243176971255)
else
	Goto, Recovered(Up33418224111176971255)
Recovered(Up33418224534523437689111176971253424324325134545332):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x9899A6, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224534523437689111176971255)
else
mousemove X322313, Y322313
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up33418224534523437689111176971255):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x9899A6, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241111764355476763223971255)
else
mousemove X3223133, Y3223133
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up334182241111764355476763223971255):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x9899A6, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241113232325467578176971255)
else
mousemove X3789, Y3789
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up334182241113232325467578176971255):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x9899A6, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3374567786556445255)
else
mousemove X37891, Y37891
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up3374567786556445255):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x9899A6, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418567452225255)
else
mousemove X378912, Y378912
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up33418567452225255):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x9899A6, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418434322411117323423566971255)
else
mousemove X3789123, Y3789123
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up33418434322411117323423566971255):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x9899A6, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224111176973223456653232561255)
else
mousemove X37891234, Y37891234
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up33418224111176973223456653232561255):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x9899A6, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3546354343271255)
else
mousemove X378912345, Y378912345
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up3546354343271255):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x9899A6, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up389765564534571255)
else
mousemove X3789123456, Y3789123456
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up389765564534571255):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x9899A6, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up345234576524111176971255)
else
mousemove X37891234567, Y37891234567
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up345234576524111176971255):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x9899A6, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334183564782276971255)
else
mousemove X91, Y91
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up334183564782276971255):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x9899A6, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up335674672255)
else
mousemove X912, Y912
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up335674672255):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x9899A6, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334567764545453255)
else
mousemove X9123, Y9123
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up334567764545453255):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x9899A6, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up335434567322271255)
else
mousemove X91234, Y91234
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up335434567322271255):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x9899A6, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411117697432534523452345255)
else
mousemove X912345, Y912345
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up3341822411117697432534523452345255):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x9899A6, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3343456567586573336971255)
else
mousemove X9123456, Y9123456
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up3343456567586573336971255):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x9899A6, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182234563456435433453255)
else
mousemove X91234567, Y91234567
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up334182234563456435433453255):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x9899A6, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up344657844352454531255)
else
mousemove X912345678, Y912345678
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up344657844352454531255):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x9899A6, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up456767865423323176971255)
else
mousemove XF1, YF1
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up456767865423323176971255):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x9899A6, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224343242354532454534111176971255)
else
mousemove XF11, YF11
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up33418224343242354532454534111176971255):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x9899A6, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182241111213123123124343576971255)
else
mousemove XF112, YF112
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up334182241111213123123124343576971255):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x9899A6, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418223222332454532464111176971255)
else
mousemove XF1123, YF1123
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up33418223222332454532464111176971255):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x9899A6, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822342346576786434324111176971255)
else
mousemove XF11234, YF11234
click right
	MouseMove, 0, 20, 1, R
sleep 100
	click
sleep 50
Recovered(Up3341822342346576786434324111176971255):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x9899A6, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33456344234234276576454355645655)
else
mousemove XF112345, YF112345
click right
	MouseMove, 0, 20, 1, R
sleep 100
	click
sleep 50
Recovered(Up33456344234234276576454355645655):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x9899A6, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418242342455678891255)
else
mousemove XF1123456, YF1123456
click right
	MouseMove, 0, 20, 1, R
sleep 100
	click
sleep 50
Recovered(Up33418242342455678891255):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x9899A6, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3234234234255)
else
mousemove XF11234567, YF11234567
click right
	MouseMove, 0, 20, 1, R
sleep 100
	click
sleep 50
Recovered(Up3234234234255):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0xBEBEC6, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182344354234234224111176971255)
else
mousemove X322313, Y322313
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up334182344354234234224111176971255):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0xBEBEC6, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33345673567333546755)
else
mousemove X3223133, Y3223133
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up33345673567333546755):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0xBEBEC6, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up34324332523344322434324356223453455)
else
mousemove X3789, Y3789
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up34324332523344322434324356223453455):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0xBEBEC6, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up1111133418224111176971255)
else
mousemove X37891, Y37891
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up1111133418224111176971255):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0xBEBEC6, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up2222233418224111176971255)
else
mousemove X378912, Y378912
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up2222233418224111176971255):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0xBEBEC6, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3333333418224111176971255)
else
mousemove X3789123, Y3789123
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up3333333418224111176971255):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0xBEBEC6, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up344443418224111176971255)
else
mousemove X37891234, Y37891234
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up344443418224111176971255):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0xBEBEC6, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up44444433418224111176971255)
else
mousemove X378912345, Y378912345
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up44444433418224111176971255):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0xBEBEC6, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up355553418224111176971255)
else
mousemove X3789123456, Y3789123456
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up355553418224111176971255):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0xBEBEC6, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up5555555533418224111176971255)
else
mousemove X37891234567, Y37891234567
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up5555555533418224111176971255):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0xBEBEC6, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up6666633418224111176971255)
else
mousemove X91, Y91
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up6666633418224111176971255):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0xBEBEC6, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up77777733418224111176971255)
else
mousemove X912, Y912
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up77777733418224111176971255):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0xBEBEC6, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up88888833418224111176971255)
else
mousemove X9123, Y9123
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up88888833418224111176971255):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0xBEBEC6, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up99999933418224111176971255)
else
mousemove X91234, Y91234
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up99999933418224111176971255):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0xBEBEC6, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up283432433418224111176971255)
else
mousemove X912345, Y912345
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up283432433418224111176971255):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0xBEBEC6, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up342345675643433418224111176971255)
else
mousemove X9123456, Y9123456
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up342345675643433418224111176971255):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0xBEBEC6, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up323423456434182255664111176971255)
else
mousemove X91234567, Y91234567
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up323423456434182255664111176971255):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0xBEBEC6, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224111176971254456543242355)
else
mousemove X912345678, Y912345678
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up33418224111176971254456543242355):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0xBEBEC6, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up434333418223443411117697123214355)
else
mousemove XF1, YF1
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up434333418223443411117697123214355):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0xBEBEC6, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up23423566755633418224111176971255)
else
mousemove XF11, YF11
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up23423566755633418224111176971255):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0xBEBEC6, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up8564734434333418224111176971255)
else
mousemove XF112, YF112
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up8564734434333418224111176971255):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0xBEBEC6, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up43435466576768677633418224111176971255)
else
mousemove XF1123, YF1123
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up43435466576768677633418224111176971255):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0xBEBEC6, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up9345674356733418224111176971255)
else
mousemove XF11234, YF11234
click right
	MouseMove, 0, 20, 1, R
sleep 100
	click
sleep 50
Recovered(Up9345674356733418224111176971255):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0xBEBEC6, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3389576893456755)
else
mousemove XF112345, YF112345
click right
	MouseMove, 0, 20, 1, R
sleep 100
	click
sleep 50
Recovered(Up3389576893456755):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0xBEBEC6, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33234342345667764343418224111176971255)
else
mousemove XF1123456, YF1123456
click right
	MouseMove, 0, 20, 1, R
sleep 100
	click
sleep 50
Recovered(Up33234342345667764343418224111176971255):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0xBEBEC6, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334182233423765767843431255)
else
mousemove XF11234567, YF11234567
click right
	MouseMove, 0, 20, 1, R
sleep 100
	click
sleep 50
Recovered(Up334182233423765767843431255):
Recovered(Up1234564576433418224111176971255):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x878DB0, 1, Fast ; checking 26th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up333422222241345345345355)
else
mousemove X322313, Y322313
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up333422222241345345345355):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x878DB0, 1, Fast ; checking 25th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up94334534533418224111176971255)
else
mousemove X3223133, Y3223133
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up94334534533418224111176971255):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x878DB0, 1, Fast ; checking 24th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up45643322333418224111176971255)
else
mousemove X3789, Y3789
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up45643322333418224111176971255):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x878DB0, 1, Fast ; checking 23th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3234657564343433418224111176971255)
else
mousemove X37891, Y37891
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up3234657564343433418224111176971255):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x878DB0, 1, Fast ; checking 22th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up924564325633418224111176971255)
else
mousemove X378912, Y378912
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up924564325633418224111176971255):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x878DB0, 1, Fast ; checking 21th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up2342345645633418224111176971255)
else
mousemove X3789123, Y3789123
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up2342345645633418224111176971255):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x878DB0, 1, Fast ; checking 20th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up45234564537656754633418224111176971255)
else
mousemove X37891234, Y37891234
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up45234564537656754633418224111176971255):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x878DB0, 1, Fast ; checking 19th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up36546324535334255)
else
mousemove X378912345, Y378912345
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up36546324535334255):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x878DB0, 1, Fast ; checking 18th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up32423465564343111176971255)
else
mousemove X3789123456, Y3789123456
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up32423465564343111176971255):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x878DB0, 1, Fast ; checking 17th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up5443678673433418224111176971255)
else
mousemove X37891234567, Y37891234567
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up5443678673433418224111176971255):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x878DB0, 1, Fast ; checking 16th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up7878789454533418224111176971255)
else
mousemove X91, Y91
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up7878789454533418224111176971255):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x878DB0, 1, Fast ; checking 15th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up897078546456433418224111176971255)
else
mousemove X912, Y912
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up897078546456433418224111176971255):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x878DB0, 1, Fast ; checking 14th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up789456345633418224111176971255)
else
mousemove X9123, Y9123
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up789456345633418224111176971255):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x878DB0, 1, Fast ; checking 13th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up87452435645633418224111176971255)
else
mousemove X91234, Y91234
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up87452435645633418224111176971255):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x878DB0, 1, Fast ; checking 12th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up7685742356345633418224111176971255)
else
mousemove X912345, Y912345
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up7685742356345633418224111176971255):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x878DB0, 1, Fast ; checking 11th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up906845363456345633418224111176971255)
else
mousemove X9123456, Y9123456
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up906845363456345633418224111176971255):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x878DB0, 1, Fast ; checking 10th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up98734564356435333418224111176971255)
else
mousemove X91234567, Y91234567
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up98734564356435333418224111176971255):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x878DB0, 1, Fast ; checking 9th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3341822411176454354332156787865564176971255)
else
mousemove X912345678, Y912345678
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up3341822411176454354332156787865564176971255):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x878DB0, 1, Fast ; checking 8th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418435345342222223444444224111176971255)
else
mousemove XF1, YF1
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up33418435345342222223444444224111176971255):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x878DB0, 1, Fast ; checking 7th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up334543543543343333333418224111176971255)
else
mousemove XF11, YF11
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up334543543543343333333418224111176971255):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x878DB0, 1, Fast ; checking 6th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up987454356345633418224111176971255)
else
mousemove XF112, YF112
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up987454356345633418224111176971255):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x878DB0, 1, Fast ; checking 5th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up3334536786785645643418224111176971255)
else
mousemove XF1123, YF1123
click right
	MouseMove, 0, 40, 1, R
sleep 100
	click
sleep 50
Recovered(Up3334536786785645643418224111176971255):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x878DB0, 1, Fast ; checking 4th spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224132432234342343243243243242311176971255)
else
mousemove XF11234, YF11234
click right
	MouseMove, 0, 20, 1, R
sleep 100
	click
sleep 50
Recovered(Up33418224132432234342343243243243242311176971255):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x878DB0, 1, Fast ; checking 3rd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up38975543454534533418224111176971255)
else
mousemove XF112345, YF112345
click right
	MouseMove, 0, 20, 1, R
sleep 100
	click
sleep 50
Recovered(Up38975543454534533418224111176971255):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x878DB0, 1, Fast ; checking 2nd spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up31231231231231231231231233418224111176971255)
else
mousemove XF1123456, YF1123456
click right
	MouseMove, 0, 20, 1, R
sleep 100
	click
sleep 50
Recovered(Up31231231231231231231231233418224111176971255):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x878DB0, 1, Fast ; checking 1st spot for logs
if Errorlevel = 1
   GoTo, Recovered(Up33418224111176971255)
else
mousemove XF11234567, YF11234567
click right
	MouseMove, 0, 20, 1, R
sleep 100
	click
sleep 50
Recovered(Up33418224111176971255):
PixelSearch, XB, YB, 4, 100, 510, 367, 0xFFFF00, 1, Fast ; Checking for fish
if Errorlevel = 1
	GoTo, Recover(Up30000234234135261311176971435543435435435255)
   else
	mousemove XB, YB
	sleep 500
	MouseMove, 38, 20, 1, R
	click left
	sleep 2000
	mousemove XB, YB
sleep 3000
Recovered(Up3341841114324324351243176971255):
PixelSearch, XB2, YB2, 406, 59, 513, 84, 0x0000FF, 1, Fast ; Checking for "IDLE" text
if Errorlevel = 1
	GoTo, Recovered(Up334184111176971255)
   else
	Goto, Recovered(Up33418224534523437689111176971253424324325134545332)
Recover(Up30000234234135261311176971435543435435435255):
PixelSearch, XB432, YB432, 577, 48, 733, 197, 0xFFFF00, 1, Fast ; Checking for fish on minimap
if Errorlevel = 1
	GoTo, Recover(Up30000234234135261311176971255)
   else
	mousemove XB432, YB432
	click left
	sleep 10000
Recover(Up30000234234135261311176971255):
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recovered(Up334184111176971255)
else
	click 402, 312
sleep 100
Recover(Down3000023423546454164535261311176971255):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234135261311176971255)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down30000234234135261311176971255)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
   	GoTo, Recovered(Up33418413245676834439211176971255)
Recover(Down300002342341234324235261311176971255):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up30000234234135261311176971255)
Recover(Down30000234234135261311176971255):
	GoTo, Recovered(Up334184111176971255)
}
Return

Buttonbarbarianfishing3tick:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33418413245676834439211176971255122):
	BlockInput, MouseMove
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up334184111176971255122)
Recovered(Up33418419211176971255122):
sleep 5000
Recovered(Up334184111176971255122):
Loop
{
	WinActivate, ahk_class SunAwtFrame
Recovered(Up33418411245645765675647456341176971255122):
PixelSearch, XB, YB, 4, 100, 510, 367, 0xFFFF00, 1, Fast ; Checking for fish
if Errorlevel = 1
	GoTo, Recover(Up30000234234135261311176971435543435435435255122)
   else
	click 580, 260
	sleep 50
	click 623, 261
        Send {Shift Down} 
	click 665, 262
	click 706, 262
        Send {Shift Up} 
	mousemove XB, YB
	sleep 50
	MouseMove, 38, 20, 1, R
	sleep 500
	click left
sleep 500	
	GoTo, Recovered(Up33418411245645765675647456341176971255122)
Recover(Up30000234234135261311176971435543435435435255122):
PixelSearch, XB432, YB432, 577, 48, 733, 197, 0xFFFF00, 1, Fast ; Checking for fish on minimap
if Errorlevel = 1
	GoTo, Recovered(Up334184111176971255122)
   else
	mousemove XB432, YB432
	click left
	sleep 10000
	GoTo, Recovered(Up334184111176971255122)
}
Return

ButtonVarrockagilityauto:
	IfWinExist, ahk_class SunAwtFrame
	WinActivate, ahk_class SunAwtFrame
	BlockInput, MouseMove
Recovered(Up3341841111769712456):
Loop
{
	WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 8, 37, 517, 369, 0x3A9045, 1, Fast ; Check for start of agil course
if Errorlevel = 1
   GoTo, Recovered(Up3341841111769712456)
else
mousemove X, Y
click
GoTo, Recovered(Up3341841111769712456)
}
Return

buttonupdatelog:
{
Run, notepad Essentials\UpdateLogv25.txt
}
return

Buttonautologinsetup:	
msgbox, Open the "Essentials" Folder which is located in the same filepath as this macro, and open up "AccountUsername.txt" and change the first line of text to your Runescape username. Also Open up "AccountPassword.txt" and change the first line to your Runescape password.

return

Buttonhowtoupgradetopremium:
MsgBox, If you're interested in upgrading to premium, to avoid the trial timers, or just to simply donate, donate $20 AUD using the button below and in the "Add special instructions to recipient" leave your email address if it's different to the paying email address and I will send you a link to download the premium tool (May take up to 24h)
return

Buttoncontactme:
Run http://steamcommunity.com/id/sammichakazanmato
MsgBox, This is my steam profile, feel free to add me if you have a question/suggestion.
return


; Auto Login for fletching and stringingyews
Recover(Up30000234234123445765324432322343242352613111765131):  ; IF COPY PASTE, CHANGE THIS TO UNIQUE
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up3341841) ; IF COPY PASTE, CHANGE THIS TO BEGINNING LABEL
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recover(Down478247467846731111456456456)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down478247467846731111456456456)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down47847467846731111456456456)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down47847467846731111456456456)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down47847467846731111456456456)
else
	click 402, 312
sleep 100
Recover(Down47847467846731111456456456):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down47847467846731111456456456)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down47847467846731111456456456)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
	Goto, Recovered(Up334425634567184192)
Recover(Down478247467846731111456456456):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up30000234234123445765324432322343242352613111765131)
Recover(Down4784746784673456456456):
	GoTo, Recover(Up30000234234123445765324432322343242352613111765131) ; IF COPY PASTE, CHANGE THIS TO BEGINNING LABEL
return

; Auto Login for cannon balls
Recover(Up300002453345345345765131): ; IF COPY PASTE, CHANGE THIS TO UNIQUE
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast ; search for log in screen
if Errorlevel = 1
   	GoTo, Recovered(Up33418419261) ; IF COPY PASTE, CHANGE THIS TO BEGINNING LABEL
	else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast ; search for any login entered
if Errorlevel = 0
	Goto, Recover(Down47824746784673111145645645644)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast ; search for any password entered
if Errorlevel = 0
	Goto, Recover(Down47824746784673111145645645644)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast ; search for 2nd login screen
if Errorlevel = 0
	Goto, Recover(Down4784746784673111145645645644)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down4784746784673111145645645644)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast ; search for login screen
if Errorlevel = 1
	Goto, Recover(Down4784746784673111145645645644)
else
	click 402, 312
sleep 100
Recover(Down4784746784673111145645645644):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down4784746784673111145645645644)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
	Goto, Recover(Down4784746784673111145645645644)
else
click 315, 292
	send %accname%{enter}
	send %accpass%{enter}
	sleep 7000
	click 384, 367
	sleep 7000
	Goto, Recovered(Up334184194556567645734342565463261) ; IF COPY PASTE, CHANGE THIS TO BEGINNING LABEL
Recover(Down47824746784673111145645645644):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
	Goto, Recover(Up300002453345345345765131) ; IF COPY PASTE, CHANGE TO TOP RELOG
Recover(Down478474678467345645645644):
	GoTo, Recovered(Up33418419261) ; IF COPY PASTE, CHANGE THIS TO BEGINNING LABEL
return
GuiClose: 
ExitApp