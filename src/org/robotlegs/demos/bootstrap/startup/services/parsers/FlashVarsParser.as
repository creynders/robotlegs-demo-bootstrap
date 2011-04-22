package org.robotlegs.demos.bootstrap.startup.services.parsers
{
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IFlashVarsParser;
	import org.robotlegs.demos.bootstrap.startup.services.vo.FlashVarsVO;

	public class FlashVarsParser implements IFlashVarsParser
	{
		public function FlashVarsParser()
		{
		}
		
		public function parseFlashVars( vars : Object ) : FlashVarsVO{
			trace( this, 'parseFlashVars' );
			var output : FlashVarsVO = new FlashVarsVO();
			output.configDataFileURL = vars[ 'configDataFile' ];
			return output;
		}
	}
}