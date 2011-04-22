package org.robotlegs.demos.bootstrap.core.service.actors
{
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.text.StyleSheet;
	
	import org.osflash.signals.natives.NativeSignal;
	import org.robotlegs.demos.bootstrap.core.service.interfaces.IStyleSheetFileService;
	import org.robotlegs.demos.bootstrap.core.service.signals.StyleSheetFileLoadedSignal;
	import org.robotlegs.mvcs.Actor;
	
	public class StyleSheetFileService extends Actor implements IStyleSheetFileService
	{
		public function StyleSheetFileService()
		{
			//TODO: implement function
			super();
			
			_styleSheetFileLoadedSignal = new StyleSheetFileLoadedSignal();
		}
		
		private var _styleSheetFileLoadedSignal : StyleSheetFileLoadedSignal;
		public function get styleSheetFileLoadedSignal() : StyleSheetFileLoadedSignal {
			return _styleSheetFileLoadedSignal
		} 
		
		private var _loader : URLLoader;
		
		public function loadStyleSheet(ccsFileURL:String):void
		{
			trace( this, 'loadStyleSheet', ccsFileURL );
			_loader = new URLLoader();
			_loader.addEventListener(Event.COMPLETE, _onLoadStyleSheetFileComplete );
			var request : URLRequest = new URLRequest( ccsFileURL );
			_loader.load( request );
		}
		
		private function _onLoadStyleSheetFileComplete( event : Event ) : void {
			trace( this, '_onLoadStyleSheetFileComplete' );
			_loader.removeEventListener( Event.COMPLETE, _onLoadStyleSheetFileComplete );
			var styleSheet : StyleSheet = new StyleSheet();
			styleSheet.parseCSS( _loader.data );
			_loader = null;
			styleSheetFileLoadedSignal.dispatch( styleSheet );
		}
	}
}