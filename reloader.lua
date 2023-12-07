import "Turbine.UI";

Reloader = Turbine.UI.Control();
Reloader:SetWantsUpdates( true );

Reloader.Update = function( sender, args )
    Reloader:SetWantsUpdates( false );
    Turbine.PluginManager.UnloadScriptState( 'GuardianHelper' );
    Turbine.PluginManager.LoadPlugin( 'Guardian Helper' );
end