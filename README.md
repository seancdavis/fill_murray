# Fill Murray

Fill Murray makes it super simple to add placeholder images of Bill Murray to
your Rails projects. It uses the [website](http://www.fillmurray.com/) created
by [Dave Cowart](https://twitter.com/davecowart) to serve images.

## Installation

Add this line to your application's Gemfile:

    gem 'fill_murray'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install fill_murray

## Usage

Fill Murray gives you a view helper to easily add images: `fill_murray`.

```erb
<%= fill_murray %>
```

This will render an image of Bill Murray at a random height and width between
`100px` and `1000px`.

### Parameters

You can pass dimensions to better control the output image. `width` comes before
`height`, like so:

```erb
<%= fill_murray 200, 300 %>
```

Following the dimensions, you can add a block of configuration options,
including:

* `alt` : adds alternate attribute to image tag
* `class` : adds class(es) to image tag
* `grey` : will make image black and white (accepts `true`/`false`)

**For example:**

```erb
<%= fill_murray 1200, 300, { :grey => true, :class => "panoramic" } %>
```

> Note: Currently, you must specify `width` and `height` to be able to pass
> options.

## The Future

This gem is at its beginning and only has limited features and functionality. I
plan to expand on this in the future. Here are some planned features:

* add Nick Cage and Steven Segal images (also sites from Dave Cowart)
* add additional (but always fun) placeholder images
* make it easier to pass parameters (options without dimensions)
* allow dimension ratio as an option for random images

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
