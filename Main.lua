-- Turbine Imports:
import "Turbine";
import "Turbine.Gameplay";
import "Turbine.UI";
import "Turbine.UI.Lotro";

-- Plugin Imports:
import "CubePlugins.GuardianHelper.Globals";
import "CubePlugins.GuardianHelper.GeneralFunctions";
import "CubePlugins.GuardianHelper.GuardianHelperWin";

-- Language Specific:
if (LANGUAGE == Turbine.Language.German) then
    import "CubePlugins.GuardianHelper.Strings_de"
elseif (LANGUAGE == Turbine.Language.French) then
    import "CubePlugins.GuardianHelper.Strings_fr"
else
    import "CubePlugins.GuardianHelper.Strings_en"
end

function RegisterForUnload()
    Turbine.Plugin.Unload = function(sender, args)
        Info(_LANG.STATUS.UNLOADED);
    end
end

function CheckIfSkillsAreAvailable()
    for i = 1, #TRACKED_SKILLS do
        if (TRACKED_SKILLS[i]:IsUsable()) then
            Debug(TRACKED_SKILLS[i]:GetSkillInfo():GetName() .. " is usable");
        end
    end
end

function Main()
    -- check for Guardian class
    if (LocalPlayer:GetClass() ~= Turbine.Gameplay.Class.Guardian) then
        Info(_LANG.STATUS.NOT_GUARDIAN);
        return;
    end


    UnloadOurReloader();
    RegisterForUnload();

    -- Test Code:
    local skillList = LocalPlayer:GetTrainedSkills();
    local skillCount = skillList:GetCount();

    local trackedSkillCount = 1;

    for	i = 1, skillCount do
        local skill = skillList:GetItem(i);
        local info = skill:GetSkillInfo();
        local iconImageId = info:GetIconImageID();
        if (BLOCK_PERRY_SKILL_NAMES[iconImageId] ~= nil) then
            skill.ResetTimeChanged = CheckIfSkillsAreAvailable;
            TRACKED_SKILLS[trackedSkillCount] = skill;
            trackedSkillCount = trackedSkillCount + 1;
        end
    end



    -- ~Test Code

    -- load data

    -- register for chat commands

    -- register for events

    -- draw window
    mainWin = GuardianHelperWin();

    -- create options contents

    Info(_LANG.STATUS.LOADED);
end


Main();