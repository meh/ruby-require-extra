Additional methods related to #require
======================================

You can check if something has been required.

```ruby
require 'require/extra'
require 'thread'

required? 'thread' # => true
```

Or you can execute some code when something is required.

```ruby
require 'require/on'

on_require 'thread' do
  puts 'thread required'
end
```
