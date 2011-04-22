package org.robotlegs.demos.bootstrap.startup.services.signals
{
	import org.osflash.signals.Signal;
	
	public class DomainRetrievedSignal extends Signal
	{
		public function DomainRetrievedSignal()
		{
			super(String);
		}
	}
}