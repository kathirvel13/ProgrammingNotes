#HTML #freecodecamp 
# HTML
It stands for ***Hypertext Markup Language***. HTML consists of tags and attributes.
HTML tags give a webpage its structure. You can use HTML tags to add photos, buttons, and other elements to your webpage.
HTML elements have an opening and closing tag with content in between.  An element without a closing tag is known as a void element.
```html
<openingTag>content</closingTag>
```
HTML attributes are special words used inside the opening tag of an element to control the element's behaviour.

## Compulsory Tags
- All pages should begin with `<!DOCTYPE html>`. This special string is known as a declaration and ensures the browser tries to meet industry-wide specifications. 
- `<!DOCTYPE html>` tells browsers that the document is an HTML5 document which is the latest version of HTML.
- The `html` element is the root element of an HTML page and wraps all content on the page. You can also specify the language of your page by adding the `lang` attribute to the `html` element.
- All page content elements that should be rendered to the page go inside the `body` element. However, other important information goes inside the `head` element. 
- The `head` element is used to contain metadata about the document, such as its title, links to stylesheets, and scripts. Metadata is information about the page that isn't displayed directly on the page.
- You can set browser behaviour by adding `meta` elements in the `head`. Inside the `head` element, nest a `meta` element with an attribute named `charset`. Set to the value to `utf-8` which tells the browser how to encode characters for the page. Note that the `meta` element is a void element.
- The `title` element determines what browsers show in the title bar or tab for the page.

## Some Common Tags
1. The `h1` through `h6` heading elements are used to signify the importance of content below them. The lower the number, the higher the importance.
2. The `p` element is used to create a paragraph of text on websites.
	- To place emphasis on a specific word or phrase, you can use the `em` element.
	- The `strong` element is used to indicate that some text is of strong importance or urgent.
3. Commenting allows you to leave messages without affecting the browser display.
4. Add images to your website by using the `img` element. `img` elements have an opening tag without a closing tag.
5. A figure caption (`figcaption`) element is used to add a caption to describe the image contained within the `figure` element.
6. Anchor `a` tags links other pages. A link's text must be placed between the opening and closing tags of an anchor `a` element.
7. To create an unordered list of items, you can use the `ul` element.
8. The code for an ordered list (`ol`) is similar to an unordered list, but list items in an ordered list are numbered when displayed.
9. The `li` element is used to create a list item in an ordered or unordered list.
10. The `form` element is used to get information from a user like their name, email, and other details.
	- The `input` element allows you several ways to collect data from a web form. Like `img` elements, `input` elements are a void element and do not need closing tags.
	- The `button` element is used to create a clickable button.
	- You can use radio buttons for questions where you want only one answer out of multiple options. 
	- The `input` element with a `type` attribute set to `checkbox` creates a checkbox.
	- `label` elements are used to help associate the text for an `input` element with the `input` element itself.
	- The `legend` element acts as a caption for the content in the `fieldset` element. It gives users context about what they should enter into that part of the form.
11. The `footer` element is used to define a footer for a document or section. A footer typically contains information about the author of the document, copyright data, links to terms of use, contact information, and more. 

``` html showLineNumbers
<main>
	<section>
		<h1>Learn HTML</h1>
		<p>This is a paragraph.</p>
		<!-- This is a comment -->
		<figure>
			<img src="https://en.wikipedia.org/wiki/File:HTML5_logo_and_wordmark.svg" alt="HTML">
			<figcaption>HTML Logo</figcaption>
		</figure>
	</section>
	<section>
		<a href="https://www.freecodecamp.org/learn/2022/responsive-web-design">freecodecamp</a>
		<ul>
			<li>one</li>
			<li>two</li>
		</ul>
	</section>
</main>
```

- The `main` element is used to represent the main content of the body of an HTML document. Content inside the `main` element should be unique to the document and should not be repeated in other parts of the document.
- The `section` element is used to define sections in a document, such as chapters, headers, footers, or any other sections of the document. It is a semantic element that helps with SEO and accessibility.
- The `figure` element represents self-contained content and will allow you to associate an image with a caption.
- The `fieldset` element is used to group related inputs and labels together in a web form. `fieldset` elements are block-level elements, meaning that they appear on a new line.

## Some Common Attributes
- All `img` elements should have an `alt` attribute. The `alt` attribute's text is used for screen readers to improve accessibility and is displayed if the image fails to load.
- The `target` attribute on `a` element specifies where to open the linked document. `target="_blank"` opens the linked document in a new tab or window.
- The `action` attribute on `form` element indicates where form data should be sent.
- Add the `type` attribute with the value `submit` to the `button` to make it clear that it is a submit button.
### `input` elements
- There are many kinds of inputs you can create using the `type` attribute. You can easily create a password field, reset button, or a control to let users select a file from their computer.
- In order for a form's data to be accessed by the location specified in the `action` attribute, you must give the text field a `name` attribute and assign it a value to represent the data being submitted.
- Placeholder text `placeholder` is used to give people a hint about what kind of information to enter into an input.
- To prevent a user from submitting your form when required information is missing, you need to add the `required` attribute to an `input` element. There's no need to set a value to the `required` attribute.
- In order to make a checkbox checked or radio button selected by default, you need to add the `checked` attribute to it.
- The `id` attribute is used to identify specific HTML elements. Each `id` attribute's value must be unique from all other `id` values for the entire page.