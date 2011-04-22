package org.robotlegs.demos.bootstrap.bootstrap.controllers
{
	import org.robotlegs.demos.bootstrap.startup.controllers.StartupCommand;
	import org.robotlegs.demos.bootstrap.startup.signals.StartupSignal;
	import org.robotlegs.utilities.macrobot.SequenceCommand;
	
	public class BootstrapApplicationCommand extends SequenceCommand
	{
		
		override public function execute():void{
			trace( this, 'execute' );
			this.atomic = false;
			
			this.addCommand( BootstrapModelCommand );
			this.addCommand( BootstrapServiceCommand );
			this.addCommand( BootstrapControllerCommand );
			this.addCommand( BootstrapViewCommand );
			
			this.addCompletionListener( _onCompleteBootstrap );
			//run the sequence
			this.executeNext();
		}
		
		private function _onCompleteBootstrap( success : Boolean ) : void {
			var startupSignal : StartupSignal = this.injector.getInstance( StartupSignal );
			startupSignal.dispatch();
		}
	}
}