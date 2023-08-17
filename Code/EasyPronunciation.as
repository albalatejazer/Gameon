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
		public var cat:CatSound = new CatSound();
		public var fat:FatSound = new FatSound();
		public var mat:MatSound = new MatSound();
		public var sat:SatSound = new SatSound();
		public var man:ManSound = new ManSound();
		public var van:VanSound = new VanSound();
		public var can:CanSound = new CanSound();
		public var tan:TanSound = new TanSound();
		public var fan:FanSound = new FanSound();
		public var bad:BadSound = new BadSound();
		public var dad:DadSound = new DadSound();
		public var had:HadSound = new HadSound();
		public var mad:MadSound = new MadSound();
		public var sad:SadSound = new SadSound();
		//public var click:ClickSound = new ClickSound();
	
		//public function btnClickSound(event:MouseEvent):void{
				//click.play();
			//}
		
		public function playSounds(event:MouseEvent):void
		{
			switch(event.currentTarget.name)
			{
				case "rat": rat.play();
				break;
				case "cat": cat.play();
				break;
				case "fat": fat.play();
				break;
				case "mat": mat.play();
				break;
				case "sat": sat.play();
				break;
				case "man": man.play();
				break;
				case "van": van.play();
				break;
				case "can": can.play();
				break;
				case "tan": tan.play();
				break;
				case "fan": fan.play();
				break;
				case "bad": bad.play();
				break;
				case "dad": dad.play();
				break;
				case "had": had.play();
				break;
				case "mad": mad.play();
				break;
				case "sad": sad.play();
				break;
				
				break;
				default: trace("sound not found");
			}
		}
}
}
