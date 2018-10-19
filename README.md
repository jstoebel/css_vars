This is a simple example of how to set up themable pages in a rails app using css variables.

To see the example page: run `rake db:seed`, start the server and visit `/new-page`. The color of the page body should be red. This is due to a theme stylesheet that defines the page body as red in `assets/stylesheets/themes/new_page_theme.scss`. Here's how it works:

 - in `app/views/pages/show.html.haml` there is a helper method that infers what the theme stylesheet should be called based on its `slug`. In the case of the example the slug `new-page` becomes `new_page_theme.scss`
 - `new_page_theme.scss` defines a css variable `--font-color` mounted at `:root`. It is possible to scope css variables further down in the DOM, but in order to make this compatable with IE, we need to use a polyfil, and that polyfile only works on css vars at `:root`. More on that below.
 - Each theme stylesheet needs to the `@import 'themes/theme';` which is a shared stylesheet that applies the theme variables to the page.
 - Finally, we are including a polyfil for Internet Explorer since that browser does not support css variables. One potential problem here is that this polyfil runs relativly slow, being implemented in javascript. Therfore, its important to make sure we are running it on as little code as possible. This is why our theme styles are seperated from the rest of the site's styles. We then tell the polyfil to only work on that paticular stylesheet:

```
cssVars({
  include: 'link.theme-stylesheet', // <-- only look for a link tag with class `theme-stylesheet`
```
When we were first setting this up for a project at work we negelected to seperate the theme styles from the rest of the site and the polyfil took a full 8 seconds to load. Thats 8 painful seconds of the user staring at a broken page before the right styles show up. Yuck!

If you want to make your own page, create a new page record (I've provided a scaffold for convenience) and add your own theme stylesheet in `app/assets/stylesheets/themes`.