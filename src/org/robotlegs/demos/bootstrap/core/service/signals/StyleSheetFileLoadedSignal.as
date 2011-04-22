package org.robotlegs.demos.bootstrap.core.service.signals
{
	import flash.text.StyleSheet;
	
	import org.osflash.signals.Signal;
	
	public class StyleSheetFileLoadedSignal extends Signal
	{
		public function StyleSheetFileLoadedSignal()
		{
			super( StyleSheet );
		}
	}
}