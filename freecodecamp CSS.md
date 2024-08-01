#CSS #freecodecamp 

# CSS
CSS stands for Cascading Style Sheets. CSS tells the browser how to display your webpage. You can use CSS to set the colour, font, size, and other aspects of HTML elements.
You can add style to an element by specifying it in the `style` element and setting a property for it like this:
```html
<style>
	element {
	 property: value;
	}
	h1, h2, p {
	  text-align: center;
	}
</style>
```

You have styled by writing CSS inside the `style` tags. This works, but since there will be many more styles, it's best to put all the styles in a separate file `styles.css` and link to it.
```html
<link rel="stylesheet" href="styles.css">
```

For the styling of the page to look similar on mobile as it does on a desktop or laptop, you need to add a `meta` element with a special `content` attribute.
```html
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
```

You can use the `id` selector to target a specific element with an `id` attribute. An `id` selector is defined by placing the hash symbol `#` directly in front of the element's `id` value. For example, if an element has the `id` of `cat` then you would target that element like this:
```css
#cat {
  width: 250px;
}
```

Comments in CSS look like this: `/* Comment */` 

A class selector is defined by a name with a dot directly in front of it, like this:
```css
.class-name {
  styles
}
```

`p` elements are ***block-level elements***, so they take up the entire width of their parent element. To get them on the same line, you need to apply some styling to the `p` elements so they behave more like ***inline elements***.
```css
display: inline-block
```