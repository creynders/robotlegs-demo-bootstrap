package org.robotlegs.demos.bootstrap.startup.services.actors
{
	import flash.net.LocalConnection;
	
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IDomainRetrieverService;
	import org.robotlegs.demos.bootstrap.startup.services.signals.DomainRetrievedSignal;
	import org.robotlegs.mvcs.Actor;
	
	public class LocalConnectionDomainRetrieverService extends Actor implements IDomainRetrieverService
	{
		public function LocalConnectionDomainRetrieverService()
		{
			super();
			this._domainRetrievedSignal = new DomainRetrievedSignal();
		}
		
		
		private var _domainRetrievedSignal : DomainRetrievedSignal;
		public function get domainRetrievedSignal():DomainRetrievedSignal
		{
			return _domainRetrievedSignal
		}
		
		public function retrieveDomain():void
		{
			trace( this, 'retrieveDomain' );
			var lc : LocalConnection = new LocalConnection();
			var domain : String = lc.domain;
			domainRetrievedSignal.dispatch( domain );
		}
	}
}