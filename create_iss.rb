# Create iss file
require 'erb'

load("../buhos/version.rb")
buhos_version=Buhos::VERSION

renderer = ERB.new(File.read("buhos_install.erb"))
#puts renderer.result
File.open("buhos_install.iss","wb") {|fp|
	fp.write renderer.result()
}