
function UnloadOurReloader()
    reloadedUnloader = Turbine.UI.Control();
    reloadedUnloader:SetWantsUpdates( true );
    
    reloadedUnloader.Update = function( sender, args )
        Turbine.PluginManager.RefreshAvailablePlugins();
        local loadedPlugins = Turbine.PluginManager.GetLoadedPlugins();

        for k,v in pairs(loadedPlugins) do
            if v.Name == "~Guardian Helper Reloader" then
                Turbine.PluginManager.UnloadScriptState( 'GuardianHelperReloader' );
            end
        end
        reloadedUnloader:SetWantsUpdates( false );
    end
end

function Debug(message)
    if (message == nil or message == "" or not SETTINGS.VERBOSE_OUTPUT) then
        return;
    end

    Turbine.Shell.WriteLine("<rgb=#FF5555>" .. message .. "</rgb>");
end

function Info(message)
    if (message == nil or message == "") then
        return;
    end

    Turbine.Shell.WriteLine("<rgb=#55FF55>" .. message .. "</rgb>");
end