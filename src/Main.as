package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.desktop.NativeApplication;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.events.Event;
	import BubblePop;
	import EasyPronunciation;
	import EasyReading;
	
	public class Main extends MovieClip {
		
		var selectedMenuItem:int = 0;
		var BubblePopGame:BubblePop = new BubblePop();
		var easyReading:EasyReading = new EasyReading();
		public var Stars:int = 0;
		public var easyPronunciation:EasyPronunciation = new EasyPronunciation();
		public var click:ClickSound = new ClickSound();
		public var backgroundMusic = new SoundChannel();
		public var volumeControl = new SoundTransform();

		function Main() {
			addChild(easyPronunciation);
		}
	
		function PlayBackgroundMusic(){
			volumeControl.volume = 0.1;
			this.backgroundMusic = new MenuBGSound(). play(0,0, volumeControl);
			this.backgroundMusic.addEventListener(Event.SOUND_COMPLETE, LoopBackgroundMusic);
		}
	
		function LoopBackgroundMusic(e:Event){
			backgroundMusic.removeEventListener(Event.SOUND_COMPLETE, LoopBackgroundMusic);
			PlayBackgroundMusic();
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
