
NotifyBar
=========

NotifyBar uses [Dmitri Smirnov's jQuery plugin](http://github.com/dknight/jQuery-Notify-bar) to create
Twitter like notifications for Rails. It uses flash messages.
You can visit [Dmitri's website](http://www.dmitri.me/misc/notify/) to see demos of jQuery plugin.

Installation
============

    script/plugin install git://github.com/emrekutlu/notify_bar.git

Usage
=====

Add necessary javascript and css files to your layout.

    <%= stylesheet_link_tag 'jquery.notifyBar' %>
    <%= javascript_include_tag 'jquery.notifyBar' %>

Add notify_bar helper in body.

    <%= notify_bar %>

By default notifyBar displays flash[:notice]. If you use a different key, you can specify it with :flash option.

    <%= notify_bar :flash => :success %>

To use multiple keys :

    <%= notify_bar :flash => [:notice, :success] %>

If multiple keys exist, notify_bar try to find in order they added. Just displays the first one found, not all of them.

NotifyBar tries to be compatible with jQuery-Notify-bar. It uses the same options except _html_ and _jqObject_ .
It doesn't accept _html_ because it uses flash messages to create it. It doesn't accept _jqObject_ because I don't know what to do with it :)

An example with all options:

    <%= notify_bar :flash => [:notice, :success], :delay => 2500, :animation_speed => 'slow', :close => true, :cls => 'notify' %>

[Visit here](http://www.dmitri.me/misc/notify/) to see the explanations of the options.
One special note for _cls_ , if _cls_ is not assigned _flash_ option is used for _cls_ .

Copyright (c) 2010 [İ. Emre Kutlu](http://www.emrekutlu.com), released under the MIT license
