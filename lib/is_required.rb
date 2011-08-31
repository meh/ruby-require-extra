#--
#           DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                   Version 2, December 2004
#
#  Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
#
#           DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#  TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

module Kernel
  def required? (name, from=$")
    regexp = /(\A|\/)#{Regexp.escape(name)}(\.([sS][oO]|[rR][bB]))?$/

    from.any? {|file|
      file =~ regexp
    }
  end

  alias is_required? required?
end
