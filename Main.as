package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class Main extends MovieClip {
		
		
		public function Main() {
			// constructor code
		}
	
		// (Frame:int, Schene:String)
		public function Navigate(e: MouseEvent):void {
			gotoAndStop(1, "Scene Name");
		}
	
		public function GoBack(e:MouseEvent):void {
			gotoAndStop(this.currentFrame - 1, this.currentScene.name);
		}
	}
	
}
