package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.desktop.NativeApplication;
	import flash.media.Sound;
	import BubblePop;
	import EasyPronunciation;
	
	public class Main extends MovieClip {
		
		var selectedMenuItem:int = 0;
		var BubblePopGame:BubblePop = new BubblePop();
		public var Stars:int = 0;
		public var easyPronunciation:EasyPronunciation = new EasyPronunciation();
		public var click:ClickSound = new ClickSound();

		function Main() {
			addChild(easyPronunciation);
		}
	
		function GoBack(e:MouseEvent):void {
			gotoAndStop(this.currentFrame - 1, this.currentScene.name);
			click.play();
		}
	
		function GoForward(e:MouseEvent):void {
			gotoAndStop(this.currentFrame + 1, this.currentScene.name);
			click.play();
		}
	
		function Quit(e:MouseEvent):void
		{
			NativeApplication.nativeApplication.exit(0);
		}
	}
}
