package org.robotlegs.demos.bootstrap.startup.services.factories
{
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IFlashVarsParser;
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IFlashVarsParserFactory;
	import org.robotlegs.demos.bootstrap.startup.services.parsers.FlashVarsParser;

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