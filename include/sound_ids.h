#ifndef SOUND_IDS_H
#define SOUND_IDS_H

// Since the game uses a lot of random selection for playing character voice clips, here are two offsets to refer to for that purpose.
// Interestingly, there's two unused ID's for each set, implying two characters that were cut.
#define SOUND_VOICE_CHARACTER_POSITIVE SOUND_VOICE_KRUNCH_POSITIVE1
#define SOUND_VOICE_CHARACTER_NEGATIVE SOUND_VOICE_KRUNCH_NEGATIVE1

/// Cannot stress enough that these names are very temporary, preliminary, expendable and other words that imply that they are not final.
// Also might be worth thinking of a better way of laying this out, because scrolling through hundreds of sound ID's isn't particularly pleasant.

// Anything I've labelled as UNK, without a comment, is something I didn't get an audible sound from.
enum SoundID {
    SOUND_UNK0,
    SOUND_CAR_SLIDE,
    SOUND_CAR_SLIDE2, // Not sure what this is for. I thought it was for the brakes originally, but there's clearly a brake
    SOUND_INTRO_PLANE,
    SOUND_INTRO_KIDS,
    SOUND_UNK5, // Sounds like something sifting, idk.
    SOUND_UNK6, // Same thing, but faster
    SOUND_UNK7,
    SOUND_UNK8,
    SOUND_STOMP,
    SOUND_UNK10,
    SOUND_UNK11,
    SOUND_CRASH,
    SOUND_CRASH2, // Not the same as the last, sounds like a cymbal or something.
    SOUND_BALLOON_POP,
    SOUND_PLOP, // Dropping a landmine
    SOUND_UNK16,
    SOUND_EXPLOSION,
    SOUND_NYOOM, // Firing a rocket.
    SOUND_UNK19,
    SOUND_UNK20,
    SOUND_UNK21,
    SOUND_WHOOSH1, // The hud flying in on a race start.
    SOUND_EXPLOSION2, // Not sure what this one's for.
    SOUND_VOICE_TT_GET_READY,
    SOUND_VOICE_TT_GO,
    SOUND_UNK26,
    SOUND_UNK27,
    SOUND_CAR_BRAKE,
    SOUND_UNK_29,
    SOUND_UNK_30,
    SOUND_UNK_31,
    SOUND_UNK_32,
    SOUND_NITRO_BOOST,
    SOUND_SELECT,
    SOUND_VOICE_TAJ_CUTSCENE_0, // "Woah there!"
    SOUND_VOICE_TAJ_CUTSCENE_1, // "Hello, friend."
    SOUND_VOICE_TAJ_WAHEY,
    SOUND_VOICE_TAJ_HOHO,
    SOUND_LIGHTNING,
    SOUND_VOICE_TAJ_WOAH,
    SOUND_VOICE_TAJ_HINT, // "I've got something special for you."
    SOUND_UNK42, // Sounds like a wave or something, not sure.
    SOUND_RIBBIT, // :frog:
    SOUND_SPLOOSH,
    SOUND_VOICE_TAJ_WINNER, // "You won first prize!"
    SOUND_VOICE_CONKER_YEHAHA,
    SOUND_VOICE_TIMBER_WOW,
    SOUND_WHOOSH2, // This is a transition before a Taj Tech Tip.
    SOUND_WHOOSH3, // Don't remember what this is but I know it's used somewhere.
    SOUND_VOICE_TAJ_BALLOON, // "This is for you."
    SOUND_UNK51, // Some softer gong thing maybe?
    SOUND_TWINKLE, // Sounds like a lower, slower version of SOUND_SELECT
    SOUND_VOICE_WIZPIG_LAUGH,
    SOUND_NYOOM_HIGH, // High pitched nyoom.
    SOUND_UNK55, // I cannot describe tbis. uhh, a car coming past? really I can't say
    SOUND_VOICE_TT_RADIO, // "Okay <unclear> control" remind me to find the subtitles for this lol. It's the rocket.
    SOUND_DOOR_CLOSE,
    SOUND_VOICE_TT_THREE,
    SOUND_VOICE_TT_TWO,
    SOUND_VOICE_BUMPER_OHNO,
    SOUND_VOICE_TIPTUP_WAH,
    SOUND_VOICE_TT_ONE,
    SOUND_VOICE_TT_BLASTOFF,
    SOUND_ROCKET_LAUNCH,
    SOUND_UNK65, // Sounds like an explosion sort. Likely related to the rocket.
    SOUND_VOICE_DIDDY_LAUGH,
    SOUND_VOICE_BANJO_GUHHUH,
    SOUND_VOICE_DIDDY_LAUGH2,
    SOUND_VOICE_PIPSY_LAUGH,
    SOUND_VOICE_TIMBER_YEAH,
    SOUND_VOICE_KRUNCH_HOHOO,
    SOUND_VOICE_WIZPIG_LAUGH_SHORT,
    SOUND_VOICE_TAJ_CUTSCENE2, // "I am the genie of the island."
    SOUND_VOICE_PIPSY_YEHAW,
    SOUND_VOICE_TAJ_CUTSCENE3, // "I'm here to help you."
    SOUND_VOICE_TAJ_CUTSCENE4, // "Good luck!"
    SOUND_VOICE_DIDDY_LAUGH_LOW, // Same as his regular laugh but lower pitch
    SOUND_VOICE_UNK78,
    SOUND_VOICE_UNK79,
    SOUND_VOICE_UNK80, // "Yippee, lets party!"
    SOUND_VOICE_WIZPIG_LAUGH2,
    SOUND_VOICE_WIZPIG_LAUGH3,
    SOUND_VOICE_WIZPIG_ENDING, // "Sorry to break the party worms, but I had to say goodbyte!"
    SOUND_VOICE_WIZPIG_UNK0, // "Well lookie here, it's the little worm!"
    SOUND_UNK85, // Sounds like some future something
    SOUND_VOICE_WIZPIG_SEEYA, // "See ya later, worms!"
    SOUND_VOICE_WIZPIG_LAUGH4,
    SOUND_VOICE_BLUEY_REMATCH1, // "Fantastic!"
    SOUND_VOICE_BLUEY_REMATCH2, // "If you can beat me again..."
    SOUND_VOICE_BLUEY_REMATCH3, // "I'll give you a special prize"
    SOUND_UNK91, // Might be the hovercraft engine.
    SOUND_UNK92, // Might be the car engine.
    SOUND_TING_LOW,
    SOUND_TING_HIGH,
    SOUND_BOOST_LEVEL3,
    SOUND_UNK96, // Also not sure
    SOUND_UNK97, // Sounds like an earthquake, goes on for absolutely ever, but not a continuous sound.
    SOUND_ELECTRIC_BUZZ, // Bzzzz!
    SOUND_UNK99, // sounds kind of like lightning but not 100% sure
    SOUND_UNK100,
    SOUND_UNK101,
    SOUND_VOICE_TT_WRONG_WAY,
    SOUND_VOICE_TT_NONONO,
    SOUND_MENU_BACK,
    SOUND_MENU_BACK2, // Appears to be exactly the same as the previous to my tonedeaf ears.
    SOUND_UNK106, // Same thing as the previous but with an inverse wave.
    SOUND_VOICE_WIZPIG_ENCOUNTER, // "You can't beat me!"
    SOUND_VOICE_WIZPIG_DEFEAT, // "Gragh, no! No!"
    SOUND_VOICE_WIZPIG_GROAN,
    SOUND_VOICE_WIZPIG_SCREAM,
    SOUND_ZAP,
    SOUND_ZAP2,
    SOUND_ZAP3,
    SOUND_VOICE_WIZPIG_SCREAM2,
    SOUND_VOICE_KRUNCH_LAUGH,
    SOUND_UNK116, // More lightning?
    SOUND_VOICE_WIZPIG_SCREAM3,
    SOUND_VOICE_DRUMSTUCK_BWAK, // Chicken noises intensify.
    SOUND_VOICE_BLUEY_GOODBYE, // "Goodbye, Kid!"
    SOUND_VOICE_BANJO_YAHOO,
    SOUND_VOICE_BLUEY_SILVERCOINS2, // "Collect all the silver coins from the snow world"
    SOUND_CAR_REV, // Selecting the car in the menu, and the initial revs at the start.
    SOUND_UNK123,
    SOUND_UNK124,
    SOUND_UNK125,
    SOUND_UNK126,
    SOUND_UNK127,
    SOUND_UNK128,
    SOUND_UNK129,
    SOUND_UNK130,
    SOUND_UNK131,
    SOUND_UNK132,
    SOUND_VOICE_BLUEY_TROPHY_CHALLENGE, // "Now try the trophy challenge"
    SOUND_VOICE_BLUEY_AMULET, // "You've won a piece of the amulet"
    SOUND_VOICE_KRUNCH_SELECT, // "My name's Krunch"
    SOUND_VOICE_BUMPER_SELECT, // "My name's Bumper"
    SOUND_VOICE_TIPTUP_SELECT, // "Hey, it's Tiptup"
    SOUND_VOICE_CONKER_SELECT, // "I'm Conker"
    SOUND_VOICE_TIMBER_SELECT, // "Timber"
    SOUND_VOICE_BANJO_SELECT, // "I'm Banjo"
    SOUND_VOICE_DRUMSTICK_SELECT, // "My name's Drumstick"
    SOUND_VOICE_PIPSY_SELECT, // "I'm Pipsy"
    SOUND_VOICE_TT_SELECT, // I'm T.T
    SOUND_VOICE_DIDDY_SELECT, // "I'm Diddy"
    SOUND_VOICE_BLUEY_RETRY, // "You can come back, whenever you're ready"
    SOUND_VOICE_BLUEY_NEVERMIND, // "Ah, nevermind kid."
    SOUND_VOICE_KRUNCH_EHH,
    SOUND_VOICE_BUMPER_UHH,
    SOUND_VOICE_TIPTUP_AHH,
    SOUND_VOICE_CONKER_AHH,
    SOUND_VOICE_TIMBER_RAGH,
    SOUND_VOICE_BANJO_WOAH,
    SOUND_VOICE_DRUMSTICK_WAH,
    SOUND_VOICE_PIPSY_UHOH,
    SOUND_VOICE_TT_WOAH,
    SOUND_VOICE_DIDDY_WOAH,
    SOUND_VOICE_BLUEY_SILVERCOINS3, // "Collect 8 from each level and win"
    SOUND_VOICE_BLUEY_SILVERCOINS4, // "Then come back and see me"
    SOUND_SHIELD,
    SOUND_COLLECT_ITEM,
    SOUND_COLLECT_ITEM_TIER2,
    SOUND_COLLECT_ITEM_TIER3,
    SOUND_VOICE_TRICKY_WOAH,
    SOUND_VOICE_TRICKY_WOAH2, // Same as the last
    SOUND_VOICE_TRICKY_HM,
    SOUND_VOICE_TRICKY_HMMM,
    SOUND_VOICE_BLUEY_EH,
    SOUND_VOICE_BLUEY_OHNO,
    SOUND_FLUTTERING, // idk
    SOUND_PLANE_ENGINE,
    SOUND_BOING,
    SOUND_STOMP2,
    SOUND_STOMP3,
    SOUND_BOUNCE,
    SOUND_UNK175, // sounds just like UNK5
    SOUND_FOOTSTEP,
    SOUND_UNK177, // Very low pitch something
    SOUND_MENU_PICK,
    SOUND_VOICE_WIZPIG_LAUGH_SHORT2,
    SOUND_VOICE_WIZPIG_LAUGH_SHORT3,
    SOUND_VOICE_WIZPIG_HA,
    SOUND_VOICE_WIZPIG_H2,
    SOUND_VOICE_BLUEY_HAHA,
    SOUND_VOICE_BLUEY_HAHA2,
    SOUND_VOICE_BLUEY_SILVERCOINS1, // "Now try my new challenge"
    SOUND_VOICE_TRICKY_ENCOUNTER1, // "Now I challenge you to a race"
    SOUND_VOICE_TRICKY_SILVERCOINS1, // "Now try my new challenge"
    SOUND_VOICE_TRICKY_SILVERCOINS2, // "Collect all the silver coins from the dino domain."
    SOUND_VOICE_TRICKY_GOODTRY, // "Good one, kid"
    SOUND_VOICE_TRICKY_NEVERMIND, // "Maybe next time."
    SOUND_VOICE_TRICKY_RETRY, // "Come back whenever you're ready."
    SOUND_VOICE_TRICKY_SILVERCOINS6, // "Then come back and see me"
    SOUND_VOICE_TRICKY_TROPHY1, // "Well done kid"
    SOUND_VOICE_TRICKY_TROPHY2, // "You've earned a piece of the amulet"
    SOUND_VOICE_TRICKY_TROPHY3, // "Now try the trophy challenge"
    SOUND_VOICE_TRICKY_TROPHY4, // "See ya later"
    SOUND_VOICE_TRICKY_SILVERCOINS4, // "You must find 8 from each level"
    SOUND_VOICE_TRICKY_SILVERCOINS5, // "and win"
    SOUND_VOICE_TRICKY_REMATCH1, // "Fantastic"
    SOUND_VOICE_TRICKY_REMATCH2, // "If you can beat me again"
    SOUND_VOICE_TRICKY_REMATCH3, // "I'll give you a special prize"
    SOUND_VOICE_SMOKEY_ENCOUNTER1, // "Hahahaha!"
    SOUND_VOICE_SMOKEY_ENCOUNTER2, // "Now I challenge you to a race!"
    SOUND_VOICE_SMOKEY_SILVERCOINS1, // "Now try my new challenge"
    SOUND_VOICE_SMOKEY_SILVERCOINS2, // "Collect all the silver coins from my world"
    SOUND_VOICE_SMOKEY_GOODTRY, // "Excellent"
    SOUND_VOICE_SMOKEY_SILVERCOINS3, // "You must find 8 from each level and win"
    SOUND_VOICE_SMOKEY_SILVERCOINS4, // "Then come back and see me"
    SOUND_UNK209,
    SOUND_VOICE_SMOKEY_BADLUCK, // "Bad luck"
    SOUND_VOICE_SMOKEY_RETRY, // "Try again whenever you're ready"
    SOUND_VOICE_SMOKEY_TROPHY1, // "You have earned a piece of the amulet"
    SOUND_VOICE_SMOKEY_TROPHY2, // "Now try the trophy challenge"
    SOUND_VOICE_SMOKEY_TROPHY3, // "Goodbye"
    SOUND_VOICE_SMOKEY_REMATCH2, // "If you can beat me again"
    SOUND_VOICE_SMOKEY_REMATCH3, // "I'll give you a special prize"
    SOUND_VOICE_BUBBLER_ENCOUNTER1, // "Well done!"
    SOUND_VOICE_BUBBLER_ENCOUNTER2, // "Now I challenge you to a race!"
    SOUND_VOICE_BUBBLER_SILVERCOINS1, // "Try my new challenge"
    SOUND_VOICE_BUBBLER_SILVERCOINS2, // "Collect all the silver coins from my world."
    SOUND_VOICE_BUBBLER_SILVERCOINS3, // "Find 8 from each level and win"
    SOUND_VOICE_BUBBLER_BADLUCK, // "Tough luck, kid"
    SOUND_VOICE_BUBBLER_BADLUCK2, // "Maybe next time"
    SOUND_VOICE_BUBBLER_RETRY, // "Come back whenever you're ready"
    SOUND_VOICE_BUBBLER_TROPHY1, // "Well done, shrimp"
    SOUND_VOICE_BUBBLER_TROPHY2, // "You have earned a piece of the amulet"
    SOUND_VOICE_BUBBLER_TROPHY3, // "Now try the trophy challenge"
    SOUND_VOICE_BUBBLER_TROPHY4, // "Goodbye"
    SOUND_VOICE_BUBBLER_REMATCH2, // "If you can beat me again"
    SOUND_VOICE_BUBBLER_REMATCH3, // "I'll give you a special prize"
    SOUND_VOICE_BUBBLER_SILVERCOINS4, // "Then return to me"
    SOUND_VOICE_BUBBLER_HAHA,
    SOUND_VOICE_BLUEY_ENCOUNTER1, // "Well done"
    SOUND_VOICE_BLUEY_ENCOUNTER2, // "Now I challenge you to a race"
    SOUND_MENU_PICK2,
    SOUND_MENU_PICK3,
    SOUND_UNK237,
    SOUND_UNK238,
    SOUND_SELECT2,
    SOUND_VOICE_TRICKY_WOAH3,
    SOUND_VOICE_TRICKY_WOAH4,
    SOUND_VOICE_SMOKEY_EH,
    SOUND_VOICE_SMOKEY_HEH,
    SOUND_VOICE_BLUEY_EH2,
    SOUND_VOICE_BLUEY_OHNO2,
    SOUND_VOICE_TRICKY_LAUGH,
    SOUND_VOICE_TRICKY_LAUGH2,
    SOUND_VOICE_SMOKEY_HAH,
    SOUND_VOICE_SMOKEY_LAUGH,
    SOUND_VOICE_BLUEY_HAHA3,
    SOUND_VOICE_BLUEY_HAHA4,
    SOUND_UNK252,
    SOUND_CROWD,
    SOUND_MENU_PICK4,
    SOUND_UNK255,
    SOUND_VOICE_TT_LAP2,
    SOUND_VOICE_TT_FINAL_LAP,
    SOUND_VOICE_TT_FINISH,
    SOUND_UNK259, // Sounds like car engines driving past
    SOUND_UNK260, // Continuous sound, not sure what it is
    SOUND_VOICE_TT_DIDDY_KONG_RACING, // title drop
    SOUND_VOICE_TT_PRESS_START,
    SOUND_ZIP_PAD_BOOST,
    SOUND_UNK264,
    SOUND_UNK265,
    SOUND_UNK266,
    SOUND_STOMP4,
    SOUND_STOMP5,
    SOUND_INTRO_KIDS2,
    SOUND_INTRO_PLANE2,
    SOUND_VOICE_TAJ_HELLO, // "Hello, friend"
    SOUND_WHOOSH4,
    SOUND_VOICE_TAJ_BYE, // "Byebye for now"
    SOUND_VOICE_TAJ_ALAKAZOOM,
    SOUND_CYMBAL,
    SOUND_SELECT3,
    SOUND_VOICE_TT_ANCIENT_LAKE,
    SOUND_VOICE_TT_BOULDER_CANYON,
    SOUND_VOICE_TT_CRESCENT_ISLAND,
    SOUND_VOICE_TT_DARKMOON_CAVERNS,
    SOUND_VOICE_TT_EVERFROST_PEAK,
    SOUND_VOICE_TT_FOSSIL_CANYON,
    SOUND_VOICE_TT_FROSTY_VILLAGE,
    SOUND_VOICE_TT_GREENWOOD_VILLAGE,
    SOUND_VOICE_TT_HOT_TOP_VOLCANO,
    SOUND_VOICE_TT_HAUNTED_WOODS,
    SOUND_VOICE_TT_JUNGLE_FALLS,
    SOUND_VOICE_TT_PIRATE_LAGOON,
    SOUND_VOICE_TT_SNOWBALL_VALLEY,
    SOUND_VOICE_TT_SPACEDUST_VALLEY,
    SOUND_VOICE_TT_SPACEPORT_ALPHA,
    SOUND_VOICE_TT_TREASURE_CAVES,
    SOUND_VOICE_TT_STAR_CITY,
    SOUND_VOICE_TT_WALRUS_COVE,
    SOUND_VOICE_TT_WINDMILL_PLAINS,
    SOUND_VOICE_TT_DINO_DOMAIN,
    SOUND_VOICE_TT_DRAGON_FOREST,
    SOUND_VOICE_TT_FUTURE_FUN_LAND,
    SOUND_VOICE_TT_ICICLE_PYRAMID,
    SOUND_VOICE_TT_SHIVER_ISLAND,
    SOUND_VOICE_TT_SNOWFLAKE_MOUNTAIN,
    SOUND_VOICE_TT_SMOKEY_CASTLE,
    SOUND_VOICE_TT_TROPHY_RACE,
    SOUND_VOICE_TT_WHALE_BAY,
    SOUND_CAR_REV2,
    SOUND_VOICE_TT_SNORE,
    SOUND_LASER_GUN,
    SOUND_NYOOM2,
    SOUND_NYOOM3,
    SOUND_HOMING_ROCKET,
    SOUND_INCOMING_ROCKET,
    SOUND_BOUNCE2,
    SOUND_WHEE,
    SOUND_MAGNET_HUM,
    SOUND_TYRE_SCREECH,
    SOUND_TWANG,
    SOUND_UNK317, // Unsure
    SOUND_VOICE_TT_POWERUP,
    SOUND_SPLOINK,
    SOUND_PLOP2,
    SOUND_VOICE_TT_INTRO, // "Hi there, I'm T.T!"
    SOUND_VOICE_TT_SEE_YOU, // "See you there"
    SOUND_VOICE_TT_OK,
    SOUND_VOICE_TT_LAP_RECORD,
    SOUND_VOICE_TT_RACE_RECORD,
    SOUND_UNK326,
    SOUND_VOICE_TT_GO_FOR_IT,
    SOUND_VOICE_TT_KEEP_GOING,
    SOUND_VOICE_TT_YOU_CAN_DO_THIS,
    SOUND_UNK330,
    SOUND_VOICE_TT_OH_NO,
    SOUND_VOICE_TT_TOO_BAD,
    SOUND_VOICE_TT_UNLUCKY,
    SOUND_VOICE_TT_NOT_AGAIN,
    SOUND_TING_HIGHER, // Even higher than high.
    SOUND_TING_HIGHEST, // Truly the tingiest ting of them all.
    SOUND_SPLOINK2,
    SOUND_BUBBLE, // The sound of pure rage, embodied.
    SOUND_VOICE_TT_DARKWATER_BEACH,
    SOUND_VOICE_TT_FIRE_MOUNTAIN,
    SOUND_POP,
    SOUND_HORN1,
    SOUND_HORN2,
    SOUND_HORN3,
    SOUND_HORN4,
    SOUND_HORN5,
    SOUND_HORN6,
    SOUND_HORN7,
    SOUND_HORN8,
    SOUND_HORN9,
    SOUND_HORN10,
    SOUND_UNK352,
    SOUND_UNK353,
    SOUND_VOICE_KRUNCH_POSITIVE1,
    SOUND_VOICE_BUMPER_POSITIVE1,
    SOUND_VOICE_TIPTUP_POSITIVE1,
    SOUND_VOICE_CONKER_POSITIVE1,
    SOUND_VOICE_TIMBER_POSITIVE1,
    SOUND_VOICE_BANJO_POSITIVE1,
    SOUND_VOICE_DRUMSTICK_POSITIVE1,
    SOUND_VOICE_PIPSY_POSITIVE1,
    SOUND_VOICE_TT_POSITIVE1,
    SOUND_VOICE_DIDDY_POSITIVE1,
    SOUND_UNK364,
    SOUND_UNK365,
    SOUND_VOICE_KRUNCH_POSITIVE2,
    SOUND_VOICE_BUMPER_POSITIVE2,
    SOUND_VOICE_TIPTUP_POSITIVE2,
    SOUND_VOICE_CONKER_POSITIVE2,
    SOUND_VOICE_TIMBER_POSITIVE2,
    SOUND_VOICE_BANJO_POSITIVE2,
    SOUND_VOICE_DRUMSTICK_POSITIVE2,
    SOUND_VOICE_PIPSY_POSITIVE2,
    SOUND_VOICE_TT_POSITIVE2,
    SOUND_VOICE_DIDDY_POSITIVE2,
    SOUND_UNK376,
    SOUND_UNK377,
    SOUND_VOICE_KRUNCH_POSITIVE3,
    SOUND_VOICE_BUMPER_POSITIVE3,
    SOUND_VOICE_TIPTUP_POSITIVE3,
    SOUND_VOICE_CONKER_POSITIVE3,
    SOUND_VOICE_TIMBER_POSITIVE3,
    SOUND_VOICE_BANJO_POSITIVE3,
    SOUND_VOICE_DRUMSTICK_POSITIVE3,
    SOUND_VOICE_PIPSY_POSITIVE3,
    SOUND_VOICE_TT_POSITIVE3,
    SOUND_VOICE_DIDDY_POSITIVE3,
    SOUND_UNK388,
    SOUND_UNK389,
    SOUND_VOICE_KRUNCH_POSITIVE4,
    SOUND_VOICE_BUMPER_POSITIVE4,
    SOUND_VOICE_TIPTUP_POSITIVE4,
    SOUND_VOICE_CONKER_POSITIVE4,
    SOUND_VOICE_TIMBER_POSITIVE4,
    SOUND_VOICE_BANJO_POSITIVE4,
    SOUND_VOICE_DRUMSTICK_POSITIVE4,
    SOUND_VOICE_PIPSY_POSITIVE4,
    SOUND_VOICE_TT_POSITIVE4,
    SOUND_VOICE_DIDDY_POSITIVE4,
    SOUND_UNK400,
    SOUND_UNK401,
    SOUND_VOICE_KRUNCH_POSITIVE5,
    SOUND_VOICE_BUMPER_POSITIVE5,
    SOUND_VOICE_TIPTUP_POSITIVE5,
    SOUND_VOICE_CONKER_POSITIVE5,
    SOUND_VOICE_TIMBER_POSITIVE5,
    SOUND_VOICE_BANJO_POSITIVE5,
    SOUND_VOICE_DRUMSTICK_POSITIVE5,
    SOUND_VOICE_PIPSY_POSITIVE5,
    SOUND_VOICE_TT_POSITIVE5,
    SOUND_VOICE_DIDDY_POSITIVE5,
    SOUND_UNK412,
    SOUND_UNK413,
    SOUND_VOICE_KRUNCH_POSITIVE6,
    SOUND_VOICE_BUMPER_POSITIVE6,
    SOUND_VOICE_TIPTUP_POSITIVE6,
    SOUND_VOICE_CONKER_POSITIVE6,
    SOUND_VOICE_TIMBER_POSITIVE6,
    SOUND_VOICE_BANJO_POSITIVE6,
    SOUND_VOICE_DRUMSTICK_POSITIVE6,
    SOUND_VOICE_PIPSY_POSITIVE6,
    SOUND_VOICE_TT_POSITIVE6,
    SOUND_VOICE_DIDDY_POSITIVE6,
    SOUND_UNK424,
    SOUND_UNK425,
    SOUND_VOICE_KRUNCH_POSITIVE7,
    SOUND_VOICE_BUMPER_POSITIVE7,
    SOUND_VOICE_TIPTUP_POSITIVE7,
    SOUND_VOICE_CONKER_POSITIVE7,
    SOUND_VOICE_TIMBER_POSITIVE7,
    SOUND_VOICE_BANJO_POSITIVE7,
    SOUND_VOICE_DRUMSTICK_POSITIVE7,
    SOUND_VOICE_PIPSY_POSITIVE7,
    SOUND_VOICE_TT_POSITIVE7,
    SOUND_VOICE_DIDDY_POSITIVE7,
    SOUND_UNK436,
    SOUND_UNK437,
    SOUND_VOICE_KRUNCH_POSITIVE8,
    SOUND_VOICE_BUMPER_POSITIVE8,
    SOUND_VOICE_TIPTUP_POSITIVE8,
    SOUND_VOICE_CONKER_POSITIVE8,
    SOUND_VOICE_TIMBER_POSITIVE8,
    SOUND_VOICE_BANJO_POSITIVE8,
    SOUND_VOICE_DRUMSTICK_POSITIVE8,
    SOUND_VOICE_PIPSY_POSITIVE8,
    SOUND_VOICE_TT_POSITIVE8,
    SOUND_VOICE_DIDDY_POSITIVE8,
    SOUND_UNK448,
    SOUND_UNK449,
    SOUND_VOICE_KRUNCH_NEGATIVE1,
    SOUND_VOICE_BUMPER_NEGATIVE1,
    SOUND_VOICE_TIPTUP_NEGATIVE1,
    SOUND_VOICE_CONKER_NEGATIVE1,
    SOUND_VOICE_TIMBER_NEGATIVE1,
    SOUND_VOICE_BANJO_NEGATIVE1,
    SOUND_VOICE_DRUMSTICK_NEGATIVE1,
    SOUND_VOICE_PIPSY_NEGATIVE1,
    SOUND_VOICE_TT_NEGATIVE1,
    SOUND_VOICE_DIDDY_NEGATIVE1,
    SOUND_UNK460,
    SOUND_UNK461,
    SOUND_VOICE_KRUNCH_NEGATIVE2,
    SOUND_VOICE_BUMPER_NEGATIVE2,
    SOUND_VOICE_TIPTUP_NEGATIVE2,
    SOUND_VOICE_CONKER_NEGATIVE2,
    SOUND_VOICE_TIMBER_NEGATIVE2,
    SOUND_VOICE_BANJO_NEGATIVE2,
    SOUND_VOICE_DRUMSTICK_NEGATIVE2,
    SOUND_VOICE_PIPSY_NEGATIVE2,
    SOUND_VOICE_TT_NEGATIVE2,
    SOUND_VOICE_DIDDY_NEGATIVE2,
    SOUND_UNK472,
    SOUND_UNK473,
    SOUND_VOICE_KRUNCH_NEGATIVE3,
    SOUND_VOICE_BUMPER_NEGATIVE3,
    SOUND_VOICE_TIPTUP_NEGATIVE3,
    SOUND_VOICE_CONKER_NEGATIVE3,
    SOUND_VOICE_TIMBER_NEGATIVE3,
    SOUND_VOICE_BANJO_NEGATIVE3,
    SOUND_VOICE_DRUMSTICK_NEGATIVE3,
    SOUND_VOICE_PIPSY_NEGATIVE3,
    SOUND_VOICE_TT_NEGATIVE3,
    SOUND_VOICE_DIDDY_NEGATIVE3,
    SOUND_UNK484,
    SOUND_UNK485,
    SOUND_VOICE_KRUNCH_NEGATIVE4,
    SOUND_VOICE_BUMPER_NEGATIVE4,
    SOUND_VOICE_TIPTUP_NEGATIVE4,
    SOUND_VOICE_CONKER_NEGATIVE4,
    SOUND_VOICE_TIMBER_NEGATIVE4,
    SOUND_VOICE_BANJO_NEGATIVE4,
    SOUND_VOICE_DRUMSTICK_NEGATIVE4,
    SOUND_VOICE_PIPSY_NEGATIVE4,
    SOUND_VOICE_TT_NEGATIVE4,
    SOUND_VOICE_DIDDY_NEGATIVE4,
    SOUND_UNK496,
    SOUND_UNK497,
    SOUND_VOICE_KRUNCH_NEGATIVE5,
    SOUND_VOICE_BUMPER_NEGATIVE5,
    SOUND_VOICE_TIPTUP_NEGATIVE5,
    SOUND_VOICE_CONKER_NEGATIVE5,
    SOUND_VOICE_TIMBER_NEGATIVE5,
    SOUND_VOICE_BANJO_NEGATIVE5,
    SOUND_VOICE_DRUMSTICK_NEGATIVE5,
    SOUND_VOICE_PIPSY_NEGATIVE5,
    SOUND_VOICE_TT_NEGATIVE5,
    SOUND_VOICE_DIDDY_NEGATIVE5,
    SOUND_UNK508,
    SOUND_UNK509,
    SOUND_VOICE_KRUNCH_NEGATIVE6,
    SOUND_VOICE_BUMPER_NEGATIVE6,
    SOUND_VOICE_TIPTUP_NEGATIVE6,
    SOUND_VOICE_CONKER_NEGATIVE6,
    SOUND_VOICE_TIMBER_NEGATIVE6,
    SOUND_VOICE_BANJO_NEGATIVE6,
    SOUND_VOICE_DRUMSTICK_NEGATIVE6,
    SOUND_VOICE_PIPSY_NEGATIVE6,
    SOUND_VOICE_TT_NEGATIVE6,
    SOUND_VOICE_DIDDY_NEGATIVE6,
    SOUND_UNK520,
    SOUND_UNK521,
    SOUND_VOICE_KRUNCH_NEGATIVE7,
    SOUND_VOICE_BUMPER_NEGATIVE7,
    SOUND_VOICE_TIPTUP_NEGATIVE7,
    SOUND_VOICE_CONKER_NEGATIVE7,
    SOUND_VOICE_TIMBER_NEGATIVE7,
    SOUND_VOICE_BANJO_NEGATIVE7,
    SOUND_VOICE_DRUMSTICK_NEGATIVE7,
    SOUND_VOICE_PIPSY_NEGATIVE7,
    SOUND_VOICE_TT_NEGATIVE7,
    SOUND_VOICE_DIDDY_NEGATIVE7,
    SOUND_UNK532,
    SOUND_UNK533,
    SOUND_VOICE_KRUNCH_NEGATIVE8,
    SOUND_VOICE_BUMPER_NEGATIVE8,
    SOUND_VOICE_TIPTUP_NEGATIVE8,
    SOUND_VOICE_CONKER_NEGATIVE8,
    SOUND_VOICE_TIMBER_NEGATIVE8,
    SOUND_VOICE_BANJO_NEGATIVE8,
    SOUND_VOICE_DRUMSTICK_NEGATIVE8,
    SOUND_VOICE_PIPSY_NEGATIVE8,
    SOUND_VOICE_TT_NEGATIVE8,
    SOUND_VOICE_DIDDY_NEGATIVE8,
    SOUND_VOICE_BLUEY_REMATCH4, // "If you can beat me again..."
    SOUND_VOICE_BLUEY_TROPHY2, // "Goodbye kid"

    NUM_SOUND_IDS
};

#endif
