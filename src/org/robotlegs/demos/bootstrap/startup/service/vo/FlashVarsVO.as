package org.robotlegs.demos.bootstrap.startup.service.vo
{
	public class FlashVarsVO
	{
		public function FlashVarsVO()
		{
		}
		
		private var _configDataFileURL : String;
		public function get configDataFileURL() : String {
			return _configDataFileURL
		} 
		public function set configDataFileURL( value : String ) : void {
			_configDataFileURL = value;
		} 

	}
}