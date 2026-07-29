/// @param ID
function create_dialogue_from_id(_id) {
    switch (_id) {
        #region Testing Dialogue
        case "test1": // Testing dialogue, yes it's the entire dialogue from Mario Pissing!
            create_dialogue("Time to take a piss...", "jake");
            create_dialogue("...", "jake");
            create_dialogue("What the hell are you doing?");
            create_dialogue("I'm taking a piss!", "jake");
            create_dialogue("Okay, but why aren't you jumping on me, that's what you're supposed to do.");
            create_dialogue("I might do it fucking later.", "jake");
            create_dialogue("No, I'm a motherfucking enemy, you're supposed to jump on me!");
            create_dialogue("Okey dokey then, let me get my pants again first and them maybe, I'll jump on you.", "jake");
            create_dialogue("Maybe?");
            create_dialogue("MAYBE!?");
            create_dialogue("ARE YOU OUT OF YOUR FUCKING MIND?");
            create_dialogue("NO!");
            create_dialogue("JUMP ON ME NOW MOTHERFUCKER!");
            create_dialogue("Okay, but let me get my pants first...", "jake");
            create_dialogue("*sigh* Fine!");
            break;
        #endregion
        
        #region Sylux Follower Dialogue
        case "follower_1": // Sylux's Escape
            create_dialogue("For many years, the demon overlord, Sylux...");
            create_dialogue("He was restrained by a magical force, manifested by the gods...");
            create_dialogue("This said magical force prevented him from escaping imprisonment, sealing him and his malice for thousands of years...");
            create_dialogue("One day, the magic restraining him, degraded!");
            create_dialogue("Sylux later then broke free from his imprisonment, the malice in which he harnesses such potental from grew stronger...");
            create_dialogue("Stronger than before! With such power, he began to attack both the Heavans...");
            create_dialogue("And the Underworld, his onslaught would go on to be the most unfortunate events known to man!");
            break;
        
        case "follower_2": // Lafell
            create_dialogue("Did you know, the demon overlord, Sylux, has a wife!");
            create_dialogue("Her name is Lafell...");
            create_dialogue("She posseses immense demonic powers, just like her husband.");
            create_dialogue("She even has a human disguise, just like Sylux!");
            create_dialogue("Lafell is also one of Sylux's sentinels, she represents Sylux's influence of torture!");
            create_dialogue("She runs a personal torture hall in the void...");
            create_dialogue("Where dammed and unfortunate souls, harvested by her husband are rounded up and sent to her torture hall.");
            create_dialogue("The torture hall in question, has a near-similar appearence to the Gehenna!");
            create_dialogue("Many people would sometimes confuse Lawfel's torture hall, with the actual Gehenna, due to it's appearence...");
            create_dialogue("But the rest, pose such question...");
            create_dialogue("\"Is Lafell's torture hall, the real Gehenna, or am I confused like no tomorrow?\"");
            create_dialogue("Who knows? Maybe lord Sylux could tell, or even his wife...");
            break;
        #endregion
        
        #region Misc. Dialogue
        case "bloodpoke_scenic_river": // Scenic Spots: Bloodpoke River
            create_dialogue("Man...", "jake_happy");
            create_dialogue("Would you look at this view!", "jake_happy");
            create_dialogue("Just seeing the river flowing from up here, is amazing...", "jake_happy");
            create_dialogue("I remember coming up here one night with Cynthia, her and I really enjoyed this view!", "jake_happy");
            create_dialogue("Things haven't changed around here quite a bit!", "jake_happy");
            create_dialogue("To this day, the Bloodpoke River looks great from up here...", "jake_happy");
            create_dialogue("Even after many years that have passed, and I'm still counting!", "jake_happy");
            create_dialogue("For now, I should probably get going somewhere, Gallahard isn't gonna rebuild itself!", "jake");
            create_dialogue("Especially since the whole empire is laid to ruin and I may end up being the last emperor alive!", "jake");
            create_dialogue("Unless the people and I work together to push back that demonic army that ravaged Gallahard!", "jake");
            create_dialogue("And in the end, rebuild Gallahard as an empire and for future generations of our people to perserve...", "jake_happy");
            create_dialogue("Anyways, enough talk, I should get going!", "jake");
            break;
        
        case "save_prompt":
            create_dialogue("Save your progress here?");
            create_dialogue_option("YES", "save")
            create_dialogue_option("NO", "save_cancel")
            break;
        
        case "save_cancel":
            create_dialogue("Progress saving canceled!");
            break;
        
        case "save":
            audio_play_sound(snd_save, 8, false);
            save_game(global.game_data_file)
            create_dialogue("Progress has been saved!");
            break;
        #endregion
        
        #region Sign/Screen Dialogue
        case "fields_directions_1":
            create_dialogue("WEST - To the Capital", "sign");
            create_dialogue("EAST - To Oridon and Serogarde", "sign");
            create_dialogue("SOUTH - To Bloodpoke Valley", "sign");
            break;

        case "bloodpoke_directions_1":
            create_dialogue("WEST - To Belgarde (Beware of Outlaws!)", "sign");
            create_dialogue("EAST - To Manicouligan", "sign");
            create_dialogue("NORTH - To the Capital, Oridon and Serogarde", "sign");
            break;
        
        case "mines_enterance":
            create_dialogue("Beyond this enterance is an elevator that leads to the mines.", "sign");
            create_dialogue("For guided tours, check your local community board for information on how to apply.", "sign");
            create_dialogue("Tourists must be within sight of any nearby tour guides at all cost!", "sign");
            create_dialogue("We are not responsible for any injuries or damage, caused by tourists!", "sign");
            create_dialogue("For more information, ask any nearby foreman for help...", "sign");
            create_dialogue("-Rhomas Banemhent, Head Exc. Foreman", "sign");
            break;
        
        case "lab_safety":
            create_dialogue("NOTICE TO ALL FACILITY PERSONEL", "screen");
            create_dialogue("Failiure to comply with any safety protocols and procedures will result in immediate termination!", "screen");
            create_dialogue("For your safety and the safety of others around you, you are required to partake in all safety and first-aid training once every year.", "screen");
            create_dialogue("Historically, the Kox Labs facility has had fatal accidents and tragedies before.", "screen");
            create_dialogue("Especially during the small fire in the research and experimentation sector back in June of 2015!", "screen");
            create_dialogue("The safety of you and the facility is of the utmost of importance to us.", "screen");
            create_dialogue("-Dr. Sebastian Kox, Head of the Facility", "screen");
            break;
        #endregion
        
        #region Interaction Dialogue
        case "interact_blocked_mineshaft":
            create_dialogue("The pile of rubble seems to be blocking the path into the mineshaft...");
            create_dialogue("Upon closer inspection, the rubble appears to be immovable without heavy equippment or blowing it up with dynamite!");
            break;
        #endregion
        
        #region Tutorial Dialogue
        case "tutorial_intro":
            create_dialogue("So, you're new to this game huh?");
            create_dialogue("Alright, let's get you situated.");
            create_dialogue("This is Jake!");
            create_dialogue("He's the Emperor of Gallahard...");
            create_dialogue("Remember that now!");
            break;
        
        case "tutorial_attack":
            create_dialogue("Press ATTACK to usr your melee weapon, this will be your friend for getting up close and personal with enemies!");
            create_dialogue("Press FIRE to use your gun, you will likely be using your issued gun to defend yourself with, even in the toughest situations...");
            create_dialogue("If you need some point of reference on which button is ATTACK or witch button is FIRE, check out the enclosed instruction manual!");
            create_dialogue("There, the enclosed instruction manual will help you with suiting yourself...");
            create_dialogue("Even if you're playing with either a controller or your keyboard, the enclosed instruction manual will give you a brief summary of the game's controls.");
            break;

        case "tutorial_yellow_paint":
            create_dialogue("You see that yellow paint there?", "jake");
            create_dialogue("I wouldn't trust it, it's mostly misleading at times...", "jake_suspicious");
            create_dialogue("Maybe suggest following the red paint!", "jake_happy");
            create_dialogue("This seems a little more trustworthy, right?", "jake_happy");
            create_dialogue("The yellow path takes you somewhere misleading...");
            create_dialogue("Try taking the red path, like Jake suggested!");
            break;

        case "yellow_paint":
            create_dialogue("Well, that lead to nowhere", "jake_unamused");
            create_dialogue("Now what?", "jake_unamused");
            create_dialogue("There's nothing interesting around here, maybe you should go back!");
            create_dialogue("Take the red path at that can lead you somewhere special, trust me...");
            break;

        case "tutorial_end":
            create_dialogue("Congratulations!");
            create_dialogue("Look how far you've gotten!");
            create_dialogue("I think you may be ready to take on a serious challenge...");
            create_dialogue("Let's save Gallahard!");
            create_dialogue("It won't be easy though, you will have to face a bunch of enemies and conquer Gallahard's ongoing phenomenas!");
            create_dialogue("And if you fail, that's it for Gallahard...");
            create_dialogue("Unless you come back, stronger than before...");
            create_dialogue("Good luck now!");
            break;
        #endregion
        
        default: // Failsafe Dialogue
            create_dialogue("error");
            break;
    }
}

