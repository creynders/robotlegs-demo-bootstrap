package org.robotlegs.demos.bootstrap.bootstrap.controller.commands
{
	import org.robotlegs.demos.bootstrap.core.service.actors.StyleSheetFileService;
	import org.robotlegs.demos.bootstrap.core.service.actors.IStyleSheetFileService;
	import org.robotlegs.demos.bootstrap.startup.service.actors.ConfigurationDataFileRetrieverService;
	import org.robotlegs.demos.bootstrap.startup.service.actors.FlashVarsRetrieverService;
	import org.robotlegs.demos.bootstrap.startup.service.actors.LocalConnectionDomainRetrieverService;
	import org.robotlegs.demos.bootstrap.startup.service.factories.ConfigurationDataParserFactory;
	import org.robotlegs.demos.bootstrap.startup.service.factories.FlashVarsParserFactory;
	import org.robotlegs.demos.bootstrap.startup.service.factories.IConfigurationDataParserFactory;
	import org.robotlegs.demos.bootstrap.startup.service.actors.IConfigurationDataRetrieverService;
	import org.robotlegs.demos.bootstrap.startup.service.actors.IDomainRetrieverService;
	import org.robotlegs.demos.bootstrap.startup.service.factories.IFlashVarsParserFactory;
	import org.robotlegs.demos.bootstrap.startup.service.actors.IFlashVarsRetrieverService;
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