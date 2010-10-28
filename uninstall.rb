require 'fileutils'

js_filename		= 'jquery.notifyBar.js'
css_filename	= 'jquery.notifyBar.css'
current_dir		= File.dirname __FILE__
js_dest_path	= File.join(current_dir, "..#{File::SEPARATOR}..#{File::SEPARATOR}..#{File::SEPARATOR}", 'public', 'javascripts', js_filename)
css_dest_path	= File.join(current_dir, "..#{File::SEPARATOR}..#{File::SEPARATOR}..#{File::SEPARATOR}", 'public', 'stylesheets', css_filename)

if File.exists? js_dest_path
	FileUtils.rm js_dest_path
	p 'Javascript file removed!'
end

if File.exists? css_dest_path
	FileUtils.rm css_dest_path
	p 'CSS file removed!'
end