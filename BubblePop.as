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
		private var CurrentAnswer;
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
			
			for each(var bubble in this.Bubbles){
				var bubbleAnimation = bubble.getChildAt(0);
				var textField = bubbleAnimation.getChildAt(1);
				var data = this.Data[this.CurrentData][1].pop();
				if (data[1]){
					this.CurrentAnswer = data[0];
				}
				textField.text = data[0];
			}
		
			this.Instruction.text = this.Data[this.CurrentData][0];

		}
	
		function RegisterInstruction(textField:TextField){
			this.Instruction = textField;
		}
	
		public function RegisterBubble(bubble:MovieClip):void {
			this.Bubbles.push(bubble);
			bubble.addEventListener(MouseEvent.CLICK, this.ActivateBubble);
        }
	
		public function ActivateBubble(e:MouseEvent) {
			
			var bubbleAnimation = e.target.parent;
			var textField = bubbleAnimation.getChildAt(1);
			
			
			
			if (textField.text == this.CurrentAnswer){
				textField.text = "WIN";
				this.CurrentData++;
				this.Populate();
			} else {
				textField.text = "BAD";
			}
			
			
			//e.target.parent.visible = false;
		}
	
	}

}
