#HTML
## key word
<a> anchor element
## function

### link
to a paragraph in a file.
```html
<p>Want to write us a letter? Use our <a href="contacts.html#Mailing_address">mailing address</a>.</p>
```

## debug
tools name: w3c-markup-validator
how to use it?

tools: html5validator
install: 
sudo pip3 install html5validator

usage: 
html5validator [file]

## div element
```
<div> is a block level non-semantic element, which you should only use if you can't think of a better semantic block element to use, or don't want to add any specific meaning. For example, imagine a shopping cart widget that you could choose to pull up at any point during your time on an e-commerce site:
This isn't really an <aside>, as it doesn't necessarily relate to the main content of the page (you want it viewable from anywhere). It doesn't even particularly warrant using a  <section>, as it isn't part of the main content of the page. So a <div> is fine in this case. We've included a heading as a signpost to aid screenreader users in finding it.
```
<div> is a block level non-semantic element, which you should only use if you can't think of a better semantic block element to use, or don't want to add any specific meaning. For example, imagine a shopping cart widget that you could choose to pull up at any point during your time on an e-commerce site:
## form
1. label 'for' attr
Note the use of the for attribute on all <label> elements; it's a formal way to link a label to a form widget. This attribute references the id of the corresponding widget.

## span
The HTML <span> element is a generic inline container for phrasing content, which does not inherently represent anything. It can be used to group elements for styling purposes (using the class or id attributes), or because they share attribute values, such as lang. It should be used only when no other semantic element is appropriate. <span> is very much like a <div> element, but <div> is a block-level element whereas a <span> is an inline element.

## Event
addEventListener
https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/A_first_splash
