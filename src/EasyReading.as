package {
	import flash.text.TextField;
	import flash.media.SoundChannel;
	import flash.media.Sound;
	import flash.events.Event;
	import flash.events.MouseEvent;

	public class EasyReading {

		public function EasyReading() {

		}
		private var TextFields: Array = [];
		private var Datas: Array = [
			[
				['I ate.', new iAteSound()],
				['Read the directions.', new readSound()],
				['The bus was late.', new theBusSound()],
				['I want a pizza.', new iWantSound()],
				['Jack like walking.', new jackSound()]
			],
			[
				['itlog', new ManSound()],
				['noodles', new MatSound()],
				['gutom na ako', new SadSound()],
				['xtuga', new SatSound()],
				['mouse', new VanSound()]
			],
		];

		private var bSounds: Array = [];

		public function RegisterButton(button) {
			this.bSounds.push(button);
			button.addEventListener(MouseEvent.CLICK, this.clickSounds);

		}

		private function clickSounds(e: MouseEvent) {
			switch (e.target.name) {
				case 'SoundB1':
					this.Datas[0][0][1].play();
					break;
				case 'SoundB2':
					this.Datas[0][1][1].play();
					break;
				case 'SoundB3':
					this.Datas[0][2][1].play();
					break;
				case 'SoundB4':
					this.Datas[0][3][1].play();
					break;
				case 'SoundB5':
					this.Datas[0][4][1].play();
					break;
			}
		}

		public function RegisterText(textField: TextField) {
			this.TextFields.push(textField);
			switch (textField.name) {
				case 'Sentence1':
					textField.text = this.Datas[0][0][0];
					break;
				case 'Sentence2':
					textField.text = this.Datas[0][1][0];
					break;
				case 'Sentence3':
					textField.text = this.Datas[0][2][0];
					break;
				case 'Sentence4':
					textField.text = this.Datas[0][3][0];
					break;
				case 'Sentence5':
					textField.text = this.Datas[0][4][0];
					break;
			}

		}

	}

}