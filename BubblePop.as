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
	
		public function ActivateBubble(e:MouseEvent) {
			
			if (this.FirstActiveBubble == null){
				this.FirstActiveBubble = e.target.name;				
			} else {
				this.SecondActiveBubble = e.target.name;
			}
		
			//logic for bubble check
		
			trace(this.FirstActiveBubble);
			trace(this.SecondActiveBubble);
		
			if (this.SecondActiveBubble != null){
				this.FirstActiveBubble = null;
				this.SecondActiveBubble = null;
			}
			
		}
	
	}

}
