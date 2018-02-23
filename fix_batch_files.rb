require 'fileutils'
Dir.glob("lib/ruby-2.4.3-1-x86/bin/*.bat").each do |file|
	out=""
	FileUtils.cp file, "#{file}.bak" if !File.exist? "#{file}.bak"
	file_text=File.read(file)
	puts file
	puts "----"
	out=[]
	file_text.each_line do |line|
	    if line=~/@".+ruby.exe"\s+".+\/(.+)"/
			puts line
			res=line.gsub(/@".+ruby.exe"\s+".+\/(.+)"/, "@\"%~dp0ruby.exe\" \"%~dp0\\1\"")
			puts res
			out.push res
		elsif line=~/@".:.+ruby.exe"/
			puts line
			res=line.gsub(/@".+ruby.exe"/, "@\"%~dp0ruby.exe\"")
			puts res
			out.push res
		else
			out.push line
		end
	end
	File.open(file,"wb") {|fp|
		fp.write out.join("\n")
	}
end