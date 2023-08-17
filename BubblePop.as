package  {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.utils.Dictionary;
	import flash.text.TextField;
	import flash.media.SoundChannel;
	import flash.media.Sound;
	import flash.net.URLRequest;
	import flash.events.IOErrorEvent;
	
	
	public class BubblePop extends MovieClip {
		
		private var FirstActiveBubble;
		private var SecondActiveBubble;
		private var Bubbles:Array = [];
		private var CurrentData = 0;
		private var Data:Array = [];
		public var Instruction:TextField;

		public function BubblePop() {
			
		}
	
		public function Populate() {
			this.Data = [	["Click the short 'A' sound", 
								[["BED",false], ["KID",false], ["CAT",true], ["DEEP",false], ["MEAN",false], ["POP",false], ["TIP",false]]	],
							["Click the short 'I' sound", 
								[["RAP",false], ["KID",true], ["CAT",false], ["DEEP",false], ["MEAN",false], ["POP",false], ["TIP",false]]	]
						];
		}
	
		function RegisterInstruction(textField:TextField){
			textField.text = this.Data[this.CurrentData][0];
		}
	
		public function RegisterBubble(bubble:MovieClip):void {
			this.Bubbles.push(bubble);
			bubble.addEventListener(MouseEvent.CLICK, this.ActivateBubble);
			
			var inactiveBubble = bubble.getChildAt(0);
			var bubbleButton = inactiveBubble.getChildAt(0);
			trace(bubbleButton.name);
			
			var textField = inactiveBubble.getChildAt(1);
			var data = this.Data[this.CurrentData][1].pop();
			textField.text = data[0];
        }
	
		private function ValidateBubble(bubble:String){
			var bubble = bubble;
			
			if (bubble != this.FirstActiveBubble){
				return bubble;
			}
			else {
				return null;
			}
		}
	
		public function ActivateBubble(e:MouseEvent) {
			
			if (this.FirstActiveBubble == null){
				this.FirstActiveBubble = ValidateBubble(e.target.name);				
			} else {
				this.SecondActiveBubble = ValidateBubble(e.target.name);
			}
		
			trace(e.target.parent.name);
			e.target.parent.visible = false;
								
			// clears active bubbles
			if (this.SecondActiveBubble != null){
				this.FirstActiveBubble = null;
				this.SecondActiveBubble = null;
			}
			
		}
	
	}

}
