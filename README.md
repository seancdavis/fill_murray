# Fill Murray

Fill Murray makes it super simple to add placeholder images of Bill Murray, Nick
Cage or Steven Segal to your Rails projects. It uses the
[websites](http://www.fillmurray.com/) created by
[Dave Cowart](https://twitter.com/davecowart) to serve images.

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

#### Dimensions

You can explicitly control image dimensions -- `width` and `height`:

```erb
<%= fill_murray :width => 200, :height => 300 %>
```

To get more variety in your images, you can instead pass a ratio:

```erb
<%= fill_murray :ratio => '1:2' %>
```

Note: The ratio should be a string of two numbers, separated by a `:`.

You can pass any two numbers if square. For example, `'500:500'` gets reduced to
`'1:1'`. Ratios are generated such that the larger dimension can never be
larger than `1000px`.

> Note: The ratio may never be greater or equal to than `10x`. In other words,
> it may never be greater than or equal to `'10:1'` or `'1:10'`. For example,
> `'1000:100'` will not work, but `'1000:101'` will.

#### Person / Subject

The default is an image of Bill Murray. If you'd rather use Nick Cage or Steven
Segal, you can pass a `:person` parameter. Acceptable values are:

* `'Nick'`, `'Cage'`, `'Nick Cage'`
* `'Steve'`, `'Steven'`, `'Segal'`, `'Steven Segal'`

Any other values with render an image of Bill Murray.

Examples:

```erb
<%= fill_murray :person => 'Nick', :ratio => '9:1' %>
```

#### Effects

Each of the subjects can yield grey (black & white) images. Simply pass `:grey
=> true` for black and white images:

```erb
<%= fill_murray :person => 'Nick', :ratio => '9:1', :grey => true %>
```

Nick Cage has another option -- `:crazy` -- to render *crazy* images of Nick
Cage (which are approximately 50% of all images of Nick Cage).

```erb
<%= fill_murray :person => 'Nick', :ratio => '9:1', :crazy => true %>
```

A couple notes to consider:

* `:crazy` will not work if `:person => 'Nick'` has not been specified.
* `:grey` will always override `:crazy`. You may not pass both options.

#### Attributes

You can send some HTML attributes to the image tag:

* `alt` : adds alternate attribute to image tag
* `class` : adds class(es) to image tag

```erb
<%= fill_murray :grey => true, :class => "panoramic" %>
```

## The Future

Have an idea for adding something other subjects? Or maybe more options? Send me
a note.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
