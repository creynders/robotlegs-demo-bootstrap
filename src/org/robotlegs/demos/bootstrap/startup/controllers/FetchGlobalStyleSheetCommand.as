package org.robotlegs.demos.bootstrap.startup.controllers
{
	import flash.text.StyleSheet;
	
	import org.robotlegs.demos.bootstrap.core.service.interfaces.IStyleSheetFileService;
	import org.robotlegs.demos.bootstrap.startup.services.vo.ConfigurationDataVO;
	import org.robotlegs.utilities.macrobot.AsyncCommand;
	
	public class FetchGlobalStyleSheetCommand extends AsyncCommand
	{
		public function FetchGlobalStyleSheetCommand()
		{
			super();
		}
		
		[Inject]
		public var styleSheetFileService : IStyleSheetFileService;
		
		[Inject]
		public var configData : ConfigurationDataVO;
		
		override public function execute():void{
			trace( this, 'execute' );
			
			commandMap.detain( this);
			styleSheetFileService.styleSheetFileLoadedSignal.addOnce( _onStyleSheetFileLoadedSignal );
			styleSheetFileService.loadStyleSheet( configData.cssFileURL ); 
		}
		
		private function _onStyleSheetFileLoadedSignal( styleSheet : StyleSheet ) : void {
			trace( this, '_onStyleSheetFileLoadedSignal' );
			this.injector.mapValue( StyleSheet, styleSheet, 'globalStyleSheet' );
			commandMap.release( this );
			this.dispatchComplete( true );
		}
		
	}
}