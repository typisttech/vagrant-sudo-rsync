# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "vagrant_sudo_rsync/identity"

Gem::Specification.new do |spec|
  spec.name          = VagrantSudoRsync::Identity.name
  spec.version       = VagrantSudoRsync::Identity.version
  spec.authors       = ["Tang Rufus", "Typist Tech"]
  spec.email         = ["tangrufus@gmail.com", "vagrant-sudo-rsync@typist.tech"]

  spec.summary       = %q{Copy files from/to a Vagrant VM with sudo and necessary SSH config}
  spec.homepage      = "https://www.typist.tech/projects/vagrant-sudo-rsync"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version     = "~> 2.2", "< 2.4"
  spec.required_rubygems_version = ">= 1.3.6"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 12.1"
  spec.add_development_dependency "rubocop", "~> 0.49"
end
