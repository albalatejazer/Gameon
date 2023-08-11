package  {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class BubblePop {
		
		private var FirstActiveBubble = 0;
		private var SecondActiveBubble = 0;
		var RegularBubble;

		public function BubblePop() {
			//this.RegularBubble = this.getChildByName("RegularBubbleButton");
		}
	
		public function ActivateBubble(e:MouseEvent) {
			if (this.FirstActiveBubble == 0){
				this.FirstActiveBubble = 1;
			} else {
				this.SecondActiveBubble = 1;
			}
		
			trace(this.FirstActiveBubble);
			trace(this.SecondActiveBubble);
		}
	}
}
