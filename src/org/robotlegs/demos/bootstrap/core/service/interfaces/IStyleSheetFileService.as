package org.robotlegs.demos.bootstrap.core.service.interfaces
{
	import org.robotlegs.demos.bootstrap.core.service.signals.StyleSheetFileLoadedSignal;

	public interface IStyleSheetFileService
	{
		function get styleSheetFileLoadedSignal() : StyleSheetFileLoadedSignal;
		
		function loadStyleSheet( ccsFileURI : String ) : void;
	}
}