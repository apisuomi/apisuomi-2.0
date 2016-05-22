require 'rest-client'
require 'json'
 
class XroadHarvester 
	def initialize
         	@search_url = "https://liityntakatalogi.suomi.fi/api/3/action/package_search?q="
		@list_url = "https://liityntakatalogi.suomi.fi/api/3/action/package_list"
		@rev_url = "https://liityntakatalogi.suomi.fi/api/3/action/revision_list"
       	end

	def get_xroad_service_details(name)
	# return JSON object with details
		url = @search_url + name
		response = RestClient.get(url)
        	ret = JSON.parse(response)
		# TODO check if valid
		return ret
	end

	def get_xroad_service_list()
	# returns JSON array
		content = RestClient.get(@list_url)
		case content.code
		when 200  
			response = JSON.parse(content)
			arraylist = response["result"]	
			return arraylist
		when 403
			return content
		end
	end

	def get_xroad_service_revision_list()
		RestClient.get(@rev_url){ |response, request, result, &block|
			case response.code
                	when 200
                        	res = JSON.parse(response)
                        	arraylist = res["result"]
                        	return arraylist
                	when 403
                        	return response
                	end
		}

        end

end 

