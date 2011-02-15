Rails on Rubble
===============

*Rubble* is a modular mixin for building best of breed (Ruby) web apps.  It contains guidelines and best practices for developing HTML5/CSS3 websites.

Installation
------------

Rubble is designed to work with Rails 3 only.

Add rubble to your gemfile with:

    gem 'rubble'

Run bundle install

Run the generators to pull in the rubble sass, views, or both.

    rails g rubble:sass

OR

    rails g rubble:views

OR

    rails g rubble:all

Include the layout in your ApplicationController:

    class ApplicationController < ActionController::Base
      include Rubble::Layout
      protect_from_forgery
    end

Include the helpers in your ApplicationHelper module

    module ApplicationHelper
      include Rubble::Helpers
    end




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
