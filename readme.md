# riot-md-radio
> Material Design animated Radio input, for Riot.js

![md-radio](https://github.com/lukeed/md-radio/blob/master/demo.gif)

## Installation

```bash
bower install riot-md-radio
```

or

```bash
npm install riot-md-radio
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

#### Bower

With Bower, you have access to the pre-compiled and non-compiled files.

**Pre-compiled:**

```html
<!-- mount point -->
<md-radio></md-radio>

<!-- include riot.js only -->
<script src="//cdn.jsdelivr.net/riot/2.3/riot.min.js"></script>
<!-- include the precompiled js file -->
<script src="bower_components/riot-md-radio/md-radio.js"></script>
<!-- standard `mount()` -->
<script>
  riot.mount('*');
</script>
```

**In-browser Compilation:**

```html
<!-- mount point -->
<md-radio></md-radio>

<!-- include source tag -->
<script src="bower_components/riot-md-radio/md-radio.tag" type="riot/tag"></script>
<!-- include riot.js and the compiler -->
<script src="//cdn.jsdelivr.net/riot/2.3/riot+compiler.min.js"></script>
<!-- standard `mount()` -->
<script>
  riot.mount('*');
</script>
```

#### NPM

A pre-compiled version, including styles, is exported as the NPM module. This means you may `require()` the module directly.

```js
// templates.js (example file)
var riot = require('riot');

require('riot-md-radio');

riot.mount('*');
```

> **Note:** You do not need to require `riot` within the same file. However, `riot` must be loaded and accessible before your template file(s) -- a simple global will work.

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
