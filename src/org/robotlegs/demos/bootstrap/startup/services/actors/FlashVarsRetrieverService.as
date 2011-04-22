package org.robotlegs.demos.bootstrap.startup.services.actors
{
	import flash.display.DisplayObject;
	import flash.display.LoaderInfo;
	
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IFlashVarsParser;
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IFlashVarsParserFactory;
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IFlashVarsRetrieverService;
	import org.robotlegs.demos.bootstrap.startup.services.vo.FlashVarsVO;
	import org.robotlegs.mvcs.Actor;
	
	public class FlashVarsRetrieverService extends Actor implements IFlashVarsRetrieverService
	{
		public function FlashVarsRetrieverService()
		{
			//TODO: implement function
			super();
		}
		
		[Inject] 
		public var parserFactory : IFlashVarsParserFactory;
		
		public function retrieveFlashVars( displayObject : DisplayObject ):FlashVarsVO
		{
			trace( this, 'getFlashVars' );
			var vars : Object = displayObject.root.loaderInfo.parameters;
			var parser : IFlashVarsParser = parserFactory.createFlashVarsParser();
			return parser.parseFlashVars( vars );
		}
	}
}