.PHONY: build
build:
	bundle exec ruby build.rb

.PHONY: serve
serve: build
	cd build && bundle exec ruby -rwebrick -e'WEBrick::HTTPServer.new(:Port => 8000, :DocumentRoot => Dir.pwd).start'
