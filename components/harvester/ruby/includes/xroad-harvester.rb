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
		RestClient.get(url){ |response, request, result, &block|
			case response.code
                        when 200
                                res = JSON.parse(response)
                                return res
                        when 403
                                return response
                        end
                }

	end

	def get_xroad_service_list()
	# returns JSON array
		RestClient.get(@list_url){ |response, request, result, &block|
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

