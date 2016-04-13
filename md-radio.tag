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

	<style>
		@import "node_modules/md-colors/src/md-colors";

		$radio-inner-size       : 15px;
		$radio-outer-size       : 23px;
		$radio-font-size        : 18px;

		$radio-text-color      	: #5B5B5B;
		$radio-inactive-color   : lighten(#b2b2b2, 10);
		$radio-active-color     : md-color('blue', '500');
		$radio-inner-color      : #fff;
		$radio-error-color      : md-color('red', '700');

		$radio-transition     	: all 0.25s ease-in-out;

		@mixin size($val) {
			width: $val;
			height: $val;
		}

		.md-radio {
			position: relative;
			display: inline-block;
			font-size: $radio-font-size;
			line-height: 2 * $radio-outer-size - 2;
			cursor: pointer;
			&:hover .md-radio__fake > span {
				transform: scale(0.5);
				opacity: 0.5;
			}

			input {
				@include size(1px);
				opacity: 0;
				&:checked + .md-radio__fake {
					border-color: $radio-active-color;
					transform: scale(1);
					> span {
						transform: scale(1);
						opacity: 1;
					}
				}
				&:focus + .md-radio__fake > span {
					background-color: darken($radio-active-color, 10);
					transform: scale(1);
					opacity: 1;
				}
			}

			&__fake,
			&__fake > span {
				transition: $radio-transition;
			}

			// basic text label & text wrapper
			> div {
				line-height: $radio-font-size;
				display: inline-block;
			}

			// Native input control and checked events
			// Outer ring of custom radio
			&__fake {
				position: relative;
				display: block;
				float: left;
				clear: left;
				margin: 8px;
				@include size($radio-outer-size);
				border: 3px solid $radio-inactive-color;
				border-radius: 50%;
				background-color: $radio-inner-color;
				transform: scale(0.75);

				// Inner ring of custom radio
				> span {
					@include size($radio-inner-size);
					transform: scale(0);
					display: block;
					margin: ($radio-outer-size - $radio-inner-size) / 2;
					border-radius: 50%;
					background-color: $radio-active-color;
					opacity: 0;
				}
			}

			// if has extra text ('small' tag)
			&.has__text {
				> div {
					padding-top: $radio-font-size / 2 - 2;
				}

				// extra label text
				small {
					display: block;
					line-height: 15px;
					color: $radio-text-color;
					opacity: 0.65;
					padding-top: 2px;
				}
			}

			// error class added
			&.with__error {
				> div, small {
					color: $radio-error-color;
				}
				.md-radio__fake {
					border-color: $radio-error-color !important;
				}
				.md-radio__fake > span {
					background-color: $radio-error-color !important;
				}
			}
		}
	</style>
</md-radio>
