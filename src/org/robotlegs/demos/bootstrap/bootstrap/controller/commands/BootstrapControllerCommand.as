package org.robotlegs.demos.bootstrap.bootstrap.controller.commands
{
	import org.robotlegs.demos.bootstrap.startup.controller.commands.StartupCommand;
	import org.robotlegs.demos.bootstrap.startup.controller.signals.StartupCompleteSignal;
	import org.robotlegs.demos.bootstrap.startup.controller.signals.StartupSignal;
	import org.robotlegs.mvcs.Command;
	import org.robotlegs.mvcs.SignalCommand;
	
	public class BootstrapControllerCommand extends SignalCommand
	{
		override public function execute():void{
			trace( this, 'execute' );
			
			this.signalCommandMap.mapSignalClass( StartupSignal, StartupCommand, true );
			this.injector.mapSingleton( StartupCompleteSignal );
			
		}
	}
}