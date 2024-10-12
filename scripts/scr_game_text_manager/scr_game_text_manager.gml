/// @param _dialogue_id
function start_dialogue(_dialogue_id){
	switch (_dialogue_id) {
		
		#region Testing Dialogue
		case "Test1":
			set_dialogue("Time to take a piss...", "Jake");
			set_dialogue("...", "Jake");
			set_dialogue("What the hell are you doing?", "Vortex", -1);
			set_dialogue("I'm taking a piss!", "Jake");
			set_dialogue_float(13, 16);
			set_dialogue("Okay, but why aren't you jumping on me, that's what you're supposed to do.", "Vortex", -1);
			set_dialogue("I might do it fucking later.", "Jake");
			set_dialogue("No I'm a motherfucking enemy, you're supposed to jump on me.", "Vortex", -1);
			set_dialogue("Okey dokey then, let me get my pants again first and then maybe I'll jump on you...", "Jake");
			set_dialogue("Maybe?", "Vortex", -1);
			set_dialogue("MAYBE!?", "Vortex", -1);
			set_dialogue_shake(0, 5);
			set_dialogue("Are you out of your fucking mind!?", "Vortex", -1);
			set_dialogue("NO!", "Vortex", -1);
			set_dialogue_shake(0, 1);
			set_dialogue("Jump on me now motherfucker!", "Vortex", -1);
			set_dialogue("Okay but let me get my pants first...", "Jake");
			set_dialogue("*sigh* Fine...", "Vortex", -1);
			set_dialogue_float(0, 6);
			break;
		
		case "Test2":
			set_dialogue("I'm Sylux!", "Sylux");
			set_dialogue_color(4, 8, c_red, c_red, c_red, c_red);
			set_dialogue("What the fuck?", "Sylux-suspicious", -1);
			set_dialogue("WHO ARE YOU!?", "Sylux-angry", -1);
			set_dialogue_shake(0, 11);
			set_dialogue("I'm Sylu-", "Sylux");
			set_dialogue("NO YOU'RE NOT, DIE BITCH!", "Sylux-angry", -1);
			set_dialogue_shake(0, 24);
			set_dialogue("I am very dead...", "Jake");
			set_dialogue("skull emoji", "Jake");
			break;
			
		case "TestSign":
			set_dialogue("Woah, look a different textbox!", "Sign");
			set_dialogue("I can do dialogue!", "Sign");
			set_dialogue("The backgorund is gray, this means you're reading whats written on this sign!", "Sign");
			set_dialogue("Congratulations, you found the only sign in the game's test rooms! How do you feel after this accomplishment?");
			break;
			
		case "TestSpeed":
			set_dialogue("This text is very slow...");
			set_dialogue_speed(0, 35, 4);
			set_dialogue("But this text is fast!");
			set_dialogue_speed(0, 22, 0.25);
			break;
		#endregion
		
		#region Secrets Dialogue
		#region Secrets Dialogue (Sylux Followers)
		case "Follower1":
			set_dialogue("He built his domain from the fabrics of nothingness...");
			set_dialogue("And I am holding a piece of it within my body, it fills my soul with malice...");
			set_dialogue("Even in death, we will continue to serve him...");
			set_dialogue("All Hail Sylux!");
			set_dialogue_color(0, 15, c_red, c_red, c_red, c_red);
			break;
			
		case "Follower2":
			set_dialogue("In the berethed land of Limbo...");
			set_dialogue("They surround his domain, deep within it's world decaying threads...");
			set_dialogue("The forces that spread across reality, harnesses their raw strength from the vessel...");
			set_dialogue_color(77, 82, c_red, c_red, c_red, c_red);
			set_dialogue("However, where the vessel gains the potental energy from chaos, remains unknown...");
			set_dialogue("Yet, I may have a general idea on where it gets it's potental energy...");
			set_dialogue("But he watches over this world and our faction, however, it's rude to talk about someone who's listening!");
			set_dialogue_color(4, 6, c_red, c_red, c_red, c_red);
			set_dialogue("So, I must stop here unfortunately.");
			set_dialogue("Yet, I will still serve him...");
			set_dialogue("All Hail Sylux!");
			set_dialogue_color(0, 15, c_red, c_red, c_red, c_red);
			break;
			
		case "Follower3":
			set_dialogue("The graves that lie ahead of us...");
			set_dialogue("A mere sight to behold, what do you think?");
			set_dialogue("I see this crude place, as a potential...");
			set_dialogue("A potential... Reign of his uprising!");
			set_dialogue_color(21, 23, c_red, c_red, c_red, c_red);
			set_dialogue("We seek the potential of what his malice can do to your kind...");
			set_dialogue_color(30, 33, c_red, c_red, c_red, c_red);
			set_dialogue("All Hail Sylux!");
			set_dialogue_color(0, 15, c_red, c_red, c_red, c_red);
			break;
			
		case "Follower3Alt":
			set_dialogue("May our ruler reek death upon your kind...");
			set_dialogue_color(0, 42, c_red, c_red, c_red, c_red);
			break;
		#endregion
		case "Bootleg":
			set_dialogue("Don't capitalize or profit off of Nebula, or even make bootlegs of the game, or else you will end up here in the depths of Gallahard's mines forever, like I did...");
			break;
		#region Sebastian's Study
		case "StudyDrawers1":
			set_dialogue("You look into one of the drawers...");
			set_dialogue("Inside was a syringe with some mysterious fluid inside.");
			set_dialogue("What is that?", "Jake-suspicious");
			set_dialogue_color(0, 13, c_gray, c_gray, c_gray, c_gray);
			set_dialogue("Upon closer inspection, you suddenly start to speculate something...");
			set_dialogue("Is this... Serum?", "Jake-suspicious");
			set_dialogue_color(0, 17, c_gray, c_gray, c_gray, c_gray);
			set_dialogue("It looks... Very... Strange...", "Jake-suspicious");
			set_dialogue_color(0, 30, c_gray, c_gray, c_gray, c_gray);
			set_dialogue("You were temped to take it, however it looks like it wouldn't help you!");
			set_dialogue("You look into the drawer some more, inside are some used petri dishes...");
			set_dialogue("It looks like they where used in Sebastian's extensive stem cell research at one point!");
			set_dialogue("Eventually, you decided to close the drawer, unknowingly starting to think about the consiquences of your nosyness...");
			break;
			
		case "StudyDrawers2":
			set_dialogue("You look into one of the drawers...");
			set_dialogue("Inside were some documents.");
			set_dialogue("They appeared to be classified, containing top secret information.");
			set_dialogue("Upon closer inspection, these appear to be part of a major series of more classified documents!");
			set_dialogue("These documents especially, seem to be part of the stem cell research Sebastian recorded during one of his colonizing trials...");
			set_dialogue("You were tempted to read them, however there are diagrams you can hardly understand!");
			set_dialogue("You look into the drawer some more, inside were photos of what appears to be Sebastian's attempts at mass colonizing stem cells!");
			set_dialogue("Eventually, you decided to close the drawer, unknowingly starting to think about the consiquences of your nosyness...");
			break;
			
		case "StudyDrawers3":
			set_dialogue("You look into one of the drawers...");
			set_dialogue("Inside was a photo album.");
			set_dialogue("Upon closer inspection, you see some photos to Sebastian and his co-workers, as well as some faces you don't recognize...");
			set_dialogue("You look deeper into the album, eventually one of the photos catch your eyes, upon closer inpection of the photo, you see a massive blurprint on a table...");
			set_dialogue("On the blueprint, it appears to contain information on a superbomb, it reads \"B-303 TITUS\"!");
			set_dialogue("You see another photo, on the photo you see a series of documents labeled \"Element 98\", you remember Sebastian telling you about a top secret project.");
			set_dialogue("He told you not to tell the people of Gallahard about it, you later realize, the project you were thinking about had the codename, \"Element 98\"...");
			set_dialogue("Eventually, you decided to close the drawer, unknowingly starting to think about the consiquences of your nosyness...");
			break;
			
		case "StudyDrawers4":
			set_dialogue("You look into one of the drawers...");
			set_dialogue("Inside was a blueprint for a superweapon.");
			set_dialogue("It's labeled as \"ENIGMA\"...");
			set_dialogue("Upon closer inspection, you see a layout of how the superweapon works...");
			set_dialogue("You remember Sebastian talking about it with Enad and Diadam!");
			set_dialogue("I should probably keep this between between me, Sebastian, Enad and Diadam...", "Jake");
			set_dialogue_color(0, 77, c_gray, c_gray, c_gray, c_gray);
			set_dialogue("I'm not sure if I should be taking a look at this, if anyone across Gallahard knows about this...", "Jake");
			set_dialogue_color(0, 97, c_gray, c_gray, c_gray, c_gray);
			set_dialogue("I could get in trouble with Sebastian, and it won't be pleasant...", "Jake");
			set_dialogue_color(0, 66, c_gray, c_gray, c_gray, c_gray);
			set_dialogue("...", "Jake");
			set_dialogue_color(0, 3, c_gray, c_gray, c_gray, c_gray);
			set_dialogue("You decide to roll up the blueprint as it originally was, and placed it back into the drawer!");
			set_dialogue("Eventually, you decided to close the drawer, unknowingly starting to think about the consiquences of your nosyness...");
			break;
			
		case "StudyCabnets1":
			set_dialogue("You look into one of the cabnets...");
			set_dialogue("Inside is a bunch of lab equipment.");
			set_dialogue("There is really nothing of interest inside!");
			set_dialogue("Eventually, you closed the cabnet...");
			break;
			
		case "StudyCabnets2":
			set_dialogue("You look into one of the cabnets...");
			set_dialogue("Inside was a couple of shotguns and boxes of shells.");
			set_dialogue("On the inside of the cabnet door, you see a note...");
			set_dialogue("\"EMERGENCY SHOTGUNS: IN CASE OF INTRUDERS, TAKE ONE TO DEFEND YOURSELF\"");
			set_dialogue("Inside the cabnet, you also see a couple of bayonet attachments for the shotguns!");
			set_dialogue("However, there is really nothing of interest inside whatsoever!");
			set_dialogue("Eventually, you closed the cabnet...");
			break;
		#endregion
		#region Secrets Dialogue (Lost Miners)
		case "LostMiner1":
			set_dialogue("Imagine a series of mines, except this whole area specifically wasn't operational...");
			set_dialogue("I remember when I used to hear the sound of a hundred pickaxes striking the stone...");
			set_dialogue("Even when I used to have a physical form, I would come here and admire the sheer amount of resources we've gathered here!");
			set_dialogue("But now, it's seems rather... quiet, abandoned and inoperational!");
			set_dialogue("Heh heh heh, I don't understand why the foreman decided to barricade this place off...");
			break;
			
		case "LostMiner2":
			set_dialogue("I have an understanding as to why this place was closed off...");
			set_dialogue("It was simply too dangerous, not only for the tourists, but for us workers too!");
			set_dialogue("I remember coming down here and keeping an eye out for potential dangers to our team...");
			set_dialogue("I suppose, we didn't have the proper things we need to prevent the mineshafts from closing in on us!");
			set_dialogue("But hey, now I know why they closed off this area in the first place!");
			break;
			
		case "LostMiner3":
			set_dialogue("This area, the climate down here is torrid!");
			set_dialogue("People died down here to heat stroke... We weren't issued Enviromental Protection Packs!");
			set_dialogue("The ash here used to get in our eyes, it's rather mildly coarse.");
			set_dialogue("Everytime we come here, our feet would feel like they're about to burnt to ashes, could this place be an alternative to a cremation society?");
			break;
			
		case "LostMiner4":
			set_dialogue("The foreman should've closed off this area instead of a fraction of the mines, otherwise noone would've tried to wander off into this place...");
			break;
		#endregion
		#endregion
		
		#region Contract Bounty
			case "contractMonzteronZ":
				set_dialogue("Find it in the depths of Mount Basalta, beware of what this destructive machine can do!");
				set_dialogue("Some say that it was hijacked by a demonic entity, Tekasastra!");
				set_dialogue("Many have tried to destroy the machine, only to be thrown off-balance by the immense rumbling caused by the machine's locomotion...");
				set_dialogue("Try tampering it's structure before destroying the internal core, powering it!");
			break;
			
			case "contractMisterDreadko":
				set_dialogue("Find him in the vast Valley of Ten Thousand Cuts!");
				set_dialogue("Beware of the hexes Sylux imbued Dreadko's withering claws!");
				set_dialogue("Watch out, Mister Dreadko can create phantasmagoric clones of himself to fool his enemies!");
				set_dialogue("Don't get fooled by the fake ones, they tend to have a less saturated color tone compared to the real Dreadko himself!");
			break;
			
			case "contractSabotuerDypresso":
				set_dialogue("Find him in the dankest corridors of the Masoleum!");
				set_dialogue("A good indication to know he is nearby, is when everything starts to darken across the corridors!");
				set_dialogue("You may want to keep a torch on you throughout the battle, he will darken the entire area as any source of light can weaken him!");
				set_dialogue("Try conserving on light sources to further weaken him quickly");
			break;
		#endregion
		
		#region Sign Dialogue
		#region Sign (Wasteland)
		case "WastelandWelcome":
			set_dialogue("Welcome to the Bloodpoke Wasteland!", "Sign");
			set_dialogue("Just note that there is really nobody to here to guide you through this place, escpecially since it's so barren.", "Sign");
			set_dialogue("Also, watch out for outlaws, they will open fire on anyone who dares to approach them or their hideout in the middle of wasteland.", "Sign");
			set_dialogue("Beyond this place is the Valley of Ten Thousand Cuts, a very famous series of ravines that intertwine with each other over several miles.", "Sign");
			set_dialogue("If you have any questions regarding the wasteland, ask the gate attendant over at the Basalta Landing.", "Sign");
			set_dialogue("-Rhomas Van Schvanzerflank, Head of the Basalta Landing", "Sign");
			break;
			
		case "WastelandHideout":
			set_dialogue("Beyond this point, you are about to approach our hideout!", "Sign");
			set_dialogue("Beware that we don't accept guests or tourists here, turn back or hear the sound of many shots being fired towards you!", "Sign");
			set_dialogue("If you so choose to ignore our warnings, you will regret doing so, once we open fire, you're dead!", "Sign");
			set_dialogue("Most of our snipers are out and about across the wasteland 24/7, and if you wish to talk with us about our whole ordeal...", "Sign");
			set_dialogue("You can simply fuck off and never come back, we don't care about your bullshit!", "Sign");
			set_dialogue("-Bastar Kruglier,	Elite Outlaw and Registered Terrorist", "Sign");
			break;
		#endregion
		
		#region Grave (Mausoleum)
		case "ShenMemorial":
			set_dialogue("In memoriam, here lies Emperor Shen Galadia II", "Sign");
			set_dialogue("Born 1/6/1980, Died 3/4/2022", "Sign");
			set_dialogue("He was fatally shot by outlaws, in a successful assasination attempt!", "Sign");
			set_dialogue("While his influences impacted a fraction of Gallahard's working class, his righteous ideas have influenced our people greatley!", "Sign");
			set_dialogue("May Shen II be remembered in the Ars Galadia family's legacy as a loving late father of Emperor Jake I.", "Sign");
			break;
		
		case "AngelicaMemorial":
			set_dialogue("In memoriam, here lies Lady Angelica Kroser-Vanschwetzkitz of Gallahard", "Sign");
			set_dialogue("Born 4/12/1984, Died 6/16/2019", "Sign");
			set_dialogue("She died in the hands of Emperor Shen II, moments after being stabbed in the heart.", "Sign");
			set_dialogue("Despite having partial influence on the Ars Galadia family, she was a loving mother of Jake I, who had a partal influence on him other then Shen II!", "Sign");
			set_dialogue("May Angelica be remembered as the renowned wife of Emperor Shen II,", "Sign");
			break;
		#endregion
		
		#region Screen (Sebastian's Lab)
		case "LabWelcome":
			set_dialogue("To any visitors, I welcome you to my lab! If you're new here, I highly advise to ask any of my co-workers for a brief orientation of this facility...", "Screen");
			set_dialogue("While this may not be the best place for tourism, we still appreciate that you're here, if you want to learn what goes on here...", "Screen");
			set_dialogue("You can talk to either me, Enad, or even Dr. Sebastian Kox for information!", "Screen");
			set_dialogue("-Dr. Kristo Diadam Oxardo, Right Hand of the Royal Research Team", "Screen");
			break;
		#endregion
		#endregion
		
		#region Ending Dialogue
		#region Neutral Ending
		case "NeutralIntro":
			if (global.neutral_endings_completed >= 1) {
				set_dialogue("You there...", "Sylux-ending");
				set_dialogue("Do you wish to know, why you're here?", "Sylux-ending");
				set_dialogue("I brought you here, to talk in private.", "Sylux-ending");
				set_dialogue("No matter how many times you chose the same path, you're going to expect the same exact results...", "Sylux-ending");
				set_dialogue("And I thought I reset this timeline to expect a much different result, appearently not!", "Sylux-ending");
				set_dialogue("And you claim to be in control of this whole senario, when really, it was me!", "Sylux-ending");
			}
			else {
				set_dialogue("You there...", "Sylux-ending");
				set_dialogue("Do you wish to know, why you're here?", "Sylux-ending");
				set_dialogue("I brought you here, to talk in private.", "Sylux-ending");
			}
			set_dialogue("Regardless, you're propably wondering, how am I still alive?", "Sylux-ending");
			set_dialogue("And that you thought I was dead?", "Sylux-ending");
			set_dialogue("Well...", "Sylux-ending");
			set_dialogue("No matter how many times you've killed me, I have the chance to reset, even in death!", "Sylux-ending");
			set_dialogue("Now, I'm starting to get a little off topic here...", "Sylux-ending");
			set_dialogue("Let's take care that save file...", "Sylux-ending");
			set_dialogue("Your very own world!", "Sylux-ending");
			set_dialogue("Together, we can eradicate it for good...", "Sylux-ending");
			set_dialogue("And if you so choose to go against my will, you will be dead, right where you stand!", "Sylux-ending");
			set_dialogue("Now choose...", "Sylux-ending");
			set_dialogue_color(0, 13, c_red, c_red, c_red, c_red);
			set_option("DELETE", "EndingNeutral-Delete");
			set_option("DO NOT", "EndingNeutral-DoNot");
			break;
			case "EndingNeutral-Delete":
				set_dialogue("Good choice...", "Sylux-ending");
				set_dialogue("I think you and I would make great friends here...", "Sylux-ending");
				set_dialogue("Unless we never meet again!", "Sylux-ending");
				set_dialogue_color(0, 27, c_red, c_red, c_red, c_red);
				set_dialogue("Goodbye...", "Sylux-ending");
				break;
			case "EndingNeutral-DoNot":
				set_dialogue("...", "Sylux-ending");
				set_dialogue("What?", "Sylux-ending");
				set_dialogue("You think you can just get away without me tampering your save file, that very world of your's...", "Sylux-ending");
				set_dialogue("SINCE WHEN WHERE YOU THE ONE IN CONTROL!?", "Sylux-ending");
				set_dialogue_color(0, 50, c_red, c_red, c_red, c_red);
				break;
			case "PostNeutral":
				set_dialogue("Hmmm...", "Sylux-ending");
				set_dialogue("How interesting...", "Sylux-ending");
				set_dialogue("Perhaps you want to return, don't you?", "Sylux-ending");
				set_dialogue("But there is nowhere to return...", "Sylux-ending");
				set_dialogue("Maybe perhaps, I can arrange that!", "Sylux-ending");
				set_dialogue("Make your choice...", "Sylux-ending");
				set_dialogue_color(0, 19, c_red, c_red, c_red, c_red);
				set_option("RETURN", "PostNeutral-Return");
				set_option("STAY", "PostNeutral-Stay");
				break;
			case "PostNeutral-Return":
				set_dialogue("Alright, I will bring back your world...", "Sylux-ending");
				set_dialogue("However...", "Sylux-ending");
				set_dialogue("You must do everything you did, all over again!", "Sylux-ending");
				set_dialogue("From the ground up, I won't be there to guide you...", "Sylux-ending");
				break;
			case "PostNeutral-Stay":
				set_dialogue("Hmmm...", "Sylux-ending");
				set_dialogue("So you decided against returning to your world!", "Sylux-ending");
				set_dialogue("You and I will have a great time, here in Limbo...", "Sylux-ending");
				break;
		#endregion
		#region Failed Emperor Ending
		case "EndingFailedEmperor":
			set_dialogue("Welcome to the Bloodpoke Wasteland!", "Sign");
			set_dialogue("Just note that there is really nobody to here to guide you through this place, escpecially since it's so barren.", "Sign");
			set_dialogue("Also, watch out for outlaws, they will open fire on anyone who dares to approach them or their hideout in the middle of wasteland.", "Sign");
			set_dialogue("Beyond this place is the Valley of Ten Thousand Cuts, a very famous series of ravines that intertwine with each other over several miles.", "Sign");
			set_dialogue("If you have any questions regarding the wasteland, ask the gate attendant over at the Basalta Landing.", "Sign");
			set_dialogue("-Rhomas Van Schvanzerflank, Head of the Basalta Landing", "Sign");
			break;
		#endregion
		#region True Revelation Ending
		case "EndingTrue":
			set_dialogue("Welcome to the Bloodpoke Wasteland!", "Sign");
			set_dialogue("Just note that there is really nobody to here to guide you through this place, escpecially since it's so barren.", "Sign");
			set_dialogue("Also, watch out for outlaws, they will open fire on anyone who dares to approach them or their hideout in the middle of wasteland.", "Sign");
			set_dialogue("Beyond this place is the Valley of Ten Thousand Cuts, a very famous series of ravines that intertwine with each other over several miles.", "Sign");
			set_dialogue("If you have any questions regarding the wasteland, ask the gate attendant over at the Basalta Landing.", "Sign");
			set_dialogue("-Rhomas Van Schvanzerflank, Head of the Basalta Landing", "Sign");
			break;
		#endregion
		#endregion
		
		#region Girlfriend Facts Dialogue
		case "CynthiaFacts":
			set_dialogue("Did you know...");
			set_dialogue("Cynthia Anadas, is one of Emperor Jake's six girlfriends!");
			set_dialogue("Like all of his girlfriends, Cynthia shows her love and affection towards Jake.");
			set_dialogue("Also, Cynthia never had a father, but rather, two mothers!");
			set_dialogue("Their names are Darla and Elle!");
			set_dialogue("Both mothers took really good care of her when she was a child!");
			set_dialogue("Both Emperor Jake and Cynthia know each other very well...");
			set_dialogue("Especially since when they first met each other, when they where very young!");
			set_dialogue("Both making them childhood friends!");
			set_dialogue("Cynthia really likes to stay close to Jake most of the time, mainly since she claims, Jake completes her!");
			set_dialogue("Knowing how passionate she is towards him like his other girlfriends, Cynthia is one who mostly hangs out Jake out of the rest of them!");
			break;
			
		case "KrisJosephineFacts":
			set_dialogue("Did you know...");
			set_dialogue("Kris-Josephine St. Marlina, is one of Emperor Jake's six girlfriends!");
			set_dialogue("Like all of his girlfriends, Kris-Josephine shows her love and affection towards Jake.");
			set_dialogue("Although she was named twice, many people like to simply shorten her name to \"Kris\" or \"Josephine\"...");
			set_dialogue("Despite how confuse people get when they don't know which name to call her...");
			set_dialogue("She would suggest that they should simply shorten her name down to one instead of using her full first name!");
			break;
			
		case "ErynaFacts":
			set_dialogue("Did you know...");
			set_dialogue("Eryna Brisselson, is one of Emperor Jake's six girlfriends!");
			set_dialogue("Like all of his girlfriends, Eryna shows her love and affection towards Jake.");
			set_dialogue("She is partly wine and cocktail savvy, showing interest in how to make some of Gallahard's famous drinks!");
			set_dialogue("Eryna also has an aquired taste in some of Gallahard's finest wines, even the ones served at most of Gallahard's royal canteens!");
			set_dialogue("Despite all of what she does, she remembers to drink responsilbly, mainly so she doesn't overdoese and die from liver failiure...");
			break;
		#endregion
		
		#region Final Boss Dialogue
		#region Neutral
		case "FinalBossIntro-Neutral":
				set_dialogue("...", "Sylux");
				set_dialogue("So you have found me, congratulations!", "Sylux");
				set_dialogue("Was it worth it?", "Sylux");
				set_dialogue("...", "Jake-unamused");
				set_dialogue("I see your silence, speaks many...", "Sylux");
				set_dialogue("How interesting...", "Sylux-sideEye");
				set_dialogue("Let's face it, you're here because you wanna settle this here, right?", "Sylux");
				set_dialogue("...", "Jake-unamused");
				set_dialogue("Do you wanna know, how pissed I am at you?", "Jake-unamused");
				set_dialogue("You, and all of your bullshit?", "Jake-unamused");
				set_dialogue("Go on, go on... Spill it!", "Sylux-sideEye");
				set_dialogue("Ever since you've collapsed Gallahard, my very home!", "Jake-unamused");
				set_dialogue("Even the moment, we've first met! I had grown suspicious of you Sylux...", "Jake-unamused");
				set_dialogue("But, when you collapsed my home, laid it to ruin... You've crossed the line!", "Jake-unamused");
				set_dialogue("You... Really, fucking did!", "Jake-unamused");
				set_dialogue("Yeah, yeah...", "Sylux-sideEye");
				set_dialogue("I did all of that and blah, blah, blah...", "Sylux-sideEye");
				set_dialogue("Look, since I heard word of you, I knew I just had to do it...", "Sylux");
				set_dialogue("I just had too...", "Sylux-think");
				set_dialogue("And now...", "Sylux-think");
				set_dialogue("YOU WILL BE DEAD, RIGHT WHERE YOU STAND!", "Sylux-creepy");
				set_dialogue_color(0, 40, c_red, c_red, c_red, c_red);
				set_dialogue_shake(0, 40);
				set_dialogue("BRING IT ON, LET'S SPLATTER THIS HELL HOLE IN OUR OWN BLOOD!", "Jake-unamused");
				set_dialogue_shake(0, 60);
				break;
		#endregion
		#region Failed Emperor
		#endregion
		#region True Revelation
		#endregion
		#endregion
		
		#region Lab Dialogue
		case "MeetSebastian1":
			set_dialogue("...", "Sebastian-audio");
			set_dialogue("How interesting...", "Sebastian-audio");
			set_dialogue("Perhaps this could be a big milestone in my colonizing trials!", "Sebastian-audio");
			set_dialogue("...", "Jake");
			set_dialogue("Sebastian...", "Jake");
			set_dialogue("Hm?", "Sebastian-audio");
			break;
			
		case "MeetSebastian2":
			set_dialogue("Oh, your majesty...", "Sebastian");
			set_dialogue("I wasn't expecting you here, I was in the middle of my stem cell research!", "Sebastian");
			set_dialogue("Heh heh heh...", "Sebastian");
			set_dialogue("Anyways, how's things going my friend?", "Sebastian");
			set_dialogue("Good, good so far!", "Jake");
			set_dialogue("Ah, perhaps you got a little something for me, do you?", "Sebastian");
			set_dialogue("No, not really... Heh heh heh...", "Jake");
			set_dialogue("No? That's alright, you just came here to say hi, is that right?", "Sebastian");
			set_dialogue("Yes, yes I did!", "Jake");
			set_dialogue("Okay, anyways, I must get back to what I was doing, I'll catch you around sometime later fella...", "Sebastian");
			set_dialogue("Sure, besides, I got other things to do!", "Jake");
			set_dialogue("Gotcha...", "Sebastian");
			break;
		#endregion
		
		#region Audio Tapes
		case "AudioTapeSebastian":
			set_dialogue("...", "Sebastian-audio");
			set_dialogue("This is Docter Sebastian Kox, Royal Scientist of Gallahard.", "Sebastian-audio");
			set_dialogue("I've been keeping a secret between me, Emperor Jake of Gallahard, Enad and Diadam!", "Sebastian-audio");
			set_dialogue("I've been discussing a top secret plan to develop a superbomb, a very powerful and destructive superbomb!", "Sebastian-audio");
			set_dialogue("Now, before I continue, I've been hearing word that many agancies from outside Gallahard's territory have been trying listen in on this said top secret weapon.", "Sebastian-audio");
			set_dialogue("A group of my representatives caught on into their acts, trying to tap into our lines about our top secret superbomb project!", "Sebastian-audio");
			set_dialogue("They where only able to get the name of the superbomb before being driven away representatives and co-associating officials of Jake's marine force!", "Sebastian-audio");
			set_dialogue("And about the name of the superweapon, I call it the \"B-303 TITUS\", thas's the name of the superbomb!", "Sebastian-audio");
			set_dialogue("And as for everying else, the blueprints and documents on it were hidden away and locked up in my vault...", "Sebastian-audio");
			set_dialogue("Thanks goodness none of the information fell into their hands, escpecially since I classified the said information too!", "Sebastian-audio");
			set_dialogue("Now, this wasn't the first time something like this happened!", "Sebastian-audio");
			set_dialogue("I had a similar case to that, but with the Outlaws of the Columbel...", "Sebastian-audio");
			set_dialogue("Unlike with the agencies, the outlaws breached the lab's security and defenses!", "Sebastian-audio");
			set_dialogue("There were over a hundred outlaws that have breached the lab, they then unleashed havoc across the facility, causing up to $750,000 worth of damage!", "Sebastian-audio");
			set_dialogue("By the time both police and the military arrived, they broke into my study area and ripped open the drawers to find information on the B-303 TITUS and it's blueprints!", "Sebastian-audio");
			set_dialogue("Before they all left, both the police and military forces opened fire in the lab, killing over half the outlaws that were involved in the lab's breach!", "Sebastian-audio");
			set_dialogue("The rest of them were detained on site, taken into custody and later recieve up to 6-12 years of prison time...", "Sebastian-audio");
			set_dialogue("While those who had their hands on the blueprints and documents on the B-303 TITUS, recieved up to 8 years of solidary confinement for possession of classified documents, terrorism and breahcing into an official facility!", "Sebastian-audio");
			set_dialogue("While the documents and blueprints were saved, Captain Rhomas apologized for what happened, however I forgive him for what had happened and thank him and the police and military forces for stepping in and dealing with such havocal attacks within the facility...", "Sebastian-audio");
			set_dialogue("And where are those documents right now, they are still within my possession, classified and should never ever be released into the public view, regardless of conditions!", "Sebastian-audio");
			set_dialogue("Anyways, it's getting late, it's about 21:00 at night, I'm going to sleep...", "Sebastian-audio");
			set_dialogue("This is Docter Sebastian Kox, signing off!", "Sebastian-audio");
			break;
			
		case "AudioTapeAugust":
			set_dialogue("Oh hi there...", "August-audio");
			set_dialogue("If you're currently listening to this tape, there is something I wanna tell you about what I do for a living...", "August-audio");
			set_dialogue("I like to work on automatons, ya know, reparin', upgradin'... Stuff like that!", "August-audio");
			set_dialogue("That is a good ol' hobby of mine, I was lucky enough to turn it into a full time job!", "August-audio");
			set_dialogue("I had a dream of starin' a business that focuses on things like that! And it was a dream come true!", "August-audio");
			set_dialogue("Ever since I used to live down in Texas, I would plan what I wanted to do when I moved here in Gallahard, and working on automatons was a really, really, really big dream of mine!", "August-audio");
			set_dialogue("I probably need to get back to work, I have a couple hundred clients or so that need to be dealt with, so I'll be ackin' with ya later or when ever...", "August-audio");
			set_dialogue("By now!", "August-audio");
			break;
		#endregion
		
		#region Misc. Dialogue
		
		#region Examine Dialogue
		case "ExamineFlowerbed":
			set_dialogue("It's a bed of red flowers.");
			break;
			
		case "ExamineFlower":
			set_dialogue("It's a lonely flower... Something doesn't feel right...");
			break;
			
		case "ExamineFlowerAlt":
			set_dialogue("It's a lonely flower... Do you want to talk to it?");
				set_option("Yes", "FlowerTalkYes");
				set_option("No", "FlowerTalkNo");
			break;
			
		case "FlowerTalkYes":
			set_dialogue("You try to talk to the flower...");
			set_dialogue("It can't talk... Yet!");
			break;
			
		case "FlowerTalkNo":
			set_dialogue("You stare at the flower in hope something will happen... But something doesn't feel right...");
			break;
		#endregion
		
		case "LockedDoor":
			set_dialogue("This door is locked, looks like you need a key of some sort...");
			break;
			
		case "BlockedMineshaft":
			set_dialogue("It's blocked by an immovable pile of rubble, obscuring the path ahead...");
			break;
			
		case "SignMines":
			set_dialogue("To the Mines of Gallahard, watch your step while boarding the elevator!", "Sign");
			break;
		#endregion
		
		#region Diary Dialogue
		#region Sebastian's Diary
		case "SebastiansDiary":
			set_dialogue("It's a blue book, it appears to be Sebastian's work diary!");
			set_dialogue("Do you want to read it? If you do, and Sebastian finds out, you're in big trouble!");
				set_option("Yes", "SebastiansDiaryRead1");
				set_option("No", "SebastiansDiaryCancel");
		break;
		
		case "SebastiansDiaryCancel":
			set_dialogue("You refrain from reading his diary, like a good friend!");
		break;
		
		case "SebastiansDiaryStop":
			set_dialogue("You stopped reading the diary...");
		break;
		
		case "SebastiansDiaryEnd":
			set_dialogue("You looked into the diary some more, but the rest of the pages are left blank...");
			set_dialogue("You closed up his diary and left it the way originally was.");
		break;
		
		case "SebastiansDiaryRead1":
			set_dialogue("12/6/2021: Christmas is just a couple weeks away from now! I should probably start thinking about what I want to do before going on break...", "Sebastian-audio");
			set_dialogue("I could probably do yankee gift swaps, and maybe invite Jake over...", "Sebastian-audio");
			set_dialogue("But I'm not sure he did something like this before, and probably seems foreign to him!", "Sebastian-audio");
			set_dialogue("Oh well, I could teach him how it works, with the help of some my peers!", "Sebastian-audio");
			set_dialogue("But now that I think about it, I should probably ask Jake if he wants to participate!", "Sebastian-audio");
			set_dialogue("Do you want to read more?");
				set_option("Yes", "SebastiansDiaryRead2");
				set_option("No", "SebastiansDiaryStop");
		break;
		
		case "SebastiansDiaryRead2":
			set_dialogue("1/1/2022: It's the new year, I'm just chilling with Emperor Jake and his girfriends, having a glass of his fine red wine...", "Sebastian-audio");
			set_dialogue("However, good old Cynthia really was talking about how he loves Jake and the fact that they were childhood friends! I gotta say, I never knew both her and Jake were childhood friends!", "Sebastian-audio");
			set_dialogue("I find it really sweet that Cynthia really loves Jake, but it's not just her that loves him, the rest of his girlfriends do too!", "Sebastian-audio");
			set_dialogue("I'm surpiresed that they may soon start getting into a good and healthy relationship!", "Sebastian-audio");
			set_dialogue("As for Jake, if he went ahead and dated all six of his girlfriends at once, he would make it one of the most ambitious dates I've ever heard in my entire life...", "Sebastian-audio");
			set_dialogue("He also mentioned about taking them on a vacation to the Tatsubishi Dynasty, somewhere I been to once on a business trip, it was a one of a kind trip there for me!", "Sebastian-audio");
			set_dialogue("I hope he has fun there, as well as his girlfriends!", "Sebastian-audio");
			set_dialogue("Do you want to read more?");
				set_option("Yes", "SebastiansDiaryRead3");
				set_option("No", "SebastiansDiaryStop");
		break;
		
		case "SebastiansDiaryRead3":
			set_dialogue("3/22/2022: Tomorrow is the Emperor's 23rd birthday! I wonder what I should get for him?", "Sebastian-audio");
			set_dialogue("I heard he likes to admire some artwork at times, so why not give him a portrait for him!", "Sebastian-audio");
			set_dialogue("Especially one by a traditional painter, maybe I could go ask one of my colleagues about painting up a portrait of him!", "Sebastian-audio");
			set_dialogue("I know one of them is a part-time painter! One that really love to go into surprising details one even the slightest of things...", "Sebastian-audio");
			set_dialogue("But you know what, hell man, I'll give him a portrait for his birthday anyway, I know he would love a masterpiece like that!", "Sebastian-audio");
			set_dialogue("Anyways, I might as well wish him a happy birthday tomorrow!", "Sebastian-audio");
			set_dialogue("Do you want to read more?");
				set_option("Yes", "SebastiansDiaryRead4");
				set_option("No", "SebastiansDiaryStop");
		break;
		
		case "SebastiansDiaryRead4":
			set_dialogue("5/10/2022: The stem cell research seems to be going very well, although there were some accidents here and there, but that's all right...", "Sebastian-audio");
			set_dialogue("Several hours of colonizing stem cells made me tired, so I put that all to the side and call it a day! Enad and I went out for a little walk in Oridon, checking out what was on sale at the farmers' market.", "Sebastian-audio");
			set_dialogue("We later then saw Jake heading towards his monthly imperial commute, with his friends, dressed all in black, red and blue, with a hint of gray!", "Sebastian-audio");
			set_dialogue("Jake noticed some of the stuff we bought over at the Oridon farmers' market! he said that he will be heading there too, after his commute of course!", "Sebastian-audio");
			set_dialogue("Do you want to read more?");
				set_option("Yes", "SebastiansDiaryEnd");
				set_option("No", "SebastiansDiaryStop");
		break;
		#endregion
		#region Jake's Diary
		case "JakesDiary":
			set_dialogue("It's your diary, it's red-gold rim catches your eye!");
			set_dialogue("Do you want to read it?");
				set_option("Yes", "JakesDiaryRead1");
				set_option("No", "JakesDiaryCancel");
		break;
		
		case "JakesDiaryCancel":
			set_dialogue("You put your diary back where you found it!");
		break;
		
		case "JakesDiaryRead1":
			set_dialogue("3/24/2021: I just turned 22 yesterday, received some incredible gift from my friends, family and emissaries!", "Jake-audio");
			set_dialogue("Honestly, I wasn't expecting a whole lot from them, but August went a little too overboard with his gift for me...", "Jake-audio");
			set_dialogue("He topped it off really good! Even when it wasn't needed at all, but I appreiciated it regardless.", "Jake-audio");
			set_dialogue("Cynthia on the other hand, wanted to take me to New Prussia for the weekend, she was even kind enough to bring along August, Arizel and Eryna!", "Jake-audio");
			set_dialogue("I wasn't expecting a birthday trip to somewhere outside Gallahard. If anything, I thought it was just going to be just one of those hang out and chat senarios with hundreds of people I know...", "Jake-audio");
			set_dialogue("But in the end, it was if not, one of the best birthdays i've ever had in my whole entire life!", "Jake-audio");
			set_dialogue("Do you want to read more?");
				set_option("Yes", "JakesDiaryRead2");
				set_option("No", "JakesDiaryCancel");
		break;
		
		case "JakesDiaryRead2":
			set_dialogue("5/17/2021: Today I went on a trip to the Valley of Ten Thousand Cuts, that place is filled to the brim with nothing but miles and miles worth of ravines, intersecting each other!", "Jake-audio");
			set_dialogue("And if I recall correctly, I was there because of a distress signal, Sirus was being assaulted by outlaws, so I stepped in, readying a rifle I had on me, and open fire!", "Jake-audio");
			set_dialogue("Then havoc was let loose, the havoc was so horrid, I had to call for backup from August!", "Jake-audio");
			set_dialogue("After countless hours of nonstop shooting, August and I successfully drove away the outlaws, we later then brought Sirus to the hospital, drenched in blood and near-fatal bullet wounds.", "Jake-audio");
			set_dialogue("Luckily with my help, the docters were able make use of my blood to save him from death, he is still in the hostpital revovering from what happened earlier!", "Jake-audio");
			set_dialogue("I just wanted to have quiet day today...", "Jake-audio");
			set_dialogue("Do you want to read more?");
				set_option("Yes", "JakesDiaryRead3");
				set_option("No", "JakesDiaryCancel");
		break;
		
		case "JakesDiaryRead3":
			set_dialogue("6/1/2021: It's June, I'd better start thinking about what to do for this month's imperial commute...", "Jake-audio");
			set_dialogue("Maybe I could start a massive campaign to raise awareness about our mental health, I've seen people from all over Gallahard do it.", "Jake-audio");
			set_dialogue("They've garnered a whole bunch of attention, but then we have those who think otherwise, I find it fine, as long as it isn't intrusive or anything!", "Jake-audio");
			set_dialogue("Hell man, I even participate in a similar campaign in November, every year!", "Jake-audio");
			set_dialogue("It's as simple as not shaving for an entire month, simply to raise awareness for prostate cancer!", "Jake-audio");
			set_dialogue("But that's a topic for later in the year, but for now, I have this month to go through!", "Jake-audio");
			set_dialogue("Do you want to read more?");
				set_option("Yes", "JakesDiaryRead4");
				set_option("No", "JakesDiaryCancel");
		break;
		#endregion
		#region August's Diary
		#endregion
		#region Enad's Diary
		#endregion
		#endregion
		
		#region Save Dialogue
		case "saveMines1":
			set_dialogue("So where do I even begin...", "Jake");
			set_dialogue("I should probably think about something, maybe I'll just use this to save my progress...", "Jake-suspicious");
			set_dialogue("But hey, It's just a little something for me to do down here... Right?", "Jake-happy");
			set_dialogue("Alright enough rambling, people could be listening!", "Jake-suspicous");
			set_dialogue("Which save file do you want to save your progess here in the Mines of Gallahard to?");
				set_option("FILE A", "SaveFileA");
				set_option("FILE B", "SaveFileB");
				set_option("FILE C", "SaveFileC");
				set_option("FILE D", "SaveFileD");
				set_option("Cancel", "SaveCancel");
		break;
		
		case "saveMines2":
			set_dialogue("This should probably be a good spot to stop for now, I could probably use a bit of rest...", "Jake");
			set_dialogue("The kind of aura that emits from this place fill me with a sense of curiosity...", "Jake");
			set_dialogue("Which save file do you want to save your progess here in the Mines of Gallahard to?");
				set_option("FILE A", "SaveFileA");
				set_option("FILE B", "SaveFileB");
				set_option("FILE C", "SaveFileC");
				set_option("FILE D", "SaveFileD");
				set_option("Cancel", "SaveCancel");
		break;
		
		case "saveMines3":
			set_dialogue("I should rest here, and maybe keep track of my progress!", "Jake");
			set_dialogue("The sounds of drills and pickaxes striking the stone, fills you with a sense of determination...");
			set_dialogue("Which save file do you want to save your progess here in the Mines of Gallahard to?");
				set_option("FILE A", "SaveFileA");
				set_option("FILE B", "SaveFileB");
				set_option("FILE C", "SaveFileC");
				set_option("FILE D", "SaveFileD");
				set_option("Cancel", "SaveCancel");
		break;
		
		#region Saving Choices
		case "SaveFileA":
			save_game(0);
			set_dialogue("File A - Progress have been saved!");
		break;
		
		case "SaveFileB":
			save_game(1);
			set_dialogue("File B - Progress have been saved!");
		break;
		
		case "SaveFileC":
			save_game(2);
			set_dialogue("File C - Progress have been saved!");
		break;
		
		case "SaveFileD":
			save_game(3);
			set_dialogue("File D - Progress have been saved!");
		break;
		
		case "SaveCancel":
			set_dialogue("Maybe, I should get going...", "Jake");
			set_dialogue("Who knows what I should do?", "Jake-suspicious");
			set_dialogue("Nobody, probably... I guess I better get going!", "Jake");
		break;
		#endregion
		#endregion
		
		default:
			set_dialogue("Error");
			break;
	}
}