package org.robotlegs.demos.bootstrap.startup.services.interfaces
{
	import flash.display.DisplayObject;
	
	import org.robotlegs.demos.bootstrap.startup.services.vo.FlashVarsVO;

	public interface IFlashVarsRetrieverService
	{
		function retrieveFlashVars( displayObject : DisplayObject ) : FlashVarsVO;
	}
}