	var SSCCoords = [
  		new google.maps.LatLng(42.366061, -71.258425),
      new google.maps.LatLng(42.365953, -71.258642),
		  new google.maps.LatLng(42.365742, -71.258564),
	    new google.maps.LatLng(42.365875, -71.257893),
	    new google.maps.LatLng(42.366034, -71.257706),
	    new google.maps.LatLng(42.366145, -71.257910)
	];
	
  	building0 = new google.maps.Polygon({
    paths: SSCCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

	var libraryCoords = [
		new google.maps.LatLng(42.367700, -71.258654),
		new google.maps.LatLng(42.367796, -71.257983),
		new google.maps.LatLng(42.368675, -71.257629),
		new google.maps.LatLng(42.368790, -71.258208),
		new google.maps.LatLng(42.367906, -71.258835)
	];

  	building1 = new google.maps.Polygon({
    paths: libraryCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var usdanCoords = [
  		new google.maps.LatLng(42.367953, -71.257469),
  		new google.maps.LatLng(42.367774, -71.256417),
  		new google.maps.LatLng(42.368218, -71.256224),
  		new google.maps.LatLng(42.368424, -71.257276)
  	];

  	building2 = new google.maps.Polygon({
    paths: usdanCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	//***HERE STARTS MASSELL QUAD****

  	var usenCoords = [
  		new google.maps.LatLng(42.366991, -71.260724),
  		new google.maps.LatLng(42.366979, -71.260547),
  		new google.maps.LatLng(42.367347, -71.260504),
  		new google.maps.LatLng(42.367351, -71.260681)
  	];
  	
  	building3 = new google.maps.Polygon({
    paths: usenCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var renCoords = [
  		new google.maps.LatLng(42.367480, -71.261287),
  		new google.maps.LatLng(42.367365, -71.260839),
  		new google.maps.LatLng(42.367478, -71.260778),
  		new google.maps.LatLng(42.367599, -71.261234)
  	];
  	
  	building4 = new google.maps.Polygon({
    paths: renCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});


  	var deroyCoords = [
  		new google.maps.LatLng(42.367218, -71.261663),
  		new google.maps.LatLng(42.367458, -71.261411),
  		new google.maps.LatLng(42.367532, -71.261542),
  		new google.maps.LatLng(42.367298, -71.261783)		
  	];

  	building5 = new google.maps.Polygon({
    paths: deroyCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var shapiroCoords = [
  		new google.maps.LatLng(42.366378, -71.261164),
  		new google.maps.LatLng(42.366455, -71.260998),
  		new google.maps.LatLng(42.367156, -71.261444),
  		new google.maps.LatLng(42.367063, -71.261669)		
  	];
  	
  	building6 = new google.maps.Polygon({
    paths: shapiroCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});
  	//***HERE ENDS MASSELL QUAD

  	//***HERE BEGINS ROSENTHAL QAUD
  	var rosNorthCoords = [
  		new google.maps.LatLng(42.367217, -71.260349),
  		new google.maps.LatLng(42.367217, -71.259953),
  		new google.maps.LatLng(42.367416, -71.259950),
  		new google.maps.LatLng(42.367427, -71.260323)		
  	];
  	
  	building7 = new google.maps.Polygon({
    paths: rosNorthCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var rosEastCoords = [
  		new google.maps.LatLng(42.366917, -71.260045),
  		new google.maps.LatLng(42.366911, -71.259771),
  		new google.maps.LatLng(42.367216, -71.259771),
  		new google.maps.LatLng(42.367224, -71.260045)		
  	];
  	
  	building8 = new google.maps.Polygon({
    paths: rosEastCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var rosSouthCoords = [
  		new google.maps.LatLng(42.366755, -71.260401),
  		new google.maps.LatLng(42.366741, -71.259959),
  		new google.maps.LatLng(42.366949, -71.259953),
  		new google.maps.LatLng(42.366963, -71.260372)		
  	];
  	
  	building9 = new google.maps.Polygon({
    paths: rosSouthCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	//***HERE ENDS ROSENTHAL QUAD

  	var SCCCoords = [
  		new google.maps.LatLng(42.365510, -71.260671),
  		new google.maps.LatLng(42.365542, -71.259840),
  		new google.maps.LatLng(42.365792, -71.259636),
  		new google.maps.LatLng(42.366158, -71.260080),
  		new google.maps.LatLng(42.366004, -71.260434)			
  	];

  	building10 = new google.maps.Polygon({
    paths: SCCCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var shermanCoords = [
  		new google.maps.LatLng(42.366251, -71.260959),
  		new google.maps.LatLng(42.366216, -71.260450),
  		new google.maps.LatLng(42.366319, -71.260257),
  		new google.maps.LatLng(42.366707, -71.260514),
  		new google.maps.LatLng(42.366676, -71.260954),
  		new google.maps.LatLng(42.366347, -71.261018)				
  	];

  	building11 = new google.maps.Polygon({
    paths: shermanCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	//***HERE BEGINS RIDGEWOOD
  	
		var ridgeACoords = [
  		new google.maps.LatLng(42.364016, -71.260757),
  		new google.maps.LatLng(42.363871, -71.260312),
  		new google.maps.LatLng(42.364042, -71.260298),
  		new google.maps.LatLng(42.364179, -71.260642)					
  	];

  	building12 = new google.maps.Polygon({
    paths: ridgeACoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var ridgeBCoords = [
  		new google.maps.LatLng(42.363828, -71.260930),
  		new google.maps.LatLng(42.364008, -71.260857),
  		new google.maps.LatLng(42.363963, -71.261450),
  		new google.maps.LatLng(42.363767, -71.261431)					
  	];

  	building13 = new google.maps.Polygon({
    paths: ridgeBCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var ridgeCCoords = [
  		new google.maps.LatLng(42.363588, -71.261057),
  		new google.maps.LatLng(42.363410, -71.260548),
  		new google.maps.LatLng(42.363582, -71.260432),
  		new google.maps.LatLng(42.363717, -71.260891)					
  	];

  	building14 = new google.maps.Polygon({
    paths: ridgeCCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});
  	//***HERE ENDS RIDGEWOOD

  	//***HERE BEGINS NORTH

  	var reitmanCoords = [
  		new google.maps.LatLng(42.369502, -71.254989),
  		new google.maps.LatLng(42.369672, -71.254908),
  		new google.maps.LatLng(42.369855, -71.255627),
  		new google.maps.LatLng(42.369728, -71.255713)					
  	];

  	building15 = new google.maps.Polygon({
    paths: reitmanCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var cableCoords = [
  		new google.maps.LatLng(42.368966, -71.255500),
  		new google.maps.LatLng(42.368919, -71.255309),
  		new google.maps.LatLng(42.369434, -71.255063),
  		new google.maps.LatLng(42.369474, -71.255234)					
  	];

  	building16 = new google.maps.Polygon({
    paths: cableCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var gordonCoords = [
  		new google.maps.LatLng(42.369358, -71.256010),
  		new google.maps.LatLng(42.369923, -71.255747),
  		new google.maps.LatLng(42.369971, -71.255935),
  		new google.maps.LatLng(42.369416, -71.256201)					
  	];

  	building17 = new google.maps.Polygon({
    paths: gordonCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var scheffresCoords = [
  		new google.maps.LatLng(42.369014, -71.256386),
  		new google.maps.LatLng(42.369450, -71.256168),
  		new google.maps.LatLng(42.369501, -71.256340),
  		new google.maps.LatLng(42.369055, -71.256549)					
  	];

  	building18 = new google.maps.Polygon({
    paths: scheffresCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});
  	//***HERE ENDS NORTH

  	//***HERE BEGINS EAST

	var HassCoords = [
  		new google.maps.LatLng(42.367651, -71.254630),
  		new google.maps.LatLng(42.367670, -71.254472),
  		new google.maps.LatLng(42.367842, -71.254535),
  		new google.maps.LatLng(42.367938, -71.254649),	
  		new google.maps.LatLng(42.368035, -71.254769),	
  		new google.maps.LatLng(42.368083, -71.254897),	
  		new google.maps.LatLng(42.368215, -71.255170),
  		new google.maps.LatLng(42.368136, -71.255290),
  		new google.maps.LatLng(42.367986, -71.255074),
  		new google.maps.LatLng(42.367855, -71.254772),
  		new google.maps.LatLng(42.367651, -71.254628)
  	];

  	building19 = new google.maps.Polygon({
    paths: HassCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var PomCoords = [
  		new google.maps.LatLng(42.367197, -71.254924),
  		new google.maps.LatLng(42.367214, -71.254761),
  		new google.maps.LatLng(42.367610, -71.254654),
  		new google.maps.LatLng(42.367700, -71.254669),	
  		new google.maps.LatLng(42.367681, -71.254839),	
  		new google.maps.LatLng(42.367332, -71.254941),	
  		new google.maps.LatLng(42.367200, -71.254919)
  	];

  	building20 = new google.maps.Polygon({
    paths: PomCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var ICCCoords = [
  		new google.maps.LatLng(42.367538, -71.255099),
  		new google.maps.LatLng(42.367561, -71.254922),
  		new google.maps.LatLng(42.367812, -71.254968),
  		new google.maps.LatLng(42.367800, -71.255150)
  	];

  	building21 = new google.maps.Polygon({
    paths: ICCCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	//***HERE ENDS EAST
  	//***HERE STARTS RABB

  	var rabbCoords = [
  		new google.maps.LatLng(42.369143, -71.257691),
  		new google.maps.LatLng(42.368979, -71.256817),
  		new google.maps.LatLng(42.369147, -71.256767),
  		new google.maps.LatLng(42.369311, -71.257644)
  	];

  	building22 = new google.maps.Polygon({
    paths: rabbCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var olinCoords = [
  		new google.maps.LatLng(42.369778, -71.258027),
  		new google.maps.LatLng(42.369372, -71.257482),
  		new google.maps.LatLng(42.369503, -71.257292),
  		new google.maps.LatLng(42.369907, -71.257847)
  	];

  	building23 = new google.maps.Polygon({
    paths: olinCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var goldCoords = [
  		new google.maps.LatLng(42.369861, -71.257925),
  		new google.maps.LatLng(42.370238, -71.257445),
  		new google.maps.LatLng(42.370389, -71.257651),
  		new google.maps.LatLng(42.370018, -71.258142)
  	];

  	building24 = new google.maps.Polygon({
    paths: goldCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});
  	

  	var lownCoords = [
  		new google.maps.LatLng(42.369933, -71.257166),
  		new google.maps.LatLng(42.370083, -71.256970),
  		new google.maps.LatLng(42.370331, -71.257313),
  		new google.maps.LatLng(42.370186, -71.257512)
  	];

  	building25 = new google.maps.Polygon({
    paths: lownCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var shiffCoords = [
  		new google.maps.LatLng(42.369459, -71.256881),
  		new google.maps.LatLng(42.369580, -71.256707),
  		new google.maps.LatLng(42.369945, -71.257227),
  		new google.maps.LatLng(42.369842, -71.257386)
  	];

  	building26 = new google.maps.Polygon({
    paths: shiffCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var mandelCoords = [
  		new google.maps.LatLng(42.369426, -71.258013),
  		new google.maps.LatLng(42.369488, -71.257637),
  		new google.maps.LatLng(42.369668, -71.257859),
  		new google.maps.LatLng(42.369876, -71.258586),
  		new google.maps.LatLng(42.369698, -71.258601),
  		new google.maps.LatLng(42.369564, -71.258113)
  	];

  	building27 = new google.maps.Polygon({
    paths: mandelCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var hellerCoords = [
  		new google.maps.LatLng(42.369149, -71.259733),
  		new google.maps.LatLng(42.369003, -71.258424),
  		new google.maps.LatLng(42.369197, -71.258360),
  		new google.maps.LatLng(42.369462, -71.259205),
  		new google.maps.LatLng(42.369310, -71.259827)
  	];

  	building28 = new google.maps.Polygon({
    paths: hellerCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var asacCoords = [
  		new google.maps.LatLng(42.369605, -71.259768),
  		new google.maps.LatLng(42.369520, -71.259301),
  		new google.maps.LatLng(42.369766, -71.259213),
  		new google.maps.LatLng(42.369841, -71.259674)
  	];

  	building29 = new google.maps.Polygon({
    paths: asacCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});
  	///***END OF RABB

  	var castleCoords = [
  		new google.maps.LatLng(42.366876, -71.255948),
  		new google.maps.LatLng(42.366854, -71.255446),
  		new google.maps.LatLng(42.367409, -71.255494),
  		new google.maps.LatLng(42.367752, -71.255835),
  		new google.maps.LatLng(42.367496, -71.256025)
  	];

  	building30 = new google.maps.Polygon({
    paths: castleCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var brownCoords = [
  		new google.maps.LatLng(42.367251, -71.257300),
  		new google.maps.LatLng(42.367140, -71.256707),
  		new google.maps.LatLng(42.367294, -71.256648),
  		new google.maps.LatLng(42.367398, -71.257245)
  	];

  	building31 = new google.maps.Polygon({
    paths: brownCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var schwartzCoords = [
  		new google.maps.LatLng(42.367467, -71.257515),
  		new google.maps.LatLng(42.367379, -71.257065),
  		new google.maps.LatLng(42.367561, -71.256994),
  		new google.maps.LatLng(42.367637, -71.257451)
  	];

  	building32 = new google.maps.Polygon({
    paths: schwartzCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	//***HERE BEINGS ZIV

  	var ziv127Coords = [
  		new google.maps.LatLng(42.363296, -71.261850),
  		new google.maps.LatLng(42.363186, -71.261519),
  		new google.maps.LatLng(42.363464, -71.261331),
  		new google.maps.LatLng(42.363562, -71.261647)
  	];

  	building33 = new google.maps.Polygon({
    paths: ziv127Coords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var ziv128Coords = [
  		new google.maps.LatLng(42.363011, -71.261759),
  		new google.maps.LatLng(42.362886, -71.261375),
  		new google.maps.LatLng(42.363139, -71.261229),
  		new google.maps.LatLng(42.363249, -71.261602)
  	];

  	building34 = new google.maps.Polygon({
    paths: ziv128Coords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var ziv129Coords = [
  		new google.maps.LatLng(42.362893, -71.261305),
  		new google.maps.LatLng(42.362768, -71.260919),
  		new google.maps.LatLng(42.363024, -71.260773),
  		new google.maps.LatLng(42.363140, -71.261162)
  	];

  	building35 = new google.maps.Polygon({
    paths: ziv129Coords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var ziv130Coords = [
  		new google.maps.LatLng(42.363199, -71.261182),
  		new google.maps.LatLng(42.363100, -71.260780),
  		new google.maps.LatLng(42.363328, -71.260656),
  		new google.maps.LatLng(42.363442, -71.261044)
  	];

  	building36 = new google.maps.Polygon({
    paths: ziv130Coords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	//***HERE ENDS ZIV 


  	var admissionsCoords = [
  		new google.maps.LatLng(42.364058, -71.261017),
  		new google.maps.LatLng(42.364377, -71.260677),
  		new google.maps.LatLng(42.364621, -71.260618),
  		new google.maps.LatLng(42.364625, -71.260824),
  		new google.maps.LatLng(42.364149, -71.261261)
  	];

  	building37 = new google.maps.Polygon({
    paths: admissionsCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

  	var slosbergCoords = [
  		new google.maps.LatLng(42.363983, -71.259971),
  		new google.maps.LatLng(42.364441, -71.259703),
  		new google.maps.LatLng(42.364333, -71.259362),
  		new google.maps.LatLng(42.363878, -71.259649)
  	];

  	building38 = new google.maps.Polygon({
    paths: slosbergCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
  	});

    var gosmanCoords = [
      new google.maps.LatLng(42.364389, -71.254867),
      new google.maps.LatLng(42.364999, -71.253896),
      new google.maps.LatLng(42.365804, -71.254776),
      new google.maps.LatLng(42.365169, -71.255736)
    ];

    building39 = new google.maps.Polygon({
    paths: gosmanCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
    });

    var medcenterCoords = [
      new google.maps.LatLng(42.365969, -71.255300),
      new google.maps.LatLng(42.366001, -71.255085),
      new google.maps.LatLng(42.366218, -71.255148),
      new google.maps.LatLng(42.366178, -71.255384)
    ];

    building40 = new google.maps.Polygon({
    paths: medcenterCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
    });

    var policeCoords = [
      new google.maps.LatLng(42.366186, -71.255598),
      new google.maps.LatLng(42.366205, -71.255320),
      new google.maps.LatLng(42.366339, -71.255386),
      new google.maps.LatLng(42.366294, -71.255629)
    ];

    building41 = new google.maps.Polygon({
    paths: policeCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
    });

    var pearlmanCoords = [
      new google.maps.LatLng(42.367322, -71.258167),
      new google.maps.LatLng(42.367298, -71.257921),
      new google.maps.LatLng(42.367609, -71.257829),
      new google.maps.LatLng(42.367591, -71.258141),
      new google.maps.LatLng(42.367514, -71.258213)
    ];

    building42 = new google.maps.Polygon({
    paths: pearlmanCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
    });

    var modsCoords = [
      new google.maps.LatLng(42.365408, -71.253223),
      new google.maps.LatLng(42.365663, -71.252808),
      new google.maps.LatLng(42.366533, -71.253805),
      new google.maps.LatLng(42.366238, -71.254430)
    ];

    building43 = new google.maps.Polygon({
    paths: modsCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
    });


    var facultyCoords = [
      new google.maps.LatLng(42.365426, -71.261314),
      new google.maps.LatLng(42.365636, -71.260858),
      new google.maps.LatLng(42.365885, -71.261083),
      new google.maps.LatLng(42.365691, -71.261528)
    ];

    building44 = new google.maps.Polygon({
    paths: facultyCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
    });

    var roseCoords = [
      new google.maps.LatLng(42.365477, -71.263025),
      new google.maps.LatLng(42.365307, -71.262236),
      new google.maps.LatLng(42.365893, -71.261952),
      new google.maps.LatLng(42.366092, -71.262687)
    ];

    building45 = new google.maps.Polygon({
    paths: roseCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
    });


    var pollackCoords = [
      new google.maps.LatLng(42.365152, -71.262561),
      new google.maps.LatLng(42.365110, -71.262431),
      new google.maps.LatLng(42.365296, -71.262305),
      new google.maps.LatLng(42.365340, -71.262441)
    ];

    building46 = new google.maps.Polygon({
    paths: pollackCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
    });

    var artStudioCoords = [
      new google.maps.LatLng(42.364617, -71.263390),
      new google.maps.LatLng(42.364450, -71.262671),
      new google.maps.LatLng(42.364811, -71.262523),
      new google.maps.LatLng(42.365035, -71.263199)
    ];

    building47 = new google.maps.Polygon({
    paths: artStudioCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
    });


    var ibsCoords = [
      new google.maps.LatLng(42.364309, -71.264012),
      new google.maps.LatLng(42.364694, -71.264036),
      new google.maps.LatLng(42.364835, -71.264607),
      new google.maps.LatLng(42.365219, -71.264626),
      new google.maps.LatLng(42.365013, -71.265399),
      new google.maps.LatLng(42.364708, -71.265128)
    ];

    building48 = new google.maps.Polygon({
    paths: ibsCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
    });

    var theaterCoords = [
      new google.maps.LatLng(42.364218, -71.262545),
      new google.maps.LatLng(42.363949, -71.261670),
      new google.maps.LatLng(42.364710, -71.261310),
      new google.maps.LatLng(42.364872, -71.262086)
    ];

    building49 = new google.maps.Polygon({
    paths: theaterCoords,
    strokeColor: '#FF0000',
    strokeOpacity: opac,
    strokeWeight: 2,
    fillColor: '#00AAAA',
    fillOpacity: opac
    });