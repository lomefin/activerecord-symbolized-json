# ActiverecordSymbolizedJson
When you use a JSON datatype with postgres in your project, the result is a stringified version of the hash, which translate to constant key transformations.
This allows you to just declare the column in your model and replaces the accesor method to a symbol keyed hash

## Usage

If you want to declare a column as json in a Rails project you can do so in a Migration

```bash
$ rails g migration AddDataToModel data:json
```

Then on your model you can add the `symbolized_json` with the name of the columns that you wish to read as symbolized hashes

```ruby

class Model

  symbolized_json :data

```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'activerecord_symbolized_json'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install activerecord_symbolized_json
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
