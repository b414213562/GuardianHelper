
_LANG = {
    STATUS = {
        LOADED = "Loaded 'Guardian Helper' v" .. Plugins["Guardian Helper"]:GetVersion() .. ", by Cube";
        UNLOADED = "'Guardian Helper' unloaded";
        NOT_GUARDIAN = "Current character is not a Guardian. Guardian Helper exiting.";
    };
};

SKILL_NAMES = {
    [0x41000c98] = "Challenge";
    [0x41005472] = "Shield-smash";
    [0x41005477] = "Guardian's Ward";
    [0x41005668] = "Improved Sting";
    [0x4100566a] = "Shield-swipe";
    [0x4100566e] = "Shield-blow";
    [0x41005670] = "Catch a Breath";
    [0x41005673] = "Vexing Blow";
    [0x4100567e] = "Warrior's Heart";
    [0x410087a7] = "Let Fly";
    [0x41008825] = "Sweeping Cut";
    [0x41008828] = "Retaliation";
    [0x4100882a] = "Bash";
    [0x4100882e] = "Whirling Retaliation";
    [0x41008831] = "Shield-taunt";
    [0x41008832] = "Stamp";
    [0x41008833] = "Turn the Tables";
    [0x41019e93] = "Guardian's Promise";
    [0x410daeec] = "Stagger";
    [0x410daeef] = "Fray the Edge";
    [0x410daef1] = "Engage";
    [0x410daef3] = "Shield Wall";
    [0x410e205a] = "Litany of Defiance";
    [0x41105e9c] = "Ignore the Pain";
    [0x4113a03f] = "Smashing Stab";
    [0x4113a05e] = "Guardian's Pledge";
    [0x4113a073] = "Juggernaut";
    [0x41140025] = "Charge";
};

BLOCK_PERRY_SKILL_NAMES = {
    [0x4100566a] = "Shield-swipe";  -- Tier 1 (Block Response)
    [0x41008828] = "Retaliation";   -- Tier 1 (Parry Response)
    [0x4100882e] = "Whirling Retaliation"; -- Tier 1 (Parry Response)
    [0x41005670] = "Catch a Breath"; -- Tier 1 (Block or Parry Response)

    [0x4100882a] = "Bash";          -- Tier 2 (Shield-swipe)
    [0x41008831] = "Shield-taunt";  -- Tier 2 (Shield-swipe)
    [0x4113a03f] = "Smashing Stab"; -- Tier 2 (Shield-swipe and/or Retaliation)

    [0x41005472] = "Shield-smash";  -- Tier 3 (Bash)
};

-- Effect List: 
-- Block Response: 6 seconds
-- Parry Response: 6 seconds
-- Shield Swipe: 6 seconds
-- Retalliation: 6 seconds

-- Bash reset time: Starts 6-second timer for Shield-smash

-- Trait tree: The Keen Blade:
-- Thrust
-- Overwhelm

-- Trait tree: The Fighter of Shadow
-- Redirect
