package org.robotlegs.demos.bootstrap.bootstrap.controller.commands
{
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapViewCommand extends Command
	{
		override public function execute():void{
			trace( this, 'execute' );
		}
	}
}