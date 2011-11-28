Gem::Specification.new {|s|
	s.name         = 'require-extra'
	s.version      = '0.0.2.1'
	s.author       = 'meh.'
	s.email        = 'meh@paranoici.org'
	s.homepage     = 'http://github.com/meh/ruby-require-extra'
	s.platform     = Gem::Platform::RUBY
	s.summary      = 'Some extra methods having to do with #require'
	s.files        = Dir.glob('lib/**/*.rb')
	s.require_path = 'lib'

	s.add_dependency 'refining'
}
