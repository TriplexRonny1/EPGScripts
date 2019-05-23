#!/usr/bin/perl -w

###########################################
# CONVERT any TVGidś NAMES INTO RYTEC IDs #
#                                         #
# takealug.de                             #
# github.com/DeBaschdi                    #
# github.com/sunsettrack4                 #
###########################################

my %REPLACE=(

#   ▼TVG ID▼                        ▼EPG ID▼

    "Das Erste"			=>			"ARD.de" ,
    "ZDF"				=>			"ZDF.de" ,
    "RTL"				=>			"RTL.de" ,
    "SAT.1"				=>			"Sat1.de" ,
    "ProSieben"			=>			"Pro7.de" ,
    "VOX"				=>			"Vox.de" ,
    "kabel eins"		=>			"Kabel.de" ,
    "RTL II"			=>			"RTL2.de" ,
    "Super RTL"			=>			"SuperRTL.de" ,
    "KiKA"				=>			"Kika.de" ,
    "3sat"				=>			"3sat.de" ,
    "WELT"				=>			"WELT.de" ,
    "n-tv"				=>			"ntv.de" ,
    "PHOENIX"			=>			"phoenix.de" ,
    "Tele 5"			=>			"Tele5.de" ,
    "zdf_neo"			=>			"ZDFneo.de" ,
    "BR Süd"			=>			"BR.de" ,
    "hr"				=>			"HR.de" ,
    "MDR Sachsen"		=>			"MDRSachsen.de" ,
    "NDR"				=>			"ndrnds.de" ,
    "Radio Bremen TV"	=>			"RadioBremen.de" ,
    "rbb Berlin"		=>			"rbbBerlin.de" ,
    "SR"				=>			"SRFernsehen.de" ,
    "SWR BW"			=>			"SWR.de" ,
    "SWR RP"			=>			"SWR-rp.de" ,
    "WDR"				=>			"WDR.de" ,
    "SPORT1"			=>			"Sport1HD.de" ,
    "Sky Sport News"	=>			"SkySportNewsHD.de" ,
    "ARTE"				=>			"ARTE.de" ,
    "ONE"				=>			"One.de" ,
    "Anixe"				=>			"Anixe.de" ,
    "Comedy Central"	=>			"ComedyCentral/VIVA.de" ,
    "Disney Channel"	=>			"disneychannel.de" ,
    "DMAX"				=>			"DMax.de" ,
    "eoTV"				=>			"eoTV.de" ,
    "ProSieben MAXX"	=>			"ProSiebenMaxx.de" ,
    "NITRO"				=>			"RTLNitro.de" ,
    "RTLplus"			=>			"RTLPlus.de" ,
    "SAT.1 GOLD"		=>			"Sat1Gold.de" ,
    "Servus TV DE"		=>			"ServusHD.de" ,
    "sixx"				=>			"Sixx.de" ,
    "TLC"				=>			"TLC.de" ,
    "TOGGO plus"		=>			"TOGGOplus.de" ,
    "Zee.One"			=>			"ZeeOne.de" ,
    "ARD-alpha"			=>			"ARD-alpha.de" ,
    "Bibel TV"			=>			"BibelTV.de" ,
    "DW"				=>			"DeutscheWelleDE.de" ,
    "EuroN D"			=>			"EuronewsDE.nws" ,
    "K TV"				=>			"KTV.de" ,
    "kabel eins Doku"	=>			"KabelEinsDoku.de" ,
    "N24 Doku"			=>			"N24Doku.de" ,
    "tagesschau24"		=>			"tagesschau24.de" ,
    "Welt der Wunder"	=>			"WeltDerWunder.de" ,
    "ZDFinfo"			=>			"ZDFinfo.de" ,
    "Deluxe Music"		=>			"DeLuxeMusic.de" ,
    "Viva"				=>			"ComedyCentral/Viva.de" ,
    "Nick/MTV+"			=>			"Nickelodeon.de" ,
    "MTV"				=>			"MTVGermany.de" ,
    "MTV Live"			=>			"MTVLiveHD.eu" ,
    "MTV Dance"			=>			"MTVDance.eu" ,
    "MTV Brand Neu"		=>			"MTVBrandNew.nl" ,
    "MTV Rocks"			=>			"MTVRocks.eu" ,
    "MTV Hits"			=>			"MTVHits.eu" ,
    "MTV Music 24"		=>			"MTVMusic.eu" ,
    "HSE 24"			=>			"HSE24.de" ,
    "QVC"				=>			"QVC.de" ,
    "sonnenklar.TV"		=>			"SonnenKlar.de" ,
    "Magenta Musik 1"	=>			"MagentaMusik1.de" ,
    "Magenta Musik 2"	=>			"MagentaMusik2.de" ,
    "Magenta Musik 3"	=>			"MagentaMusik3.de" ,
    "13TH STREET"		=>			"13thStreet.de" ,
    "AXN"				=>			"AXN.de" ,
    "Disney Cinemagic"	=>			"DisneyCinemagic.de" ,
    "FOX"				=>			"FOX.de" ,
    "kabel eins Classics"	=>			"KabelEinsClassic.de" ,
    "Kinowelt TV"		=>			"Kinowelt.de" ,
    "ProSieben FUN"		=>			"ProSiebenFun.de" ,
    "RTL Crime"			=>			"RTLCrime.de" ,
    "Syfy"				=>			"SciFi.de" ,
    "TNT Comedy"		=>			"TNTComedy.de" ,
    "TNT Film"			=>			"TNTFilm.de" ,
    "TNT Serie"			=>			"TNTSerie.de" ,
    "Universal TV"		=>			"Universal.de" ,
    "Baby TV"			=>			"BabyTV.uk" ,
    "Boomerang"			=>			"Boomerang.de" ,
    "Cartoon Network"	=>			"CartoonNetwork.de" ,
    "Disney XD"			=>			"DisneyXD.de" ,
    "Disney Junior"		=>			"DisneyJunior.de" ,
    "Nick Jr."			=>			"NickJr.de" ,
    "BonGusto"			=>			"BonGusto.de" ,
    "E! Entertainment"	=>			"EEntertainment.de" ,
    "Fashion TV"		=>			"FashionTV.eu" ,
    "Heimatkanal"		=>			"Heimatkanal.de" ,
    "RTL Passion"		=>			"RTLPassion.de" ,
    "Romance TV"		=>			"Romance.de" ,
    "RTL Living"		=>			"RTLLiving.de" ,
    "SAT.1 emotions"	=>			"Sat1Comedy.de" ,
    "Sony Channel"		=>			"SonyEntertainmentTV.de" ,
    "wetter.com TV"		=>			"Wetterfernsehen.de" ,
    "Animal Planet"		=>			"AnimalPlanet.de" ,
    "A&amp;E"			=>			"AandE.de" ,
    "Discovery Channel"	=>			"DiscoveryChannel.de" ,
    "GEO"				=>			"GEOTV.de" ,
    "HISTORY"			=>			"History.de" ,
    "National Geographic"	=>			"NatGeo.de" ,
    "National Geographic WILD"	=>			"NatGeoWild.de" ,
    "Planet"			=>			"PLANET.de" ,
    "Spiegel TV Wissen"	=>			"SpiegelTV.de" ,
    "auto motor und sport"	=>			"AutoMotorSport.de" ,
    "Eurosport 1"		=>			"Eurosport1.de" ,
    "Eurosport 2"		=>			"Eurosport2.de" ,
    "EUROSPORT 2 HD XTRA"	=>			"Eurosport2Xtra.de" ,
    "Eurosport360 HD 1"	=>			"Eurosport360HD1.de" ,
    "Eurosport360 HD 2"	=>			"Eurosport360HD2.de" ,
    "Eurosport360 HD 3"	=>			"Eurosport360HD3.de" ,
    "Eurosport360 HD 4"	=>			"Eurosport360HD4.de" ,
    "Eurosport360 HD 5"	=>			"Eurosport360HD5.de" ,
    "Eurosport360 HD 6"	=>			"Eurosport360HD6.de" ,
    "Eurosport360 HD 7"	=>			"Eurosport360HD7.de" ,
    "Eurosport360 HD 8"	=>			"Eurosport360HD8.de" ,
    "Eurosport360 HD 9"	=>			"Eurosport360HD9.de" ,
    "Extreme Sports"	=>			"ExtremeSports.de" ,
    "MOTORVISION.TV"	=>			"MotorVision.de" ,
    "SPORT1+"			=>			"SPORT1Plus.de" ,
    "eSPORTS1"			=>			"Sport1US.de" ,
    "sportdigital"		=>			"sportdigital.de" ,
    "RCK TV"			=>			"RCKTV.de" ,
    "Trace Urban"		=>			"TraceUrban.fr" ,
    "MyTeam TV - Basketball 1"			=>			"MyTeamTVBasketball1.de" ,
    "MyTeam TV - Basketball 2"			=>			"MyTeamTVBasketball2.de" ,
    "MyTeam TV - Basketball 3"			=>			"MyTeamTVBasketball3.de" ,
    "Liveübertragungen der BBL-Spiele 4-9"		=>			"BBLLive.de" ,
    "MyTeam TV - Eishockey 1"			=>			"MyTeamTVEishockey1.de" ,
    "MyTeam TV - Eishockey 2"			=>			"MyTeamTVEishockey2.de" ,
    "MyTeam TV - Eishockey 3"			=>			"MyTeamTVEishockey3.de" ,
    "MyTeam TV - Eishockey 4"			=>			"MyTeamTVEishockey4.de" ,
    "MyTeam TV - Eishockey 5"			=>			"MyTeamTVEishockey5.de" ,
    "MyTeam TV - Eishockey 6"			=>			"MyTeamTVEishockey6.de" ,
    "MyTeam TV - Eishockey 7"			=>			"MyTeamTVEishockey7.de" ,
    "FC BAYERN.TV LIVE"			=>			"FCBayernTV.de" ,
    "Sky Sport Kompakt 1"		=>			"SkySportKompakt1.de" ,
    "Sky Sport Kompakt 2"		=>			"SkySportKompakt2.de" ,
    "Sky Sport Kompakt 3"		=>			"SkySportKompakt3.de" ,
    "Sky Sport Kompakt 4"		=>			"SkySportKompakt4.de" ,
    "Sky Sport Kompakt 5"		=>			"SkySportKompakt5.de" ,
    "MyTeam TV - Fußball 1"		=>			"MyTeamTVFussball1.de" ,
    "MyTeam TV - Fußball 2"		=>			"MyTeamTVFussball2.de" ,
    "MyTeam TV - Fußball 3"		=>			"MyTeamTVFussball3.de" ,
    "MyTeam TV - Fußball 4"		=>			"MyTeamTVFussball4.de" ,
    "MyTeam TV - Fußball 5"		=>			"MyTeamTVFussball5.de" ,
    "MyTeam TV - Fußball 6"		=>			"MyTeamTVFussball6.de" ,
    "MyTeam TV - Fußball 7"		=>			"MyTeamTVFussball7.de" ,
    "Weitere Liveübertragungen der 3. Liga"		=>			"FussballLiga3.de" ,
    "ran FIGHTING TV"	=>			"ranFIGHTING.de" ,
    "Regio TV"			=>			"regioTV.de" ,
    "RNF"				=>			"RNF.de" ,
    "RNFplus"			=>			"RNFplus.de" ,
    "a.tv"				=>			"a.tv.de" ,
    "allgüu.tv"			=>			"allguuTV.de" ,
    "BR Nord"			=>			"BRNord.de" ,
    "Donau TV"			=>			"DonauTV.de" ,
    "Franken Fernsehen"	=>			"FrankenTV.de" ,
    "intv"				=>			"intv.de" ,
    "ISAR TV"			=>			"ISARTV.de" ,
    "main.tv"			=>			"maintv.de" ,
    "münchen.tv"		=>			"MunchenTV.de" ,
    "Oberpfalz TV"		=>			"OberpfalzTV.de" ,
    "RFO"				=>			"Oberbayern.de" ,
    "SAT.1 Bayern"		=>			"Sat1Bayern.de" ,
    "TRP1"				=>			"TRP1.de" ,
    "TV Oberfranken"	=>			"tvo.de" ,
    "TV Mainfranken Schweinfurt"	=>			"TVMainfrankenS.de" ,
    "TV Mainfranken Würzburg"	=>			"TVMainfrankenW.de" ,
    "TVA Ostbayern"		=>			"TVA.de" ,
    "ALEX Berlin"		=>			"ALEXberlin.de" ,
    "Potsdam TV"		=>			"PotsdamTV.de" ,
    "tv.berlin"			=>			"TVBerlin.de" ,
    "rbb Brandenburg"	=>			"rbbBrandenburg.de" ,
    "RTL HB NDS"		=>			"RTLHBNDS.de" ,
    "SAT.1 NDS Bremen"	=>			"Sat1HBNDS.de" ,
    "Hamburg 1"			=>			"Hamburg1.de" ,
    "NDR Hamburg"		=>			"ndr.de" ,
    "NDR Schleswig-Holstein"	=>			"ndrsh.de" ,
    "RTL HH SH"			=>			"RTLHHSH.de" ,
    "SAT.1 HH SH"		=>			"Sat1HHSH.de" ,
    "OF-TV"				=>			"oftv.de" ,
    "Rhein-Main TV"		=>			"rheinmaintv.de" ,
    "RTL Hessen"		=>			"RTLHessen.de" ,
    "NDR Mecklenburg-Vorpommern"	=>			"ndrmv.de" ,
    "CityVision"		=>			"CityVision.de" ,
    "nrwision"			=>			"nrwision.de" ,
    "RTL NRW"			=>			"RTLNRW.de" ,
    "SAT.1 NRW"			=>			"Sat1NRW.de" ,
    "Studio 47"			=>			"Studio47.de" ,
    "WDR Aachen"		=>			"WDRAachen.de" ,
    "WDR Bielefeld"		=>			"WDRBielefeld.de" ,
    "WDR Bonn"			=>			"WDRBonn.de" ,
    "WDR Dortmund"		=>			"WDRDortmund.de" ,
    "WDR Duisburg"		=>			"WDRDuisburg.de" ,
    "WDR Düsseldorf"	=>			"WDRDuesseldorf.de" ,
    "WDR Essen"			=>			"WDREssen.de" ,
    "WDR Münster"		=>			"WDRMuenster.de" ,
    "WDR Siegen"		=>			"WDRSiegen.de" ,
    "WDR Wuppertal"		=>			"WDRWuppertal.de" ,
    "DRF1"				=>			"DRF1.de" ,
    "OK4"				=>			"OK4.de" ,
    "OK54 Trier"		=>			"OK54.de" ,
    "OK Weinstraüe"		=>			"OKWeinstraue.de" ,
    "OK-TV Ludwigshafen"	=>			"OKTV-L.de" ,
    "OK:TV Mainz"		=>			"OKTV-M.de" ,
    "SAT.1 RhlPf Hessen"	=>			"Sat1RPHessen.de" ,
    "TV Mittelrhein"	=>			"TVM.de" ,
    "WWTV"				=>			"WWTV.de" ,
    "Chemnitz Fernsehen"	=>			"ChemnitzTV.de" ,
    "Dresden Fernsehen"		=>			"DresdenTV.de" ,
    "Leipzig Fernsehen"		=>			"LeipzigTV.de" ,
    "TV Westsachsen"		=>			"TVWestsachsen.de" ,
    "MDR Sachsen-Anhalt"	=>			"MDRS-Anhalt.de" ,
    "MDR Thüringen"		=>			"MDRThuringen.de" ,
    "Rennsteig.TV"		=>			"RennsteigTV.de" ,
    "salve.tv"			=>			"salvetv.de" ,
    "Sky 1"				=>			"Sky1.de" ,
    "SkyArts"			=>			"SkyArts.de" ,
    "SkyAtlantic"		=>			"SkyAtlanticHD.de" ,
    "Fox"				=>			"Fox.de" ,
    "Spiegel Geschichte"	=>			"SpiegelGeschichte.de" ,
    "SkyKrimi"			=>			"SkyKrimi.de" ,
    "Classica"			=>			"Classica.eu" ,
    "Jukebox"			=>			"Jukebox.de" ,
    "Junior"			=>			"Junior.de" ,
    "Sky Cinema"		=>			"SkyCinema.de" ,
    "Sky Cinema +1"		=>			"SkyCinemaPlus1.de" ,
    "Sky Cinema +24"	=>			"SkyCinemaPlus24.de" ,
    "Sky Cinema Hits"	=>			"SkyCinemaHits.de" ,
    "Sky Cinema Action"	=>			"SkyAction.de" ,
    "Sky Cinema Family"	=>			"SkyCinemaFamily.de" ,
    "Sky Cinema Comedy"	=>			"SkyComedy.de" ,
    "Sky Cinema Emotion"	=>			"SkyEmotion.de" ,
    "SKY ARTS"			=>			"SKYARTS.de" ,
    "Sky Krimi"			=>			"SKYKrimi.de" ,
    "Sky Cinema Nostalgie"		=>			"SkyNostalgie.de" ,
    "Sky Sport Bundesliga 1"	=>			"SkyBundesliga.de" ,
    "Sky Sport Bundesliga 2"	=>			"SkyBundesliga2.de" ,
    "Sky Sport Bundesliga 3"	=>			"SkyBundesliga3.de" ,
    "Sky Sport Bundesliga 4"	=>			"SkyBundesliga4.de" ,
    "Sky Sport Bundesliga 5"	=>			"SkyBundesliga5.de" ,
    "Sky Sport Bundesliga 6"	=>			"SkyBundesliga6.de" ,
    "Sky Sport Bundesliga 7"	=>			"SkyBundesliga7.de" ,
    "Sky Sport Bundesliga 8"	=>			"SkyBundesliga8.de" ,
    "Sky Sport Bundesliga 9"	=>			"SkyBundesliga9.de" ,
    "Sky Sport Bundesliga 10"	=>			"SkyBundesliga10.de" ,
    "Sky Bundesliga UHD"		=>			"SkyBundesligaUHD.de" ,
    "Sky Sport 1"		=>			"SkySport1.de" ,
    "Sky Sport 2"		=>			"SkySport2.de" ,
    "Sky Sport 3"		=>			"SkySport3.de" ,
    "Sky Sport 4"		=>			"SkySport4.de" ,
    "Sky Sport 5"		=>			"SkySport5.de" ,
    "Sky Sport 6"		=>			"SkySport6.de" ,
    "Sky Sport 7"		=>			"SkySport7.de" ,
    "Sky Sport 8"		=>			"SkySport8.de" ,
    "Sky Sport 9"		=>			"SkySport9.de" ,
    "Sky Sport 10"		=>			"SkySport10.de" ,
    "Sky Sport 11"		=>			"SkySport11.de" ,
    "Sky Sport UHD"		=>			"SkySportUHD.de" ,
    "Dazn 1 Bar"		=>			"Dazn1.de" ,
    "Dazn 2 Bar"		=>			"Dazn2.de" ,
    "Xite"				=>			"XITE.de" ,
    "travelxp 4K"		=>			"TravelXP.eu" ,
    "Sky Sport Austria"	=>			"SkySportAustria.de" ,
    "ORF eins"			=>			"ORF1.at" ,
    "ORF 2 Wien"		=>			"ORF2.at" ,
    "ORF III"			=>			"ORF3.at" ,
    "ORF Sport"			=>			"ORFSport.at" ,
    "ATV"				=>			"ATV.de" ,
    "ATV II"			=>			"ATV2.at" ,
    "PULS 4"			=>			"Puls4.at" ,
    "W24"				=>			"W24.at" ,
    "R9"				=>			"R9.at" ,
    "OKTO"				=>			"OKTO.at" ,
    "UPC Infokanal"		=>			"UPCinfo.at" ,
    "oe24TV"			=>			"oe24.at" ,
    "Tirol TV"			=>			"TirolTV.at" ,
    "KT 1"				=>			"KT1.at" ,
    "Ländle TV"			=>			"LandleTV.at" ,
    "Schau TV"			=>			"SchauTV.at" ,
    "Servus TV AT"		=>			"ServusTV.at" ,
    "gotv"				=>			"go.tv" ,
    "Nickelodeon"		=>			"Nickelodeon.at" ,
    "Teleclub Zoom D"	=>			"TCZoom.ch" ,
    "SRF 1"				=>			"SRF1.ch" ,
    "SRF zwei"			=>			"SRF2.ch" ,
    "SRF info"			=>			"SRFinfo.ch" ,
    "3+"				=>			"3plus.ch" ,
    "4+"				=>			"4plus.ch" ,
    "5+"				=>			"5plus.ch" ,
    "6+"				=>			"6plus.ch" ,
    "Puls 8"			=>			"Puls8.ch" ,
    "Arte Deutsch"		=>			"Arte.de" ,
    "TV24"				=>			"TV24.ch" ,
    "S1"				=>			"S1.ch" ,
    "TV25"				=>			"TV25.ch" ,
    "Tele Züri"			=>			"TeleZuri.ch" ,
    "Tele Bärn"			=>			"TeleBaern.ch" ,
    "Tele M1"			=>			"TeleM1.ch" ,
    "Tele 1"			=>			"Tele1.ch" ,
    "Telebasel"			=>			"Telebasel.ch" ,
    "TVO"				=>			"TVO.ch" ,
    "Tele Top"			=>			"TeleTop.ch" ,
    "TV Südostschweiz"	=>			"TSO.ch" ,
    "Tele Z"			=>			"TeleZ.ch" ,
    "Kanal 9"			=>			"Kanal9.ch" ,
    "Tele Bielingue"	=>			"TeleBielingue.ch" ,
    "Schaffhauser Fernsehen"	=>			"SchaffhauserFernsehen.ch" ,
    "Servus TV"			=>			"ServusTV.de" ,
    "Swiss 1"			=>			"Swiss1.ch" ,
    "Star TV"			=>			"StarTV.ch" ,
    "RTL Plus"			=>			"RTLPlus.de" ,
    "Channel 55"		=>			"Channel55.ch" ,
    "SR Fernsehen"		=>			"SR-Fernsehen.de" ,
    "RIC TV"			=>			"RiC.de" ,
    "Session National Council"	=>			"SessionNationalCouncil.ch" ,
    "Session Council Of States"	=>			"SessionCouncilOfStates.ch" ,
    "Energy TV"			=>			"Energy.ch" ,
    "The Box"			=>			"TheBox.uk" ,
    "Kerrang!"			=>			"Kerrang.uk" ,
    "Chart Show TV"		=>			"ChartShowTV.uk" ,
    "Clubland TV"		=>			"ClublandTV.uk" ,
    "Box Upfront"		=>			"BoxUpfront.uk" ,
    "Kiss TV"			=>			"KissTV.uk" ,
    "Now 90s"			=>			"ChilledTV.uk" ,
    "Deutsches Musik Fernsehen"		=>			"DeutschesMusikFernsehen.de" ,
    "Pilatus Beatz"		=>			"PilatusBeatz.ch" ,
    "Alpenland TV"		=>			"AlpenlandTV.ch" ,
    "CCONE"				=>			"CCONE.ch" ,
    "musig24"			=>			"musig24.ch" ,
    "folx.tv"			=>			"FolxTV.de" ,
    "MelodieTV"			=>			"MelodieTV.at" ,
    "Stingray Festival 4K UHD"		=>			"StingrayFestival.fr" ,
    "Schweiz 5"			=>			"SCHWEIZ5.ch" ,
    "Wetter.TV"			=>			"Wetterfernsehen.ch" ,
    "Game TV"			=>			"GameTV.ch" ,
    "TV4TNG"			=>			"TV4TNG.ch" ,
    "Televista"			=>			"Televista.ch" ,
    "Info TV Davos Klosters"	=>			"InfoTVDavosKlosters.ch" ,
    "TV Rheintal"		=>			"TVRheintal.ch" ,
    "Bodensee TV"		=>			"BodenseeTV.de" ,
    "Tele Zentralschweiz"	=>			"TeleZentralschweiz.ch" ,
    "Tele D"			=>			"TeleD.ch" ,
    "R9 Österreich"		=>			"R9Osterreich.at" ,
    "TV Oberwallis"		=>			"TVOberwallis.at" ,
    "regioTVplus"		=>			"regioTVplus.ch" ,
    "Loly TV"			=>			"LolyTV.ch" ,
    "ALF-TV"			=>			"ALF-TV.ch" ,
    "K-TV"				=>			"K-TV.de" ,
    "Hope Channel"		=>			"HopeChannel.de" ,
    "Al Jazeera English"	=>			"AlJazeera.nws" ,
    "Bloomberg TV"		=>			"Bloomberg.nws" ,
    "DW Englisch"		=>			"DeutscheWelleEN.de" ,
    "esportsTV"			=>			"eSportsTV.eu" ,
    "UHD1 by ASTRA UHD"	=>			"UHD1ASTRA.tv" ,
    "Vision TV"			=>			"VisionTV.ch" ,
    "Teleclub Cinema"	=>			"TCCinema.ch" ,
    "Teleclub Action"	=>			"TCAction.ch" ,
    "Teleclub Emotion"	=>			"TCEmotion.ch" ,
    "Teleclub City"		=>			"TCCity.ch" ,
    "Teleclub Retro"	=>			"TCRetro.ch" ,
    "Teleclub Cinemax"	=>			"TCCinemax.ch" ,
    "Teleclub Xtra D"	=>			"TCXtra.ch" ,
    "GEO Television"	=>			"GeoTV.de" ,
    "Chelsea TV"		=>			"ChelseaTV.uk" ,
    "MUTV"				=>			"MUTV.uk" ,
    "Stingray iConcerts"	=>			"StingrayIconcerts.eu" ,
    "Stingray Classica D"	=>			"CLASSICA.eu" ,
    "Planet D"			=>			"Planet.de" ,
    "VH1 Italy"			=>			"VH1.it" ,
    "Teleclub Sport 1"	=>			"TCSport1.ch" ,
    "Teleclub Sport 2"	=>			"TCSport2.ch" ,
    "Teleclub Sport Live 1"		=>			"TCSportLive1.ch" ,
    "Teleclub Sport Live 2"		=>			"TCSportLive2.ch" ,
    "Teleclub Sport Live 3"		=>			"TCSportLive3.ch" ,
    "Teleclub Sport Live 4"		=>			"TCSportLive4.ch" ,
    "Teleclub Sport Live 5"		=>			"TCSportLive5.ch" ,
    "Teleclub Sport Live 6"		=>			"TCSportLive6.ch" ,
    "Teleclub Sport Live 7"		=>			"TCSportLive7.ch" ,
    "Teleclub Sport Live 8"		=>			"TCSportLive8.ch" ,
    "Teleclub Sport Live 9"		=>			"TCSportLive9.ch" ,
    "Teleclub Sport Live 10"	=>			"TCSportLive10.ch" ,
    "Teleclub Sport Live 11"	=>			"TCSportLive11.ch" ,
    "Teleclub Sport Live 12"	=>			"TCSportLive12.ch" ,
    "Teleclub Sport Live 13"	=>			"TCSportLive13.ch" ,
    "Teleclub Sport Live 14"	=>			"TCSportLive14.ch" ,
    "Teleclub Sport Live 15"	=>			"TCSportLive15.ch" ,
    "Teleclub Sport Live 16"	=>			"TCSportLive16.ch" ,
    "Teleclub Sport Live 17"	=>			"TCSportLive17.ch" ,
    "Teleclub Sport Live 18"	=>			"TCSportLive18.ch" ,
    "Teleclub Sport Live 19"	=>			"TCSportLive19.ch" ,
    "Teleclub Sport Live 20"	=>			"TCSportLive20.ch" ,
    "Teleclub Sport Live 21"	=>			"TCSportLive21.ch" ,
    "Teleclub Sport Live 22"	=>			"TCSportLive22.ch" ,
    "Teleclub Sport Live 23"	=>			"TCSportLive23.ch" ,
    "Teleclub Sport Live 24"	=>			"TCSportLive24.ch" ,
    "Teleclub Sport Live 25"	=>			"TCSportLive25.ch" ,
    "Teleclub Sport Live 26"	=>			"TCSportLive26.ch" ,
    "Teleclub Sport Live 27"	=>			"TCSportLive27.ch" ,
    "Teleclub Sport Live 28"	=>			"TCSportLive28.ch" ,
    "Teleclub Sport Live 29"	=>			"TCSportLive29.ch" ,
    "Teleclub Sport Live 30"	=>			"TCSportLive30.ch" ,
    "Teleclub Sport Live 31"	=>			"TCSportLive31.ch" ,
    "Teleclub Sport Live 32"	=>			"TCSportLive32.ch" ,
    "Teleclub Sport Live 33"	=>			"TCSportLive33.ch" ,
    "Teleclub Sport Live 34"	=>			"TCSportLive34.ch" ,
    "Teleclub Sport Live 35"	=>			"TCSportLive35.ch" ,
    "Teleclub Sport Live 36"	=>			"TCSportLive36.ch" ,
    "Teleclub Sport Live 37"	=>			"TCSportLive37.ch" ,
    "Teleclub Sport Live 38"	=>			"TCSportLive38.ch" ,
    "Teleclub Sport Live 39"	=>			"TCSportLive39.ch" ,
    "Teleclub Sport Live 1 UHD"		=>			"TCSportLive1UHD.ch" ,
    "Teleclub Sport Live 2 UHD"		=>			"TCSportLive2UHD.ch" ,
    "Teleclub Sport Live 3 UHD"	=>			"TCSportLive3UHD.ch" ,
    "Teleclub Sport Live 4 UHD"		=>			"TCSportLive4UHD.ch" ,
    "Teleclub Sports"			=>			"TCSports.ch" ,
    "Teleclub Sports Live 1"	=>			"TCSportsLive1.ch" ,
    "Teleclub Sports Live 2"	=>			"TCSportsLive2.ch" ,
    "Teleclub Sports Live 3"	=>			"TCSportsLive3.ch" ,
    "Teleclub Sports Live 4"	=>			"TCSportsLive4.ch" ,
    "Teleclub Sports Live 5"	=>			"TCSportsLive5.ch" ,
    "Teleclub Sports Live 6"	=>			"TCSportsLive6.ch" ,
    "Teleclub Sports Live 7"	=>			"TCSportsLive7.ch" ,
    "Teleclub Sports Live 8"	=>			"TCSportsLive8.ch" ,
    "Teleclub Sports Live 9"	=>			"TCSportsLive9.ch" ,
    "Teleclub Sports Live 10"	=>			"TCSportsLive10.ch" ,
    "Teleclub Sports Live 11"	=>			"TCSportsLive11.ch" ,
    "Teleclub Sports Live 12"	=>			"TCSportsLive12.ch" ,
    "Teleclub Sports Live 13"	=>			"TCSportsLive13.ch" ,
    "Teleclub Sports Live 14"	=>			"TCSportsLive14.ch" ,
    "Teleclub Sports Live 15"	=>			"TCSportsLive15.ch" ,
    "Teleclub Sports Live 16"	=>			"TCSportsLive16.ch" ,
    "Teleclub Sports Live 17"	=>			"TCSportsLive17.ch" ,
    "Teleclub Sports Live 18"	=>			"TCSportsLive18.ch" ,
    "Teleclub Sports Live 19"	=>			"TCSportsLive19.ch" ,
    "Teleclub Sports Live 20"	=>			"TCSportsLive20.ch" ,
    "Teleclub Sports Live 21"	=>			"TCSportsLive21.ch" ,
    "Teleclub Sports Live 22"	=>			"TCSportsLive22.ch" ,
    "Teleclub Sports Live 23"	=>			"TCSportsLive23.ch" ,
    "Teleclub Sports Live 24"	=>			"TCSportsLive24.ch" ,
    "Teleclub Sports Live 25"	=>			"TCSportsLive25.ch" ,
    "Teleclub Sports Live 26"	=>			"TCSportsLive26.ch" ,
    "Teleclub Sports Live 27"	=>			"TCSportsLive27.ch" ,
    "Teleclub Sports Live 28"	=>			"TCSportsLive28.ch" ,
    "Teleclub Sports Live 29"	=>			"TCSportsLive29.ch" ,
    "Teleclub Sports Live 30"	=>			"TCSportsLive30.ch" ,
    "Teleclub Sports Live 31"	=>			"TCSportsLive31.ch" ,
    "Teleclub Sports Live 32"	=>			"TCSportsLive32.ch" ,
    "Teleclub Sports Live 33"	=>			"TCSportsLive33.ch" ,
    "Teleclub Sports Live 1 UHD"	=>			"TCSportsLive1UHD.ch" ,
    "Teleclub Sports Live 2 UHD"	=>			"TCSportsLive2UHD.ch" ,
    "Teleclub Sports Live 3 UHD"	=>			"TCSportsLive3UHD.ch" ,
    "Teleclub Sports Live 4 UHD"	=>			"TCSportsLive4UHD.ch" ,
    "Teleclub Sport Event 1"	=>			"TCSportEvent1.ch" ,
    "Teleclub Sport Event 2"	=>			"TCSportEvent2.ch" ,
    "Teleclub Sport Event 3"	=>			"TCSportEvent3.ch" ,
    "Teleclub Sport Event 4"	=>			"TCSportEvent4.ch" ,
    "Teleclub Sport Event 5"	=>			"TCSportEvent5.ch" ,
    "Teleclub Sport Event 6"	=>			"TCSportEvent6.ch" ,
    "Teleclub Sport Event 7"	=>			"TCSportEvent7.ch" ,
    "Teleclub Sport Event 8"	=>			"TCSportEvent8.ch" ,
    "Teleclub Sport Event 9"	=>			"TCSportEvent9.ch" ,
    "Teleclub Sport Event 10"	=>			"TCSportEvent10.ch" ,
    "Teleclub Sport Event 11"	=>			"TCSportEvent11.ch" ,
    "Teleclub Sport Event 12"	=>			"TCSportEvent12.ch" ,
    "Teleclub Sport Event 13"	=>			"TCSportEvent13.ch" ,
    "Teleclub Sport Event 14"	=>			"TCSportEvent14.ch" ,
    "Teleclub Sport Event 15"	=>			"TCSportEvent15.ch" ,
    "Teleclub Sport Event 16"	=>			"TCSportEvent16.ch" ,
    "Teleclub Sport Event 17"	=>			"TCSportEvent17.ch" ,
    "Teleclub Sport Event 18"	=>			"TCSportEvent18.ch" ,
    "Teleclub Sport Event 19"	=>			"TCSportEvent19.ch" ,
    "Teleclub Sport Event 20"	=>			"TCSportEvent20.ch" ,
    "Teleclub Sport Event 21"	=>			"TCSportEvent21.ch" ,
    "Teleclub Sport Event 22"	=>			"TCSportEvent22.ch" ,
    "Teleclub Sport Event 23"	=>			"TCSportEvent23.ch" ,
    "Teleclub Sport Event 24"	=>			"TCSportEvent24.ch" ,
    "Teleclub Sport Event 25"	=>			"TCSportEvent25.ch" ,
    "Teleclub Sport Event 26"	=>			"TCSportEvent26.ch" ,
    "Teleclub Sport Event 27"	=>			"TCSportEvent27.ch" ,
    "Teleclub Sport Event 28"	=>			"TCSportEvent28.ch" ,
    "Teleclub Sport Event 29"	=>			"TCSportEvent29.ch" ,
    "Teleclub Sport Event 30"	=>			"TCSportEvent30.ch" ,
    "Teleclub Sport Event 31"	=>			"TCSportEvent31.ch" ,
    "Teleclub Sport Event 32"	=>			"TCSportEvent32.ch" ,
    "Teleclub Sport Event 33"	=>			"TCSportEvent33.ch" ,
    "Teleclub Sport Event 34"	=>			"TCSportEvent34.ch" ,
    "Teleclub Sport Event 35"	=>			"TCSportEvent35.ch" ,
    "Teleclub Sport Event 36"	=>			"TCSportEvent36.ch" ,
    "Teleclub Sport Event 37"	=>			"TCSportEvent37.ch" ,
    "Teleclub Sport Event 38"	=>			"TCSportEvent38.ch" ,
    "Teleclub Sport Event 39"	=>			"TCSportEvent39.ch" ,
    "Teleclub Sports Event 1"	=>			"TCSportsEvent1.ch" ,
    "Teleclub Sports Event 2"	=>			"TCSportsEvent2.ch" ,
    "Teleclub Sports Event 3"	=>			"TCSportsEvent3.ch" ,
    "Teleclub Sports Event 4"	=>			"TCSportsEvent4.ch" ,
    "Teleclub Sports Event 5"	=>			"TCSportsEvent5.ch" ,
    "Teleclub Sports Event 6"	=>			"TCSportsEvent6.ch" ,
    "Teleclub Sports Event 7"	=>			"TCSportsEvent7.ch" ,
    "Teleclub Sports Event 8"	=>			"TCSportsEvent8.ch" ,
    "Teleclub Sports Event 9"	=>			"TCSportsEvent9.ch" ,
    "Teleclub Sports Event 10"	=>  		"TCSportsEvent10.ch" ,
    "Teleclub Sports Event 11"	=>			"TCSportsEvent11.ch" ,
    "Teleclub Sports Event 12"	=>			"TCSportsEvent12.ch" ,
    "Teleclub Sports Event 13"	=>			"TCSportsEvent13.ch" ,
    "Teleclub Sports Event 14"	=>			"TCSportsEvent14.ch" ,
    "Teleclub Sports Event 15"	=>			"TCSportsEvent15.ch" ,
    "Teleclub Sports Event 16"	=>			"TCSportsEvent16.ch" ,
    "Teleclub Sports Event 17"	=>			"TCSportsEvent17.ch" ,
    "Teleclub Sports Event 18"	=>			"TCSportsEvent18.ch" ,
    "Teleclub Sports Event 19"	=>			"TCSportsEvent19.ch" ,
    "Teleclub Sports Event 20"	=>			"TCSportsEvent20.ch" ,
    "Teleclub Sports Event 21"	=>			"TCSportsEvent21.ch" ,
    "Teleclub Sports Event 22"	=>			"TCSportsEvent22.ch" ,
    "Teleclub Sports Event 23"	=>			"TCSportsEvent23.ch" ,
    "Teleclub Sports Event 24"	=>			"TCSportsEvent24.ch" ,
    "Teleclub Sports Event 25"	=>			"TCSportsEvent25.ch" ,
    "Teleclub Sports Event 26"	=>			"TCSportsEvent26.ch" ,
    "Teleclub Sports Event 27"	=>			"TCSportsEvent27.ch" ,
    "Teleclub Sports Event 28"	=>			"TCSportsEvent28.ch" ,
    "Teleclub Sports Event 29"	=>			"TCSportsEvent29.ch" ,
    "Teleclub Sports Event 30"	=>			"TCSportsEvent30.ch" ,
    "Teleclub Sports Event 31"	=>			"TCSportsEvent31.ch" ,
    "Teleclub Sports Event 32"	=>			"TCSportsEvent32.ch" ,
    "Teleclub Sports Event 33"	=>			"TCSportsEvent33.ch" ,
    "Teleclub Sport Event 1 UHD"	=>			"TCSportEvent1UHD.ch" ,
    "Teleclub Sport Event 2 UHD"	=>			"TCSportEvent2UHD.ch" ,
    "Teleclub Sport Event 3 UHD"	=>			"TCSportEvent3UHD.ch" ,
    "Teleclub Sport Event 4 UHD"	=>			"TCSportEvent4UHD.ch" ,
    "Teleclub Sports Event 1 UHD"	=>			"TCSportsEvent1UHD.ch" ,
    "Teleclub Sports Event 2 UHD"	=>			"TCSportsEvent2UHD.ch" ,
    "Teleclub Sports Event 3 UHD"	=>			"TCSportsEvent3UHD.ch" ,
    "Teleclub Sports Event 4 UHD"	=>			"TCSportsEvent4UHD.ch" ,
    
    
    "Lust pur"			=>			"LustPur.de" ,
    "Penthouse 1"			=>			"PenthouseHD1de.ero" ,
    "Penthouse 2"			=>			"PenthouseHD2de.ero" ,
    "Playboy Europe"	=>			"PlayboyTV.ero" ,
    "Beate-Uhse.TV"		=>			"BeateUhse.de" ,
    "XXL" =>			"XXLfull.ero" ,
    "Dorcel TV" =>			"Dorcel.ero" ,
    "Private TV" =>			"PrivateTV.ero" ,
    "Blue Hustler"		=>			"BlueHustler.ero" ,
    "Hustler TV"		=>			"HustlerTV.ero" ,
    "Evil Angel TV"		=>			"EvilAngelTV.ero" ,
    "Vivid RED"		=>			"VividRed.ero" ,
    "Vivid Touch"		=>			"VividTouch.ero" ,
    "DUSK" =>			"DuskTV.ero" ,
    "Brazzers TV Europe"  =>			"Brazzers.ero" ,
    "PassieXXX"  =>			"PassieXXX.ero" ,
    "Bluemovie 1" =>			"BlueMovie1.de" ,
    "Bluemovie 2" =>			"BlueMovie2.de" ,
    "Bluemovie 3" =>			"BlueMovie3.de" ,
 ) ;


my $PREID  = 'tvg-id="' ;
my $POSTID = '" tvg-name' ;

sub myfilter {
  my ($a) = @_;
  if ( exists $REPLACE{$a} ) {     
      return $REPLACE{$a} ;
  }else {
      print STDERR "Warning: Some Channels are not changed: '$a'\n" ;
      return $a ;
   }
}

while (<>) {
    my $line = $_ ;
        $line =~ s/($PREID)(.*)($POSTID)/"$1".myfilter("$2")."$3"/ge ;
    print $line ;
}