#API:Suomi 2.0 harvester app 

* get meta data of public APIs from X-Road (Finland) and store in shared database (API:Suomi catalogue)
* enable harvesting of other API-catalogues with RSS feed or metadata API. 
* enable timing configuration of each source harvesting
* collect log of operations
* Own database
* User interfaces: API and UI
* Provide method for public/community to add single API to catalogue via API and GUI

## Development notes

### Get meta data about X-Road APIs

API list from url:
* https://liityntakatalogi.suomi.fi/api/3/action/help_show?name=package_list, which returns:

```
{"help":
"https://liityntakatalogi.suomi.fi/api/3/action/help_show?name=package_list", "success": true, "result": ["vtjkysely-sovelluskysely-hetuhaku"]}
```
It is assumed that above resultset will be comma separated array of API identifiers (for example: vtjkysely-sovelluskysely-hetuhaku)

API details in JSON format can be obtained with: 
* https://liityntakatalogi.suomi.fi/api/3/action/package_search?q=vtjkysely-sovelluskysely-hetuhaku
