#API:Suomi 2.0 harvester app 

* get meta data of public APIs from X-Road (Finland) and store in shared database (API:Suomi catalogue)
* enable harvesting of other API-catalogues with RSS feed or metadata API. 
* enable timing configuration of each source harvesting
* collect log of operations
* User interfaces: API and UI

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

```javascript

{"help": "https://liityntakatalogi.suomi.fi/api/3/action/help_show?name=package_search", "success": true, "result": {"count": 1, "sort": "score desc, metadata_modified desc", "facets": {}, "results": [{"license_title": null, "maintainer": "V\u00e4est\u00f6rekisterikeskus", "validSince": "2015-11-18", "relationships_as_object": [], "private": false, "maintainer_email": "vtjkysely@vrk.fi", "num_tags": 12, "id": "323f998c-a6e5-4990-9bbe-7421a0aa9884", "metadata_created": "2015-11-17T12:36:34.038382", "metadata_modified": "2015-11-18T14:26:27.648021", "author": null, "author_email": null, "state": "active", "version": null, "license_id": null, "type": "dataset", "resources": [{"validSince": "2015-11-18", "cache_last_updated": null, "package_id": "323f998c-a6e5-4990-9bbe-7421a0aa9884", "service_status": {"fi": "", "en": "", "sv": ""}, "webstore_last_updated": null, "availability": {"fi": "", "en": "", "sv": ""}, "size": null, "chargeability": "maybe", "id": "4cc13525-3842-4262-8175-faab0d4296c7", "environment": "test", "state": "active", "type": {"fi": "", "en": "", "sv": ""}, "hash": "", "description": {"fi": "VTJkysely Sovelluskysely \"Henkil\u00f6tunnuksella haku\" WSDL-kuvaus", "en": "", "sv": ""}, "format": "WSDL", "connection_information": {"fi": "", "en": "", "sv": ""}, "mimetype_inner": null, "url_type": "upload", "response_time": "", "mimetype": null, "cache_url": null, "name": "SoSoAdapterService", "created": "2015-11-17T15:16:26.092504", "url": "https://liityntakatalogi.suomi.fi/dataset/323f998c-a6e5-4990-9bbe-7421a0aa9884/resource/4cc13525-3842-4262-8175-faab0d4296c7/download/sosoadapterservice60.wsdl", "webstore_url": null, "last_modified": "2015-11-17T13:16:25.935184", "position": 0, "revision_id": "15ef71b8-e1a0-470a-a0eb-5f365bbf2a46", "sla": {"fi": "", "en": "", "sv": ""}, "resource_type": null}, {"validSince": "2015-11-18", "cache_last_updated": null, "package_id": "323f998c-a6e5-4990-9bbe-7421a0aa9884", "service_status": {"fi": "", "en": "", "sv": ""}, "webstore_last_updated": null, "availability": {"fi": "", "en": "", "sv": ""}, "size": null, "chargeability": "maybe", "id": "2774529c-8c68-42b2-b782-d990f5da1260", "environment": "production", "state": "active", "type": {"fi": "", "en": "", "sv": ""}, "hash": "", "description": {"fi": "T\u00e4m\u00e4 skeema kuvaa henkil\u00f6tiedoissa esiintyv\u00e4t XML-tietotyypit mahdollisine arvoineen.", "en": "", "sv": ""}, "format": "XSD", "connection_information": {"fi": "", "en": "", "sv": ""}, "mimetype_inner": null, "url_type": "upload", "response_time": "", "mimetype": null, "cache_url": null, "name": "VTJ Sovelluskyselyn henkil\u00f6tietokatalogi", "created": "2015-11-17T14:40:56.424490", "url": "https://liityntakatalogi.suomi.fi/dataset/323f998c-a6e5-4990-9bbe-7421a0aa9884/resource/2774529c-8c68-42b2-b782-d990f5da1260/download/vtjhenkilotiedotkatalogi.xsd", "webstore_url": null, "last_modified": "2015-11-18T08:08:15.671695", "position": 1, "revision_id": "15ef71b8-e1a0-470a-a0eb-5f365bbf2a46", "sla": {"fi": "", "en": "", "sv": ""}, "resource_type": null}, {"cache_last_updated": null, "package_id": "323f998c-a6e5-4990-9bbe-7421a0aa9884", "service_status": {"fi": "", "en": "", "sv": ""}, "webstore_last_updated": null, "availability": {"fi": "", "en": "", "sv": ""}, "size": null, "chargeability": "maybe", "id": "1cf44fbe-0e56-4d7c-8f66-d2a983ab8f3e", "environment": "production", "state": "active", "type": {"fi": "", "en": "", "sv": ""}, "hash": "", "description": {"fi": "Henkil\u00f6tunnuksella kysely tehd\u00e4\u00e4n k\u00e4ytt\u00e4m\u00e4ll\u00e4 WSDL-kuvauksessa olevaa TeeHenkilonTunnusKysely \u2013 metodia.\r\n \r\nPakolliset hakuparametrit ovat SoSoNimi, Kayttajatunnus, Salasana, Loppukayttaja ja Henkilotunnus. \r\n\r\nSoSoNimi on V\u00e4est\u00f6rekisterikeskuksen (VRK) kanssa tietoluvassa sovittu palvelun nimi.\r\n\r\n Kayttajatunnus ja Salasana ovat palveluun oikeuttavat tunnukset, jotka annetaan asiakkaalle tietolupap\u00e4\u00e4t\u00f6ksen j\u00e4lkeen. \r\n\r\nLoppukayttaja \u2013tietona on l\u00e4hett\u00e4v\u00e4 varsinaisen kyselyn tekij\u00e4n yksil\u00f6iv\u00e4 tunnistetieto (max. 50 merkki\u00e4).\r\n\r\nTunnistetiedon perusteella asiakkaan on pystytt\u00e4v\u00e4 selvitt\u00e4m\u00e4\u00e4n VRK:lle viisi vuotta kyselyhetkest\u00e4 eteenp\u00e4in kuka kyselyn on tehnyt.", "en": "", "sv": ""}, "format": "XML", "connection_information": {"fi": "", "en": "", "sv": ""}, "mimetype_inner": null, "url_type": "upload", "response_time": "", "mimetype": null, "cache_url": null, "name": "Hakuparametrit", "created": "2015-11-17T14:57:50.715832", 

```

