package org.robotlegs.demos.bootstrap.core.service.actors
{
	import org.robotlegs.demos.bootstrap.core.service.signals.StyleSheetFileLoadedSignal;

	public interface IStyleSheetFileService
	{
		function get styleSheetFileLoadedSignal() : StyleSheetFileLoadedSignal;
		
		function loadStyleSheet( ccsFileURI : String ) : void;
	}
}