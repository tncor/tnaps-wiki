#!/usr/bin/ruby
#
require 'rubygems'
require 'curb'
require 'rio' 

name = ARGV[0]
yuml_name = name + ".yuml"
img_name = name + ".png"

def get_file_as_string(filename)
	data = ''
	f = File.open(filename, "r") 
	f.each_line do |line|
		data += line
	end
	
	return data
end

# POST DSL up to yUML
#c = Curl::Easy.new("http://yuml.me/diagram/scruffy/class/")
c = Curl::Easy.new("http://yuml.me/diagram/scruffy;dir:LR;scale:80;/class/")
c.multipart_form_post = true
file_data = get_file_as_string yuml_name
c.http_post(Curl::PostField.content("dsl_text",file_data))

# Grab the ID, and then download img and save to disk
img_id = c.body_str
img = "http://yuml.me/#{img_id}"
rio(img) > rio(img_name) 
