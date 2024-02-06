--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--


entered = false;
hasSpell = false;
castSpellLib = false;

function story(aName)
	if(aName == "start") then
		playMusic("background.wav")
		setBackground("dark house.png")
		createTextfield("you see an old ass, ugly ass, hoeless ass, no money ass mansion. What will you do?")
		createButton("exit", "you flex hard af on that bitch ass mansion then drive away in your mercedes g-wagon.")
		createButton("dropship lessons", "go inside to teach him how to dropship")
	end
	if(aName == "dropship lessons") then
		if(entered == false) then
			playSound("door.wav")
			entered = true;
		else
			playSound("footstep.wav")
		end
		CLS();
		setBackground("dark stairs.png");
		createTextfield("when you go inside you see an ugly ass staircase and 2 doors.")
		createButton("leftDoor", "Go to the door on your left (not even a good wood)");
		createButton("rightDoor", "Go to the door on your right (some ugly ass colour)");
		createButton("upStairs", "go up the stairs (Boring)");
	end
	if(aName == "leftDoor") then
		playSound("footstep.wav")
		CLS();
		setBackground("computer room.png")
		createTextfield("You see some old ass computers", "These aren't good for dropshipping OR crypto mining.")
		createButton("entrance", "Go back to the hall.");
		if(hasSpell == false) then
			createButton("LookComputers", "See if the computers can be used to at least watch YouTube tutorials on how to make money")
		end
	end
	if(aName == "LookComputers") then
		CLS();
		playSound("type.wav")
		createTextfield("It seems that they can be used for tutorials",                             "maybe they can be taught something after all")
		createButton("dropship lessons", "You go back to the main hall")
		hasSpell = true;
	end
	if(aName == "rightDoor") then
		CLS()
		playSound("footstep.wav")
		setBackground("right room.png")
		if(castSpellLib == true) then
			createTextfield("Old ass room bruh, you mutter to yourself")
		else
			createTextfield("You enter an old living room.                                          even though the person of this house has no drip there still are some designer clothes on the wall.")
		end
		
		createButton("dropship lessons", "You look around the room then leave")
		if(hasSpell == true and castSpellLib == false) then
			createButton("rightHallwaySpell", "you grab the nearest Prada sweater                    and leave the room")
		end
	end
	if(aName == "rightHallwaySpell") then
		CLS()
		createTextfield("The entire room gets redecorated in a modern style")
		setBackground("modern room.png")
		castSpellLib = true;
		createButton("dropship lessons", "weird ass house bruh ion wanna stay here no more")
	end
	if(aName == "upStairs") then
		CLS()
		playSound("footstep.wav")
		if(hasSpell == true and castSpellLib == true) then
			setBackground("money spread.png")
			createTextfield("I don't need dropshipping lessons bruh                                *flexes so hard on you you almost die*")
			createButton("outside", "wtf bruh im out of here youre weird as fuck, just wanted to help")
		else
		    playSound("r2d2.wav")
			setBackground("dark lord.jpeg")
			createTextfield("KILL YOURSELF NOW!!! the dark lord screams")
			createButton("exit", "You suddenly get the urge to jump out of the window")
		end
	end
	if(aName == "outside")then
		CLS()
		playSound("footstep.wav")
			setBackground("forest run.png")
			createTextfield("that man was trippin hard, but im harder")
			createButton("matrix", "go online to take lessons on how to escape the matrix")
		
	end
	if(aName == "matrix") then
		CLS()
		playSound("type.wav")
			setBackground("laptop.png")
			createTextfield("you find a misterious guy on the internet that looks like he know what he is doing")
			createButton("internet man", "see what he has to offer")
			createButton("not internet man", "you dont let anyone tell you what to doo") 
	end

	if(aName == "internet man") then
		CLS()
		playSound("type.wav")
			setBackground("laptop.png")
			createTextfield("he wants to meet you in person")
			createButton("internet man agree", "agree")
			createButton("internet man dissagree", "you are a lone wolf") 
	end

	if(aName == "internet man agree") then
		CLS()
		playSound("footstep.wav")
			setBackground("cabin outside.jpeg")
			createTextfield("you go to his house, which is creepily located deep in a forest")
			createButton("go inside", "you go inside of his house to")
			createButton("internet man dissagree", "this looks too scetchy, you dont trust him") 
	end

	if(aName == "go inside") then
		CLS()
		playSound("footstep.wav")
			setBackground("inside cabin.jpeg")
			createTextfield("you dont see anyone, what do you do?")
			createButton("look around", "look around the room to see what you can find")
			createButton("internet man dissagre", "leave") 
	end

	if(aName == "look around") then
		CLS()
		playSound("footstep.wav")
			setBackground("inside cabin.jpeg")
			createTextfield("where do you look")
			createButton("closet", "look in a closet")
			createButton("under bed", "look under the bed") 
	end

	if(aName == "closet") then
		CLS()
		playSound("footstep.wav")
			setBackground("inside cabin.jpeg")
			createTextfield("you look around and see a big walk in closet, which you enter")
			createButton(",", "")
	end

	if(aName == ",") then
		CLS()
		playSound("footstep.wav")
			setBackground("closet.jpeg")
			createTextfield("someone pushes you in and closes the door!")
			createButton(">", "")
	end

	if(aName == ">") then
		CLS()
			setBackground("closet.jpeg")
			createTextfield("what do you do?")
			createButton("way out", "look around the closet for a way out")
			createButton("run against door", "you ram the door with your shoulder") 
	end

	if(aName == "way out") then
		CLS()
		playSound("footstep.wav")
			setBackground("closet.jpeg")
			createTextfield("there is no way out except for the closet doors")
			createButton("run against door", "ram against the door")
	end

	if(aName == "run against door") then
		CLS()
		playSound("talk.wav")
			setBackground("closet.jpeg")
			createTextfield("you ram the door open and a weird man start calling you gay???")
			createButton("punch man", "punch him")
			createButton("gay", "tell him he is the gay one since he touched you") 
	end

	if(aName == "punch man") then
		CLS()
		playSound("r2d2.wav")
			setBackground("knife attack.jpeg")
			createTextfield("you punch him hard but he pulls out a knife and stabs you")
			createButton("exit", "")
	end

	if(aName == "gay") then
		CLS()
		playSound("talk.wav")
			setBackground("laughing.jpeg")
			createTextfield("he starts laughing then asks if you are the man from online")
			createButton("man from online", "yes i am")
	end

	if(aName == "man from online") then
		CLS()
		playSound("footstep.wav")
			setBackground("inside cabin.jpeg")
			createTextfield("")
			createButton("", "")
			createButton("", "") 
	end

	if(aName == "under bed") then
		CLS()
		playSound("footstep.wav")
			setBackground("inside cabin.jpeg")
			createTextfield("you look under the bed and see someone with a knife laying there!")
			createButton(".", "")
	end

	if(aName == ".") then
		CLS()
		playSound("r2d2.wav")
			setBackground("knife attack.jpeg")
			createTextfield("he jumps at you and starts stabbing you")
			createButton("exit", "")
	end

	if(aName == "internet man dissagree") then
		CLS()
		playSound("type.wav")
			setBackground("laptop.png")
			createTextfield("you decide not to trust him")
			createButton("not internet man", "see what you can do on your own")
	end

	if(aName == "not internet man") then
		CLS()
		playSound("type.wav")
			setBackground("laptop.png")
			createTextfield("how do you want to maken money")
			createButton("day trading", "teach youreself day trading")
			createButton("traffick", "human trafficking") 
	end

	if(aName == "traffick") then
		CLS()
		playSound("type.wav")
			setBackground("laptop.png")
			createTextfield("you decide to kidnapp people and sell them on the black market")
			createButton("grown up", "kidnapp grown ups")
			createButton("child", "kidnapp children") 
	end

	if(aName == "grown up") then
		CLS()
		playSound("type.wav")
			setBackground("laptop.png")
			createTextfield("you decide to try to kidnapp a grown upp")
			createButton("women", "kidnapp women")
			createButton("man", "kidnapp man") 
	end

	if(aName == "women") then
		CLS()
		playSound("police.wav")
			setBackground("police.png")
			createTextfield("the police catch you in the act and you are taken to prison")
			createButton("hang", "hang yourself in your cell") 
	end

	if(aName == "child") then
		CLS()
		playSound("police.wav")
			setBackground("police.png")
			createTextfield("the police catch you in the act and you are taken to prison")
			createButton("hang", "hang yourself in your cell")
	end

	if(aName == "man") then
		CLS()
		playSound("police.wav")
			setBackground("police.png")
			createTextfield("the police catch you in the act and you are taken to prison")
			createButton("hang", "hang yourself in your cell")
	end

	if(aName == "day trading") then
		CLS()
		playSound("type.wav")
			setBackground("laptop.png")
			createTextfield("you decide to try day trading, but after the first day you loose all your money")
			createButton("kill yourself", "kill yourself")
			createButton("family", "borrow money from a family member") 
	end

	if(aName == "family") then
		CLS()
		playSound("talk.wav")
			setBackground("family.png")
			createTextfield("you borrow a lot of money and loose it all")
			createButton("kill yourself", "decide to kill yourself")
			createButton("internet man", "look at what the mysterious man had to offer after all") 
	end

	if(aName == "kill yourself") then
		CLS()
			setBackground("laptop.png")
			createTextfield("you have decided to kill yourself")
			createButton("jump off bridge", "jump off a bridge")
			createButton("hang", "hang yourself") 
	end

	if(aName == "jump off bridge") then
		CLS()
		playSound("r2d2.wav")
			setBackground("bridge.png")
			createTextfield("you find a nice high bridge to jump of off")
			createButton("exit", "die")
	end

	if(aName == "hang") then
		CLS()
		playSound("r2d2.wav")
			setBackground("noose.png")
			createTextfield("you decide to hang yourself")
			createButton("exit", "die")
	end

	if(aName == "exit") then
		exitGame();
	end
end


