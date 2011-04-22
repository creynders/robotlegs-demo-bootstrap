package org.robotlegs.demos.bootstrap.startup.services.interfaces
{
	import org.robotlegs.demos.bootstrap.startup.services.vo.FlashVarsVO;

	public interface IFlashVarsParser
	{
		function parseFlashVars( vars : Object ) : FlashVarsVO;
	}
}