@echo on

:: Tell Bundler where the Gemfile and gems are.
::set "BUNDLE_GEMFILE=%~dp0\lib\vendor\Gemfile"
::set BUNDLE_IGNORE_CONFIG=


:: Run the actual app using the bundled Ruby interpreter, with Bundler activated.
@"%~dp0\lib\ruby-2.4.3-1-x86\bin\rerun.bat" -- @"%~dp0\lib\ruby-2.4.3-1-x86\bin\ruby.exe" -E UTF-8 -C "%~dp0\..\buhos" -rbundler/setup "%~dp0../buhos\app.rb"
