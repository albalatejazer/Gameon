package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.desktop.NativeApplication;
	import flash.media.Sound;
	import BubblePop;
	import EasyPronunciation;
	
	public class Main extends MovieClip {
		
		public var selectedMenuItem:int = 0;
		var BubblePopGame:BubblePop = new BubblePop();
		//var bubble = RegularBubbleActive;
		public var easyPronunciation:EasyPronunciation = new EasyPronunciation();
		public var click:ClickSound = new ClickSound();
		
		public function Main() {
			addChild(easyPronunciation);
		}

	
		public function Navigate(e: MouseEvent):void {
			gotoAndStop(1, "Scene Name");
		}
	
		public function GoBack(e:MouseEvent):void {
			gotoAndStop(this.currentFrame - 1, this.currentScene.name);
			click.play();
		}
	
		public function GoForward(e:MouseEvent):void {
			gotoAndStop(this.currentFrame + 1, this.currentScene.name);
			click.play();
		}
	
		public function Quit(e:MouseEvent):void
		{
			NativeApplication.nativeApplication.exit(0);
		}
	}
}
