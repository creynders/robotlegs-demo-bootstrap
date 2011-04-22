package org.robotlegs.demos.bootstrap.startup.services.signals
{
	import org.osflash.signals.Signal;
	import org.robotlegs.demos.bootstrap.startup.services.vo.ConfigurationDataVO;
	
	public class ConfigurationDataRetrievedSignal extends Signal
	{
		public function ConfigurationDataRetrievedSignal()
		{
			super( ConfigurationDataVO );
		}
	}
}