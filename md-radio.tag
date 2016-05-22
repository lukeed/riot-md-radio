<md-radio>
	<label class="md-radio {has__text: opts.text}">
		<input id="{ opts.input }" name="{ opts.input }"
			type="radio" checked="{ opts.check }" onclick="{ onToggle }">

		<span class="md-radio__fake">
			<span></span>
		</span>

		<div>
			{ opts.label }
			<small if="{ opts.text }">{ opts.text }</small>
		</div>
	</label>

	<script>
		var self = this;

		self.onToggle = function (e) {
			if (opts.ontoggle) {
				opts.ontoggle(e);
			}

			self.el.value = self.el.checked ? (opts.value || 1) : null;
		};

		self.on('mount', function () {
			self.el = self.root.firstElementChild.firstElementChild;
			return self.onToggle();
		});
	</script>
</md-radio>
