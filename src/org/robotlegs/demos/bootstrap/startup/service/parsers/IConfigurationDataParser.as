package org.robotlegs.demos.bootstrap.startup.service.parsers
{
	import org.robotlegs.demos.bootstrap.startup.service.vo.ConfigurationDataVO;

	public interface IConfigurationDataParser
	{
		function set domain( value : String ) : void;
		
		function parseData( configurationData : String ) : ConfigurationDataVO;
	}
}