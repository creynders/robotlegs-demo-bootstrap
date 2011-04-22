package
{
	import flash.display.Sprite;
	import flash.display.StageDisplayState;
	import flash.display.StageScaleMode;
	
	import org.robotlegs.core.IContext;
	import org.robotlegs.demos.bootstrap.ApplicationContext;
	
	[SWF(width='400', height='300', backgroundColor='#000000', frameRate='30')]

	public class RobotlegsDemoBootstrap extends Sprite
	{
		private var _context : IContext;
		
		public function RobotlegsDemoBootstrap()
		{
			this.stage.scaleMode = StageScaleMode.NO_SCALE;
			this.stage.displayState = StageDisplayState.NORMAL;
			
			_context = new ApplicationContext( this, true );
		}
	}
}