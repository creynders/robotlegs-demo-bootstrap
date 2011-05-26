package org.robotlegs.demos.bootstrap.startup.service.factories
{
	import org.robotlegs.demos.bootstrap.startup.service.parsers.IConfigurationDataParser;
	import org.robotlegs.demos.bootstrap.startup.service.parsers.XMLConfigurationDataParser;
	

	public class ConfigurationDataParserFactory implements IConfigurationDataParserFactory
	{
		public function ConfigurationDataParserFactory()
		{
			//TODO: implement function
		}
		
		[Inject(name='domain')]
		public var domain : String;
		
		public function createConfigurationDataParser() : IConfigurationDataParser
		{
			var parser : IConfigurationDataParser = new XMLConfigurationDataParser();
			parser.domain = domain;
			return parser;
		}
	}
}