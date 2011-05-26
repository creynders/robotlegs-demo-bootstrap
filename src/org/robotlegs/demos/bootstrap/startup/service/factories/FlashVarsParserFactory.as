package org.robotlegs.demos.bootstrap.startup.service.factories
{
	import org.robotlegs.demos.bootstrap.startup.service.parsers.IFlashVarsParser;
	import org.robotlegs.demos.bootstrap.startup.service.parsers.FlashVarsParser;

	public class FlashVarsParserFactory implements IFlashVarsParserFactory
	{
		public function FlashVarsParserFactory()
		{
			//TODO: implement function
		}
		
		public function createFlashVarsParser():IFlashVarsParser
		{
			return new FlashVarsParser();
		}
	}
}