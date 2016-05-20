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
		onToggle(e) {
			if (opts.ontoggle) {
				opts.ontoggle(e);
			}
			this.el.value = this.el.checked ? (opts.value || 1) : null;
		}

		this.on('mount', function () {
			this.el = this.root.firstElementChild.firstElementChild;
			return this.onToggle();
		}.bind(this));
	</script>
</md-radio>
