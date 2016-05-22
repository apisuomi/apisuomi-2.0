#!/usr/bin/ruby


require_relative "includes/xroad-harvester"
#require_relative "includes/database"
require 'mongo'

#################################################################
## GET JSON list of X-Road services and process them
#################################################################

# create new instance
harvester = XroadHarvester.new
# get entries as array
xroadentries = harvester.get_xroad_service_list() 
#xroadrevisions = harvester.get_xroad_service_revision_list()
# process each
#puts "revision list: "
#puts xroadrevisions

Mongo::Logger.logger.level = Logger::WARN
# db = Mongo::Client.new(@client_host, @client_options)
db = Mongo::Client.new(["localhost:27017"], :database => 'apisuomi', :user => 'apisuomi', :password => 'develop')
xroadapis = db[:xroadapis, :capped => false]
#xroadapis.create

xroadentries.each do |i|
       	entry = harvester.get_xroad_service_details(i)
	puts "\n----------- ENTRY -----------\n"
	newname = entry["result"]["results"][0]["name"]
	puts newname
	xroadapis.insert_one({
		name: newname
	})
end

#db.xroadapis.each { |name| puts name }
