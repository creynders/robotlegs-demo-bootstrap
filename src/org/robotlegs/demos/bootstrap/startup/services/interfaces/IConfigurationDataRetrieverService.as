package org.robotlegs.demos.bootstrap.startup.services.interfaces
{
	import org.robotlegs.demos.bootstrap.startup.services.signals.ConfigurationDataRetrievedSignal;

	public interface IConfigurationDataRetrieverService
	{
		function get configurationDataRetrievedSignal() :ConfigurationDataRetrievedSignal;
		
		function retrieveConfigurationData() : void;
	}
}