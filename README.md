# API:Suomi 2.0
API:Suomi yhteisön nykyinen web syntyi PoC:na yhtenä kesälomana (2014) kun ajatuksena oli vain kokeilla nopeasti että miten voisi tehdä minimivaivalla testin siitä tarvitaanko Suomessa tällaista "palvelua". No sittemmin kävi ilmi, että tarvitaan. Sisältöä käytetään osana opetusta korkeakouluissa ja jatkuvasti "kompakti" listaus rajapinnoista keikkuu kävijälistan suosikkina. Sisältöä API:Suomi webiin on kertynyt yli 100 artikkelia. Yhteisöllä on Facebook -ryhmässä kompakti mutta ajoittain aktiivinen reilun 200 -hengen porukka teknologiasta ja busineksesta kiinnostuneita ihmisiä. 

Nyt on aika ottaa seuraava askel ja pistää palvelu uusiksi. Tällä kertaa toisin työkaluin ja eri otteella. Nostetaan API:SUomi -yhteisön profiilia kun signaaleja on tullut sen puolesta niin julkisen kuin yksityisenkin sektorin suunnasta. 

## Kansallinen katalogi ja itsepalvelupiste
API:Suomen API-katalogi tulee perustumaan harvestointiin ja avoimen lähdekoodin hallintaratkaisuun. API-hallinnan pohjana tullaan käyttämään apinf.io palvelua. Sen avulla 
* kehittäjät voivat ottaa itsepalvelutyyppisesti (avoimet) rajapinnat käyttöön 24/7. 
* API:en omistajat (yksityinen henkilö, yhdistys, yritys, julkinen sektori) voi lisätä omat rajapintapalvelunsa kehittäjien käyttöön 24/7. 

API-hallinta apinf.io sisältää myös API-katalogin. Lisäksi kehittäjät voivat antaa API:n omistajalle palautetta antamalla palvelulle tähtiä tai lähettämällä palautetta. API:en omistajat voivat palvelussa julkaista oman backloginsa jos niin tahtovat tarjoten näin API:en hyödyntäjille suuntaa-antavaa tietoa rajapintapalvelun kehittämisestä.  

### Yritysten API:t mukaan

Lisätään tarjontaa ja siten kiihdytetään palvelukehitystä, dialogia API:en omistajien ja käyttäjien välillä ja luodaan kilpailua. Tarkoitus on saattaa julkisen ja yksityisen sektorin API:en tiedot yhteen ja saada siten tietoa yhteen pisteeseen. API:a hyödyntävän kehittäjän kannalta on aivan sama onko rajapintapalvelu yksityisen vai julkisen sektorin kehittämä tai ylläpitämä. 

Yksityisen sektorin toimijat ovat tervetulleita tuomaan palveluun suljetut, maksulliset ja avoimet rajapintapalvelunsa. Kehittäjät päättävät mitä käytetään jos on useita samantyyppisiä. Yrityksien kohdalla suljettujen API:en tuominen palveluun edellyttää palvelusopimusta ja nimellistä vuosimaksua. Raha käytetään palvelun ylläpitoon ja kehittämiseen. Yrityksille API:Suomi palvelusta tulee paikka näkyä ja päästä kehittäjien "iholle". 

### Palveluväylän API:t mukaan

Kansallisen palveluväylän rajapintapalvelujen metatiedot tuodaan harvestoimalla liityntäkatalogista. Siinä ei kuulemma vielä ole julkista rajapintaa API:en metatietojen kyselyyn, mutta kuulemma tulee jos tarvitaan. No mielellään tulisi ettei tarvitse screen scrapeta. Palveluväylän rajapintapalveluja ei hallita API:Suomi -yhteisön käyttämässä API-hallinnassa, mutta saamme kuitenkin tiedon rajapintapalveluista avoimien palveluiden rinnalle. Palveluväylän rajapintapalvelujen kohdalla kehittäjä ohjataan kysymään käyttöoikeutta palveluväylän kautta. Lähtökohtaisesti yksittäinen henkilö ei niitä saane kuitenkaan käyttöönsä. 

### Kaupunkien ja muiden yhteisöjen API-hallinnat mukaan

6Aika -hankkeen puitteissa näyttäisi siltä, että kaupungeille syntyy omat API-hallinnat. No niin tai näin, on perusteltua olettaa että API-hallintapisteitä tulee lisää. Ajatus on harvestoida API:en metatiedot joko rajapintojen kautta (jos kohdealustasta löytyy) tai screen scrape -tekniikalla API:Suomi katalogiin. Useat API-hallinnat sisältää rajapinnat tätä varten. 

## Artikkelit

Suositut API:en kehittämiseen liittyvät artikkelit ja API-talouteen ja hyviin käytäntöihin liittyvät jutut kirjoitetaan edelleen jollain blogimoottorilla joka voisi olla nyt joku muu kuin Wordpress. Koska API:Suomi katalogin pohjaksi on valittu apinf.io ratkaisu, jonka frontend on rakennettu Meteor -alustan päälle, olisi luontevaa tehdä blogimoottorikin saman alustan päälle vaikkakin sitten omana instanssina. 

API:Suomi palvelusta tehdään entistä enemmän ykköspaikka julkaista uusien rajapintapalvelujen ilmoitukset, julkisen sektorin API:en kehittämiseen liittyvien asioiden julkaisupaikka ja kanava. Niin kuin ennenkin, kehittäjille paikka kertoa oman palvelukehityksensä tarina tai kokemukset eri teknologioista. 

## Tapahtumat

API:Suomi palveluun tulee mahdollisuus ilmoittaa API-tapahtumista yhtä reittiä koko API-yhteisölle. API:Suomi yhteisön päätapahtumaksi tulee API Days Nordic, joka pidetään kerran vuodessa. Tämän päätapahtuman lisäksi pidetään toki muitakin tapahtumia yhteistyössä julkisen ja yksityisen sektorin kanssa. 

## Suomi SDK
API:Suomi palvelusta tulee de facto paikka digitaalisten palvelujen kehittäjille, jotka käyttävät rajapintoja osana palveluaan. Toisin sanoen 95% kaikista digitaalisten palvelujen kehittäjistä. Palveluun tehdään kehittäjäystävällinen koottu näkymä erilaisiin palvelujen kehittämisessä olennaisiin oppaisiin, manifesteihin ja oppaisiin. Suomi SDK elää ja muuttuu yhteisön syötteiden kautta. 
