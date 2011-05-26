package org.robotlegs.demos.bootstrap.startup.service.actors
{
	import org.robotlegs.demos.bootstrap.startup.service.signals.ConfigurationDataRetrievedSignal;

	public interface IConfigurationDataRetrieverService
	{
		function get configurationDataRetrievedSignal() :ConfigurationDataRetrievedSignal;
		
		function retrieveConfigurationData() : void;
	}
}