package  {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.utils.Dictionary;
	import flash.text.TextField;
	
	
	public class BubblePop extends MovieClip {
		
		private var FirstActiveBubble;
		private var SecondActiveBubble;
		private var Bubbles:Array = [];
		private var Texts:Array = [];
		private var Data:Array = [["MAS","TER", "BANA", "NA", "AP", "PLE", "BAN"]];

		public function BubblePop() {
			//this.RegularBubble = this.getChildByName("RegularBubbleButton");
			
		}
	
		public function RegisterText(text:TextField){
			this.Texts.push(text);
			trace(text);
		}
	
		public function RegisterBubble(bubble:MovieClip):void {
            this.Bubbles.push(bubble);
			bubble.addEventListener(MouseEvent.CLICK, this.ActivateBubble);
			
			var inactiveBubble = bubble.getChildAt(0);
			var bubbleButton = inactiveBubble.getChildAt(0);
			trace(bubbleButton.name);
			
			if (bubbleButton.name == "RegularBubbleButton"){
				//var textField = bubbleButton.getChildAt(1);
				trace(bubbleButton.name);
				
				//textField.text = "qwemn";
			} else {
				var textField = inactiveBubble.getChildAt(1);
				textField.text = "qwemn";
			}
		
			//activeBubble.visible = false;
			//inactiveBubble.visible = false;
            //trace(activeBubble.getChildByName("RegularBubbleButton2"));
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
		
			//logic for bubble check
			//for each (var bubble:MovieClip in this.Bubbles){
				//trace(bubble.name, "!=", e.target.name);
				//var currentBubble = bubble.name + "Button";
				//if (currentBubble == this.FirstActiveBubble){
				//	trace(e.target.name);
				//}
			//}
		
			//trace(this.FirstActiveBubble);
			//trace(this.SecondActiveBubble);
		
			// clears active bubbles
			if (this.SecondActiveBubble != null){
				this.FirstActiveBubble = null;
				this.SecondActiveBubble = null;
			}
			
		}
	
	}

}
