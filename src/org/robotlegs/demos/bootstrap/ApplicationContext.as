package org.robotlegs.demos.bootstrap
{
	import flash.display.DisplayObjectContainer;
	
	import org.osflash.signals.Signal;
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.base.ViewInterfaceMediatorMap;
	import org.robotlegs.core.ICommandMap;
	import org.robotlegs.core.IMediatorMap;
	import org.robotlegs.demos.bootstrap.bootstrap.controller.commands.BootstrapApplicationCommand;
	import org.robotlegs.demos.bootstrap.startup.controller.signals.BootstrapSignal;
	import org.robotlegs.mvcs.Context;
	import org.robotlegs.mvcs.SignalContext;
	import org.robotlegs.utilities.macrobot.MacroCommandMap;
	
	public class ApplicationContext extends SignalContext
	{
		public function ApplicationContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}
		/*
		override protected function get mediatorMap():IMediatorMap{
			return _mediatorMap || new ViewInterfaceMediatorMap( contextView, createChildInjector(), reflector );
		}
		*/
		
		/*
		override protected function get commandMap():ICommandMap{
			return _commandMap || new MacroCommandMap( eventDispatcher, injector, reflector );
		}
		*/
		
		override public function startup():void{
			signalCommandMap.mapSignalClass( BootstrapSignal, BootstrapApplicationCommand, true );
			
			var signal : Signal = this.injector.getInstance( BootstrapSignal );
			signal.dispatch();
			
		}
	}
}