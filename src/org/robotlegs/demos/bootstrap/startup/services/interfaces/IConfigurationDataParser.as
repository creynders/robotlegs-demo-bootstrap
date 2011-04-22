package org.robotlegs.demos.bootstrap.startup.services.interfaces
{
	import org.robotlegs.demos.bootstrap.startup.services.vo.ConfigurationDataVO;

	public interface IConfigurationDataParser
	{
		function set domain( value : String ) : void;
		
		function parseData( configurationData : String ) : ConfigurationDataVO;
	}
}