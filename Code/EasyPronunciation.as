package  {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.media.Sound;
	
	public class EasyPronunciation extends MovieClip{

		public function EasyPronunciation() {
			// constructor code
		}

		
		//decalire sound class
		public var rat:RatSound = new RatSound();
	
		public function playSounds(event:MouseEvent):void
		{
			switch(event.currentTarget.name)
			{
				case "rat": rat.play();
				break;
				
				break;
				default: trace("sound not found");
			}
		}
	}
	
}
