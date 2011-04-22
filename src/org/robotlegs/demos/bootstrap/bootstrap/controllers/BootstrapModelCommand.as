package org.robotlegs.demos.bootstrap.bootstrap.controllers
{
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapModelCommand extends Command
	{
		override public function execute():void{
			trace( this, 'execute' );
			
		}
	}
}