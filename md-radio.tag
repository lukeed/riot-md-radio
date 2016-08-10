<md-radio class="md-radio">
	<input id="{ opts.input }" name="{ opts.input }"
		type="radio" checked="{ opts.check }"
		onclick="{ onToggle }" onblur="{ onBlur }">

	<span class="md-radio__fake">
		<span></span>
	</span>

	<div class="{md-radio__text: opts.text}">
		{ opts.label }
		<small if="{ opts.text }">{ opts.text }</small>
	</div>

	<script>
		var self = this;

		self.onToggle = function (e) {
			self.input.value = self.input.checked ? (opts.value || 1) : null;
			if (e) {
				opts.ontoggle && opts.ontoggle(e);
				self.onBlur();
			}
		};

		self.onBlur = function () {
			self.parent.trigger('validate');
		};

		self.on('mount', function () {
			self.input = self.root.firstElementChild;
			return self.onToggle(); // set initial value
		});

		// reset only if self aware
		self.reset = function () {
			if (self.input) {
				self.onBlur(); // clear errors
				self.parent.trigger('reset');
			}
		};
	</script>
</md-radio>
