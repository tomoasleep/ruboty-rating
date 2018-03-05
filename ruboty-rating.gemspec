# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/rating/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-rating"
  spec.version       = Ruboty::Rating::VERSION
  spec.authors       = ["Tomoya Chiba"]
  spec.email         = ["tomo.asleep@gmail.com"]

  spec.summary       = "A ruboty plugin to score your game results and calculate elo ratings"
  spec.homepage      = "https://github.com/tomoasleep/ruboty-rating"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "elo_rating", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
