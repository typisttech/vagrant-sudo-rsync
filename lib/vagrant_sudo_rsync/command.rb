require 'open3'

module VagrantSudoRsync
  class Command < Vagrant.plugin('2', :command)
    def self.synopsis
      "run rsync command with sudo and necessary SSH config"
    end

    def execute
      ARGV.shift

      command = [
          "rsync",
          "--rsh='#{rsh}'",
          "--rsync-path='sudo rsync'",
          ARGV
      ].join(' ')

      system(command)
    end

    private

    def rsh
      'ssh '.concat(capture("echo '#{vagrant_ssh_config_without_host}' | awk -v ORS=' ' 'NF {print \"-o \" $1 \"=\" $2}'"))
    end

    def vagrant_ssh_config_without_host
      capture("echo '#{vagrant_ssh_config}' | grep -v '^Host '")
    end

    def vagrant_ssh_config
      capture('vagrant ssh-config')
    end

    def capture(command)

      stdout, stderr, status = Open3.capture3(command)

      unless status.success?
        @env.ui.error(stderr)
        raise CLIInvalidUsage
      end

      stdout
    end
  end
end
