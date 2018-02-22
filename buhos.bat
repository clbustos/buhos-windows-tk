@echo on

:: Tell Bundler where the Gemfile and gems are.
::set "BUNDLE_GEMFILE=%~dp0\lib\vendor\Gemfile"
::set BUNDLE_IGNORE_CONFIG=
set "RACK_ENV=production"
start /max http://localhost:4567
:: Run the actual app using the bundled Ruby interpreter, with Bundler activated.
@"%~dp0\lib\ruby-2.4.3-1-x86\bin\ruby.exe" -E UTF-8 -C "%~dp0\lib\buhos" -rbundler/setup "%~dp0\lib\buhos\app.rb"
