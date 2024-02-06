# NOTES

## Chapter 10

When a user visits a route:

* A static route shell is served, ensuring a fast initial load.
* The shell leaves holes where dynamic content will load in asynchronous.
* The async holes are streamed in parallel, reducing the overall load time of the page.

This is different from how your application behaves today, where entire routes are either entirely static or dynamic.

Partial Prerendering combines ultra-quick static edge delivery with fully dynamic capabilities and we believe it has the potential to [become the default rendering model for web applications](https://vercel.com/blog/partial-prerendering-with-next-js-creating-a-new-default-rendering-model), bringing together the best of static site generation and dynamic delivery.
