package org.robotlegs.demos.bootstrap.startup.controllers
{
	import org.robotlegs.mvcs.Command;
	
	public class ConfigureApplicationCommand extends Command
	{
		override public function execute():void{
			trace( this, 'execute' );
		}
	}
}