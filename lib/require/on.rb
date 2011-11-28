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

require 'require/extra'
require 'refining'

module Kernel
  RequireWatch = Hash.new {|hash, key|
    hash[key] = []
  }

  def on_require (name, &block)
    if required?(name)
      block.call(name)
    else
      RequireWatch[name] << block
    end
  end; alias on_required on_require

  refine_method :require, :prefix => '__extra' do |path|
    __extra_require(path).tap {
      RequireWatch.any? {|name, blocks|
        if required?(name, [path])
          blocks.each {|block|
            block.call(name)
          }

          RequireWatch.delete(name)
        end
      }
    }
  end
end
