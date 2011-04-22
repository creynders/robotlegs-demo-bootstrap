package org.robotlegs.demos.bootstrap.bootstrap.controllers
{
	import org.robotlegs.demos.bootstrap.startup.controllers.StartupCommand;
	import org.robotlegs.demos.bootstrap.startup.signals.StartupCompleteSignal;
	import org.robotlegs.demos.bootstrap.startup.signals.StartupSignal;
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