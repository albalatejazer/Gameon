package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.desktop.NativeApplication;
	
	
	public class Main extends MovieClip {
		
		
		public function Main() {
			// constructor code
		}
	
		public function Navigate(e: MouseEvent):void {
			gotoAndStop(1, "Scene Name");
		}
	
		public function GoBack(e:MouseEvent):void {
			gotoAndStop(this.currentFrame - 1, this.currentScene.name);
		}
	
		public function Quit(e:MouseEvent):void
		{
			NativeApplication.nativeApplication.exit(0);
		}
	}
	
}
