package org.robotlegs.demos.bootstrap.startup.controllers
{
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.demos.bootstrap.startup.signals.StartupCompleteSignal;
	import org.robotlegs.mvcs.Command;
	import org.robotlegs.mvcs.Context;
	
	public class CompleteStartupCommand extends Command
	{
		
		[Inject]
		public var startupCompleteSignal : StartupCompleteSignal;
		
		override public function execute():void{
			trace( this, 'execute' );
			
			startupCompleteSignal.dispatch();
		}
	}
}