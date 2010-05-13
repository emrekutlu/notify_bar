module NotifyBar
	module Helper
	
		def notify_bar opts = {}
			opts.reverse_merge! :flash => :notice,
				:delay => 2000, :animation_speed => 'normal', :close => false			

			html = ''
			
			Array.wrap(opts[:flash]).each do |f|
				if html = flash[f]
					opts[:cls] ||= f.to_s
					break
				end
			end

			unless html.blank?
				javascript_tag do
					notify_bar_js html, opts
				end
			end
			
		end

		def notify_bar_js html, opts = {}
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