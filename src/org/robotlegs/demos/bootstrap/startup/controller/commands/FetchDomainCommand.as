package org.robotlegs.demos.bootstrap.startup.controller.commands
{
	import org.robotlegs.demos.bootstrap.startup.service.actors.IDomainRetrieverService;
	import org.robotlegs.utilities.macrobot.AsyncCommand;
	
	public class FetchDomainCommand extends AsyncCommand
	{
		
		[Inject]
		public var domainService : IDomainRetrieverService;
		
		override public function execute():void{
			trace( this, 'execute' );
			
			commandMap.detain( this );
			domainService.domainRetrievedSignal.addOnce( _onDomainRetrievedSignal );
			domainService.retrieveDomain();
		}
		
		private function _onDomainRetrievedSignal( domain : String ) : void {
			this.injector.mapValue( String, domain, 'domain' );
			commandMap.release( this );
			this.dispatchComplete( true );
		}
	}
}