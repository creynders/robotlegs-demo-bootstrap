package org.robotlegs.demos.bootstrap.startup.services.interfaces
{
	import org.robotlegs.demos.bootstrap.startup.services.signals.DomainRetrievedSignal;

	public interface IDomainRetrieverService
	{
		
		function get domainRetrievedSignal() : DomainRetrievedSignal;
		
		function retrieveDomain() : void;
	}
}