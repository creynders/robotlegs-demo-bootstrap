package org.robotlegs.demos.bootstrap.startup.services.actors
{
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import org.robotlegs.demos.bootstrap.startup.services.signals.ConfigurationDataRetrievedSignal;
	import org.robotlegs.mvcs.Actor;
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IConfigurationDataParser;
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IConfigurationDataParserFactory;
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IConfigurationDataRetrieverService;
	import org.robotlegs.demos.bootstrap.startup.services.vo.ConfigurationDataVO;
	
	public class ConfigurationDataFileRetrieverService extends Actor implements IConfigurationDataRetrieverService
	{
		public function ConfigurationDataFileRetrieverService()
		{
			//TODO: implement function
			super();
			
			_configurationDataLoadedSignal = new ConfigurationDataRetrievedSignal()
		}
		
		private var _loader : URLLoader;
		
		[Inject(name='configDataFileURL')] 
		public var configDataFileURL : String;
		
		[Inject]
		public var parserFactory : IConfigurationDataParserFactory;
		
		private var _configurationDataLoadedSignal : ConfigurationDataRetrievedSignal;
		public function get configurationDataRetrievedSignal() :ConfigurationDataRetrievedSignal{
			return _configurationDataLoadedSignal;
		}
		
		public function retrieveConfigurationData():void
		{
			trace( this, 'retrieveConfigurationData' );
			var request : URLRequest = new URLRequest( configDataFileURL );
			_loader = new URLLoader( request );
			_loader.addEventListener(Event.COMPLETE, _urlLoaderComplete_handler );
		}
		
		private function _urlLoaderComplete_handler( event : Event ) : void {
			trace( this, '_urlLoaderComplete_handler' );
			_loader.removeEventListener( Event.COMPLETE, _urlLoaderComplete_handler );
			var parser : IConfigurationDataParser = parserFactory.createConfigurationDataParser();
			var data : ConfigurationDataVO = parser.parseData( _loader.data );
			_loader = null;
			configurationDataRetrievedSignal.dispatch( data );
		}
	}
}