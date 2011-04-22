package org.robotlegs.demos.bootstrap.startup.controllers
{
	import org.robotlegs.demos.bootstrap.startup.models.ConfigDataConstants;
	import org.robotlegs.demos.bootstrap.startup.services.vo.FlashVarsVO;
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IFlashVarsRetrieverService;
	import org.robotlegs.mvcs.Command;
	
	public class FetchFlashVarsCommand extends Command
	{
		[Inject]
		public var flashVarsService : IFlashVarsRetrieverService;
		
		override public function execute():void{
			trace( this, 'execute' );
			var data : FlashVarsVO = flashVarsService.retrieveFlashVars( this.contextView );
			this.injector.mapValue( String, data.configDataFileURL || ConfigDataConstants.CONFIG_DATA_FILE_URL, 'configDataFileURL' );
		}
	}
}