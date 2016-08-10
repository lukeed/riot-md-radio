# riot-md-radio

> Material Design animated Radio input for [Riot.js](https://github.com/riot/riot)

![md-radio](https://github.com/lukeed/md-radio/blob/master/demo.gif)

## Install

```
$ bower install --save riot-md-radio
```

## Usage

```html
<md-radio
	label="Radio Label 1" input="group[]" check="true">
</md-radio>

<md-radio
	label="Radio Label 2" input="group[]">
</md-radio>
```

## Options

#### input

> Type: `string` <br>
> Default: `null` <br>
> Required: `false`

Serves as both the `id` and `name` attributes of your `<input />` element.

#### check

> Type: `string` <br>
> Default: `null` <br>
> Required: `false`

Sets the `checked` attribute. Passing **any** string will be handled as `true`!

#### value

> Type: `string` <br>
> Default: `1` <br>
> Required: `false`

The `value` of the input when checked.

#### label

> Type: `string` <br>
> Default: `null` <br>
> Required: `false`

The main label / text for your input.

#### text

> Type: `string` <br>
> Default: `null` <br>
> Required: `false`

Additional text to display; appears within a `<small>` element.

#### ontoggle

> Type: `function` <br>
> Default: `null` <br>
> Required: `false`

An additional callback when toggling a radio, regardless of `checked` status.

## License

MIT © [Luke Edwards](https://lukeed.com)
