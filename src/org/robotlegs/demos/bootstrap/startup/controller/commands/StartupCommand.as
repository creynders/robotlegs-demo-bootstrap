package org.robotlegs.demos.bootstrap.startup.controller.commands
{
	import org.robotlegs.utilities.macrobot.SequenceCommand;
	
	public class StartupCommand extends SequenceCommand
	{
		override public function execute():void{
			trace( this, 'execute' );
			
			this.atomic = false;
			
			this.addCommand( FetchDomainCommand );
			this.addCommand( FetchFlashVarsCommand );
			this.addCommand( FetchConfigurationDataCommand );
			this.addCommand( ConfigureApplicationCommand );
			this.addCommand( FetchGlobalStyleSheetCommand );
			
			this.addCommand( CompleteStartupCommand );
			
			this.executeNext();
		}
	}
}