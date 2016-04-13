riot.tag2('md-radio', '<label class="md-radio {has__text: opts.text}"> <input id="{opts.input}" name="{opts.input}" type="radio" __checked="{opts.check}" onclick="{onToggle}"> <span class="md-radio__fake"> <span></span> </span> <div> {opts.label} <small if="{opts.text}">{opts.text}</small> </div> </label>', '.md-radio { position: relative; display: inline-block; font-size: 18px; line-height: 44px; cursor: pointer; } .md-radio:hover .md-radio__fake > span { transform: scale(0.5); opacity: 0.5; } .md-radio input { width: 1px; height: 1px; opacity: 0; } .md-radio input:checked + .md-radio__fake { border-color: #2196f3; transform: scale(1); } .md-radio input:checked + .md-radio__fake > span { transform: scale(1); opacity: 1; } .md-radio input:focus + .md-radio__fake > span { background-color: #0c7cd5; transform: scale(1); opacity: 1; } .md-radio__fake, .md-radio__fake > span { transition: all 0.25s ease-in-out; } .md-radio > div { line-height: 18px; display: inline-block; } .md-radio__fake { position: relative; display: block; float: left; clear: left; margin: 8px; width: 23px; height: 23px; border: 3px solid #cccccc; border-radius: 50%; background-color: #fff; transform: scale(0.75); } .md-radio__fake > span { width: 15px; height: 15px; transform: scale(0); display: block; margin: 4px; border-radius: 50%; background-color: #2196f3; opacity: 0; } .md-radio.has__text > div { padding-top: 7px; } .md-radio.has__text small { display: block; line-height: 15px; color: #5B5B5B; opacity: 0.65; padding-top: 2px; } .md-radio.with__error > div, .md-radio.with__error small { color: #d32f2f; } .md-radio.with__error .md-radio__fake { border-color: #d32f2f !important; } .md-radio.with__error .md-radio__fake > span { background-color: #d32f2f !important; }', '', function(opts) {
		this.onToggle = function(e) {
			if (opts.ontoggle) {
				opts.ontoggle(e);
			}
			this.el.value = this.el.checked ? (opts.value || 1) : null;
		}.bind(this)

		this.on('mount', function () {
			this.el = this.root.firstElementChild.firstElementChild;
			return this.onToggle();
		}.bind(this));
});
