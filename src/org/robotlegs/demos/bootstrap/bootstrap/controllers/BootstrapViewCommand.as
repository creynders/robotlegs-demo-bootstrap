package org.robotlegs.demos.bootstrap.bootstrap.controllers
{
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapViewCommand extends Command
	{
		override public function execute():void{
			trace( this, 'execute' );
		}
	}
}