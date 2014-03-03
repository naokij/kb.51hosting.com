#!/usr/bin/env ruby
ENV['ldap_host'] = 'ad.northwind.com'
ENV['ldap_port'] = '3268'
ENV['ldap_base'] = 'DC=northwind,DC=com'
ENV['ldap_uid'] = 'sAMAccountName'
ENV['ldap_bind_dn'] = 'CN=ldap helper,OU=northwind.com,DC=northwind,DC=com'
ENV['ldap_password'] = 'password'

require 'rubygems'
require 'rack'
require 'gollum/app'

gollum_path = File.expand_path(File.dirname(__FILE__)) # CHANGE THIS TO POINT TO YOUR OWN WIKI REPO
Precious::App.set(:gollum_path, gollum_path)
Precious::App.set(:default_markup, :markdown) # set your favorite markup language
Precious::App.set(:wiki_options, {:universal_toc => false, :allow_uploads => true, :per_page_uploads => false})
Gollum::Page.send :remove_const, :FORMAT_NAMES if defined? Gollum::Page::FORMAT_NAMES
# limit to one format
Gollum::Page::FORMAT_NAMES = { :markdown  => "Markdown" }
run Precious::App