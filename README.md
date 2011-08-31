Additional methods related to #require
======================================

You can check if something has been required.

```ruby
require 'is_required'
require 'thread'

required? 'thread' # => true
```

Or you can execute some code when something is required.

```ruby
require 'on_require'

on_require 'thread' do
  puts 'thread required'
end
```
