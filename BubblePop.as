package  {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class BubblePop {
		
		private var FirstActiveBubble;
		private var SecondActiveBubble;
		var RegularBubble;

		public function BubblePop() {
			//this.RegularBubble = this.getChildByName("RegularBubbleButton");
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
			//trace(MovieClip(root).getChildByName("RegularBubbleActive"));
			
			trace(this.FirstActiveBubble);
			trace(this.SecondActiveBubble);
		
			if (this.SecondActiveBubble != null){
				this.FirstActiveBubble = null;
				this.SecondActiveBubble = null;
			}
			
		}
	
	}

}
