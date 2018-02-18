@echo on

:: Tell Bundler where the Gemfile and gems are.
::set "BUNDLE_GEMFILE=%~dp0\lib\vendor\Gemfile"
::set BUNDLE_IGNORE_CONFIG=

:: Run the actual app using the bundled Ruby interpreter, with Bundler activated.
@"%~dp0\lib\ruby-2.2.6-i386-mingw32\bin\rerun.bat" -- @"%~dp0\lib\ruby-2.2.6-i386-mingw32\bin\ruby.exe" -E UTF-8 -C "%~dp0\lib\buhos" -rbundler/setup "%~dp0\lib\buhos\app.rb"
