require 'ripl'
module Ripl
  module Padrino
    VERSION = '0.0.1'
    
    def before_loop
      load_padrino
      super
    end

    def load_padrino
      boot_path = File.join(Dir.pwd,'config/boot.rb')
      ENV["PADRINO_ENV"] ||= ARGV.first
      ENV["RACK_ENV"] = ENV["PADRINO_ENV"] # Also set this for middleware
      unless File.exist?(boot_path)
        puts "=> Could not find boot file in: #{boot_path} !!!"
        raise SystemExit
      else
        require File.join(Dir.pwd,'config/boot.rb')
        puts "=> Loading #{ENV["PADRINO_ENV"]} console (Padrino v.#{::Padrino.version})"
        # Load apps
        ::Padrino.mounted_apps.each do |app|
          puts "=> Loading Application #{app.app_class}"
          app.app_obj.setup_application!
        end
      end
    end

  end
end

Ripl::Shell.send :include, Ripl::Padrino if defined? Ripl::Padrino