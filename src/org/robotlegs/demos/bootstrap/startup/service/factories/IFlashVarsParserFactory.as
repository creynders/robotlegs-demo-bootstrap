package org.robotlegs.demos.bootstrap.startup.service.factories
{
	import org.robotlegs.demos.bootstrap.startup.service.parsers.IFlashVarsParser;

	public interface IFlashVarsParserFactory
	{
		function createFlashVarsParser() : IFlashVarsParser;
	}
}