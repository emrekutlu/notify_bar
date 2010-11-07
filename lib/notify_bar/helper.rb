module NotifyBar
	module Helper
	
		def notify_bar opts = {}
			opts.reverse_merge! :flash => :notice					

			html = ''
			
			Array.wrap(opts[:flash]).each do |f|
				if html = flash[f]
					opts[:cls] ||= f.to_s
					break
				end
			end

			if html.blank?
				''
			else
				javascript_tag do
					"$(document).ready(function() {
						#{notify_bar_js html, opts}
					});"
				end
			end
			
		end

		def notify_bar_js html, opts = {}
			opts.reverse_merge! :delay => 2000, :animation_speed => 'normal', :close => false, :cls => 'notice'
			%($(function () {
					$.notifyBar({
						html: '#{escape_javascript(html)}',
						delay: #{opts[:delay]},
						animationSpeed: "#{opts[:animation_speed]}",
						cls: "#{opts[:cls]}",
						close: #{opts[:close].to_s}
						});
					});
			)
		end

	end
end