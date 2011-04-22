package org.robotlegs.demos.bootstrap.bootstrap.controllers
{
	import org.robotlegs.demos.bootstrap.core.service.actors.StyleSheetFileService;
	import org.robotlegs.demos.bootstrap.core.service.interfaces.IStyleSheetFileService;
	import org.robotlegs.demos.bootstrap.startup.services.actors.ConfigurationDataFileRetrieverService;
	import org.robotlegs.demos.bootstrap.startup.services.actors.FlashVarsRetrieverService;
	import org.robotlegs.demos.bootstrap.startup.services.actors.LocalConnectionDomainRetrieverService;
	import org.robotlegs.demos.bootstrap.startup.services.factories.ConfigurationDataParserFactory;
	import org.robotlegs.demos.bootstrap.startup.services.factories.FlashVarsParserFactory;
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IConfigurationDataParserFactory;
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IConfigurationDataRetrieverService;
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IDomainRetrieverService;
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IFlashVarsParserFactory;
	import org.robotlegs.demos.bootstrap.startup.services.interfaces.IFlashVarsRetrieverService;
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapServiceCommand extends Command
	{
		override public function execute():void{
			trace( this, 'execute' );
			
			this.injector.mapSingletonOf( IFlashVarsParserFactory, FlashVarsParserFactory );
			this.injector.mapSingletonOf( IFlashVarsRetrieverService, FlashVarsRetrieverService );

			this.injector.mapSingletonOf( IConfigurationDataParserFactory, ConfigurationDataParserFactory );
			this.injector.mapSingletonOf( IConfigurationDataRetrieverService, ConfigurationDataFileRetrieverService );
			
			this.injector.mapSingletonOf( IStyleSheetFileService, StyleSheetFileService );
			
			this.injector.mapSingletonOf( IDomainRetrieverService, LocalConnectionDomainRetrieverService );
		}
	}
}