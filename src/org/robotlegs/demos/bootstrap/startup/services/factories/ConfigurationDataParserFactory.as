package org.robotlegs.demos.bootstrap.startup.services.factories
{
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IConfigurationDataParser;
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IConfigurationDataParserFactory;
	import org.robotlegs.demos.bootstrap.startup.services.parsers.XMLConfigurationDataParser;
	

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