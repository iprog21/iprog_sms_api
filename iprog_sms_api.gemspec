require_relative "lib/iprog_sms_api/version"

Gem::Specification.new do |spec|
  spec.name          = "iprog_sms_api"
  spec.version       = IprogSmsApi::VERSION
  spec.authors       = ["Jayson Presto"]
  spec.email         = ["jaysonpresto.iprog21@gmail.com"]

  spec.summary       = %q{A simple Ruby client for the IPROG SMS API}
  spec.description   = %q{Easily send SMS and check credits from sms.iprogtech.com via Ruby.}
  spec.homepage      = "https://sms.iprogtech.com/"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"]
  spec.require_paths = ["lib"]

  spec.metadata["homepage_uri"]        = spec.homepage
  spec.metadata["source_code_uri"]     = "https://github.com/iprog21/iprog_sms_api.git"
  spec.metadata["changelog_uri"]       = "https://github.com/iprog21/iprog_sms_api/blob/master/CHANGELOG.md"
  spec.metadata["code_of_conduct_uri"] = "https://github.com/iprog21/iprog_sms_api/blob/main/CODE_OF_CONDUCT.md"


  spec.add_runtime_dependency "json"
end
