package org.robotlegs.demos.bootstrap.startup.service.factories
{
	import org.robotlegs.demos.bootstrap.startup.service.parsers.IConfigurationDataParser;
	

	public interface IConfigurationDataParserFactory
	{
		function createConfigurationDataParser() : IConfigurationDataParser;
	}
}