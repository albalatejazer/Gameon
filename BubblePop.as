package {
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

		private var Bubbles: Array = [];
		private var DataIterator = 0;
		private var CurrentAnswer;
		private var Instruction: TextField;
		private var Datas: Array = [
			["Click the short 'A' sound", [
				["BED", false],
				["KID", false],
				["CAT", true],
				["DEEP", false],
				["MEAN", false],
				["POP", false],
				["TIP", false]
			]],
			["Click the short 'E' sound", [
				["MUG", false],
				["KID", false],
				["CAT", false],
				["BEN", true],
				["MEAN", false],
				["POP", false],
				["TIN", false]
			]],
			["Click the short 'I' sound", [
				["PET", false],
				["KID", false],
				["HIT", true],
				["BEN", false],
				["MEAN", false],
				["TOP", false],
				["TIN", false]
			]],
			["Click the short 'O' sound", [
				["JOB", false],
				["HOT", false],
				["COT", true],
				["BEN", false],
				["MEAN", false],
				["PET", false],
				["TIN", false]
			]],
			["Click the short 'U' sound", [
				["MUG", true],
				["HOT", false],
				["CUT", false],
				["BEN", false],
				["MEAN", false],
				["PET", false],
				["TIN", false]
			]]
		];

		public function BubblePop() {

		}

		public function Populate() {
			DisplayAllBubble();

			if (this.Datas.length == this.DataIterator) {
				return;
			}

			var data = this.Datas[this.DataIterator];

			var i = 0;
			for each(var bubble in this.Bubbles) {
				var items = data[1];
				if (items[i][1]) {
					this.CurrentAnswer = items[i][0];
				}

				var bubbleAnimation = bubble.getChildAt(0);
				var textField = bubbleAnimation.getChildAt(1);
				textField.text = items[i][0];

				if (i == 6) {
					i = 0;
				} else {
					i++;
				}
			}

			this.Instruction.text = data[0];

			var main = this.Instruction.parent;
			var starsText = main.getChildByName("Stars");
			var achievementText = main.getChildByName("Achievements");
			starsText.text = main.Stars;
		}

		function RegisterInstruction(textField: TextField) {
			this.Instruction = textField;
			this.Populate();
		}

		public function RegisterBubble(bubble: MovieClip): void {
			this.Bubbles.push(bubble);
			bubble.addEventListener(MouseEvent.CLICK, this.ActivateBubble);
		}

		function CompleteNext(e: MouseEvent) {
			var main = e.target.parent.parent;
			main.gotoAndPlay(67);
		}

		public function RegisterComplete(button) {
			button.addEventListener(MouseEvent.CLICK, this.CompleteNext);
		}

		public function ActivateBubble(e: MouseEvent) {
			var bubbleAnimation = e.target.parent;
			var textField = bubbleAnimation.getChildAt(1);

			if (textField.text == this.CurrentAnswer) {
				textField.text = "WIN";

				if (this.DataIterator + 1 == this.Datas.length) {
					this.DataIterator = 0;
				} else {
					this.DataIterator++;
				}

				this.Populate();

				var main = this.Instruction.parent;
				main.Stars += 10;
				main.gotoAndPlay(60);

			} else {
				textField.text = "BAD";
			}

			bubbleAnimation.visible = false;
		}

		function DisplayAllBubble() {
			for each(var bubble in this.Bubbles) {
				bubble.getChildAt(0).visible = true;
			}
		}

	}

}