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
		private var Data:Array = ["MAS","TER", "BANA", "NA", "AP", "PLE", "BAN"];

		public function BubblePop() {
			
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
			
			var textField = inactiveBubble.getChildAt(1);
			textField.text = this.Data.pop();
			
			
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
		
			//e.target.visible = false;
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
