package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.desktop.NativeApplication;
	import BubblePop;
		
	public class Main extends MovieClip {
		
		var selectedMenuItem:int = 0;
		var BubblePopGame:BubblePop = new BubblePop();
		
		function Main() {
			
		}
	
		function GoBack(e:MouseEvent):void {
			gotoAndStop(this.currentFrame - 1, this.currentScene.name);
		}
	
		function GoForward(e:MouseEvent):void {
			gotoAndStop(this.currentFrame + 1, this.currentScene.name);
		}
	
		function Quit(e:MouseEvent):void
		{
			NativeApplication.nativeApplication.exit(0);
		}
	}
}
