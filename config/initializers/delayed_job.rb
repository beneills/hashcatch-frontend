Delayed::Worker.destroy_failed_jobs = false

# explicitly require daemon stuff
require 'pathname'
require File.absolute_path(Pathname.new('#{Rails.root}/../../daemon/lib/daemon.rb').cleanpath.to_s)
