require 'rbconfig'
begin
  case RbConfig::CONFIG['MAJOR']
  when '2'
    if RbConfig::CONFIG['MINOR'] == '0'
      if RbConfig::CONFIG['arch'] =~ /x64/i
        require File.join(File.dirname(__FILE__), 'ruby2_64/win32/api')
      else
        require File.join(File.dirname(__FILE__), 'ruby2_32/win32/api')
      end
    end

    if RbConfig::CONFIG['MINOR'] == '1'
      if RbConfig::CONFIG['arch'] =~ /x64/i
        require File.join(File.dirname(__FILE__), 'ruby21_64/win32/api')
      else
        require File.join(File.dirname(__FILE__), 'ruby21_32/win32/api')
      end
    end

    if RbConfig::CONFIG['MINOR'] == '2'
      if RbConfig::CONFIG['arch'] =~ /x64/i
        require File.join(File.dirname(__FILE__), 'ruby22_64/win32/api')
      else
        require File.join(File.dirname(__FILE__), 'ruby22_32/win32/api')
      end
    end

    if RbConfig::CONFIG['MINOR'] == '3'
      if RbConfig::CONFIG['arch'] =~ /x64/i
        require File.join(File.dirname(__FILE__), 'ruby23_64/win32/api')
      else
        require File.join(File.dirname(__FILE__), 'ruby23_32/win32/api')
      end
    end

    if RbConfig::CONFIG['MINOR'] == '4'
      if RbConfig::CONFIG['arch'] =~ /x64/i
        require File.join(File.dirname(__FILE__), 'ruby24_64/win32/api')
      else
        require File.join(File.dirname(__FILE__), 'ruby24_32/win32/api')
      end
    end

    if RbConfig::CONFIG['MINOR'] == '5'
      if RbConfig::CONFIG['arch'] =~ /x64/i
        require File.join(File.dirname(__FILE__), 'ruby25_64/win32/api')
      else
        require File.join(File.dirname(__FILE__), 'ruby25_32/win32/api')
      end
    end

    if RbConfig::CONFIG['MINOR'] == '6'
      if RbConfig::CONFIG['arch'] =~ /x64/i
        require File.join(File.dirname(__FILE__), 'ruby26_64/win32/api')
      else
        require File.join(File.dirname(__FILE__), 'ruby26_32/win32/api')
      end
    end

  end
rescue LoadError
  require File.join(File.dirname(__FILE__), '../../ext/api')
end
