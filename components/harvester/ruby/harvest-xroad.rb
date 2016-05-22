#!/usr/bin/ruby

require_relative "includes/xroad-harvester.rb"

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

