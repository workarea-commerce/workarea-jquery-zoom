Workarea Jquery Zoom
================================================================================

Note: This work is in progress and part of the workarea-zoom plugin.

About
--------------------------------------------------------------------------------
Jquery Zoom add image zoom capabilities on touch enabled devices and is a great candidate for phone/tablet devices.


Getting Started
--------------------------------------------------------------------------------

Add the gem to your application's Gemfile:

    # ...
    gem 'workarea-jquery_zoom'
    # ...


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


Workarea Commerce Documentation
--------------------------------------------------------------------------------

See [https://developer.workarea.com](https://developer.workarea.com) for Workarea Commerce documentation.

License
--------------------------------------------------------------------------------

Workarea Styled Selects is released under the [Business Software License](LICENSE)

