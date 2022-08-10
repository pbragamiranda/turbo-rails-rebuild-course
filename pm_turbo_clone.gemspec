require_relative "lib/pm_turbo_clone/version"

Gem::Specification.new do |spec|
  spec.name        = "pm_turbo_clone"
  spec.version     = PmTurboClone::VERSION
  spec.authors     = ["pbragamiranda"]
  spec.email       = ["pbragamiranda@pm.cme"]
  spec.summary     = "PM Turbo Clone."
  spec.license     = "MIT"
  
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.0"
end
