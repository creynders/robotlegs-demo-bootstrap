package org.robotlegs.demos.bootstrap.startup.service.parsers
{
	import org.robotlegs.demos.bootstrap.startup.service.vo.FlashVarsVO;

	public interface IFlashVarsParser
	{
		function parseFlashVars( vars : Object ) : FlashVarsVO;
	}
}