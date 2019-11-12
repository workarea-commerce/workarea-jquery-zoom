Workarea Jquery Zoom
================================================================================

Note: This work is in progress and part of the workarea-zoom plugin.

About
--------------------------------------------------------------------------------
Jquery Zoom add image zoom capabilities on touch enabled devices and is a great candidate for phone/tablet devices.


Getting Started
--------------------------------------------------------------------------------

This gem contains a rails engine that must be mounted onto a host Rails application.

To access Workarea gems and source code, you must be an employee of WebLinc or a licensed retailer or partner.

Workarea gems are hosted privately at https://gems.weblinc.com/.
You must have individual or team credentials to install gems from this server. Add your gems server credentials to Bundler:

    bundle config gems.weblinc.com my_username:my_password

Or set the appropriate environment variable in a shell startup file:

    export BUNDLE_GEMS__WEBLINC__COM='my_username:my_password'

Then add the gem to your application's Gemfile specifying the source:

    # ...
    gem 'workarea-jquery_zoom', source: 'https://gems.weblinc.com'
    # ...

Or use a source block:

    # ...
    source 'https://gems.weblinc.com' do
      gem 'workarea-jquery_zoom'
    end
    # ...

Update your application's bundle.

    cd path/to/application
    bundle

The Gem will mount two assets in your application (hammerjs / workarea-jquery-zoom).


Example
--------------------------------------------------------------------------------

```html
    <div class="zoom">
        <div data-zoom-src="http://example.com/big-image.jpg" class="zoom__container">
            <img src="http://example.com/thumbnail-image.jpg" class="zoom__image">
        </div>
    </div>
```

```css
.zoom {
    width: 320px;
}

.zoom__container {
    position: relative;
}

.zoom__image {
    display: block;
    width: 100%;
    min-width: 100%;
}
```

```javascript
$(document).ready(function() {
    $('.zoom__container').zoom();
});
```


Options
--------------------------------------------------------------------------------

You have the ability to pass your options like this:

```javascript
$('.zoom__container').zoom({
    lazyLoad: true,
    deltaScale: 0.05,
    url: null
});
```

Different options are available:

Name  | Default | Description
------------- | ------------- | -------------
lazyLoad  | ```true``` | If set to true, jquery.zoom will lazy load the zoom image when the user clicks for the first time on the container
deltaScale  |``` 0.05``` | What is the increment scale you want to use when scale up/down
url | ```null``` | The url of the zoom image, if not defined, jquery.zoom will fetch the attribute  ```data-zoom-src```given.


Events
--------------------------------------------------------------------------------

You can destroy the widget for the instance given, it's helpful when you want to go back to a clean state.

```javascript
// Create instance
$('.zoom__container').zoom();

// Remove instance
$('.zoom__container').trigger('zoom.destroy');
```


Workarea Platform Documentation
--------------------------------------------------------------------------------

See [http://developer.weblinc.com](http://developer.weblinc.com) for Workarea platform documentation.

Copyright & Licensing
--------------------------------------------------------------------------------

Copyright WebLinc 2017. All rights reserved.

For licensing, contact sales@workarea.com.
