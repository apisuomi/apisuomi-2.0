#!/usr/bin/ruby


require_relative "includes/xroad-harvester"
require_relative "includes/database"
require 'mongo'


include Mongo

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

xroadentries.each do |i|
       entry = harvester.get_xroad_service_details(i)
       puts entry
end

Mongo::Logger.logger.level = Logger::WARN
client = Mongo::Client.new(@client_host, @client_options)
