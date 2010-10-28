require 'fileutils'

js_filename		= 'jquery.notifyBar.js'
css_filename	= 'jquery.notifyBar.css'
current_dir		= File.dirname __FILE__
js_dest_path	= File.join(current_dir, "..#{File::SEPARATOR}..#{File::SEPARATOR}..#{File::SEPARATOR}", 'public', 'javascripts', js_filename)
css_dest_path	= File.join(current_dir, "..#{File::SEPARATOR}..#{File::SEPARATOR}..#{File::SEPARATOR}", 'public', 'stylesheets', css_filename)

if File.exists? js_dest_path
	p 'CANNOT COPY JAVASCRIPT FILE.'
	p 'Please copy the file in RAILS_ROOT/vendor/plugins/notify_bar/public/javascripts to RAILS_ROOT/public/javascripts manually'
else
	FileUtils.cp File.join(current_dir, 'public', 'javascripts', js_filename), js_dest_path
	p 'Javascript file copied!'
end

if File.exists? css_dest_path
	p 'CANNOT COPY CSS FILE.'
	p 'Please copy the file in RAILS_ROOT/vendor/plugins/notify_bar/public/stylesheets to RAILS_ROOT/public/stylesheets manually'
else
	FileUtils.cp File.join(current_dir, 'public', 'stylesheets', css_filename), css_dest_path
	p 'CSS file copied!'
end
