package org.robotlegs.demos.bootstrap.startup.controller.commands
{
	import org.robotlegs.demos.bootstrap.startup.service.vo.ConfigurationDataVO;
	import org.robotlegs.demos.bootstrap.startup.service.actors.IConfigurationDataRetrieverService;
	import org.robotlegs.utilities.macrobot.AsyncCommand;
	
	public class FetchConfigurationDataCommand extends AsyncCommand
	{
		[Inject] public var configDataService : IConfigurationDataRetrieverService;
		
		override public function execute():void{
			trace( this, 'execute' );
			
			commandMap.detain( this );
			
			configDataService.configurationDataRetrievedSignal.addOnce( this._configurationDataLoadedSignal_handler );
			configDataService.retrieveConfigurationData();
		}
		
		private function _configurationDataLoadedSignal_handler( configData : ConfigurationDataVO ) : void {
			trace( this, '_configurationDataLoadedSignal_handler' );
			this.injector.mapValue( ConfigurationDataVO, configData );
			commandMap.release( this );
			this.dispatchComplete( true );
		}
		
	}
}