Rails on Rubble
===============

*Rubble* is a front-end scaffold for Rails development. It outlines a scalable and reusable file structure and codebase for HTML5, SASS, and JavaScript organization and initialization. The end goal is faster, semantic, and more modular modern web applications.

External Dependencies
---------------------
+ [Rails 2](http://rubyonrails.org/)
+ [HAML](http://haml-lang.com/)

Included Dependencies
---------------------
+ [jQuery](http://jquery.com/)
+ [DD_belatedPNG](http://www.dillerdesign.com/experiment/DD_belatedPNG/)
+ [Modernizr](http://www.modernizr.com/)

Organization
------------
app/stylesheets
  Where the SASS lives
  
  + master.scss
    main SASS file, can/should be modified
  + _pages.scss 
    where page specific CSS should go, utilize body.namespace/controller/action selectors to target pages or sections
  + _reset.scss
    only to be included by master.scss, includes base CSS reset. avoid modification.
    
app/stylesheets/partials
  + _style.scss
    definitely edit this.

views/layouts/rubble
  + _document.html.erb
  
views/layouts
  + application.html.erb

public/javascripts/libs
  where javascript libraries live

public/javascripts/master
  + master.js
    custom javascript should go here, utilizes DOM-ready execution based on data-* attributes of the body tag.
  
public/stylesheets
  SASS is compiled to here. avoid creating files here or writing plain CSS, use SASS in app/stylesheets

Helpers
-------

- `page_title`: this needs attention.
- `classes_for_body`: adds class for namespace, controller, action, and session status to body tag. (ex /admin/products/new yields body class="admin products new user") dependent on `logged_in?` helper. TODO: more explicit user states (user/guest should be logged_in/not_logged_in)
- `stylesheets_for_path`: looks for stylesheet matching namespace, controller, and action. concats to `all.css` in production. Ex: /admin/products/new looks for and loads if exists stylesheets/admin.css, stylesheets/admin/products.css, and stylesheets/admin/products/new.css
- `logged_in?`: this needs to be replaced with the helper method from auth plugin of choice (should maybe include something with rubble)


TODO
----
+ Add yepnope [http://yepnopejs.com/](http://yepnopejs.com/)
+ Use CachedCommons for Modernizr when 1.6 is available [http://cachedcommons.org/](http://cachedcommons.org/)
+ Add Lemonade or CSS Sprite support
+ Use IE9.js?
+ Utilize JavaScript concatenation
+ Add Rack Modernizr ([https://github.com/marshally/rack-modernizr](https://github.com/marshally/rack-modernizr))
* Evaluate Jammit for potential integration with Rubble: [http://documentcloud.github.com/jammit/](http://documentcloud.github.com/jammit/)

Reference & Attribution
-----------------------
Rubble combines various ingredients and best practices and interpretations gleaned from:

## HTML
+ [html5boilerplate.com/](http://html5boilerplate.com/)
+ [github.com/paulirish/html5-boilerplate/wiki/Make-it-better/](http://github.com/paulirish/html5-boilerplate/wiki/Make-it-better/)
+ [molecularvoices.molecular.com/standards/](http://molecularvoices.molecular.com/standards/)
+ [diveintohtml5.org/](http://diveintohtml5.org/)
+ [paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/](http://paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/)

## CSS
+ [html5doctor.com/html-5-reset-stylesheet/](http://html5doctor.com/html-5-reset-stylesheet/)
+ [molecularvoices.molecular.com/standards/](http://molecularvoices.molecular.com/standards/)
+ [html5boilerplate.com/](http://html5boilerplate.com/)
+ [github.com/paulirish/html5-boilerplate/wiki/Make-it-better/](http://github.com/paulirish/html5-boilerplate/wiki/Make-it-better/)
+ [css-tricks.com/efficiently-rendering-css/](http://css-tricks.com/efficiently-rendering-css/)
+ [viget.com/inspire/sass-a-designers-perspective/](http://viget.com/inspire/sass-a-designers-perspective/)
+ [intridea.com/2009/2/4/sass-the-better-more-powerful-css](http://intridea.com/2009/2/4/sass-the-better-more-powerful-css)
+ [awardwinningfjords.com/2010/07/30/style-guides-using-sass-extend.html](http://awardwinningfjords.com/2010/07/30/style-guides-using-sass-extend.html)
+ [sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html](http://sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html)
+ [compass-style.org/docs/reference/compass/](http://compass-style.org/docs/reference/compass/)
+ [compass-style.org/docs/tutorials/best_practices/](http://compass-style.org/docs/tutorials/best_practices/)
+ [usabilitypost.com/2009/05/29/the-1kb-css-grid-part-1/](http://usabilitypost.com/2009/05/29/the-1kb-css-grid-part-1/)
+ [fordinteractive.com/2009/12/goodbye-overflow-clearing-hack/](http://fordinteractive.com/2009/12/goodbye-overflow-clearing-hack/)
+ [blueprintcss.org/](http://blueprintcss.org/)
+ [susy.oddbird.net/tutorial/](http://susy.oddbird.net/tutorial/)
+ [yuiblog.com/blog/2010/09/27/clearfix-reloaded-overflowhidden-demystified/](http://yuiblog.com/blog/2010/09/27/clearfix-reloaded-overflowhidden-demystified/)
+ [perishablepress.com/press/2009/12/06/new-clearfix-hack/](http://perishablepress.com/press/2009/12/06/new-clearfix-hack/)
+ [sitepoint.com/blogs/2010/08/20/ie-remove-textarea-scrollbars/](http://sitepoint.com/blogs/2010/08/20/ie-remove-textarea-scrollbars/)
+ [tjkdesign.com/ez-css/css/base.css](http://tjkdesign.com/ez-css/css/base.css)
+ [viget.com/inspire/styling-the-button-element-in-internet-explorer/](http://viget.com/inspire/styling-the-button-element-in-internet-explorer/) 
+ [code.flickr.com/blog/2008/11/12/on-ui-quality-the-little-things-client-side-image-resizing/](http://code.flickr.com/blog/2008/11/12/on-ui-quality-the-little-things-client-side-image-resizing/)
+ [pathf.com/blogs/2008/05/formatting-quoted-code-in-blog-posts-css21-white-space-pre-wrap/](http://pathf.com/blogs/2008/05/formatting-quoted-code-in-blog-posts-css21-white-space-pre-wrap/)

## JS
+ [viget.com/inspire/extending-paul-irishs-comprehensive-dom-ready-execution/](http://viget.com/inspire/extending-paul-irishs-comprehensive-dom-ready-execution/)
+ [paulirish.com/2009/markup-based-unobtrusive-comprehensive-dom-ready-execution/](http://paulirish.com/2009/markup-based-unobtrusive-comprehensive-dom-ready-execution/)