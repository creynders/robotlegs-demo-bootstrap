package org.robotlegs.demos.bootstrap.startup.service.actors
{
	import org.robotlegs.demos.bootstrap.startup.service.signals.DomainRetrievedSignal;

	public interface IDomainRetrieverService
	{
		
		function get domainRetrievedSignal() : DomainRetrievedSignal;
		
		function retrieveDomain() : void;
	}
}