/// signs
wasteland_welcome = [
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "Welcome to the Bloodpoke Wasteland!"
    },
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "Just note that there is really nobody to here to guide you through this place, escpecially since it's so barren."
    },
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "Also, watch out for outlaws, they will open fire on anyone who dares to approach them or their hideout in the middle of wasteland."
    },
    {
        dia_chara: "interact",
        dia_text: "Beyond this place is the Valley of Ten Thousand Cuts, a very famous series of ravines that intertwine with each other over several miles."
    },
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "If you have any questions regarding the wasteland, ask the gate attendant over at the Basalta Landing."
    },
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "-Rhomas Van Schvanzerflank, Head of the Basalta Landing"
    }
]

wasteland_hideout = [
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "Beyond this point, you are about to approach our hideout!"
    },
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "Beware that we don't accept guests or tourists here, turn back or hear the sound of many shots being fired towards you!"
    },
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "If you so choose to ignore our warnings, you will regret doing so, once we open fire, you're dead!"
    },
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "Most of our snipers are out and about across the wasteland 24/7, and if you wish to talk with us about our whole ordeal..."
    },
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "You can simply fuck off and never come back, we don't care about your bullshit!"
    },
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "-Bastar Kruglier, Elite Outlaw and Registered Terrorist"
    }
]

/// cutscenes?
vortex_defeated = [ // probably gonna be used for an illustrated cutscene
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "Emperor Jake, bloodstained and frailed was suddenly cornered by the Great King of Brutes..."
    },
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "As Vortex, fuming with spite and rage, raised his axe,\npreparing to slaughter him."
    },
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "\"Glory in the name of our ruler!\" Vortex repeated to himself..."
    },
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "As he prepared to deal the final blow, Jake accepted his fate, until suddenly..."
    },
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "A nameless angel intervines, striking Vortex from behind!"
    },
    {
        dia_chara: "interact",
        dia_sound: "system",
        dia_text: "And just like that, it was finally over..."
    }
]
