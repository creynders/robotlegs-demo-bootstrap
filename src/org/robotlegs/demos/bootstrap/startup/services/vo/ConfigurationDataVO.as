package org.robotlegs.demos.bootstrap.startup.services.vo
{
	public class ConfigurationDataVO
	{
		public function ConfigurationDataVO()
		{
		}
		
		private var _cssFileURL : String;
		public function get cssFileURL() : String {
			return _cssFileURL
		} 
		public function set cssFileURL( value : String ) : void {
			_cssFileURL = value;
		} 
	}
}