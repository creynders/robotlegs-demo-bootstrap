package org.robotlegs.demos.bootstrap.startup.services.parsers
{
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IConfigurationDataParser;
	import org.robotlegs.demos.bootstrap.startup.services.vo.ConfigurationDataVO;

	public class XMLConfigurationDataParser implements IConfigurationDataParser
	{
		public function XMLConfigurationDataParser()
		{
			//TODO: implement function
		}
		
		private var _domain : String;
		public function get domain() : String {
			return _domain
		} 
		public function set domain( value : String ) : void {
			_domain = value;
		} 
		
		public function parseData( configurationData : String ) : ConfigurationDataVO
		{
			trace( this, 'parseData' );
			var xml : XML = new XML( configurationData );
			var vo : ConfigurationDataVO = new ConfigurationDataVO();
			var settings : XMLList = xml.settings.( @domain == this.domain );
			vo.cssFileURL = settings.cssFileURL; 
			return vo;
		}
	}
}