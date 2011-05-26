package org.robotlegs.demos.bootstrap.startup.service.actors
{
	import flash.display.DisplayObject;
	
	import org.robotlegs.demos.bootstrap.startup.service.vo.FlashVarsVO;

	public interface IFlashVarsRetrieverService
	{
		function retrieveFlashVars( displayObject : DisplayObject ) : FlashVarsVO;
	}
}