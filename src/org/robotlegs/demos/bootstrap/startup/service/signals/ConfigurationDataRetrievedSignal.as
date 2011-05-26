package org.robotlegs.demos.bootstrap.startup.service.signals
{
	import org.osflash.signals.Signal;
	import org.robotlegs.demos.bootstrap.startup.service.vo.ConfigurationDataVO;
	
	public class ConfigurationDataRetrievedSignal extends Signal
	{
		public function ConfigurationDataRetrievedSignal()
		{
			super( ConfigurationDataVO );
		}
	}
}