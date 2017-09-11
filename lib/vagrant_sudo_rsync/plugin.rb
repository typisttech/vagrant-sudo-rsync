module VagrantSudoRsync
  class Plugin < Vagrant.plugin("2")
    name Identity.name

    command 'sudo-rsync' do
      require_relative 'command'
      Command
    end
  end
end
