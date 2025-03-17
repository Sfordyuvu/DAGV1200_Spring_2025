//Maya ASCII 2024 scene
//Name: ChallengeFive_Refine Lighting & Rendering.ma
//Last modified: Sun, Feb 09, 2025 11:45:52 PM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiSkyDomeLight"
		 -nodeType "aiStandardSurface" -nodeType "aiPhysicalSky" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 10 Enterprise v2009 (Build: 19045)";
fileInfo "UUID" "B8F32BE4-4637-FEDE-19FA-199A67BEEF44";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "96488201-4E2C-7CF2-6CC6-34B83BBEB772";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.969898792861892 7.2785301745345237 6.5676835649552068 ;
	setAttr ".r" -type "double3" -14.400000000000905 64.400000000000389 3.6804670025360618e-15 ;
	setAttr ".rpt" -type "double3" 1.8256271371044598e-17 -6.6867590644292165e-17 -2.0407921992181688e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "FB6A41C5-42FB-4565-7794-3AA709DD9CBC";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 18.666428663855363;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.3352228974332387 2.6363781363494083 -1.2444217967196716 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "EEE36144-43EE-542D-5DF7-1EADB754D5DA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.0405940691590509 1000.1009620898446 0.82159837939521663 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5676DA17-4915-4385-8E08-4E8B43360935";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.038587361392;
	setAttr ".ow" 3.6734933316102185;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 1.3501697105773367 0.062374728452617267 0.31826838579197048 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "298E50E5-4710-3CAC-D99F-8BBE6B1304DB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BFCF59B8-4C9E-F1F5-A0D5-49A088F0B22D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "F35D88D1-4D7D-28BF-00E8-3A869AE597CC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 997.51323027837066 2.2556477584460937 -0.5819518629664171 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rpt" -type "double3" -2.7008413312799156e-14 0 4.5614543194955345e-14 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CA1F7450-48A9-2856-0767-A9A3F42A68D8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 11.379403440106692;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -2.5867697216293664 0.56246221481234471 0.26287257671356057 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "TileFloor";
	rename -uid "C574D0A3-4797-D447-B826-C4915A1FBBF5";
createNode transform -n "TileRow01" -p "TileFloor";
	rename -uid "60CCF20E-42BD-8960-4C55-CC98A716B5F8";
	setAttr ".rp" -type "double3" 3 0 3 ;
	setAttr ".sp" -type "double3" 3 0 3 ;
createNode transform -n "Tile01" -p "TileRow01";
	rename -uid "E832A751-4092-49C7-EF5F-B3AD62D1F6EF";
	setAttr ".rp" -type "double3" 3 0 3 ;
	setAttr ".sp" -type "double3" 3 0 3 ;
createNode mesh -n "TileShape1" -p "|TileFloor|TileRow01|Tile01";
	rename -uid "C6A05E01-44F5-9EAD-EF9B-9DB3F9BD9525";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.50000002980232239 0.37500001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  2 0 3 3 0 3 2 0 1 3 0 1 2 0.053019434 3 2.0093553066 0.062374711 2.99064469
		 2.99064469 0.062374711 2.99064469 3 0.053019434 3 2.0093553066 0.062374711 1.0093553066
		 2 0.053019434 1 2.99064469 0.062374711 1.0093553066 3 0.053019434 1;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile02" -p "TileRow01";
	rename -uid "785BD359-4AAF-A84A-3B3C-08B881625BA0";
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode mesh -n "TileShape2" -p "|TileFloor|TileRow01|Tile02";
	rename -uid "5C999EEB-43A7-F604-53FB-F9B7BDEC408D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.5 0.5 0.5 2.5 0.5 0.5 2.5 
		0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 
		0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile03" -p "TileRow01";
	rename -uid "4DFD007C-4523-0664-16BD-449154FA2BCC";
	setAttr ".rp" -type "double3" 3 0 -1 ;
	setAttr ".sp" -type "double3" 3 0 -1 ;
createNode mesh -n "TileShape3" -p "|TileFloor|TileRow01|Tile03";
	rename -uid "818BD7CA-426C-1A56-6874-DAB622E86CAB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.5 0.5 -1.5 2.5 0.5 -1.5 
		2.5 0.5 -1.5 2.5 0.5 -1.5 2.5 0.5 -1.5 2.5 0.5 -1.5 2.5 0.5 -1.5 2.5 0.5 -1.5 2.5 
		0.5 -1.5 2.5 0.5 -1.5 2.5 0.5 -1.5 2.5 0.5 -1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TileRow02" -p "TileFloor";
	rename -uid "2D275CA1-4E19-3F99-7403-83B95B236F7E";
	setAttr ".rp" -type "double3" 3 0 3 ;
	setAttr ".sp" -type "double3" 3 0 3 ;
createNode transform -n "Tile01" -p "TileRow02";
	rename -uid "67635572-4CF3-77EF-9D98-73886AA7ADE0";
	setAttr ".rp" -type "double3" 2 0 3 ;
	setAttr ".sp" -type "double3" 2 0 3 ;
createNode mesh -n "TileShape1" -p "|TileFloor|TileRow02|Tile01";
	rename -uid "447814D2-4AE2-C908-78F9-A4BF2D5A9FD6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.50000002980232239 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  1.5 0.5 2.5 1.5 0.5 2.5 1.5 
		0.5 3.5 1.5 0.5 3.5 1.5 0.5 2.5 1.5 0.5 2.5 1.5 0.5 2.5 1.5 0.5 2.5 1.5 0.5 3.5 1.5 
		0.5 3.5 1.5 0.5 3.5 1.5 0.5 3.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile02" -p "TileRow02";
	rename -uid "4960CA3A-45D2-36EA-6387-A6839D3B047E";
	setAttr ".rp" -type "double3" 2 0 1 ;
	setAttr ".sp" -type "double3" 2 0 1 ;
createNode mesh -n "TileShape2" -p "|TileFloor|TileRow02|Tile02";
	rename -uid "1EBAE827-44DF-BDD0-F60B-D5B03CEB8021";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  1.5 0.5 1.5 1.5 0.5 1.5 1.5 
		0.5 1.5 1.5 0.5 1.5 1.5 0.5 1.5 1.5 0.5 1.5 1.5 0.5 1.5 1.5 0.5 1.5 1.5 0.5 1.5 1.5 
		0.5 1.5 1.5 0.5 1.5 1.5 0.5 1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile03" -p "TileRow02";
	rename -uid "F2A955FE-4693-7416-DCE3-029F630DF6C1";
	setAttr ".rp" -type "double3" 2 0 -1 ;
	setAttr ".sp" -type "double3" 2 0 -1 ;
createNode mesh -n "TileShape3" -p "|TileFloor|TileRow02|Tile03";
	rename -uid "C8FA4B38-4D6D-686A-592A-18A321E6994A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.50000002980232239 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  1.5 0.5 -0.5 1.5 0.5 -0.5 
		1.5 0.5 -0.50467765 1.5 0.5 -0.50467765 1.5 0.5 -0.5 1.5 0.5 -0.5 1.5 0.5 -0.5 1.5 
		0.5 -0.5 1.5 0.5 -0.50467765 1.5 0.5 -0.50467765 1.5 0.5 -0.50467765 1.5 0.5 -0.50467765;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile04" -p "TileRow02";
	rename -uid "2952D963-47AD-3232-D965-D3B168BF64D9";
	setAttr ".rp" -type "double3" 2 0 -2 ;
	setAttr ".sp" -type "double3" 2 0 -2 ;
createNode mesh -n "TileShape4" -p "|TileFloor|TileRow02|Tile04";
	rename -uid "15AFA6BA-4ACC-48D5-10D3-158A0F78C75F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.50000002980232239 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  1.5 0.5 -2.5 1.5 0.5 -2.5 
		1.5 0.5 -1.5 1.5 0.5 -1.5 1.5 0.5 -2.5 1.5 0.5 -2.5 1.5 0.5 -2.5 1.5 0.5 -2.5 1.5 
		0.5 -1.5 1.5 0.5 -1.5 1.5 0.5 -1.5 1.5 0.5 -1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TileRow03" -p "TileFloor";
	rename -uid "2FF4F795-430F-D02C-EEAF-20A3E265D0E2";
	setAttr ".rp" -type "double3" 1 0 3 ;
	setAttr ".sp" -type "double3" 1 0 3 ;
createNode transform -n "Tile01" -p "TileRow03";
	rename -uid "D5FA2FA0-41EA-D525-B550-23BAB3DD3AEE";
	setAttr ".rp" -type "double3" 1 0 3 ;
	setAttr ".sp" -type "double3" 1 0 3 ;
createNode mesh -n "TileShape1" -p "|TileFloor|TileRow03|Tile01";
	rename -uid "6CE4007F-41D6-C706-8195-09B9EDBAD21A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.5 0.5 2.5 0.5 0.5 2.5 0.5 
		0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 
		0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile02" -p "TileRow03";
	rename -uid "BDCCB07A-49B9-68AE-2E74-11BF82A4B97E";
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode mesh -n "TileShape2" -p "|TileFloor|TileRow03|Tile02";
	rename -uid "F299DD1A-440F-DFD2-A424-E9AE59EAE129";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 
		0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 
		0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile03" -p "TileRow03";
	rename -uid "DBA76703-4919-EDC8-BCE9-51A2CDC24EE4";
	setAttr ".rp" -type "double3" 1 0 -1 ;
	setAttr ".sp" -type "double3" 1 0 -1 ;
createNode mesh -n "TileShape3" -p "|TileFloor|TileRow03|Tile03";
	rename -uid "59356A3A-4FCC-5D84-9A92-34B80A5A8B0C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.5 0.5 -1.5 0.5 0.5 -1.5 
		0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 
		0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TileRow04" -p "TileFloor";
	rename -uid "4B6164D7-49D8-3A1A-1245-38B03FA23D60";
	setAttr ".rp" -type "double3" 1 0 3 ;
	setAttr ".sp" -type "double3" 1 0 3 ;
createNode transform -n "Tile01" -p "TileRow04";
	rename -uid "9E499EB8-4E14-7355-70AD-1CA35469028C";
	setAttr ".rp" -type "double3" 0 0 3 ;
	setAttr ".sp" -type "double3" 0 0 3 ;
createNode mesh -n "TileShape1" -p "|TileFloor|TileRow04|Tile01";
	rename -uid "8D5679E2-4A42-3D8F-0830-AA820A72F552";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.50000002980232239 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.5 0.5 2.5 -0.5 0.5 2.5 
		-0.5 0.5 3.5 -0.5 0.5 3.5 -0.5 0.5 2.5 -0.5 0.5 2.5 -0.5 0.5 2.5 -0.5 0.5 2.5 -0.5 
		0.5 3.5 -0.5 0.5 3.5 -0.5 0.5 3.5 -0.5 0.5 3.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile02" -p "TileRow04";
	rename -uid "BBE19E5D-44BC-F233-A119-E5BD451E8CD2";
	setAttr ".rp" -type "double3" 0 0 1 ;
	setAttr ".sp" -type "double3" 0 0 1 ;
createNode mesh -n "TileShape2" -p "|TileFloor|TileRow04|Tile02";
	rename -uid "136D6319-40EE-FB08-0989-64A5292DD57F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.5 0.5 1.5 -0.5 0.5 1.5 
		-0.5 0.5 1.5 -0.5 0.5 1.5 -0.5 0.5 1.5 -0.5 0.5 1.5 -0.5 0.5 1.5 -0.5 0.5 1.5 -0.5 
		0.5 1.5 -0.5 0.5 1.5 -0.5 0.5 1.5 -0.5 0.5 1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile03" -p "TileRow04";
	rename -uid "E968446A-419A-A0B1-6DFF-B2BC6FBA8D5C";
	setAttr ".rp" -type "double3" 0 0 -1 ;
	setAttr ".sp" -type "double3" 0 0 -1 ;
createNode mesh -n "TileShape3" -p "|TileFloor|TileRow04|Tile03";
	rename -uid "AD466A7A-4797-DA2D-4490-C7993F119804";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.50000002980232239 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.5 0.5 -0.5 -0.5 0.5 -0.5 
		-0.5 0.5 -0.50467765 -0.5 0.5 -0.50467765 -0.5 0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.5 -0.5 
		-0.5 0.5 -0.5 -0.5 0.5 -0.50467765 -0.5 0.5 -0.50467765 -0.5 0.5 -0.50467765 -0.5 
		0.5 -0.50467765;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile04" -p "TileRow04";
	rename -uid "04B17D19-49D6-909D-780B-05A265ED47B4";
	setAttr ".rp" -type "double3" 0 0 -2 ;
	setAttr ".sp" -type "double3" 0 0 -2 ;
createNode mesh -n "TileShape4" -p "|TileFloor|TileRow04|Tile04";
	rename -uid "C6352123-4A26-4B07-E1BA-00A5BF6EEF08";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.50000002980232239 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.5 0.5 -2.5 -0.5 0.5 -2.5 
		-0.5 0.5 -1.5 -0.5 0.5 -1.5 -0.5 0.5 -2.5 -0.5 0.5 -2.5 -0.5 0.5 -2.5 -0.5 0.5 -2.5 
		-0.5 0.5 -1.5 -0.5 0.5 -1.5 -0.5 0.5 -1.5 -0.5 0.5 -1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TileRow05" -p "TileFloor";
	rename -uid "22C8FC01-49DC-4F06-D44B-8A92CED71373";
	setAttr ".rp" -type "double3" -1 0 3 ;
	setAttr ".sp" -type "double3" -1 0 3 ;
createNode transform -n "Tile01" -p "TileRow05";
	rename -uid "20B89F6A-498F-97E5-83FD-068B755F079C";
	setAttr ".rp" -type "double3" -1 0 3 ;
	setAttr ".sp" -type "double3" -1 0 3 ;
createNode mesh -n "TileShape1" -p "|TileFloor|TileRow05|Tile01";
	rename -uid "EE9CE295-4404-DA6B-FB3B-F5AC0C141A6A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.5 0.5 2.5 -1.5 0.5 2.5 
		-1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 
		0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile02" -p "TileRow05";
	rename -uid "51EB3F2F-4BD8-14A2-7BD9-228D7CEE6911";
	setAttr ".rp" -type "double3" -1 0 1 ;
	setAttr ".sp" -type "double3" -1 0 1 ;
createNode mesh -n "TileShape2" -p "|TileFloor|TileRow05|Tile02";
	rename -uid "B79557E6-4243-B277-3F7B-59853A89C387";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.5 0.5 0.5 -1.5 0.5 0.5 
		-1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 
		0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile03" -p "TileRow05";
	rename -uid "59E58EA9-4F62-CCDB-7026-84A02E6271B1";
	setAttr ".rp" -type "double3" -1 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 -1 ;
createNode mesh -n "TileShape3" -p "|TileFloor|TileRow05|Tile03";
	rename -uid "9A1323F1-4F02-B9EC-24AE-A0994E037933";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.5 0.5 -1.5 -1.5 0.5 -1.5 
		-1.5 0.5 -1.5 -1.5 0.5 -1.5 -1.5 0.5 -1.5 -1.5 0.5 -1.5 -1.5 0.5 -1.5 -1.5 0.5 -1.5 
		-1.5 0.5 -1.5 -1.5 0.5 -1.5 -1.5 0.5 -1.5 -1.5 0.5 -1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TileRow06" -p "TileFloor";
	rename -uid "663ED9E4-47F9-2373-42B6-D7A64582E9FB";
	setAttr ".rp" -type "double3" -1 0 3 ;
	setAttr ".sp" -type "double3" -1 0 3 ;
createNode transform -n "Tile01" -p "TileRow06";
	rename -uid "4F92CDFD-41B0-84CD-2A17-5381C7C9DB90";
	setAttr ".rp" -type "double3" -2 0 3 ;
	setAttr ".sp" -type "double3" -2 0 3 ;
createNode mesh -n "TileShape1" -p "|TileFloor|TileRow06|Tile01";
	rename -uid "DA5E60CD-47A4-24C1-6D90-8A973AA449B3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.50000002980232239 0.37500001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.5 0.5 2.5 -2.5 0.5 2.5 
		-2.5 0.5 3.5 -2.5 0.5 3.5 -2.5 0.5 2.5 -2.5 0.5 2.5 -2.5 0.5 2.5 -2.5 0.5 2.5 -2.5 
		0.5 3.5 -2.5 0.5 3.5 -2.5 0.5 3.5 -2.5 0.5 3.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile02" -p "TileRow06";
	rename -uid "718FB27C-4AD1-DD25-A0DF-E4A8D11B8052";
	setAttr ".rp" -type "double3" -2 0 1 ;
	setAttr ".sp" -type "double3" -2 0 1 ;
createNode mesh -n "TileShape2" -p "|TileFloor|TileRow06|Tile02";
	rename -uid "33962DAE-4A19-9455-AD74-DD91F29BA74F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.5 0.5 1.5 -2.5 0.5 1.5 
		-2.5 0.5 1.5 -2.5 0.5 1.5 -2.5 0.5 1.5 -2.5 0.5 1.5 -2.5 0.5 1.5 -2.5 0.5 1.5 -2.5 
		0.5 1.5 -2.5 0.5 1.5 -2.5 0.5 1.5 -2.5 0.5 1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile03" -p "TileRow06";
	rename -uid "E61AD81B-4A65-D588-4777-9795E7D9DE5F";
	setAttr ".rp" -type "double3" -2 0 -1 ;
	setAttr ".sp" -type "double3" -2 0 -1 ;
createNode mesh -n "TileShape3" -p "|TileFloor|TileRow06|Tile03";
	rename -uid "AE02FB85-468B-4393-45BA-419E7683663D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.50000002980232239 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.5 0.5 -0.5 -2.5 0.5 -0.5 
		-2.5 0.5 -0.50467765 -2.5 0.5 -0.50467765 -2.5 0.5 -0.5 -2.5 0.5 -0.5 -2.5 0.5 -0.5 
		-2.5 0.5 -0.5 -2.5 0.5 -0.50467765 -2.5 0.5 -0.50467765 -2.5 0.5 -0.50467765 -2.5 
		0.5 -0.50467765;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile04" -p "TileRow06";
	rename -uid "AFF6C410-415A-C328-959C-DCB44D9F6FDC";
	setAttr ".rp" -type "double3" -2 0 -2 ;
	setAttr ".sp" -type "double3" -2 0 -2 ;
createNode mesh -n "TileShape4" -p "|TileFloor|TileRow06|Tile04";
	rename -uid "E421D843-4CBC-52FC-8581-BEBE3D568C1F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:4]" "f[6:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.50000002980232239 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37733883 0.49883059 0.625 0 0.375 0.21250373 0.37733883 0.25116944 0.62266123
		 0.25116944 0.62266117 0.49883059 0.625 0.53749627 0.375 0.75 0.875 0 0.87500006 0.21250373
		 0.625 0.21250373 0.125 0 0.375 0 0.125 0.21250373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.5 0.5 -2.5 -2.5 0.5 -2.5 
		-2.5 0.5 -1.5 -2.5 0.5 -1.5 -2.5 0.5 -2.5 -2.5 0.5 -2.5 -2.5 0.5 -2.5 -2.5 0.5 -2.5 
		-2.5 0.5 -1.5 -2.5 0.5 -1.5 -2.5 0.5 -1.5 -2.5 0.5 -1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -1.5
		 0.5 -0.5 -1.5 -0.5 -0.44698057 0.5 -0.49064469 -0.43762529 0.49064469 0.49064469 -0.43762529 0.49064469
		 0.5 -0.44698057 0.5 -0.49064469 -0.43762529 -1.49064469 -0.5 -0.44698057 -1.5 0.49064469 -0.43762529 -1.49064469
		 0.5 -0.44698057 -1.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 4 5 2 1
		f 4 -5 8 9 10
		mu 0 4 5 4 12 6
		f 4 -10 11 12 13
		mu 0 4 6 12 8 7
		f 4 -7 14 -13 15
		mu 0 4 1 2 7 8
		f 4 0 16 -9 17
		mu 0 4 14 3 12 4
		f 4 -11 -14 -15 -6
		mu 0 4 5 6 7 2
		f 4 -16 18 -2 19
		mu 0 4 1 8 0 9
		f 4 -4 -19 -12 -17
		mu 0 4 3 10 11 12
		f 4 2 -18 -8 -20
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Couch";
	rename -uid "4AA3B5F1-4FE8-18B8-784A-A2BF48DF9E2A";
	setAttr ".rp" -type "double3" -0.54391883137385122 0 0.10345341248647788 ;
	setAttr ".sp" -type "double3" -0.54391883137385122 0 0.10345341248647788 ;
createNode transform -n "CouchBase" -p "Couch";
	rename -uid "7E7BE618-432E-B4CC-A262-F48E9B7E049C";
	setAttr ".rp" -type "double3" -0.54391883137385122 -0.41008010284555585 0.10345341248647788 ;
	setAttr ".sp" -type "double3" -0.54391883137385122 -0.41008010284555585 0.10345341248647788 ;
createNode transform -n "Cushion03" -p "CouchBase";
	rename -uid "F24763A8-4D4A-FA4B-66E3-5893CB704264";
	setAttr ".rp" -type "double3" -1.2276548438198556 0.062374711036682073 0.34879565815090197 ;
	setAttr ".sp" -type "double3" -1.2276548438198556 0.062374711036682073 0.34879565815090197 ;
createNode mesh -n "CushionShape3" -p "|Couch|CouchBase|Cushion03";
	rename -uid "DB90B5C6-4EBB-ABDF-DB22-82A742E3B7A1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.1540604 0.56237471 -0.15120438 
		-1.8238119 0.56237471 -0.15120438 -2.1540604 -0.13184562 -0.15120438 -1.8238119 -0.13184562 
		-0.15120438 -2.1540604 -0.13184562 -0.69076657 -1.8238119 -0.13184562 -0.69076657 
		-2.1540604 0.56237471 -0.69076657 -1.8238119 0.56237471 -0.69076657;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Cushion04" -p "CouchBase";
	rename -uid "2B5167BA-42A0-D29C-9CCD-EEAA1766C38B";
	setAttr ".rp" -type "double3" -1.2276548438198556 0.062374711036682073 1.8883579523930707 ;
	setAttr ".sp" -type "double3" -1.2276548438198556 0.062374711036682073 1.8883579523930707 ;
createNode mesh -n "CushionShape4" -p "|Couch|CouchBase|Cushion04";
	rename -uid "E44A4A62-4503-B1D1-B75F-54B2856F250A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.1540604 0.56237471 1.3883579 
		-1.8238119 0.56237471 1.3883579 -2.1540604 -0.13184562 1.3883579 -1.8238119 -0.13184562 
		1.3883579 -2.1540604 -0.13184562 0.84879571 -1.8238119 -0.13184562 0.84879571 -2.1540604 
		0.56237471 0.84879571 -1.8238119 0.56237471 0.84879571;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Cushions" -p "Couch";
	rename -uid "38AE7CFC-40D8-74E6-1F84-0AA63838E228";
	setAttr ".rp" -type "double3" -1.227654757559492 0.368154376745224 0.34879565815090197 ;
	setAttr ".sp" -type "double3" -1.227654757559492 0.368154376745224 0.34879565815090197 ;
createNode transform -n "Cushion03" -p "Cushions";
	rename -uid "E80B12B8-44C7-5B75-21B5-C4AAB04293CB";
	setAttr ".rp" -type "double3" -1.2276548438198556 0.36815438751456536 0.34879571378065832 ;
	setAttr ".sp" -type "double3" -1.2276548438198556 0.36815438751456536 0.34879571378065832 ;
createNode mesh -n "CushionShape3" -p "|Couch|Cushions|Cushion03";
	rename -uid "43AA3D59-47C0-837F-E9BD-5199E72B0376";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 16 "f[12:13]" "f[19:20]" "f[25]" "f[40:45]" "f[63:64]" "f[71]" "f[73]" "f[129:131]" "f[133]" "f[135:137]" "f[139]" "f[141:144]" "f[147:149]" "f[151]" "f[153:155]" "f[157]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 24 "f[2]" "f[15]" "f[18]" "f[23]" "f[49:50]" "f[65]" "f[69]" "f[72]" "f[74]" "f[80]" "f[86]" "f[92]" "f[98]" "f[104]" "f[110]" "f[116]" "f[126]" "f[132]" "f[138]" "f[145]" "f[150]" "f[156]" "f[162]" "f[169]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 16 "f[0:1]" "f[7:8]" "f[24]" "f[30:35]" "f[51:52]" "f[59]" "f[61]" "f[81:83]" "f[85]" "f[87:89]" "f[91]" "f[93:96]" "f[99:101]" "f[103]" "f[105:107]" "f[109]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 13 "f[3:4]" "f[16:17]" "f[27:29]" "f[38:39]" "f[53]" "f[55]" "f[57:58]" "f[66:68]" "f[70]" "f[75:77]" "f[79]" "f[123:125]" "f[127]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 11 "f[10:11]" "f[21:22]" "f[26]" "f[36:37]" "f[46:47]" "f[111:113]" "f[115]" "f[117:120]" "f[159:161]" "f[163]" "f[165:168]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 23 "f[5:6]" "f[9]" "f[14]" "f[48]" "f[54]" "f[56]" "f[60]" "f[62]" "f[78]" "f[84]" "f[90]" "f[97]" "f[102]" "f[108]" "f[114]" "f[121:122]" "f[128]" "f[134]" "f[140]" "f[146]" "f[152]" "f[158]" "f[164]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 228 ".uvst[0].uvsp[0:227]" -type "float2" 0.14216474 0.3354944
		 0.38241985 0.27207148 0.40026486 0.49420038 0.61758018 0.97792852 0.3999975 0.21774843
		 0.60000247 0.032251298 0.3999975 0.71774846 0.60000247 0.5322513 0.64659888 0.21775047
		 0.85340106 0.032249611 0.14659889 0.21775047 0.35340112 0.032249611 0.36305106 0.03226098
		 0.35340109 0.21773334 0.37264112 0.032260116 0.36405879 0.21772699 0.38184342 0.032245502
		 0.37465036 0.21772617 0.39095026 0.032244846 0.38317686 0.21772492 0.3999975 0.032267973
		 0.39161482 0.21773946 0.60972548 0.032261074 0.60000247 0.21773201 0.61951274 0.032245561
		 0.60848528 0.21772446 0.62826711 0.032247081 0.61702418 0.21772343 0.63740456 0.032247722
		 0.62548399 0.21773942 0.64659894 0.032266736 0.63600868 0.21773908 0.13576585 0.217739
		 0.14659892 0.032266736 0.125 0.21773915 0.13576587 0.032273013 0.3834089 0.53224552
		 0.375 0.71772617 0.39173043 0.53224558 0.3834089 0.71772498 0.3999975 0.53226817
		 0.3917304 0.71773946 0.60826951 0.53226107 0.60000247 0.71773201 0.6165911 0.53224558
		 0.60826951 0.71772444 0.625 0.53224707 0.6165911 0.71772343 0.86423415 0.21775228
		 0.875 0.032260869 0.85340106 0.21773334 0.86423415 0.032261074 0.38337821 0.26689932
		 0.38587371 0.26269054 0.38975412 0.25935379 0.40063372 0.25640187 0.59981978 0.25571516
		 0.60652095 0.25497776 0.61251521 0.25479519 0.61839104 0.25480548 0.16582112 0.08028762
		 0.61758018 0.47792849 0.10992151 0.26444936 0.38241982 0.77207148 0.38337821 0.76689935
		 0.38587371 0.76269054 0.38975409 0.75935382 0.40063372 0.7564019 0.59981978 0.75571513
		 0.60652095 0.75497776 0.61251521 0.75479519 0.61839104 0.75480551 0.59936625 0.9935981
		 0.10992151 0.12655701 0.59936625 0.49359813 0.013827886 0.017071331 0.013088994 0.016159125
		 0.012998115 0.01604693 0.013616756 0.016810678 0.39463955 0.25721708 0.60536277 0.99278915
		 0.61024988 0.99065095 0.61413127 0.98731256 0.6166274 0.9831022 0.28826693 0.1226152
		 0.18159264 0.22969538 0.125 0.032273747 0.3815845 0.49521673 0.375 0.53226012 0.38743657
		 0.49524996 0.39347881 0.49502388 0.39463955 0.75721711 0.60536283 0.49278912 0.61024988
		 0.49065092 0.62499994 0.7177394 0.61413127 0.48731256 0.6166274 0.4831022 0.875 0.21775219
		 0.28826693 0.35767967 0.16582112 0.21816176 0.3999975 0 0.39999753 1 0.39992774 0.016288338
		 0.60008973 0.016278015 0.60000247 1 0.60000247 0 0.35340109 0.25 0.375 0.27159888
		 0.35348254 0.2338466 0.14650874 0.23385189 0.375 0.47840106 0.14659889 0.25 0.4000898
		 0.23038012 0.40032116 0.24325559 0.59997064 0.24277771 0.6000461 0.23012987 0.64650762
		 0.23385656 0.625 0.27159891 0.64659888 0.25 0.85340106 0.25 0.625 0.47840109 0.85348129
		 0.23384218 0.40004221 0.50697136 0.39993945 0.51968431 0.59985834 0.51946753 0.59963584
		 0.50655532 0.35348427 0.01614318 0.375 0.97840106 0.35340112 -3.7252903e-09 0.14659892
		 1.8626451e-09 0.375 0.77159888 0.14651871 0.016157895 0.3999905 0.73017323 0.4002057
		 0.74301618 0.599828 0.74709857 0.59999168 0.73903644 0.64659894 1.8626451e-09 0.625
		 0.97840112 0.64652938 0.016153241 0.85349125 0.016148197 0.625 0.77159888 0.85340112
		 -3.7252903e-09 0.3630183 0.016690504 0 0 0.36287576 -2.9678116e-09 0.36423415 0.25
		 0 0 0.36417651 0.23327029 0.37250724 0.016793599 0 0 0.37229162 -2.2150302e-09 0.375
		 0.25 0.37476754 0.23292994 0.38177675 0.016848259 0 0 0.38161162 -1.4699157e-09 0.38623714
		 0.24439484 0.38446349 0.23061804 0.39090884 0.016839387 0 0 0.39083475 -7.3254491e-10
		 0.39336506 0.24269652 0.3924194 0.22978543 0.60982597 0.016842071 0 0 0.60994118
		 0 0.607364 0.24135761 0.60795718 0.22915615 0.61956948 0.016848844 0 0 0.61994541
		 0 0.61488044 0.24238509 0.61607808 0.22975098 0.62847024 0.016789654 0 0 0.62875098
		 6.1536737e-10 0.625 0.25 0.62533462 0.23285766 0.63748723 0.016691713 0 0 0.63764721
		 1.2370666e-09 0.63576585 0.25 0 0 0.63584393 0.23327161 0.13598682 0.23263268 0 0
		 0.13576585 0.25 0.13576587 9.2842589e-10 0 0 0.13601227 0.017404139 0.27605006 0.3918145
		 0.12784074 0.22625171 0.17603338 0.2498548 0.13071212 0.23485604 0.17593838 0.33673489
		 0.13071485 0.015141844 0.27600595 0.52825785 0.12784202 0.023753991 0.36784375 0.49618447
		 0.36629042 0.47598091 0.35177371 0.67274988 0.36147413 0.6826703 0.38976806 0.51410389
		 0.3905443 0.49722287 0.38721776 0.72986102 0.38784578 0.72013986 0.60427707 0.51383781
		 0.60494792 0.49683139 0.59606844 0.72853208 0.59980345 0.72054845 0.5888992 0.49550131
		 0.58654308 0.47623524 0.5544529 0.66754746 0.57703173 0.68180013 0.8721593 0.22626123
		 0.46008483 0.3918061 0.29338118 0.24984203 0.86928773 0.23486255 0.86928648 0.015139754
		 0.29330721 0.3368291 0.87215924 0.023748275 0.4600828 0.52835131 0.86398834 0.23261006
		 0 0 0.86423415 0.25 0.86423415 -1.8568518e-09 0 0 0.8640129 0.017371805;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 192 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0 0 -0.44691038 0 0 -0.44761759 0 0 
		-0.44813532 0 0 -0.44832483 0 0 -0.44832483 0 0 -0.44813561 0 0 -0.44761869 0 0 -0.44691256 
		0 0 -0.44345576 0 0 -0.44350788 0 0 -0.44354606 0 0 -0.44356 0 0 -0.39793855 0 0 
		-0.39795512 0 0 -0.39800039 0 0 -0.39806223 0 0 -0.44832483 0 0 -0.44813561 0 0 -0.44761869 
		0 0 -0.44691256 0 0 -0.44691038 0 0 -0.44761759 0 0 -0.44813532 0 0 -0.44832483 0 
		0 -0.44356 0 0 -0.44354343 0 0 -0.44349816 0 0 -0.44343632 0 0 -0.3980428 0 0 -0.39799067 
		0 0 -0.3979525 0 0 -0.39793855 0 0 -0.3945882 0 0 -0.39388096 0 0 -0.39336324 0 0 
		-0.39317372 0 0 -0.39317372 0 0 -0.39336294 0 0 -0.39387986 0 0 -0.39458603 0 0 -0.44356 
		0 0 -0.44354343 0 0 -0.44349816 0 0 -0.44343632 0 0 -0.3980428 0 0 -0.39799067 0 
		0 -0.3979525 0 0 -0.39793855 0 0 -0.39317372 0 0 -0.39336294 0 0 -0.39387986 0 0 
		-0.39458603 0 0 -0.3945882 0 0 -0.39388096 0 0 -0.39336324 0 0 -0.39317372 0 0 -0.44345576 
		0 0 -0.44350788 0 0 -0.44354606 0 0 -0.44356 0 0 -0.39793855 0 0 -0.39795512 0 0 
		-0.39800039 0 0 -0.39806223 0 0 -0.44503242 0 0 -0.4449718 0 0 -0.44480613 0 0 -0.44457984 
		0 0 -0.44459677 0 0 -0.44481459 0 0 -0.44497406 0 0 -0.44503242 0 0 -0.44636071 0 
		0 -0.44624698 0 0 -0.44593632 0 0 -0.44551197 0 0 -0.44552523 0 0 -0.44594297 0 0 
		-0.44624877 0 0 -0.44636071 0 0 -0.44741485 0 0 -0.4472591 0 0 -0.44683361 0 0 -0.44625235 
		0 0 -0.44626135 0 0 -0.44683808 0 0 -0.44726029 0 0 -0.44741485 0 0 -0.44809163 0 
		0 -0.44790903 0 0 -0.44741011 0 0 -0.44672862 0 0 -0.4467327 0 0 -0.44741216 0 0 
		-0.44790956 0 0 -0.44809163 0 0 -0.44809163 0 0 -0.44790974 0 0 -0.44741285 0 0 -0.44673407 
		0 0 -0.44672734 0 0 -0.44740948 0 0 -0.44790885 0 0 -0.44809163 0 0 -0.44741485 0 
		0 -0.44726044 0 0 -0.44683862 0 0 -0.44626239 0 0 -0.44625121 0 0 -0.44683301 0 0 
		-0.44725895 0 0 -0.44741485 0 0 -0.44636071 0 0 -0.44624886 0 0 -0.44594333 0 0 -0.44552591 
		0 0 -0.44551104 0 0 -0.44593588 0 0 -0.44624686 0 0 -0.44636071 0 0 -0.44503242 0 
		0 -0.44497409 0 0 -0.44481477 0 0 -0.4445971 0 0 -0.44457927 0 0 -0.44480586 0 0 
		-0.44497171 0 0 -0.44503242 0 0 -0.39646614 0 0 -0.39652678 0 0 -0.39669243 0 0 -0.39691871 
		0 0 -0.39690179 0 0 -0.39668396 0 0 -0.39652449 0 0 -0.39646614 0 0 -0.39513785 0 
		0 -0.39525157 0 0 -0.39556223 0 0 -0.39598662 0 0 -0.39597332 0 0 -0.39555559 0 0 
		-0.39524978 0 0 -0.39513785 0 0 -0.39408374 0 0 -0.39423949 0 0 -0.39466497 0 0 -0.39524621 
		0 0 -0.39523721 0 0 -0.39466047 0 0 -0.39423826 0 0 -0.39408374 0 0 -0.39340693 0 
		0 -0.39358956 0 0 -0.39408845 0 0 -0.39476997 0 0 -0.39476585 0 0 -0.39408639 0 0 
		-0.39358899 0 0 -0.39340693 0 0 -0.39340693 0 0 -0.39358881 0 0 -0.39408571 0 0 -0.39476448 
		0 0 -0.39477122 0 0 -0.39408907;
	setAttr ".pt[166:191]" 0 0 -0.39358971 0 0 -0.39340693 0 0 -0.39408374 0 0 
		-0.39423811 0 0 -0.39465997 0 0 -0.39523619 0 0 -0.39524737 0 0 -0.39466554 0 0 -0.39423963 
		0 0 -0.39408374 0 0 -0.39513785 0 0 -0.39524969 0 0 -0.39555526 0 0 -0.39597264 0 
		0 -0.39598754 0 0 -0.39556271 0 0 -0.39525169 0 0 -0.39513785 0 0 -0.39646614 0 0 
		-0.39652446 0 0 -0.39668381 0 0 -0.39690146 0 0 -0.39691928 0 0 -0.39669272 0 0 -0.39652684 
		0 0 -0.39646614;
	setAttr -s 192 ".vt";
	setAttr ".vt[0:165]"  -2.51817513 0.36815441 0.75622094 -2.51961207 0.37344205 0.77667075
		 -2.52066374 0.38788819 0.791641 -2.52104878 0.40762195 0.79712045 -1.45682359 0.40760192 0.79712045
		 -1.45727706 0.38787818 0.79164946 -1.45851612 0.37343937 0.77670211 -1.46020889 0.36815441 0.75628388
		 -2.61457944 0.67393404 0.65632951 -2.63431978 0.66864663 0.65783685 -2.64877081 0.65420103 0.65894043
		 -2.65406036 0.63446808 0.65934432 -2.65406036 0.63448894 -0.65981668 -2.64877963 0.65421152 -0.65933746
		 -2.63435221 0.66864938 -0.6580283 -2.61464429 0.67393404 -0.65623987 -2.52104878 0.63448656 0.79712045
		 -2.52059507 0.65421033 0.79164946 -2.51935601 0.66864908 0.77670211 -2.51766348 0.67393404 0.75628388
		 -1.45969725 0.67393404 0.75622094 -1.45826054 0.6686464 0.77667075 -1.45720863 0.65420026 0.791641
		 -1.45682359 0.63446647 0.79712045 -1.32381201 0.63448894 0.65934432 -1.32909274 0.65421152 0.65886509
		 -1.34352016 0.66864938 0.65755582 -1.36322808 0.67393404 0.6557675 -1.36329293 0.67393404 -0.65680188
		 -1.34355235 0.66864663 -0.65830928 -1.32910156 0.65420103 -0.6594128 -1.32381201 0.63446808 -0.65981668
		 -2.51817513 0.67393404 -0.75669342 -2.51961184 0.6686464 -0.77714324 -2.52066374 0.65420026 -0.79211348
		 -2.52104878 0.63446647 -0.79759306 -1.45682359 0.63448656 -0.79759306 -1.45727706 0.65421033 -0.79212195
		 -1.45851636 0.66864908 -0.77717477 -1.46020913 0.67393404 -0.75675631 -2.65406036 0.40759951 0.65934432
		 -2.64877963 0.38787696 0.65886509 -2.63435221 0.37343904 0.65755582 -2.61464429 0.36815441 0.6557675
		 -2.61457944 0.36815441 -0.65680188 -2.63431978 0.37344185 -0.65830928 -2.64877081 0.38788742 -0.6594128
		 -2.65406036 0.4076204 -0.65981668 -2.52104878 0.40760189 -0.79759306 -2.52059507 0.38787815 -0.79212195
		 -2.51935601 0.37343937 -0.77717477 -2.51766348 0.36815441 -0.75675631 -1.45969725 0.36815441 -0.75669342
		 -1.45826054 0.37344205 -0.77714324 -1.45720863 0.38788819 -0.79211348 -1.45682359 0.40762195 -0.79759306
		 -1.36329293 0.36815441 0.65632951 -1.34355235 0.37344185 0.65783685 -1.32910156 0.38788742 0.65894043
		 -1.32381201 0.4076204 0.65934432 -1.32381201 0.40759951 -0.65981668 -1.32909274 0.38787696 -0.65933746
		 -1.34352016 0.37343904 -0.6580283 -1.36322808 0.36815441 -0.65623987 -2.64755034 0.40761307 0.70191956
		 -2.64247608 0.38788372 0.70016629 -2.62861323 0.37344086 0.69537604 -2.60967636 0.36815441 0.6888327
		 -2.6094799 0.67393404 0.68932211 -2.62851524 0.66864556 0.69562078 -2.64244986 0.65419716 0.70023185
		 -2.64755034 0.63446027 0.70191956 -2.62865734 0.40761295 0.74032724 -2.6243515 0.38788369 0.73703927
		 -2.61258793 0.37344086 0.72805637 -2.59651828 0.36815441 0.71578544 -2.59620142 0.67393404 0.71616924
		 -2.61242938 0.66864544 0.72824818 -2.62430906 0.65419674 0.73709065 -2.62865734 0.63445938 0.74032724
		 -2.599231 0.40759325 0.77080768 -2.59611368 0.38787383 0.76630425 -2.58759737 0.37343821 0.75400102
		 -2.5759635 0.36815441 0.7371943 -2.57555389 0.67393404 0.737454 -2.58739233 0.6686452 0.75413084
		 -2.59605885 0.6541959 0.76633918 -2.599231 0.63445777 0.77080768 -2.56215167 0.40759441 0.79037744
		 -2.56052852 0.38787442 0.78509718 -2.55609393 0.37343836 0.77067131 -2.55003595 0.36815441 0.75096512
		 -2.5495584 0.67393404 0.75108373 -2.55585504 0.66864759 0.77073061 -2.56046438 0.65420485 0.78511298
		 -2.56215167 0.63447559 0.79037744 -1.4157207 0.40761286 0.79037744 -1.41740608 0.38788363 0.7851184
		 -1.4220109 0.37344083 0.77075034 -1.42830133 0.36815441 0.75112331 -1.42784762 0.67393404 0.75092834
		 -1.42178416 0.66864514 0.77065283 -1.41734529 0.65419567 0.78509218 -1.4157207 0.63445723 0.79037744
		 -1.37864137 0.40759492 0.77080768 -1.38181067 0.38787466 0.76634318 -1.39046931 0.37343845 0.75414592
		 -1.40229726 0.36815441 0.7374841 -1.401932 0.67393404 0.73716092 -1.39028668 0.66864496 0.75398427
		 -1.38176179 0.65419501 0.7662999 -1.37864137 0.63445598 0.77080768 -1.34921503 0.40759641 0.74032724
		 -1.35355973 0.38787541 0.73709339 -1.36542964 0.37343863 0.72825819 -1.38164425 0.36815441 0.71618921
		 -1.38138938 0.67393404 0.71575856 -1.36530209 0.66864759 0.72804284 -1.35352564 0.65420479 0.73703563
		 -1.34921503 0.63447553 0.74032724 -1.33032203 0.40759724 0.70191956 -1.33541846 0.38787583 0.70023316
		 -1.34934235 0.37343875 0.69562572 -1.36836267 0.36815441 0.68933189 -1.36824298 0.67393404 0.68881637
		 -1.3492825 0.66864759 0.69536799 -1.33540249 0.65420473 0.70016396 -1.33032203 0.63447535 0.70191956
		 -2.64755034 0.63447535 -0.70239192 -2.64247608 0.65420473 -0.70063865 -2.62861323 0.66864759 -0.69584852
		 -2.60967636 0.67393404 -0.68930507 -2.6094799 0.36815441 -0.68979448 -2.62851524 0.37344289 -0.69609308
		 -2.64244986 0.38789129 -0.70070422 -2.64755034 0.40762818 -0.70239192 -2.62865734 0.63447553 -0.74079961
		 -2.6243515 0.65420479 -0.73751163 -2.61258793 0.66864759 -0.72852874 -2.59651828 0.67393404 -0.71625781
		 -2.59620142 0.36815441 -0.7166416 -2.61242938 0.37344301 -0.72872061 -2.62430906 0.38789174 -0.73756301
		 -2.62865734 0.40762907 -0.74079961 -2.599231 0.6344952 -0.77127999 -2.59611368 0.65421462 -0.76677662
		 -2.58759737 0.66865021 -0.75447339 -2.5759635 0.67393404 -0.73766667 -2.57555389 0.36815441 -0.73792636
		 -2.58739233 0.37344322 -0.75460321 -2.59605885 0.38789254 -0.76681155 -2.599231 0.40763065 -0.77127999
		 -2.56215167 0.63449407 -0.7908498 -2.56052852 0.65421402 -0.78556949 -2.55609369 0.66865009 -0.77114362
		 -2.55003595 0.67393404 -0.75143743 -2.5495584 0.36815441 -0.7515561 -2.55585504 0.37344083 -0.77120298
		 -2.56046438 0.38788363 -0.78558546 -2.56215167 0.40761286 -0.7908498 -1.4157207 0.63447559 -0.7908498
		 -1.41740608 0.65420485 -0.78559077 -1.4220109 0.66864759 -0.77122277 -1.42830133 0.67393404 -0.75159568
		 -1.42784762 0.36815441 -0.75140077 -1.42178416 0.37344331 -0.77112532;
	setAttr ".vt[166:191]" -1.41734529 0.38789281 -0.78556466 -1.4157207 0.40763122 -0.7908498
		 -1.37864137 0.63449353 -0.77127999 -1.38181067 0.65421379 -0.76681554 -1.39046931 0.66865003 -0.75461835
		 -1.40229726 0.67393404 -0.73795646 -1.401932 0.36815441 -0.73763329 -1.39028668 0.37344345 -0.7544567
		 -1.38176179 0.38789344 -0.76677227 -1.37864137 0.40763244 -0.77127999 -1.34921503 0.63449204 -0.74079961
		 -1.35355973 0.65421307 -0.73756576 -1.36542964 0.66864979 -0.7287305 -1.38164425 0.67393404 -0.71666157
		 -1.38138938 0.36815441 -0.71623093 -1.36530209 0.37344086 -0.72851515 -1.35352564 0.38788366 -0.737508
		 -1.34921503 0.40761295 -0.74079961 -1.33032203 0.63449121 -0.70239192 -1.33541846 0.65421259 -0.70070553
		 -1.34934235 0.66864973 -0.69609803 -1.36836267 0.67393404 -0.68980438 -1.36824298 0.36815441 -0.68928874
		 -1.3492825 0.37344086 -0.69584042 -1.33540249 0.38788372 -0.70063645 -1.33032203 0.40761307 -0.70239192;
	setAttr -s 360 ".ed";
	setAttr ".ed[0:165]"  91 0 1 3 88 1 3 2 1 2 5 1 5 4 1 4 3 1 2 1 1 1 6 0 6 5 1
		 1 0 1 0 7 1 7 6 1 97 96 1 96 4 1 98 97 1 7 99 1 99 98 1 69 68 1 68 8 1 70 69 1 11 71 1
		 71 70 1 11 10 1 10 13 1 13 12 1 12 11 1 10 9 1 9 14 0 14 13 1 9 8 1 8 15 1 15 14 1
		 129 128 1 128 12 1 130 129 1 15 131 1 131 130 1 95 16 1 19 92 1 19 18 1 18 21 0 21 20 1
		 20 19 1 18 17 1 17 22 1 22 21 1 17 16 1 16 23 1 23 22 1 101 100 1 100 20 1 102 101 1
		 23 103 1 103 102 1 127 24 1 27 124 1 27 26 1 26 29 0 29 28 1 28 27 1 26 25 1 25 30 1
		 30 29 1 25 24 1 24 31 1 31 30 1 187 28 1 31 184 1 155 32 1 35 152 1 35 34 1 34 37 1
		 37 36 1 36 35 1 34 33 1 33 38 0 38 37 1 33 32 1 32 39 1 39 38 1 161 160 1 160 36 1
		 162 161 1 39 163 1 163 162 1 65 64 1 64 40 1 66 65 1 43 67 1 67 66 1 43 42 1 42 45 0
		 45 44 1 44 43 1 42 41 1 41 46 1 46 45 1 41 40 1 40 47 1 47 46 1 133 132 1 132 44 1
		 134 133 1 47 135 1 135 134 1 159 48 1 51 156 1 51 50 1 50 53 0 53 52 1 52 51 1 50 49 1
		 49 54 1 54 53 1 49 48 1 48 55 1 55 54 1 165 164 1 164 52 1 166 165 1 55 167 1 167 166 1
		 123 56 1 59 120 1 59 58 1 58 61 1 61 60 1 60 59 1 58 57 1 57 62 0 62 61 1 57 56 1
		 56 63 1 63 62 1 191 60 1 63 188 1 73 72 1 72 64 1 74 73 1 67 75 1 75 74 1 77 76 1
		 76 68 1 78 77 1 71 79 1 79 78 1 81 80 1 80 72 1 82 81 1 75 83 1 83 82 1 85 84 1 84 76 1
		 86 85 1 79 87 1 87 86 1 89 88 1 88 80 1 90 89 1 83 91 1 91 90 1 93 92 1 92 84 1 94 93 1
		 87 95 1 95 94 1;
	setAttr ".ed[166:331]" 105 104 1 104 96 1 106 105 1 99 107 1 107 106 1 109 108 1
		 108 100 1 110 109 1 103 111 1 111 110 1 113 112 1 112 104 1 114 113 1 107 115 1 115 114 1
		 117 116 1 116 108 1 118 117 1 111 119 1 119 118 1 121 120 1 120 112 1 122 121 1 115 123 1
		 123 122 1 125 124 1 124 116 1 126 125 1 119 127 1 127 126 1 137 136 1 136 128 1 138 137 1
		 131 139 1 139 138 1 141 140 1 140 132 1 142 141 1 135 143 1 143 142 1 145 144 1 144 136 1
		 146 145 1 139 147 1 147 146 1 149 148 1 148 140 1 150 149 1 143 151 1 151 150 1 153 152 1
		 152 144 1 154 153 1 147 155 1 155 154 1 157 156 1 156 148 1 158 157 1 151 159 1 159 158 1
		 169 168 1 168 160 1 170 169 1 163 171 1 171 170 1 173 172 1 172 164 1 174 173 1 167 175 1
		 175 174 1 177 176 1 176 168 1 178 177 1 171 179 1 179 178 1 181 180 1 180 172 1 182 181 1
		 175 183 1 183 182 1 185 184 1 184 176 1 186 185 1 179 187 1 187 186 1 189 188 1 188 180 1
		 190 189 1 183 191 1 191 190 1 16 3 1 4 23 1 48 35 1 36 55 1 24 59 1 60 31 1 12 47 1
		 40 11 1 64 71 1 72 79 1 80 87 1 88 95 1 96 103 1 104 111 1 112 119 1 120 127 1 128 135 1
		 136 143 1 144 151 1 152 159 1 160 167 1 168 175 1 176 183 1 184 191 1 6 98 0 5 97 1
		 10 70 0 9 69 1 14 130 0 13 129 1 22 102 0 21 101 1 38 162 0 37 161 1 42 66 0 41 65 1
		 46 134 0 45 133 1 54 166 0 53 165 1 66 74 0 65 73 1 70 78 1 69 77 1 74 82 0 73 81 1
		 78 86 0 77 85 1 82 90 1 81 89 0 86 94 0 85 93 1 1 90 1 2 89 0 17 94 1 18 93 1 98 106 0
		 97 105 1 102 110 0 101 109 1 106 114 1 105 113 0 110 118 0 109 117 1 114 122 1 113 121 0
		 118 126 0 117 125 1 57 122 1 58 121 0 25 126 1 26 125 1 130 138 0 129 137 1 134 142 1
		 133 141 1;
	setAttr ".ed[332:359]" 138 146 0 137 145 1 142 150 0 141 149 1 146 154 1 145 153 0
		 150 158 0 149 157 1 33 154 1 34 153 0 49 158 1 50 157 1 162 170 0 161 169 1 166 174 0
		 165 173 1 170 178 1 169 177 0 174 182 0 173 181 1 178 186 1 177 185 0 182 190 0 181 189 1
		 29 186 1 30 185 0 61 190 1 62 189 1;
	setAttr -s 170 -ch 720 ".fc[0:169]" -type "polyFaces" 
		f 4 2 3 4 5
		mu 0 4 20 102 103 5
		f 4 6 7 8 -4
		mu 0 4 102 100 105 103
		f 4 9 10 11 -8
		mu 0 4 101 0 72 104
		f 4 22 23 24 25
		mu 0 4 13 108 109 10
		f 4 26 27 28 -24
		mu 0 4 108 106 111 109
		f 4 29 30 31 -28
		mu 0 4 107 1 73 110
		f 4 39 40 41 42
		mu 0 4 55 113 114 56
		f 4 43 44 45 -41
		mu 0 4 113 112 115 114
		f 4 46 47 48 -45
		mu 0 4 112 4 23 115
		f 4 56 57 58 59
		mu 0 4 60 117 120 61
		f 4 60 61 62 -58
		mu 0 4 118 116 121 119
		f 4 63 64 65 -62
		mu 0 4 116 8 50 121
		f 4 70 71 72 73
		mu 0 4 40 123 124 7
		f 4 74 75 76 -72
		mu 0 4 123 122 125 124
		f 4 77 78 79 -76
		mu 0 4 122 2 74 125
		f 4 90 91 92 93
		mu 0 4 62 127 130 63
		f 4 94 95 96 -92
		mu 0 4 128 126 131 129
		f 4 97 98 99 -96
		mu 0 4 126 11 33 131
		f 4 107 108 109 110
		mu 0 4 67 133 134 68
		f 4 111 112 113 -109
		mu 0 4 133 132 135 134
		f 4 114 115 116 -113
		mu 0 4 132 6 43 135
		f 4 124 125 126 127
		mu 0 4 30 138 139 9
		f 4 128 129 130 -126
		mu 0 4 138 136 141 139
		f 4 131 132 133 -130
		mu 0 4 137 3 99 140
		f 4 256 -6 257 -48
		mu 0 4 4 20 5 23
		f 4 258 -74 259 -116
		mu 0 4 6 40 7 43
		f 4 260 -128 261 -65
		mu 0 4 8 30 9 50
		f 4 262 -99 263 -26
		mu 0 4 10 33 11 13
		f 4 -87 264 -21 -264
		mu 0 4 11 12 15 13
		f 4 -138 265 -145 -265
		mu 0 4 12 14 17 15
		f 4 -148 266 -155 -266
		mu 0 4 14 16 19 17
		f 4 -158 267 -165 -267
		mu 0 4 16 18 21 19
		f 4 -2 -257 -38 -268
		mu 0 4 18 20 4 21
		f 4 -14 268 -53 -258
		mu 0 4 5 22 25 23
		f 4 -168 269 -175 -269
		mu 0 4 22 24 27 25
		f 4 -178 270 -185 -270
		mu 0 4 24 26 29 27
		f 4 -188 271 -195 -271
		mu 0 4 26 28 31 29
		f 4 -124 -261 -55 -272
		mu 0 4 28 30 8 31
		f 4 -34 272 -104 -263
		mu 0 4 10 32 35 33
		f 4 -198 273 -205 -273
		mu 0 4 32 34 86 35
		f 4 -208 274 -215 -274
		mu 0 4 88 36 39 37
		f 4 -218 275 -225 -275
		mu 0 4 36 38 41 39
		f 4 -70 -259 -106 -276
		mu 0 4 38 40 6 41
		f 4 -82 276 -121 -260
		mu 0 4 7 42 45 43
		f 4 -228 277 -235 -277
		mu 0 4 42 44 47 45
		f 4 -238 278 -245 -278
		mu 0 4 44 46 94 47
		f 4 -248 279 -255 -279
		mu 0 4 97 48 51 49
		f 4 -68 -262 -135 -280
		mu 0 4 48 50 9 51
		f 24 -250 -240 -230 -84 -79 -69 -220 -210 -200 -36 -31 -19 -143 -153 -163 -39 -43 -51
		 -173 -183 -193 -56 -60 -67
		mu 0 24 96 95 93 92 74 2 90 89 87 85 73 1 52 53 54 79 55 56 57 58 59 84 60 61
		f 24 -133 -123 -190 -180 -170 -16 -11 -1 -160 -150 -140 -89 -94 -102 -203 -213 -223
		 -107 -111 -119 -233 -243 -253 -136
		mu 0 24 99 3 83 82 81 80 72 0 78 77 76 75 62 63 64 65 66 91 67 68 69 70 71 98
		f 4 -12 15 16 -281
		mu 0 4 104 72 80 164
		f 4 -5 281 12 13
		mu 0 4 5 103 163 22
		f 4 -9 280 14 -282
		mu 0 4 103 105 165 163
		f 4 -23 20 21 -283
		mu 0 4 108 13 15 147
		f 4 -30 283 17 18
		mu 0 4 1 107 146 52
		f 4 -27 282 19 -284
		mu 0 4 106 108 147 145
		f 4 -32 35 36 -285
		mu 0 4 110 73 85 185
		f 4 -25 285 32 33
		mu 0 4 10 109 184 32
		f 4 -29 284 34 -286
		mu 0 4 109 111 186 184
		f 4 -49 52 53 -287
		mu 0 4 115 23 25 167
		f 4 -42 287 49 50
		mu 0 4 56 114 166 57
		f 4 -46 286 51 -288
		mu 0 4 114 115 167 166
		f 4 -80 83 84 -289
		mu 0 4 125 74 92 207
		f 4 -73 289 80 81
		mu 0 4 7 124 206 42
		f 4 -77 288 82 -290
		mu 0 4 124 125 207 206
		f 4 -91 88 89 -291
		mu 0 4 127 62 75 143
		f 4 -98 291 85 86
		mu 0 4 11 126 142 12
		f 4 -95 290 87 -292
		mu 0 4 126 128 144 142
		f 4 -100 103 104 -293
		mu 0 4 131 33 35 189
		f 4 -93 293 100 101
		mu 0 4 63 130 188 64
		f 4 -97 292 102 -294
		mu 0 4 129 131 189 187
		f 4 -117 120 121 -295
		mu 0 4 135 43 45 209
		f 4 -110 295 117 118
		mu 0 4 68 134 208 69
		f 4 -114 294 119 -296
		mu 0 4 134 135 209 208
		f 4 -90 139 140 -297
		mu 0 4 143 75 76 149
		f 4 -86 297 136 137
		mu 0 4 12 142 148 14
		f 4 -88 296 138 -298
		mu 0 4 142 144 150 148
		f 4 -22 144 145 -299
		mu 0 4 147 15 17 152
		f 4 -18 299 141 142
		mu 0 4 52 146 151 53
		f 4 -20 298 143 -300
		mu 0 4 145 147 152 151
		f 4 -141 149 150 -301
		mu 0 4 149 76 77 154
		f 4 -137 301 146 147
		mu 0 4 14 148 153 16
		f 4 -139 300 148 -302
		mu 0 4 148 150 155 153
		f 4 -146 154 155 -303
		mu 0 4 152 17 19 157
		f 4 -142 303 151 152
		mu 0 4 53 151 156 54
		f 4 -144 302 153 -304
		mu 0 4 151 152 157 156
		f 4 -151 159 160 -305
		mu 0 4 154 77 78 159
		f 4 -147 305 156 157
		mu 0 4 16 153 158 18
		f 4 -149 304 158 -306
		mu 0 4 153 155 160 158
		f 4 -156 164 165 -307
		mu 0 4 157 19 21 162
		f 4 -152 307 161 162
		mu 0 4 54 156 161 79
		f 4 -154 306 163 -308
		mu 0 4 156 157 162 161
		f 4 -10 308 -161 0
		mu 0 4 0 101 159 78
		f 4 -7 309 -159 -309
		mu 0 4 100 102 158 160
		f 4 -3 1 -157 -310
		mu 0 4 102 20 18 158
		f 4 -47 310 -166 37
		mu 0 4 4 112 162 21
		f 4 -44 311 -164 -311
		mu 0 4 112 113 161 162
		f 4 -40 38 -162 -312
		mu 0 4 113 55 79 161
		f 4 -17 169 170 -313
		mu 0 4 164 80 81 169
		f 4 -13 313 166 167
		mu 0 4 22 163 168 24
		f 4 -15 312 168 -314
		mu 0 4 163 165 170 168
		f 4 -54 174 175 -315
		mu 0 4 167 25 27 172
		f 4 -50 315 171 172
		mu 0 4 57 166 171 58
		f 4 -52 314 173 -316
		mu 0 4 166 167 172 171
		f 4 -171 179 180 -317
		mu 0 4 169 81 82 174
		f 4 -167 317 176 177
		mu 0 4 24 168 173 26
		f 4 -169 316 178 -318
		mu 0 4 168 170 175 173
		f 4 -176 184 185 -319
		mu 0 4 172 27 29 177
		f 4 -172 319 181 182
		mu 0 4 58 171 176 59
		f 4 -174 318 183 -320
		mu 0 4 171 172 177 176
		f 4 -181 189 190 -321
		mu 0 4 174 82 83 179
		f 4 -177 321 186 187
		mu 0 4 26 173 178 28
		f 4 -179 320 188 -322
		mu 0 4 173 175 180 178
		f 4 -186 194 195 -323
		mu 0 4 177 29 31 183
		f 4 -182 323 191 192
		mu 0 4 59 176 182 84
		f 4 -184 322 193 -324
		mu 0 4 176 177 183 181
		f 4 -132 324 -191 122
		mu 0 4 3 137 179 83
		f 4 -129 325 -189 -325
		mu 0 4 136 138 178 180
		f 4 -125 123 -187 -326
		mu 0 4 138 30 28 178
		f 4 -64 326 -196 54
		mu 0 4 8 116 183 31
		f 4 -61 327 -194 -327
		mu 0 4 116 118 181 183
		f 4 -57 55 -192 -328
		mu 0 4 117 60 84 182
		f 4 -37 199 200 -329
		mu 0 4 185 85 87 192
		f 4 -33 329 196 197
		mu 0 4 32 184 191 34
		f 4 -35 328 198 -330
		mu 0 4 184 186 193 191
		f 4 -105 204 205 -331
		mu 0 4 189 35 86 197
		f 4 -101 331 201 202
		mu 0 4 64 188 194 65
		f 4 -103 330 203 -332
		mu 0 4 187 189 197 195
		f 4 -201 209 210 -333
		mu 0 4 192 87 89 199
		f 4 -197 333 206 207
		mu 0 4 88 190 198 36
		f 4 -199 332 208 -334
		mu 0 4 190 192 199 198
		f 4 -206 214 215 -335
		mu 0 4 196 37 39 201
		f 4 -202 335 211 212
		mu 0 4 65 194 200 66
		f 4 -204 334 213 -336
		mu 0 4 194 196 201 200
		f 4 -211 219 220 -337
		mu 0 4 199 89 90 203
		f 4 -207 337 216 217
		mu 0 4 36 198 202 38
		f 4 -209 336 218 -338
		mu 0 4 198 199 203 202
		f 4 -216 224 225 -339
		mu 0 4 201 39 41 205
		f 4 -212 339 221 222
		mu 0 4 66 200 204 91
		f 4 -214 338 223 -340
		mu 0 4 200 201 205 204
		f 4 -78 340 -221 68
		mu 0 4 2 122 203 90
		f 4 -75 341 -219 -341
		mu 0 4 122 123 202 203
		f 4 -71 69 -217 -342
		mu 0 4 123 40 38 202
		f 4 -115 342 -226 105
		mu 0 4 6 132 205 41
		f 4 -112 343 -224 -343
		mu 0 4 132 133 204 205
		f 4 -108 106 -222 -344
		mu 0 4 133 67 91 204
		f 4 -85 229 230 -345
		mu 0 4 207 92 93 211
		f 4 -81 345 226 227
		mu 0 4 42 206 210 44
		f 4 -83 344 228 -346
		mu 0 4 206 207 211 210
		f 4 -122 234 235 -347
		mu 0 4 209 45 47 213
		f 4 -118 347 231 232
		mu 0 4 69 208 212 70
		f 4 -120 346 233 -348
		mu 0 4 208 209 213 212
		f 4 -231 239 240 -349
		mu 0 4 211 93 95 216
		f 4 -227 349 236 237
		mu 0 4 44 210 215 46
		f 4 -229 348 238 -350
		mu 0 4 210 211 216 215
		f 4 -236 244 245 -351
		mu 0 4 213 47 94 221
		f 4 -232 351 241 242
		mu 0 4 70 212 219 71
		f 4 -234 350 243 -352
		mu 0 4 212 213 221 219
		f 4 -241 249 250 -353
		mu 0 4 216 95 96 223
		f 4 -237 353 246 247
		mu 0 4 97 214 222 48
		f 4 -239 352 248 -354
		mu 0 4 214 217 224 222
		f 4 -246 254 255 -355
		mu 0 4 220 49 51 227
		f 4 -242 355 251 252
		mu 0 4 71 219 226 98
		f 4 -244 354 253 -356
		mu 0 4 218 220 227 225
		f 4 -59 356 -251 66
		mu 0 4 61 120 223 96
		f 4 -63 357 -249 -357
		mu 0 4 119 121 222 224
		f 4 -66 67 -247 -358
		mu 0 4 121 50 48 222
		f 4 -127 358 -256 134
		mu 0 4 9 139 227 51
		f 4 -131 359 -254 -359
		mu 0 4 139 141 225 227
		f 4 -134 135 -252 -360
		mu 0 4 140 99 98 226;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Cushion04" -p "Cushions";
	rename -uid "9E19AC67-4609-3838-0710-E087DFD31CC5";
	setAttr ".rp" -type "double3" -1.2276548438198556 0.36815438751456536 1.8883580080228271 ;
	setAttr ".sp" -type "double3" -1.2276548438198556 0.36815438751456536 1.8883580080228271 ;
createNode mesh -n "CushionShape4" -p "|Couch|Cushions|Cushion04";
	rename -uid "BB66B5C7-41C9-5925-D9CB-A3BE17D497E6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 16 "f[12:13]" "f[19:20]" "f[25]" "f[40:45]" "f[63:64]" "f[71]" "f[73]" "f[129:131]" "f[133]" "f[135:137]" "f[139]" "f[141:144]" "f[147:149]" "f[151]" "f[153:155]" "f[157]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 24 "f[2]" "f[15]" "f[18]" "f[23]" "f[49:50]" "f[65]" "f[69]" "f[72]" "f[74]" "f[80]" "f[86]" "f[92]" "f[98]" "f[104]" "f[110]" "f[116]" "f[126]" "f[132]" "f[138]" "f[145]" "f[150]" "f[156]" "f[162]" "f[169]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 16 "f[0:1]" "f[7:8]" "f[24]" "f[30:35]" "f[51:52]" "f[59]" "f[61]" "f[81:83]" "f[85]" "f[87:89]" "f[91]" "f[93:96]" "f[99:101]" "f[103]" "f[105:107]" "f[109]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 13 "f[3:4]" "f[16:17]" "f[27:29]" "f[38:39]" "f[53]" "f[55]" "f[57:58]" "f[66:68]" "f[70]" "f[75:77]" "f[79]" "f[123:125]" "f[127]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 11 "f[10:11]" "f[21:22]" "f[26]" "f[36:37]" "f[46:47]" "f[111:113]" "f[115]" "f[117:120]" "f[159:161]" "f[163]" "f[165:168]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 23 "f[5:6]" "f[9]" "f[14]" "f[48]" "f[54]" "f[56]" "f[60]" "f[62]" "f[78]" "f[84]" "f[90]" "f[97]" "f[102]" "f[108]" "f[114]" "f[121:122]" "f[128]" "f[134]" "f[140]" "f[146]" "f[152]" "f[158]" "f[164]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 228 ".uvst[0].uvsp[0:227]" -type "float2" 0.14193605 0.33524507
		 0.38241979 0.27207157 0.4002184 0.49424756 0.61758024 0.97792852 0.3999975 0.21774843
		 0.60000253 0.032252215 0.39999747 0.7177484 0.60000253 0.53225148 0.64659894 0.21775039
		 0.85340106 0.03224957 0.14659891 0.21775027 0.35340106 0.032250222 0.36305103 0.032260206
		 0.35340106 0.21773332 0.37264109 0.032260966 0.36405879 0.21772695 0.38184342 0.03224444
		 0.37465036 0.21772636 0.39095029 0.032245427 0.38317689 0.21772502 0.3999975 0.032268137
		 0.39161485 0.21773946 0.60972548 0.032260556 0.60000247 0.21773201 0.61951274 0.032246217
		 0.60848528 0.21772446 0.62826723 0.032247066 0.61702406 0.21772343 0.63740456 0.03224821
		 0.62548405 0.21773942 0.64659894 0.032266688 0.63600862 0.21773927 0.13576588 0.21773928
		 0.14659892 0.032266963 0.12500001 0.2177394 0.13576588 0.03227305 0.3834089 0.53224552
		 0.375 0.71772587 0.39173043 0.53224558 0.3834089 0.71772492 0.3999975 0.53226817
		 0.3917304 0.71773946 0.60826957 0.53226054 0.60000247 0.71773201 0.6165911 0.53224558
		 0.60826951 0.71772444 0.625 0.5322473 0.6165911 0.71772343 0.86423415 0.21775198
		 0.87499994 0.032260716 0.85340106 0.21773304 0.86423421 0.03226066 0.38337821 0.26689932
		 0.38587376 0.26269057 0.38975415 0.25935376 0.40063378 0.25640187 0.59981984 0.25571516
		 0.60652095 0.25497776 0.61251515 0.25479519 0.61839098 0.25480551 0.16582221 0.080288112
		 0.61758024 0.47792846 0.10989688 0.26439011 0.38241985 0.77207154 0.38337824 0.76689941
		 0.38587376 0.7626906 0.38975415 0.75935382 0.40063378 0.7564019 0.59981984 0.75571519
		 0.60652089 0.75497782 0.61251521 0.75479519 0.61839104 0.75480551 0.59936625 0.99359816
		 0.10989352 0.12640339 0.59936625 0.4935981 0.013927314 0.017194081 0.013181809 0.016273713
		 0.013181828 0.016273735 0.013516713 0.01668717 0.39463949 0.25721708 0.60536283 0.99278909
		 0.61024994 0.99065101 0.61413127 0.98731261 0.61662745 0.98310226 0.28827006 0.12261648
		 0.18166479 0.22970219 0.12500001 0.032273784 0.38154882 0.49524859 0.375 0.53226012
		 0.38747656 0.49521533 0.39344484 0.49505967 0.39463955 0.75721711 0.60536289 0.49278909
		 0.61024994 0.49065089 0.625 0.7177394 0.61413133 0.48731256 0.61662745 0.4831022
		 0.875 0.21775219 0.28826812 0.35768113 0.16582276 0.2181638 0.3999975 0 0.39999753
		 1 0.39992771 0.016287185 0.60008979 0.016277233 0.60000247 1 0.60000253 7.4505806e-09
		 0.35340106 0.25 0.375 0.27159894 0.35348254 0.23384467 0.14650874 0.23385179 0.37500003
		 0.47840109 0.14659891 0.25 0.40008974 0.23038019 0.4003211 0.24325375 0.5999707 0.2427759
		 0.6000461 0.23012994 0.64650762 0.23385651 0.625 0.27159894 0.64659894 0.25 0.85340106
		 0.25 0.62500006 0.47840109 0.85348129 0.23384009 0.40001184 0.5070039 0.39992452
		 0.51969934 0.5998584 0.51946753 0.5996359 0.50655717 0.35348424 0.016143484 0.37500003
		 0.97840112 0.35340106 -5.5879354e-09 0.14659892 -5.5879354e-09 0.375 0.77159894 0.14651869
		 0.016159935 0.39999041 0.73017323 0.40020561 0.74301428 0.59982806 0.74709791 0.59999168
		 0.73903751 0.64659894 -5.5879354e-09 0.62500006 0.97840112 0.64652938 0.016155146
		 0.85349125 0.016148174 0.625 0.77159894 0.85340106 -5.5879354e-09 0.36301824 0.016690223
		 0 0 0.36287573 -4.4517146e-09 0.36423415 0.25 0 0 0.36417651 0.23327009 0.37250718
		 0.016793929 0 0 0.37229159 -3.3225458e-09 0.375 0.25 0.37476751 0.23293 0.38177675
		 0.016847923 0 0 0.38161162 -2.2048714e-09 0.38623711 0.24439469 0.38446349 0.23061804
		 0.39090881 0.01683943 0 0 0.39083475 -1.0988169e-09 0.39336503 0.2426964 0.3924194
		 0.22978538 0.60982597 0.016841758 0 0 0.60994118 4.4883262e-09 0.607364 0.24135743
		 0.60795718 0.22915606 0.61956954 0.016849069 0 0 0.61994541 1.5065442e-09 0.61488044
		 0.24238506 0.61607802 0.22975087 0.62847036 0.016789634 0 0 0.62875104 -8.3728452e-10
		 0.625 0.25 0.62533462 0.23285758 0.63748723 0.016692024 0 0 0.63764721 -3.2052145e-09
		 0.63576585 0.25 0 0 0.63584393 0.2332717 0.13598683 0.2326328 0 0 0.13576587 0.25
		 0.13576587 -2.7852778e-09 0 0 0.13601229 0.017404329 0.27605045 0.39181504 0.12784076
		 0.22625186 0.17603348 0.24985494 0.13071214 0.23485614 0.17593805 0.33673412 0.13071488
		 0.01514183 0.27600583 0.52825743 0.12784204 0.023754008 0.36784661 0.49618196 0.36629921
		 0.47597304 0.35177335 0.67274904 0.36147392 0.68266982 0.38976291 0.51410931 0.39053407
		 0.49723378 0.38721767 0.72986066 0.38784572 0.72013968 0.60427713 0.51383764 0.60494804
		 0.49683157 0.59606832 0.72853196 0.59980339 0.72054857 0.5888992 0.49550134 0.58654296
		 0.47623512 0.55445212 0.66754645 0.57703143 0.68179971 0.87215924 0.22626124 0.46008456
		 0.39180604 0.29338112 0.24984209 0.86928773 0.23486257 0.86928642 0.015139684 0.2933073
		 0.33682913 0.87215918 0.023748185 0.46008328 0.52835184 0.86398834 0.23260981 0 0
		 0.86423415 0.25 0.86423415 -2.785276e-09 0 0 0.86401296 0.017371623;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 192 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0 0 -0.50206149 0 0 -0.5027687 0 0 
		-0.50328642 0 0 -0.5034759 0 0 -0.5034759 0 0 -0.50328672 0 0 -0.50276977 0 0 -0.50206363 
		0 0 -0.49860683 0 0 -0.49865898 0 0 -0.49869713 0 0 -0.49871111 0 0 -0.45308965 0 
		0 -0.45310622 0 0 -0.45315149 0 0 -0.45321336 0 0 -0.5034759 0 0 -0.50328672 0 0 
		-0.50276977 0 0 -0.50206363 0 0 -0.50206149 0 0 -0.5027687 0 0 -0.50328642 0 0 -0.5034759 
		0 0 -0.49871111 0 0 -0.49869454 0 0 -0.49864924 0 0 -0.4985874 0 0 -0.4531939 0 0 
		-0.45314178 0 0 -0.45310363 0 0 -0.45308965 0 0 -0.44973931 0 0 -0.44903207 0 0 -0.44851434 
		0 0 -0.44832483 0 0 -0.44832483 0 0 -0.44851404 0 0 -0.449031 0 0 -0.44973713 0 0 
		-0.49871111 0 0 -0.49869454 0 0 -0.49864924 0 0 -0.4985874 0 0 -0.4531939 0 0 -0.45314178 
		0 0 -0.45310363 0 0 -0.45308965 0 0 -0.44832483 0 0 -0.44851404 0 0 -0.449031 0 0 
		-0.44973713 0 0 -0.44973931 0 0 -0.44903207 0 0 -0.44851434 0 0 -0.44832483 0 0 -0.49860683 
		0 0 -0.49865898 0 0 -0.49869713 0 0 -0.49871111 0 0 -0.45308965 0 0 -0.45310622 0 
		0 -0.45315149 0 0 -0.45321336 0 0 -0.50018352 0 0 -0.5001229 0 0 -0.4999572 0 0 -0.49973091 
		0 0 -0.49974784 0 0 -0.49996567 0 0 -0.50012517 0 0 -0.50018352 0 0 -0.50151181 0 
		0 -0.50139809 0 0 -0.50108743 0 0 -0.50066304 0 0 -0.50067633 0 0 -0.50109404 0 0 
		-0.50139987 0 0 -0.50151181 0 0 -0.50256592 0 0 -0.50241017 0 0 -0.50198472 0 0 -0.50140345 
		0 0 -0.50141245 0 0 -0.50198919 0 0 -0.50241137 0 0 -0.50256592 0 0 -0.50324273 0 
		0 -0.5030601 0 0 -0.50256121 0 0 -0.50187969 0 0 -0.5018838 0 0 -0.50256324 0 0 -0.50306064 
		0 0 -0.50324273 0 0 -0.50324273 0 0 -0.50306082 0 0 -0.50256395 0 0 -0.50188518 0 
		0 -0.50187844 0 0 -0.50256056 0 0 -0.50305992 0 0 -0.50324273 0 0 -0.50256592 0 0 
		-0.50241154 0 0 -0.50198972 0 0 -0.50141346 0 0 -0.50140232 0 0 -0.50198412 0 0 -0.50241005 
		0 0 -0.50256592 0 0 -0.50151181 0 0 -0.50139993 0 0 -0.5010944 0 0 -0.50067699 0 
		0 -0.50066209 0 0 -0.50108695 0 0 -0.50139797 0 0 -0.50151181 0 0 -0.50018352 0 0 
		-0.50012517 0 0 -0.49996585 0 0 -0.4997482 0 0 -0.49973035 0 0 -0.49995694 0 0 -0.50012279 
		0 0 -0.50018352 0 0 -0.45161724 0 0 -0.45167789 0 0 -0.45184353 0 0 -0.45206985 0 
		0 -0.45205292 0 0 -0.45183507 0 0 -0.45167562 0 0 -0.45161724 0 0 -0.45028895 0 0 
		-0.45040268 0 0 -0.45071334 0 0 -0.45113772 0 0 -0.45112443 0 0 -0.45070669 0 0 -0.45040089 
		0 0 -0.45028895 0 0 -0.44923484 0 0 -0.44939059 0 0 -0.44981608 0 0 -0.45039731 0 
		0 -0.45038834 0 0 -0.44981158 0 0 -0.44938937 0 0 -0.44923484 0 0 -0.44855803 0 0 
		-0.44874066 0 0 -0.44923955 0 0 -0.44992107 0 0 -0.44991696 0 0 -0.4492375 0 0 -0.44874009 
		0 0 -0.44855803 0 0 -0.44855803 0 0 -0.44873992 0 0 -0.44923681 0 0 -0.44991559 0 
		0 -0.44992232 0 0 -0.44924018;
	setAttr ".pt[166:191]" 0 0 -0.44874081 0 0 -0.44855803 0 0 -0.44923484 0 0 
		-0.44938925 0 0 -0.44981107 0 0 -0.4503873 0 0 -0.45039847 0 0 -0.44981664 0 0 -0.44939074 
		0 0 -0.44923484 0 0 -0.45028895 0 0 -0.4504008 0 0 -0.45070636 0 0 -0.45112374 0 
		0 -0.45113865 0 0 -0.45071381 0 0 -0.4504028 0 0 -0.45028895 0 0 -0.45161724 0 0 
		-0.45167556 0 0 -0.45183492 0 0 -0.45205256 0 0 -0.45207039 0 0 -0.45184383 0 0 -0.45167795 
		0 0 -0.45161724;
	setAttr -s 192 ".vt";
	setAttr ".vt[0:165]"  -2.51817513 0.36815441 2.35093427 -2.51961184 0.37344205 2.37138391
		 -2.52066374 0.38788819 2.38635468 -2.52104878 0.40762195 2.39183378 -1.45682335 0.40760192 2.39183378
		 -1.45727694 0.38787818 2.38636279 -1.45851612 0.37343937 2.37141562 -1.46020889 0.36815441 2.35099721
		 -2.61457944 0.67393404 2.2510426 -2.63432002 0.66864663 2.25255013 -2.64877081 0.65420103 2.25365353
		 -2.65406036 0.63446808 2.25405741 -2.65406036 0.63448894 0.93489712 -2.64877963 0.65421152 0.93537635
		 -2.63435221 0.66864938 0.93668556 -2.61464429 0.67393404 0.93847394 -2.52104878 0.63448656 2.39183378
		 -2.52059531 0.65421033 2.38636279 -2.51935601 0.66864908 2.37141562 -2.51766324 0.67393404 2.35099721
		 -1.45969701 0.67393404 2.35093427 -1.45826018 0.6686464 2.37138391 -1.4572084 0.65420026 2.38635468
		 -1.45682335 0.63446647 2.39183378 -1.32381189 0.63448894 2.25405741 -1.32909262 0.65421152 2.25357842
		 -1.34351993 0.66864938 2.25226903 -1.36322796 0.67393404 2.25048065 -1.36329269 0.67393404 0.93791193
		 -1.34355235 0.66864663 0.93640453 -1.32910132 0.65420103 0.93530101 -1.32381189 0.63446808 0.93489712
		 -2.51817513 0.67393404 0.83802038 -2.51961184 0.6686464 0.81757063 -2.52066374 0.65420026 0.80260032
		 -2.52104878 0.63446647 0.79712081 -1.45682335 0.63448656 0.79712081 -1.45727694 0.65421033 0.80259186
		 -1.45851612 0.66864908 0.81753916 -1.46020889 0.67393404 0.83795744 -2.65406036 0.40759951 2.25405741
		 -2.64877963 0.38787696 2.25357842 -2.63435221 0.37343904 2.25226903 -2.61464429 0.36815441 2.25048065
		 -2.61457944 0.36815441 0.93791193 -2.63432002 0.37344185 0.93640453 -2.64877081 0.38788742 0.93530101
		 -2.65406036 0.4076204 0.93489712 -2.52104878 0.40760192 0.79712081 -2.52059531 0.38787818 0.80259186
		 -2.51935601 0.37343937 0.81753916 -2.51766324 0.36815441 0.83795744 -1.45969701 0.36815441 0.83802038
		 -1.45826018 0.37344205 0.81757063 -1.4572084 0.38788819 0.80260032 -1.45682335 0.40762195 0.79712081
		 -1.36329269 0.36815441 2.2510426 -1.34355235 0.37344185 2.25255013 -1.32910132 0.38788742 2.25365353
		 -1.32381189 0.4076204 2.25405741 -1.32381189 0.40759951 0.93489712 -1.32909262 0.38787696 0.93537635
		 -1.34351993 0.37343904 0.93668556 -1.36322796 0.36815441 0.93847394 -2.64755034 0.40761307 2.29663277
		 -2.64247608 0.38788372 2.29487944 -2.62861323 0.37344086 2.29008937 -2.60967636 0.36815441 2.28354597
		 -2.6094799 0.67393404 2.28403544 -2.62851524 0.66864556 2.29033399 -2.64244986 0.65419716 2.294945
		 -2.64755034 0.63446027 2.29663277 -2.62865734 0.40761295 2.33504033 -2.6243515 0.38788369 2.3317523
		 -2.61258769 0.37344086 2.3227694 -2.59651804 0.36815441 2.31049871 -2.59620118 0.67393404 2.31088257
		 -2.61242914 0.66864544 2.32296157 -2.62430906 0.65419674 2.3318038 -2.62865734 0.63445938 2.33504033
		 -2.599231 0.40759325 2.36552143 -2.59611368 0.38787383 2.36101794 -2.58759713 0.37343821 2.34871459
		 -2.5759635 0.36815441 2.33190799 -2.57555366 0.67393404 2.33216786 -2.58739233 0.6686452 2.34884477
		 -2.59605885 0.6541959 2.36105275 -2.599231 0.63445777 2.36552143 -2.56215167 0.40759441 2.38509059
		 -2.56052852 0.38787442 2.37981033 -2.55609393 0.37343836 2.36538458 -2.55003619 0.36815441 2.34567833
		 -2.54955864 0.67393404 2.3457973 -2.55585504 0.66864759 2.36544371 -2.56046438 0.65420485 2.37982631
		 -2.56215167 0.63447559 2.38509059 -1.41572058 0.40761286 2.38509059 -1.41740608 0.38788363 2.37983155
		 -1.42201078 0.37344083 2.3654635 -1.42830098 0.36815441 2.3458364 -1.42784739 0.67393404 2.34564161
		 -1.42178392 0.66864514 2.36536598 -1.41734529 0.65419567 2.37980556 -1.41572058 0.63445723 2.38509059
		 -1.37864113 0.40759492 2.36552143 -1.38181043 0.38787466 2.3610568 -1.39046907 0.37343845 2.34885979
		 -1.40229702 0.36815441 2.3321979 -1.40193176 0.67393404 2.33187437 -1.39028645 0.66864496 2.34869766
		 -1.38176155 0.65419501 2.36101365 -1.37864113 0.63445598 2.36552143 -1.34921479 0.40759641 2.33504033
		 -1.35355949 0.38787541 2.33180642 -1.3654294 0.37343863 2.32297182 -1.38164413 0.36815441 2.3109026
		 -1.38138938 0.67393404 2.31047177 -1.36530209 0.66864759 2.32275605 -1.3535254 0.65420479 2.33174896
		 -1.34921479 0.63447553 2.33504033 -1.33032191 0.40759724 2.29663277 -1.33541846 0.38787583 2.29494619
		 -1.34934223 0.37343875 2.29033899 -1.36836243 0.36815441 2.28404522 -1.36824298 0.67393404 2.28352976
		 -1.34928238 0.66864759 2.2900815 -1.33540237 0.65420473 2.29487729 -1.33032191 0.63447535 2.29663277
		 -2.64755034 0.63447535 0.89232188 -2.64247608 0.65420473 0.89407516 -2.62861323 0.66864759 0.89886534
		 -2.60967636 0.67393404 0.90540874 -2.6094799 0.36815441 0.90491933 -2.62851524 0.37344289 0.89862061
		 -2.64244986 0.38789129 0.89400959 -2.64755034 0.40762818 0.89232188 -2.62865734 0.63447553 0.8539142
		 -2.6243515 0.65420479 0.85720217 -2.61258769 0.66864759 0.86618507 -2.59651828 0.67393404 0.87845594
		 -2.59620118 0.36815441 0.8780722 -2.61242938 0.37344301 0.86599326 -2.62430906 0.38789174 0.85715079
		 -2.62865734 0.40762907 0.8539142 -2.599231 0.6344952 0.82343376 -2.59611368 0.65421462 0.82793713
		 -2.58759737 0.66865021 0.84024036 -2.5759635 0.67393404 0.85704714 -2.57555366 0.36815441 0.85678744
		 -2.58739233 0.37344322 0.8401106 -2.59605885 0.38789254 0.82790232 -2.599231 0.40763065 0.82343376
		 -2.56215167 0.63449407 0.803864 -2.56052852 0.65421402 0.80914426 -2.55609369 0.66865009 0.82357013
		 -2.55003595 0.67393404 0.84327632 -2.5495584 0.36815441 0.84315771 -2.55585504 0.37344083 0.82351089
		 -2.56046438 0.38788363 0.8091284 -2.56215167 0.40761286 0.803864 -1.41572058 0.63447559 0.803864
		 -1.41740608 0.65420485 0.8091231 -1.4220109 0.66864759 0.8234911 -1.4283011 0.67393404 0.84311813
		 -1.42784762 0.36815441 0.84331304 -1.42178404 0.37344331 0.82358855;
	setAttr ".vt[166:191]" -1.41734529 0.38789281 0.80914921 -1.41572058 0.40763122 0.803864
		 -1.37864113 0.63449353 0.82343376 -1.38181043 0.65421379 0.82789826 -1.39046907 0.66865003 0.84009546
		 -1.40229702 0.67393404 0.85675728 -1.40193176 0.36815441 0.85708052 -1.39028645 0.37344345 0.84025717
		 -1.38176155 0.38789344 0.82794148 -1.37864113 0.40763244 0.82343376 -1.34921479 0.63449204 0.8539142
		 -1.35355949 0.65421307 0.85714811 -1.3654294 0.66864979 0.86598319 -1.38164401 0.67393404 0.87805223
		 -1.38138926 0.36815441 0.87848282 -1.36530209 0.37344086 0.86619854 -1.3535254 0.38788366 0.85720581
		 -1.34921479 0.40761295 0.8539142 -1.33032191 0.63449121 0.89232188 -1.33541846 0.65421259 0.89400834
		 -1.34934223 0.66864973 0.89861566 -1.36836243 0.67393404 0.90490943 -1.36824298 0.36815441 0.90542495
		 -1.34928238 0.37344086 0.89887339 -1.33540237 0.38788372 0.89407736 -1.33032191 0.40761307 0.89232188;
	setAttr -s 360 ".ed";
	setAttr ".ed[0:165]"  91 0 1 3 88 1 3 2 1 2 5 1 5 4 1 4 3 1 2 1 1 1 6 0 6 5 1
		 1 0 1 0 7 1 7 6 1 97 96 1 96 4 1 98 97 1 7 99 1 99 98 1 69 68 1 68 8 1 70 69 1 11 71 1
		 71 70 1 11 10 1 10 13 1 13 12 1 12 11 1 10 9 1 9 14 0 14 13 1 9 8 1 8 15 1 15 14 1
		 129 128 1 128 12 1 130 129 1 15 131 1 131 130 1 95 16 1 19 92 1 19 18 1 18 21 0 21 20 1
		 20 19 1 18 17 1 17 22 1 22 21 1 17 16 1 16 23 1 23 22 1 101 100 1 100 20 1 102 101 1
		 23 103 1 103 102 1 127 24 1 27 124 1 27 26 1 26 29 0 29 28 1 28 27 1 26 25 1 25 30 1
		 30 29 1 25 24 1 24 31 1 31 30 1 187 28 1 31 184 1 155 32 1 35 152 1 35 34 1 34 37 1
		 37 36 1 36 35 1 34 33 1 33 38 0 38 37 1 33 32 1 32 39 1 39 38 1 161 160 1 160 36 1
		 162 161 1 39 163 1 163 162 1 65 64 1 64 40 1 66 65 1 43 67 1 67 66 1 43 42 1 42 45 0
		 45 44 1 44 43 1 42 41 1 41 46 1 46 45 1 41 40 1 40 47 1 47 46 1 133 132 1 132 44 1
		 134 133 1 47 135 1 135 134 1 159 48 1 51 156 1 51 50 1 50 53 0 53 52 1 52 51 1 50 49 1
		 49 54 1 54 53 1 49 48 1 48 55 1 55 54 1 165 164 1 164 52 1 166 165 1 55 167 1 167 166 1
		 123 56 1 59 120 1 59 58 1 58 61 1 61 60 1 60 59 1 58 57 1 57 62 0 62 61 1 57 56 1
		 56 63 1 63 62 1 191 60 1 63 188 1 73 72 1 72 64 1 74 73 1 67 75 1 75 74 1 77 76 1
		 76 68 1 78 77 1 71 79 1 79 78 1 81 80 1 80 72 1 82 81 1 75 83 1 83 82 1 85 84 1 84 76 1
		 86 85 1 79 87 1 87 86 1 89 88 1 88 80 1 90 89 1 83 91 1 91 90 1 93 92 1 92 84 1 94 93 1
		 87 95 1 95 94 1;
	setAttr ".ed[166:331]" 105 104 1 104 96 1 106 105 1 99 107 1 107 106 1 109 108 1
		 108 100 1 110 109 1 103 111 1 111 110 1 113 112 1 112 104 1 114 113 1 107 115 1 115 114 1
		 117 116 1 116 108 1 118 117 1 111 119 1 119 118 1 121 120 1 120 112 1 122 121 1 115 123 1
		 123 122 1 125 124 1 124 116 1 126 125 1 119 127 1 127 126 1 137 136 1 136 128 1 138 137 1
		 131 139 1 139 138 1 141 140 1 140 132 1 142 141 1 135 143 1 143 142 1 145 144 1 144 136 1
		 146 145 1 139 147 1 147 146 1 149 148 1 148 140 1 150 149 1 143 151 1 151 150 1 153 152 1
		 152 144 1 154 153 1 147 155 1 155 154 1 157 156 1 156 148 1 158 157 1 151 159 1 159 158 1
		 169 168 1 168 160 1 170 169 1 163 171 1 171 170 1 173 172 1 172 164 1 174 173 1 167 175 1
		 175 174 1 177 176 1 176 168 1 178 177 1 171 179 1 179 178 1 181 180 1 180 172 1 182 181 1
		 175 183 1 183 182 1 185 184 1 184 176 1 186 185 1 179 187 1 187 186 1 189 188 1 188 180 1
		 190 189 1 183 191 1 191 190 1 16 3 1 4 23 1 48 35 1 36 55 1 24 59 1 60 31 1 12 47 1
		 40 11 1 64 71 1 72 79 1 80 87 1 88 95 1 96 103 1 104 111 1 112 119 1 120 127 1 128 135 1
		 136 143 1 144 151 1 152 159 1 160 167 1 168 175 1 176 183 1 184 191 1 6 98 0 5 97 1
		 10 70 0 9 69 1 14 130 0 13 129 1 22 102 0 21 101 1 38 162 0 37 161 1 42 66 0 41 65 1
		 46 134 0 45 133 1 54 166 0 53 165 1 66 74 0 65 73 1 70 78 1 69 77 1 74 82 0 73 81 1
		 78 86 0 77 85 1 82 90 1 81 89 0 86 94 0 85 93 1 1 90 1 2 89 0 17 94 1 18 93 1 98 106 0
		 97 105 1 102 110 0 101 109 1 106 114 1 105 113 1 110 118 0 109 117 1 114 122 1 113 121 1
		 118 126 0 117 125 1 57 122 1 58 121 0 25 126 1 26 125 1 130 138 0 129 137 1 134 142 0
		 133 141 1;
	setAttr ".ed[332:359]" 138 146 0 137 145 1 142 150 0 141 149 1 146 154 1 145 153 0
		 150 158 0 149 157 1 33 154 1 34 153 0 49 158 1 50 157 1 162 170 0 161 169 1 166 174 0
		 165 173 1 170 178 1 169 177 0 174 182 0 173 181 1 178 186 1 177 185 1 182 190 0 181 189 1
		 29 186 1 30 185 0 61 190 1 62 189 1;
	setAttr -s 170 -ch 720 ".fc[0:169]" -type "polyFaces" 
		f 4 2 3 4 5
		mu 0 4 20 102 103 5
		f 4 6 7 8 -4
		mu 0 4 102 100 105 103
		f 4 9 10 11 -8
		mu 0 4 101 0 72 104
		f 4 22 23 24 25
		mu 0 4 13 108 109 10
		f 4 26 27 28 -24
		mu 0 4 108 106 111 109
		f 4 29 30 31 -28
		mu 0 4 107 1 73 110
		f 4 39 40 41 42
		mu 0 4 55 113 114 56
		f 4 43 44 45 -41
		mu 0 4 113 112 115 114
		f 4 46 47 48 -45
		mu 0 4 112 4 23 115
		f 4 56 57 58 59
		mu 0 4 60 117 120 61
		f 4 60 61 62 -58
		mu 0 4 118 116 121 119
		f 4 63 64 65 -62
		mu 0 4 116 8 50 121
		f 4 70 71 72 73
		mu 0 4 40 123 124 7
		f 4 74 75 76 -72
		mu 0 4 123 122 125 124
		f 4 77 78 79 -76
		mu 0 4 122 2 74 125
		f 4 90 91 92 93
		mu 0 4 62 127 130 63
		f 4 94 95 96 -92
		mu 0 4 128 126 131 129
		f 4 97 98 99 -96
		mu 0 4 126 11 33 131
		f 4 107 108 109 110
		mu 0 4 67 133 134 68
		f 4 111 112 113 -109
		mu 0 4 133 132 135 134
		f 4 114 115 116 -113
		mu 0 4 132 6 43 135
		f 4 124 125 126 127
		mu 0 4 30 138 139 9
		f 4 128 129 130 -126
		mu 0 4 138 136 141 139
		f 4 131 132 133 -130
		mu 0 4 137 3 99 140
		f 4 256 -6 257 -48
		mu 0 4 4 20 5 23
		f 4 258 -74 259 -116
		mu 0 4 6 40 7 43
		f 4 260 -128 261 -65
		mu 0 4 8 30 9 50
		f 4 262 -99 263 -26
		mu 0 4 10 33 11 13
		f 4 -87 264 -21 -264
		mu 0 4 11 12 15 13
		f 4 -138 265 -145 -265
		mu 0 4 12 14 17 15
		f 4 -148 266 -155 -266
		mu 0 4 14 16 19 17
		f 4 -158 267 -165 -267
		mu 0 4 16 18 21 19
		f 4 -2 -257 -38 -268
		mu 0 4 18 20 4 21
		f 4 -14 268 -53 -258
		mu 0 4 5 22 25 23
		f 4 -168 269 -175 -269
		mu 0 4 22 24 27 25
		f 4 -178 270 -185 -270
		mu 0 4 24 26 29 27
		f 4 -188 271 -195 -271
		mu 0 4 26 28 31 29
		f 4 -124 -261 -55 -272
		mu 0 4 28 30 8 31
		f 4 -34 272 -104 -263
		mu 0 4 10 32 35 33
		f 4 -198 273 -205 -273
		mu 0 4 32 34 86 35
		f 4 -208 274 -215 -274
		mu 0 4 88 36 39 37
		f 4 -218 275 -225 -275
		mu 0 4 36 38 41 39
		f 4 -70 -259 -106 -276
		mu 0 4 38 40 6 41
		f 4 -82 276 -121 -260
		mu 0 4 7 42 45 43
		f 4 -228 277 -235 -277
		mu 0 4 42 44 47 45
		f 4 -238 278 -245 -278
		mu 0 4 44 46 94 47
		f 4 -248 279 -255 -279
		mu 0 4 97 48 51 49
		f 4 -68 -262 -135 -280
		mu 0 4 48 50 9 51
		f 24 -250 -240 -230 -84 -79 -69 -220 -210 -200 -36 -31 -19 -143 -153 -163 -39 -43 -51
		 -173 -183 -193 -56 -60 -67
		mu 0 24 96 95 93 92 74 2 90 89 87 85 73 1 52 53 54 79 55 56 57 58 59 84 60 61
		f 24 -133 -123 -190 -180 -170 -16 -11 -1 -160 -150 -140 -89 -94 -102 -203 -213 -223
		 -107 -111 -119 -233 -243 -253 -136
		mu 0 24 99 3 83 82 81 80 72 0 78 77 76 75 62 63 64 65 66 91 67 68 69 70 71 98
		f 4 -12 15 16 -281
		mu 0 4 104 72 80 164
		f 4 -5 281 12 13
		mu 0 4 5 103 163 22
		f 4 -9 280 14 -282
		mu 0 4 103 105 165 163
		f 4 -23 20 21 -283
		mu 0 4 108 13 15 147
		f 4 -30 283 17 18
		mu 0 4 1 107 146 52
		f 4 -27 282 19 -284
		mu 0 4 106 108 147 145
		f 4 -32 35 36 -285
		mu 0 4 110 73 85 185
		f 4 -25 285 32 33
		mu 0 4 10 109 184 32
		f 4 -29 284 34 -286
		mu 0 4 109 111 186 184
		f 4 -49 52 53 -287
		mu 0 4 115 23 25 167
		f 4 -42 287 49 50
		mu 0 4 56 114 166 57
		f 4 -46 286 51 -288
		mu 0 4 114 115 167 166
		f 4 -80 83 84 -289
		mu 0 4 125 74 92 207
		f 4 -73 289 80 81
		mu 0 4 7 124 206 42
		f 4 -77 288 82 -290
		mu 0 4 124 125 207 206
		f 4 -91 88 89 -291
		mu 0 4 127 62 75 143
		f 4 -98 291 85 86
		mu 0 4 11 126 142 12
		f 4 -95 290 87 -292
		mu 0 4 126 128 144 142
		f 4 -100 103 104 -293
		mu 0 4 131 33 35 189
		f 4 -93 293 100 101
		mu 0 4 63 130 188 64
		f 4 -97 292 102 -294
		mu 0 4 129 131 189 187
		f 4 -117 120 121 -295
		mu 0 4 135 43 45 209
		f 4 -110 295 117 118
		mu 0 4 68 134 208 69
		f 4 -114 294 119 -296
		mu 0 4 134 135 209 208
		f 4 -90 139 140 -297
		mu 0 4 143 75 76 149
		f 4 -86 297 136 137
		mu 0 4 12 142 148 14
		f 4 -88 296 138 -298
		mu 0 4 142 144 150 148
		f 4 -22 144 145 -299
		mu 0 4 147 15 17 152
		f 4 -18 299 141 142
		mu 0 4 52 146 151 53
		f 4 -20 298 143 -300
		mu 0 4 145 147 152 151
		f 4 -141 149 150 -301
		mu 0 4 149 76 77 154
		f 4 -137 301 146 147
		mu 0 4 14 148 153 16
		f 4 -139 300 148 -302
		mu 0 4 148 150 155 153
		f 4 -146 154 155 -303
		mu 0 4 152 17 19 157
		f 4 -142 303 151 152
		mu 0 4 53 151 156 54
		f 4 -144 302 153 -304
		mu 0 4 151 152 157 156
		f 4 -151 159 160 -305
		mu 0 4 154 77 78 159
		f 4 -147 305 156 157
		mu 0 4 16 153 158 18
		f 4 -149 304 158 -306
		mu 0 4 153 155 160 158
		f 4 -156 164 165 -307
		mu 0 4 157 19 21 162
		f 4 -152 307 161 162
		mu 0 4 54 156 161 79
		f 4 -154 306 163 -308
		mu 0 4 156 157 162 161
		f 4 -10 308 -161 0
		mu 0 4 0 101 159 78
		f 4 -7 309 -159 -309
		mu 0 4 100 102 158 160
		f 4 -3 1 -157 -310
		mu 0 4 102 20 18 158
		f 4 -47 310 -166 37
		mu 0 4 4 112 162 21
		f 4 -44 311 -164 -311
		mu 0 4 112 113 161 162
		f 4 -40 38 -162 -312
		mu 0 4 113 55 79 161
		f 4 -17 169 170 -313
		mu 0 4 164 80 81 169
		f 4 -13 313 166 167
		mu 0 4 22 163 168 24
		f 4 -15 312 168 -314
		mu 0 4 163 165 170 168
		f 4 -54 174 175 -315
		mu 0 4 167 25 27 172
		f 4 -50 315 171 172
		mu 0 4 57 166 171 58
		f 4 -52 314 173 -316
		mu 0 4 166 167 172 171
		f 4 -171 179 180 -317
		mu 0 4 169 81 82 174
		f 4 -167 317 176 177
		mu 0 4 24 168 173 26
		f 4 -169 316 178 -318
		mu 0 4 168 170 175 173
		f 4 -176 184 185 -319
		mu 0 4 172 27 29 177
		f 4 -172 319 181 182
		mu 0 4 58 171 176 59
		f 4 -174 318 183 -320
		mu 0 4 171 172 177 176
		f 4 -181 189 190 -321
		mu 0 4 174 82 83 179
		f 4 -177 321 186 187
		mu 0 4 26 173 178 28
		f 4 -179 320 188 -322
		mu 0 4 173 175 180 178
		f 4 -186 194 195 -323
		mu 0 4 177 29 31 183
		f 4 -182 323 191 192
		mu 0 4 59 176 182 84
		f 4 -184 322 193 -324
		mu 0 4 176 177 183 181
		f 4 -132 324 -191 122
		mu 0 4 3 137 179 83
		f 4 -129 325 -189 -325
		mu 0 4 136 138 178 180
		f 4 -125 123 -187 -326
		mu 0 4 138 30 28 178
		f 4 -64 326 -196 54
		mu 0 4 8 116 183 31
		f 4 -61 327 -194 -327
		mu 0 4 116 118 181 183
		f 4 -57 55 -192 -328
		mu 0 4 117 60 84 182
		f 4 -37 199 200 -329
		mu 0 4 185 85 87 192
		f 4 -33 329 196 197
		mu 0 4 32 184 191 34
		f 4 -35 328 198 -330
		mu 0 4 184 186 193 191
		f 4 -105 204 205 -331
		mu 0 4 189 35 86 197
		f 4 -101 331 201 202
		mu 0 4 64 188 194 65
		f 4 -103 330 203 -332
		mu 0 4 187 189 197 195
		f 4 -201 209 210 -333
		mu 0 4 192 87 89 199
		f 4 -197 333 206 207
		mu 0 4 88 190 198 36
		f 4 -199 332 208 -334
		mu 0 4 190 192 199 198
		f 4 -206 214 215 -335
		mu 0 4 196 37 39 201
		f 4 -202 335 211 212
		mu 0 4 65 194 200 66
		f 4 -204 334 213 -336
		mu 0 4 194 196 201 200
		f 4 -211 219 220 -337
		mu 0 4 199 89 90 203
		f 4 -207 337 216 217
		mu 0 4 36 198 202 38
		f 4 -209 336 218 -338
		mu 0 4 198 199 203 202
		f 4 -216 224 225 -339
		mu 0 4 201 39 41 205
		f 4 -212 339 221 222
		mu 0 4 66 200 204 91
		f 4 -214 338 223 -340
		mu 0 4 200 201 205 204
		f 4 -78 340 -221 68
		mu 0 4 2 122 203 90
		f 4 -75 341 -219 -341
		mu 0 4 122 123 202 203
		f 4 -71 69 -217 -342
		mu 0 4 123 40 38 202
		f 4 -115 342 -226 105
		mu 0 4 6 132 205 41
		f 4 -112 343 -224 -343
		mu 0 4 132 133 204 205
		f 4 -108 106 -222 -344
		mu 0 4 133 67 91 204
		f 4 -85 229 230 -345
		mu 0 4 207 92 93 211
		f 4 -81 345 226 227
		mu 0 4 42 206 210 44
		f 4 -83 344 228 -346
		mu 0 4 206 207 211 210
		f 4 -122 234 235 -347
		mu 0 4 209 45 47 213
		f 4 -118 347 231 232
		mu 0 4 69 208 212 70
		f 4 -120 346 233 -348
		mu 0 4 208 209 213 212
		f 4 -231 239 240 -349
		mu 0 4 211 93 95 216
		f 4 -227 349 236 237
		mu 0 4 44 210 215 46
		f 4 -229 348 238 -350
		mu 0 4 210 211 216 215
		f 4 -236 244 245 -351
		mu 0 4 213 47 94 221
		f 4 -232 351 241 242
		mu 0 4 70 212 219 71
		f 4 -234 350 243 -352
		mu 0 4 212 213 221 219
		f 4 -241 249 250 -353
		mu 0 4 216 95 96 223
		f 4 -237 353 246 247
		mu 0 4 97 214 222 48
		f 4 -239 352 248 -354
		mu 0 4 214 217 224 222
		f 4 -246 254 255 -355
		mu 0 4 220 49 51 227
		f 4 -242 355 251 252
		mu 0 4 71 219 226 98
		f 4 -244 354 253 -356
		mu 0 4 218 220 227 225
		f 4 -59 356 -251 66
		mu 0 4 61 120 223 96
		f 4 -63 357 -249 -357
		mu 0 4 119 121 222 224
		f 4 -66 67 -247 -358
		mu 0 4 121 50 48 222
		f 4 -127 358 -256 134
		mu 0 4 9 139 227 51
		f 4 -131 359 -254 -359
		mu 0 4 139 141 225 227
		f 4 -134 135 -252 -360
		mu 0 4 140 99 98 226;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "CouchBack" -p "Couch";
	rename -uid "3ED2D94E-4CA1-780F-91EE-3DB3143CA749";
	setAttr ".rp" -type "double3" -2.7983549938135912 0.56246221481234471 0.34879565815090041 ;
	setAttr ".sp" -type "double3" -2.7983549938135912 0.56246221481234471 0.34879565815090041 ;
createNode mesh -n "CouchBackShape" -p "CouchBack";
	rename -uid "BEF054D1-4EB1-AFFB-5FDE-87B75A486EDD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[29]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 19 "f[2:3]" "f[8]" "f[28]" "f[30]" "f[34]" "f[37]" "f[40]" "f[43]" "f[46]" "f[49]" "f[52]" "f[55]" "f[58]" "f[61]" "f[64]" "f[67]" "f[70]" "f[73]" "f[76]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 6 "f[0:1]" "f[11:15]" "f[31:32]" "f[38:39]" "f[41:42]" "f[44:45]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[4:5]" "f[10]" "f[24:27]" "f[33]" "f[68:69]" "f[71:72]" "f[74:75]" "f[77:78]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 11 "f[6:7]" "f[9]" "f[16:23]" "f[35:36]" "f[47:48]" "f[50:51]" "f[53:54]" "f[56:57]" "f[59:60]" "f[62:63]" "f[65:66]";
	setAttr ".pv" -type "double2" 0.5090566873550415 0.33161088817437501 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 127 ".uvst[0].uvsp[0:126]" -type "float2" 0.62121809 -1.5134807e-10
		 0.67497736 0.01002852 0.40471351 0.24550432 0.40799427 0.5 0.59200573 0.29997724
		 0.87500006 0.16250876 0.125 0 0.32502285 0 0.32503083 0.16250874 0.3250376 0.1842476
		 0.125 0.16250868 0.32503617 0.20604551 0.125 0.18424755 0.32503456 0.22795217 0.125
		 0.20604551 0.32502025 0.24999999 0.125 0.24999999 0.125 0.22795215 0.38318521 0.29997951
		 0.375 0.5 0.39142179 0.29997945 0.38318521 0.5 0.39969751 0.29997933 0.39142179 0.5
		 0.4079943 0.29999512 0.39969748 0.5 0.60030252 0.29997733 0.59200567 0.5 0.60857821
		 0.29997739 0.60030246 0.5 0.61681479 0.29997733 0.60857821 0.5 0.625 0.29997745 0.61681479
		 0.5 0.67497724 0.22795214 0.875 0.24999999 0.67497724 0.20604551 0.875 0.22795215
		 0.67497724 0.18424757 0.87500006 0.20604554 0.67497724 0.1625087 0.87500006 0.18424761
		 0.37878191 -3.9350501e-09 0.62121773 0.16201612 0.375 0.95002276 0.62121809 1 0.37878191
		 1 0.375 0.75 0.375 0.58749127 0 0 -3.704371e-10 -3.1286618e-10 0 0 0.625 0.5 0 0
		 0 0 0 0 0.625 0.58749127 0.625 0.7399714 0.37877992 0.16194539 0.62121809 0.75 0.875
		 0.010028561 0.59662116 0.25 0.37879664 0.18166532 0.37892807 0.20087089 0.37921372
		 0.2198696 0.37970361 0.23828208 0.375 0.29997972 0.38339493 0.24806324 0.39071825
		 0.24755609 0.39782074 0.24683902 0.60301632 0.25 0.60995406 0.25 0.61711323 0.25
		 0.61969739 0.23710501 0.6749773 0.25 0.62043679 0.21912378 0.6208868 0.20039538 0.62114638
		 0.18131652 0.37687677 0.65742177 0.36839801 0.33409944 0.375 0.319947 0.35816878
		 0.66322178 0.35040578 0.16327091 0.37623686 0.1627156 0.62201035 0.94762802 0.67438233
		 -1.1964249e-10 0.6215843 0.97579265 0.64579165 -1.3669312e-10 0.63927692 0.16232127
		 0.65699637 0.16256826 0.875 0 0.625 0.75 0.62312323 0.75 0.40578404 0.26362938 0.40687186
		 0.28179765 0.59358037 0.28327236 0.59511054 0.26660219 0.34958395 0.18383321 0.37573546
		 0.18339902 0.34373105 0.20453998 0.36209738 0.20290062 0.35062763 0.22671731 0.37587464
		 0.22543989 0.375 0.25 0.375 0.25 0.375 0.25 0.38319755 0.27415276 0.38324529 0.24940529
		 0.39129871 0.27497151 0.39119172 0.24924231 0.39935803 0.27530658 0.39905855 0.24943234
		 0.60079688 0.2758278 0.60122669 0.25047764 0.60881501 0.27532771 0.60902393 0.24996583
		 0.61688942 0.27435181 0.6169225 0.24999891 0.625 0.25 0.625 0.25 0.625 0.25 0.64874214
		 0.22666189 0.62356347 0.22528715 0.64987028 0.20513669 0.62368482 0.20425774 0.65048003
		 0.18378367 0.62429035 0.18332487;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 103 ".pt[0:102]" -type "float3"  0 0 -0.49876654 0 0 -0.49876654 
		0 0 -0.49851072 0 0 -0.49775308 0 0 -0.49652269 0 0 -0.49486691 0 0 -0.49284929 0 
		0 -0.49054742 0 0 -0.48804975 0 0 -0.48545223 0 0 -0.39788309 0 0 -0.41119742 0 0 
		-0.40859991 0 0 -0.40610224 0 0 -0.40380037 0 0 -0.40178275 0 0 -0.40012696 0 0 -0.39889657 
		0 0 -0.39813891 0 0 -0.49876654 0 0 -0.49724042 0 0 -0.49800348 0 0 -0.4985621 0 
		0 -0.49876654 0 0 -0.49856222 0 0 -0.4980039 0 0 -0.49724123 0 0 -0.39788309 0 0 
		-0.39808756 0 0 -0.39864615 0 0 -0.39940923 0 0 -0.39940923 0 0 -0.39864615 0 0 -0.39808756 
		0 0 -0.39788309 0 0 -0.39788309 0 0 -0.39808756 0 0 -0.39864615 0 0 -0.39940923 0 
		0 -0.48539674 0 0 -0.48542449 0 0 -0.48544481 0 0 -0.48545223 0 0 -0.41119742 0 0 
		-0.41120744 0 0 -0.41123489 0 0 -0.41127238 0 0 -0.49851072 0 0 -0.49830952 0 0 -0.49775988 
		0 0 -0.49700904 0 0 -0.49775308 0 0 -0.49756375 0 0 -0.49704653 0 0 -0.49633998 0 
		0 -0.49652269 0 0 -0.49635246 0 0 -0.4958874 0 0 -0.49525213 0 0 -0.49486691 0 0 
		-0.49472377 0 0 -0.49433273 0 0 -0.49379858 0 0 -0.49284929 0 0 -0.49273747 0 0 -0.49243206 
		0 0 -0.49201483 0 0 -0.49054742 0 0 -0.49047124 0 0 -0.49026322 0 0 -0.48997903 0 
		0 -0.48804975 0 0 -0.48801219 0 0 -0.4879097 0 0 -0.48776966 0 0 -0.40859991 0 0 
		-0.40864 0 0 -0.40874949 0 0 -0.40889907 0 0 -0.40610224 0 0 -0.40618086 0 0 -0.40639567 
		0 0 -0.40668908 0 0 -0.40380037 0 0 -0.40391451 0 0 -0.40422636 0 0 -0.40465236 0 
		0 -0.40178275 0 0 -0.40192804 0 0 -0.40232494 0 0 -0.40286714 0 0 -0.40012696 0 0 
		-0.40029779 0 0 -0.4007645 0 0 -0.40140203 0 0 -0.39889657 0 0 -0.39908639 0 0 -0.39960498 
		0 0 -0.40031338 0 0 -0.39813891 0 0 -0.3983404 0 0 -0.39889094 0 0 -0.39964297;
	setAttr -s 103 ".vt[0:102]"  -2.9426496 0.062374711 2.77224708 -2.9426496 0.99724305 2.77224708
		 -2.9426496 1.095434546 2.76222968 -2.9426496 1.18985271 2.73256278 -2.9426496 1.27686882 2.68438482
		 -2.9426496 1.35313916 2.61954999 -2.9426496 1.41573262 2.54054666 -2.9426496 1.4622438 2.45041347
		 -2.9426496 1.49088526 2.35261273 -2.9426496 1.50055623 2.25090384 -2.9426496 0.99724305 -1.17800665
		 -2.9426496 1.50055623 -0.65666306 -2.9426496 1.49088526 -0.75837231 -2.9426496 1.4622438 -0.85617268
		 -2.9426496 1.41573262 -0.94630605 -2.9426496 1.35313916 -1.025308609 -2.9426496 1.27686882 -1.090144038
		 -2.9426496 1.18985271 -1.13832176 -2.9426496 1.095434546 -1.16798925 -2.71175194 0.062374711 2.77224708
		 -2.65406036 0.062374711 2.71248889 -2.66178966 0.062374711 2.74236798 -2.68290615 0.062374711 2.76424098
		 -2.71174264 0.99724305 2.77224708 -2.68290138 0.99680883 2.76424527 -2.66178823 0.99562252 2.74238396
		 -2.65406036 0.99400204 2.71252108 -2.71175194 0.062374711 -1.17800665 -2.68290615 0.062374711 -1.17000043
		 -2.66178966 0.062374711 -1.14812756 -2.65406036 0.062374711 -1.11824822 -2.65406036 0.99440885 -1.11824822
		 -2.66178966 0.99582595 -1.14812756 -2.68290615 0.99686337 -1.17000043 -2.71175194 0.99724305 -1.17800665
		 -2.9426496 0.062374711 -1.17800665 -2.9426496 0.062374711 -1.17000043 -2.9426496 0.062374711 -1.14812756
		 -2.9426496 0.062374711 -1.11824822 -2.65406036 1.44281268 2.2487309 -2.66179228 1.47168446 2.24981713
		 -2.6829164 1.49282002 2.25061274 -2.71177244 1.50055623 2.25090384 -2.71175194 1.50055623 -0.65666306
		 -2.68290615 1.49282706 -0.65626979 -2.66178966 1.47171044 -0.6551953 -2.65406036 1.44286466 -0.65372741
		 -2.71173477 1.095434546 2.76222968 -2.68289757 1.093871832 2.75435185 -2.66178727 1.08960259 2.73282909
		 -2.65406036 1.083770633 2.70342875 -2.71173644 1.18985271 2.73256278 -2.68289852 1.18684137 2.72514939
		 -2.66178751 1.17861402 2.70489693 -2.65406036 1.16737533 2.67723012 -2.71173835 1.27686882 2.68438482
		 -2.68289948 1.27252316 2.67771959 -2.66178775 1.2606504 2.65950966 -2.65406036 1.24443209 2.63463449
		 -2.7117548 1.35313916 2.61954999 -2.68290758 1.34757423 2.61394548 -2.66178989 1.3323704 2.598634
		 -2.65406036 1.31160164 2.57771826 -2.71175456 1.41573262 2.54054666 -2.68290758 1.40922213 2.53616905
		 -2.66178989 1.39143515 2.52420974 -2.65406036 1.36713755 2.50787258 -2.71175432 1.4622438 2.45041347
		 -2.68290734 1.45503521 2.44743156 -2.66178989 1.43534112 2.43928528 -2.65406036 1.40843844 2.42815757
		 -2.71175432 1.49088526 2.35261273 -2.68290734 1.48325384 2.3511436 -2.66178989 1.46240449 2.34712958
		 -2.65406036 1.43392372 2.34164596 -2.71175194 1.49088526 -0.75837231 -2.68290615 1.4832679 -0.75680274
		 -2.66178966 1.46245682 -0.7525149 -2.65406036 1.43402839 -0.74665761 -2.71175194 1.4622438 -0.85617268
		 -2.68290615 1.45506835 -0.85309398 -2.66178966 1.43546486 -0.84468305 -2.65406036 1.4086858 -0.83319348
		 -2.71175194 1.41573262 -0.94630605 -2.68290615 1.40927494 -0.9418366 -2.66178966 1.39163208 -0.92962575
		 -2.65406036 1.36753166 -0.91294545 -2.71175194 1.35313916 -1.025308609 -2.68290615 1.34764731 -1.019619942
		 -2.66178966 1.33264339 -1.0040787458 -2.65406036 1.31214762 -0.9828487 -2.71175194 1.27686882 -1.090144038
		 -2.68290615 1.27255392 -1.083455205 -2.66178966 1.26076531 -1.065180421 -2.65406036 1.24466193 -1.040216565
		 -2.71175194 1.18985271 -1.13832176 -2.68290615 1.18688059 -1.1308893 -2.66178966 1.17876053 -1.11058354
		 -2.65406036 1.16766822 -1.082845211 -2.71175194 1.095434546 -1.16798925 -2.68290615 1.093919396 -1.16009903
		 -2.66178966 1.089779854 -1.13854241 -2.65406036 1.084125042 -1.10909545;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 38 0 0 19 0 1 0 0 9 11 0 10 35 0 2 1 0 3 2 0 4 3 0
		 5 4 0 6 5 0 7 6 0 8 7 0 9 8 0 12 11 0 13 12 0 14 13 0 15 14 0 16 15 0 17 16 0 18 17 0
		 10 18 0 19 22 0 22 24 1 24 23 1 23 19 1 22 21 0 21 25 1 25 24 1 21 20 0 20 26 1 26 25 1
		 48 47 1 47 23 1 49 48 1 26 50 1 50 49 1 36 35 0 35 27 0 37 36 0 38 37 0 30 29 0 29 32 1
		 32 31 1 31 30 1 29 28 0 28 33 1 33 32 1 28 27 0 27 34 1 34 33 1 102 31 1 34 99 1
		 74 39 1 42 71 1 42 41 1 41 44 1 44 43 1 43 42 1 41 40 1 40 45 1 45 44 1 40 39 1 39 46 1
		 46 45 1 76 75 1 75 43 1 77 76 1 46 78 1 78 77 1 52 51 1 51 47 1 53 52 1 50 54 1 54 53 1
		 56 55 1 55 51 1 57 56 1 54 58 1 58 57 1 60 59 1 59 55 1 61 60 1 58 62 1 62 61 1 64 63 1
		 63 59 1 65 64 1 62 66 1 66 65 1 68 67 1 67 63 1 69 68 1 66 70 1 70 69 1 72 71 1 71 67 1
		 73 72 1 70 74 1 74 73 1 80 79 1 79 75 1 81 80 1 78 82 1 82 81 1 84 83 1 83 79 1 85 84 1
		 82 86 1 86 85 1 88 87 1 87 83 1 89 88 1 86 90 1 90 89 1 92 91 1 91 87 1 93 92 1 90 94 1
		 94 93 1 96 95 1 95 91 1 97 96 1 94 98 1 98 97 1 100 99 1 99 95 1 101 100 1 98 102 1
		 102 101 1 9 42 1 43 11 1 30 20 0 10 34 1 23 1 1 47 2 1 51 3 1 55 4 1 59 5 1 63 6 1
		 67 7 1 71 8 1 75 12 1 79 13 1 83 14 1 87 15 1 91 16 1 95 17 1 99 18 1 25 49 1 24 48 1
		 45 77 1 44 76 1 49 53 1 48 52 1 53 57 1 52 56 1 57 61 1 56 60 1 61 65 1 60 64 1 65 69 1
		 64 68 1 69 73 1 68 72 1 40 73 1 41 72 1;
	setAttr ".ed[166:179]" 77 81 1 76 80 1 81 85 1 80 84 1 85 89 1 84 88 1 89 93 1
		 88 92 1 93 97 1 92 96 1 97 101 1 96 100 1 32 101 1 33 100 1;
	setAttr -s 79 -ch 360 ".fc[0:78]" -type "polyFaces" 
		f 4 21 22 23 24
		mu 0 4 7 81 82 8
		f 4 25 26 27 -23
		mu 0 4 81 79 83 82
		f 4 28 29 30 -27
		mu 0 4 79 42 58 83
		f 4 40 41 42 43
		mu 0 4 0 87 88 43
		f 4 44 45 46 -42
		mu 0 4 87 85 89 88
		f 4 47 48 49 -46
		mu 0 4 85 1 40 89
		f 4 54 55 56 57
		mu 0 4 24 94 95 4
		f 4 58 59 60 -56
		mu 0 4 94 93 96 95
		f 4 61 62 63 -60
		mu 0 4 93 2 61 96
		f 4 129 -58 130 -4
		mu 0 4 3 24 4 27
		f 4 -38 -5 132 -49
		mu 0 4 1 60 5 40
		f 4 1 -25 133 2
		mu 0 4 6 7 8 10
		f 4 -33 134 5 -134
		mu 0 4 8 9 12 10
		f 4 -71 135 6 -135
		mu 0 4 9 11 14 12
		f 4 -76 136 7 -136
		mu 0 4 11 13 17 14
		f 4 -81 137 8 -137
		mu 0 4 13 15 16 17
		f 4 -86 138 9 -138
		mu 0 4 66 18 21 19
		f 4 -91 139 10 -139
		mu 0 4 18 20 23 21
		f 4 -96 140 11 -140
		mu 0 4 20 22 25 23
		f 4 -54 -130 12 -141
		mu 0 4 22 24 3 25
		f 4 -66 141 13 -131
		mu 0 4 4 26 29 27
		f 4 -101 142 14 -142
		mu 0 4 26 28 31 29
		f 4 -106 143 15 -143
		mu 0 4 28 30 33 31
		f 4 -111 144 16 -144
		mu 0 4 30 32 52 33
		f 4 -116 145 17 -145
		mu 0 4 74 34 37 35
		f 4 -121 146 18 -146
		mu 0 4 34 36 39 37
		f 4 -126 147 19 -147
		mu 0 4 36 38 41 39
		f 4 -52 -133 20 -148
		mu 0 4 38 40 5 41
		f 20 -128 -123 -118 -113 -108 -103 -68 -63 -53 -98 -93 -88 -83 -78 -73 -35 -30 -132
		 -44 -51
		mu 0 20 77 76 75 73 72 71 70 61 2 69 68 67 65 64 63 62 58 42 0 43
		f 23 -3 -6 -7 -8 -9 -10 -11 -12 -13 3 -14 -15 -16 -17 -18 -19 -20 -21 4 -37 -39 -40
		 -1
		mu 0 23 47 48 49 50 51 19 21 23 25 3 27 29 31 33 52 53 54 55 56 57 91 92 59
		f 4 -31 34 35 -149
		mu 0 4 83 58 62 98
		f 4 -24 149 31 32
		mu 0 4 8 82 97 9
		f 4 -28 148 33 -150
		mu 0 4 82 83 98 97
		f 13 39 38 36 37 -48 -45 -41 131 -29 -26 -22 -2 0
		mu 0 13 59 92 90 60 1 84 86 45 46 78 80 44 47
		f 4 -64 67 68 -151
		mu 0 4 96 61 70 113
		f 4 -57 151 64 65
		mu 0 4 4 95 112 26
		f 4 -61 150 66 -152
		mu 0 4 95 96 113 112
		f 4 -36 72 73 -153
		mu 0 4 98 62 63 100
		f 4 -32 153 69 70
		mu 0 4 9 97 99 11
		f 4 -34 152 71 -154
		mu 0 4 97 98 100 99
		f 4 -74 77 78 -155
		mu 0 4 100 63 64 102
		f 4 -70 155 74 75
		mu 0 4 11 99 101 13
		f 4 -72 154 76 -156
		mu 0 4 99 100 102 101
		f 4 -79 82 83 -157
		mu 0 4 102 64 65 105
		f 4 -75 157 79 80
		mu 0 4 13 101 104 15
		f 4 -77 156 81 -158
		mu 0 4 101 102 105 104
		f 4 -84 87 88 -159
		mu 0 4 105 65 67 107
		f 4 -80 159 84 85
		mu 0 4 66 103 106 18
		f 4 -82 158 86 -160
		mu 0 4 103 105 107 106
		f 4 -89 92 93 -161
		mu 0 4 107 67 68 109
		f 4 -85 161 89 90
		mu 0 4 18 106 108 20
		f 4 -87 160 91 -162
		mu 0 4 106 107 109 108
		f 4 -94 97 98 -163
		mu 0 4 109 68 69 111
		f 4 -90 163 94 95
		mu 0 4 20 108 110 22
		f 4 -92 162 96 -164
		mu 0 4 108 109 111 110
		f 4 -62 164 -99 52
		mu 0 4 2 93 111 69
		f 4 -59 165 -97 -165
		mu 0 4 93 94 110 111
		f 4 -55 53 -95 -166
		mu 0 4 94 24 22 110
		f 4 -69 102 103 -167
		mu 0 4 113 70 71 115
		f 4 -65 167 99 100
		mu 0 4 26 112 114 28
		f 4 -67 166 101 -168
		mu 0 4 112 113 115 114
		f 4 -104 107 108 -169
		mu 0 4 115 71 72 117
		f 4 -100 169 104 105
		mu 0 4 28 114 116 30
		f 4 -102 168 106 -170
		mu 0 4 114 115 117 116
		f 4 -109 112 113 -171
		mu 0 4 117 72 73 120
		f 4 -105 171 109 110
		mu 0 4 30 116 119 32
		f 4 -107 170 111 -172
		mu 0 4 116 117 120 119
		f 4 -114 117 118 -173
		mu 0 4 120 73 75 122
		f 4 -110 173 114 115
		mu 0 4 74 118 121 34
		f 4 -112 172 116 -174
		mu 0 4 118 120 122 121
		f 4 -119 122 123 -175
		mu 0 4 122 75 76 124
		f 4 -115 175 119 120
		mu 0 4 34 121 123 36
		f 4 -117 174 121 -176
		mu 0 4 121 122 124 123
		f 4 -124 127 128 -177
		mu 0 4 124 76 77 126
		f 4 -120 177 124 125
		mu 0 4 36 123 125 38
		f 4 -122 176 126 -178
		mu 0 4 123 124 126 125
		f 4 -43 178 -129 50
		mu 0 4 43 88 126 77
		f 4 -47 179 -127 -179
		mu 0 4 88 89 125 126
		f 4 -50 51 -125 -180
		mu 0 4 89 40 38 125;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ArmRests" -p "Couch";
	rename -uid "20F816F3-4286-C469-2042-7F8E9D0A0B28";
	setAttr ".rp" -type "double3" -0.54391883137385122 0 0.10345341248647788 ;
	setAttr ".sp" -type "double3" -0.54391883137385122 0 0.10345341248647788 ;
createNode transform -n "ArmRest2" -p "ArmRests";
	rename -uid "68DD62AC-433B-9AE1-C39D-15A7026E97D1";
	setAttr ".rp" -type "double3" -1.2276548095064683 0.062374711036682129 -1.1907666391319753 ;
	setAttr ".sp" -type "double3" -1.2276548095064683 0.062374711036682129 -1.1907666391319753 ;
createNode mesh -n "ArmRestShape2" -p "ArmRest2";
	rename -uid "049E8D0E-4664-E513-E625-A38D89EBA05D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[0]" "f[6:7]" "f[14]" "f[45:46]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[23]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 6 "f[9:10]" "f[12]" "f[18:20]" "f[33]" "f[35:36]" "f[38:40]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[22]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 11 "f[3]" "f[8]" "f[11]" "f[21]" "f[25]" "f[28]" "f[31]" "f[34]" "f[37]" "f[41]" "f[44]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 10 "f[1:2]" "f[4:5]" "f[13]" "f[15:17]" "f[24]" "f[26:27]" "f[29:30]" "f[32]" "f[42:43]" "f[47:48]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.375 0.47888121
		 0.62009358 0.47888121 0.62009364 0.75 0.85388118 0.24347475 0.85388124 1.4598021e-09
		 0.64611882 1.4598021e-09 0.375 0 0.62009358 1.7517625e-08 0.62009364 0.19593132 0.375
		 0.42498258 0.375 0.50652558 0.62009358 0.50652558 0.375 0.75 0.375 0.36633214 0.62009358
		 0.42498258 0.375 0.30794054 0.62009329 0.36633217 0.375 0.25 0.62009358 0.30794063
		 0.37584412 0.23189206 0.62009364 0.25 0.37582159 0.21388161 0.61943299 0.23185097
		 0.375 0.19593132 0.61943579 0.21384895 0.80120158 0.24349365 0.74789816 0.24349365
		 0.69679952 0.24329907 0.64710021 0.24268885 0.63313049 0.23093322 0.125 0 0.31705937
		 0.24999999 0.2586678 0.25 0.20001741 0.25 0.1461188 0.25 0.125 0.24347441 0.625 0.77111876
		 0.625 0.97888124 0.62009364 1 0.375 0.99999994 0.63522547 0.21479292 0.64037502 0.19889212
		 0.13897225 0.24779175 0.375 0.48823601 0.13193206 0.24561638 0.375 0.49745154 0.62250054
		 0.48329797 0.86378133 0.25 0.625 0.48878133 0.625 0.50294125 0.875 0.24705876 0.62252235
		 0.50470752 0.62008798 0.49749762 0.62008804 0.48830059 0.62333971 0.98602784 0.63731188
		 6.8937727e-09 0.6217041 0.99306798 0.62863612 1.2246794e-08 0.62502915 0.19648343
		 0.63006037 0.196933 0.62262261 0.74916184 0.875 0 0.625 0.75 0.625 0.42498249 0.79998249
		 0.25 0.62252963 0.42472482 0.625 0.36633214 0.74133211 0.25 0.6225096 0.36626112
		 0.625 0.30794057 0.6829406 0.25 0.62250596 0.30786204 0.625 0.25 0.62253636 0.25088471
		 0.62821525 0.2313126 0.62372017 0.23159863 0.62956721 0.21441452 0.62438303 0.21410605
		 0.62214369 0.49099985 0.625 0.5 0.875 0.25 0.62213326 0.49911213;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 61 ".pt[0:60]" -type "float3"  0 0 -0.39317372 0 0 -0.38210282 
		0 0 -0.38542485 0 0 -0.39317372 0 0 -0.39290971 0 0 -0.39213556 0 0 -0.39090413 0 
		0 -0.3892993 0 0 -0.3874304 0 0 -0.38303801 0 0 -0.38257042 0 0 -0.38222811 0 0 -0.38210282 
		0 0 -0.38303801 0 0 -0.38303801 0 0 -0.38303801 0 0 -0.38257042 0 0 -0.38222811 0 
		0 -0.38210282 0 0 -0.38222811 0 0 -0.38257042 0 0 -0.38303801 0 0 -0.3922385 0 0 
		-0.39270613 0 0 -0.39304844 0 0 -0.39317372 0 0 -0.39317372 0 0 -0.39304844 0 0 -0.39270613 
		0 0 -0.3922385 0 0 -0.38303801 0 0 -0.38210282 0 0 -0.38222811 0 0 -0.38257042 0 
		0 -0.38536355 0 0 -0.38539422 0 0 -0.38541663 0 0 -0.38542485 0 0 -0.38718626 0 0 
		-0.38730833 0 0 -0.38739771 0 0 -0.3874304 0 0 -0.38882765 0 0 -0.38906348 0 0 -0.38923609 
		0 0 -0.38929927 0 0 -0.39023712 0 0 -0.39057064 0 0 -0.39081478 0 0 -0.39090413 0 
		0 -0.39131868 0 0 -0.39172712 0 0 -0.39202613 0 0 -0.39213556 0 0 -0.39199856 0 0 
		-0.39245412 0 0 -0.39278764 0 0 -0.39290971 0 0 -0.38263392 0 0 -0.38263392 0 0 -0.38229844;
	setAttr -s 61 ".vt[0:60]"  -2.65406036 0.062374711 -0.79759312 -2.65406036 0.062374711 -1.11771274
		 -2.65406036 1.06254971 -1.021654725 -2.65406036 0.84623712 -0.79759312 -2.65406036 0.90222293 -0.80522758
		 -2.65406036 0.95439339 -0.82761163 -2.65406036 0.99919319 -0.8632192 -2.65406036 1.033569336 -0.9096238
		 -2.65406036 1.055179 -0.96366322 -2.65406036 1.06254971 -1.090670705 -2.65406036 1.059051991 -1.10419154
		 -2.65406036 1.049496174 -1.11408985 -2.65406036 1.036442757 -1.11771274 -1.33686519 1.059051991 -1.090670705
		 -1.32730937 1.049496174 -1.090670705 -1.32381165 1.036442757 -1.090670705 -1.32730937 1.036442757 -1.10419154
		 -1.33686519 1.036442757 -1.11408985 -1.3499186 1.036442757 -1.11771274 -1.3499186 1.049496174 -1.11408985
		 -1.3499186 1.059051991 -1.10419154 -1.3499186 1.06254971 -1.090670705 -1.32381165 0.062374711 -0.82463521
		 -1.32730937 0.062374711 -0.81111413 -1.33686519 0.062374711 -0.80121607 -1.3499186 0.062374711 -0.79759312
		 -1.3499186 0.84623712 -0.79759312 -1.33686519 0.84600788 -0.80121607 -1.32730937 0.84538156 -0.81111413
		 -1.32381165 0.84452599 -0.82463521 -1.32381165 0.062374711 -1.090670705 -1.3499186 0.062374711 -1.11771274
		 -1.33686519 0.062374711 -1.11408985 -1.32730937 0.062374711 -1.10419154 -1.32381165 1.036442757 -1.02342701
		 -1.32730937 1.049496174 -1.022540808 -1.33686519 1.059051991 -1.02189219 -1.3499186 1.06254971 -1.021654725
		 -1.32381165 1.029744029 -0.97072262 -1.32730937 1.042461514 -0.96719295 -1.33686519 1.051771402 -0.96460903
		 -1.3499186 1.055179 -0.96366322 -1.32381165 1.010764956 -0.92326158 -1.32730937 1.022167206 -0.91644263
		 -1.33686519 1.030514121 -0.91145098 -1.3499186 1.033569336 -0.90962386 -1.32381165 0.98057353 -0.88250589
		 -1.32730937 0.98988336 -0.87286246 -1.33686519 0.99669862 -0.86580306 -1.3499186 0.99919319 -0.8632192
		 -1.32381165 0.94122732 -0.85123277 -1.32730937 0.94781041 -0.83942223 -1.33686519 0.95262951 -0.83077627
		 -1.3499186 0.95439345 -0.82761163 -1.32381165 0.89540768 -0.83157378 -1.32730937 0.89881533 -0.81840074
		 -1.33686519 0.90130985 -0.80875731 -1.3499186 0.90222293 -0.80522758 -1.33863819 1.057088852 -1.10235524
		 -1.32927251 1.047723174 -1.10235524 -1.33863819 1.047723174 -1.11205626;
	setAttr -s 108 ".ed[0:107]"  0 25 0 1 31 0 0 3 0 1 0 0 2 9 0 2 8 0 8 7 0
		 7 6 0 6 5 0 5 4 0 4 3 0 12 1 0 30 22 0 12 11 0 11 19 1 19 18 1 18 12 1 11 10 0 10 20 1
		 20 19 1 10 9 0 9 21 1 21 20 1 15 14 1 14 35 1 35 34 1 34 15 1 14 13 1 13 36 1 36 35 1
		 13 21 1 21 37 1 37 36 1 18 17 1 17 32 1 32 31 0 31 18 1 17 16 1 16 33 1 33 32 0 16 15 1
		 15 30 1 30 33 0 25 24 0 24 27 1 27 26 1 26 25 1 24 23 0 23 28 1 28 27 1 23 22 0 22 29 1
		 29 28 1 57 26 1 29 54 1 39 38 1 38 34 1 40 39 1 37 41 1 41 40 1 43 42 1 42 38 1 44 43 1
		 41 45 1 45 44 1 47 46 1 46 42 1 48 47 1 45 49 1 49 48 1 51 50 1 50 46 1 52 51 1 49 53 1
		 53 52 1 55 54 1 54 50 1 56 55 1 53 57 1 57 56 1 26 3 1 2 37 1 8 41 1 7 45 1 6 49 1
		 5 53 1 4 57 1 36 40 1 35 39 1 40 44 1 39 43 1 44 48 1 43 47 1 48 52 1 47 51 1 52 56 1
		 51 55 0 27 56 1 28 55 1 13 58 0 58 20 0 14 59 0 59 58 1 16 59 0 17 60 0 60 59 1 19 60 0
		 58 60 1;
	setAttr -s 49 -ch 216 ".fc[0:48]" -type "polyFaces" 
		f 4 13 14 15 16
		mu 0 4 10 45 52 11
		f 4 17 18 19 -15
		mu 0 4 45 43 53 52
		f 4 20 21 22 -19
		mu 0 4 43 0 1 53
		f 4 23 24 25 26
		mu 0 4 3 47 64 25
		f 4 27 28 29 -25
		mu 0 4 48 46 65 63
		f 4 30 31 32 -29
		mu 0 4 46 1 14 65
		f 4 33 34 35 36
		mu 0 4 11 51 60 2
		f 4 37 38 39 -35
		mu 0 4 51 49 62 60
		f 4 40 41 42 -39
		mu 0 4 50 3 4 61
		f 4 43 44 45 46
		mu 0 4 7 57 58 8
		f 4 47 48 49 -45
		mu 0 4 57 55 59 58
		f 4 50 51 52 -49
		mu 0 4 55 5 41 59
		f 4 0 -47 80 -3
		mu 0 4 6 7 8 23
		f 4 81 -32 -22 -5
		mu 0 4 9 14 1 0
		f 4 -17 -37 -2 -12
		mu 0 4 10 11 2 12
		f 4 5 82 -59 -82
		mu 0 4 9 13 16 14
		f 4 6 83 -64 -83
		mu 0 4 13 15 18 16
		f 4 7 84 -69 -84
		mu 0 4 15 17 20 18
		f 4 8 85 -74 -85
		mu 0 4 17 19 22 20
		f 4 9 86 -79 -86
		mu 0 4 19 21 24 22
		f 4 10 -81 -54 -87
		mu 0 4 21 23 8 24
		f 10 -52 -13 -42 -27 -57 -62 -67 -72 -77 -55
		mu 0 10 41 5 4 3 25 26 27 28 29 40
		f 13 3 2 -11 -10 -9 -8 -7 -6 4 -21 -18 -14 11
		mu 0 13 30 6 23 21 19 17 31 32 33 34 42 44 35
		f 10 12 -51 -48 -44 -1 -4 1 -36 -40 -43
		mu 0 10 36 37 54 56 38 39 12 2 60 62
		f 4 -33 58 59 -88
		mu 0 4 65 14 16 68
		f 4 -26 88 55 56
		mu 0 4 25 64 67 26
		f 4 -30 87 57 -89
		mu 0 4 63 65 68 66
		f 4 -60 63 64 -90
		mu 0 4 68 16 18 71
		f 4 -56 90 60 61
		mu 0 4 26 67 70 27
		f 4 -58 89 62 -91
		mu 0 4 66 68 71 69
		f 4 -65 68 69 -92
		mu 0 4 71 18 20 73
		f 4 -61 92 65 66
		mu 0 4 27 70 72 28
		f 4 -63 91 67 -93
		mu 0 4 69 71 73 72
		f 4 -70 73 74 -94
		mu 0 4 73 20 22 75
		f 4 -66 94 70 71
		mu 0 4 28 72 74 29
		f 4 -68 93 72 -95
		mu 0 4 72 73 75 74
		f 4 -75 78 79 -96
		mu 0 4 75 22 24 77
		f 4 -71 96 75 76
		mu 0 4 29 74 76 40
		f 4 -73 95 77 -97
		mu 0 4 74 75 77 76
		f 4 -46 97 -80 53
		mu 0 4 8 58 77 24
		f 4 -50 98 -78 -98
		mu 0 4 58 59 76 77
		f 4 -53 54 -76 -99
		mu 0 4 59 41 40 76
		f 4 -23 -31 99 100
		mu 0 4 53 1 46 78
		f 4 -100 -28 101 102
		mu 0 4 78 46 48 79
		f 4 -24 -41 103 -102
		mu 0 4 47 3 50 80
		f 4 -104 -38 104 105
		mu 0 4 79 49 51 81
		f 4 -34 -16 106 -105
		mu 0 4 51 11 52 81
		f 4 -107 -20 -101 107
		mu 0 4 81 52 53 78
		f 3 -103 -106 -108
		mu 0 3 78 79 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ArmRest1" -p "ArmRests";
	rename -uid "4C7D72FE-4ACF-0828-9FC2-93B14A243EC2";
	setAttr ".rp" -type "double3" -2.6540602992319862 0.062374740839004517 1.8883579554337793 ;
	setAttr ".sp" -type "double3" -2.6540602992319862 0.062374740839004517 1.8883579554337793 ;
createNode mesh -n "ArmRestShape1" -p "ArmRest1";
	rename -uid "7771DAC0-4483-04A5-7BA9-91BA6AD850B9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 6 "f[10:11]" "f[14:17]" "f[24]" "f[26:27]" "f[29:30]" "f[32]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[23]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "f[1:2]" "f[7:8]" "f[12]" "f[45:48]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[22]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[5:6]" "f[9]" "f[21]" "f[25]" "f[28]" "f[31]" "f[34]" "f[37]" "f[41:42]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 8 "f[0]" "f[3:4]" "f[13]" "f[18:20]" "f[33]" "f[35:36]" "f[38:40]" "f[43:44]";
	setAttr ".pv" -type "double2" 0.625 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 85 ".uvst[0].uvsp[0:84]" -type "float2" 0.375 0.24381982
		 0.6450007 -3.7252903e-09 0.62035334 0.24381982 0.62035328 -4.6566129e-10 0.62035328
		 0.75 0.375 0 0.375 0.27000087 0.62035328 0.27000087 0.62035334 0.3500149 0.375 0.54634458
		 0.375 0.75 0.375 0.53098595 0.62035328 0.54634458 0.375 0.51555508 0.6203534 0.53098595
		 0.375 0.5 0.62035328 0.51555508 0.375 0.45033669 0.6203534 0.5 0.375 0.40028697 0.62035328
		 0.45033669 0.375 0.3500149 0.62035316 0.40028694 0.64500087 0.2438198 0.85499889
		 3.7252903e-09 0.875 0.21056488 0.87499994 0.22260605 0.875 0.23557392 0.84977269
		 0.24138319 0.80983514 0.24285908 0.35499847 0.25 0.2749851 0.25 0.22471304 0.25 0.17466329
		 0.25 0.125 0.25 0.125 0.2344449 0.125 0.21901403 0.125 0.20365542 0.125 0 0.625 0.77000087
		 0.625 0.97999913 0.62035328 1 0.375 1 0.76739436 0.24361056 0.72370386 0.24381982
		 0.37502322 0.24688686 0.375 0.25 0.625 0.26004571 0.63504571 0.25 0.62268263 0.26534927
		 0.6203661 0.26107687 0.62037593 0.25236285 0.62824976 0.24392071 0.63638312 0.2439194
		 0.63665998 -2.622226e-09 0.62421167 0.65597486 0.62844354 -1.5356008e-09 0.62343508
		 0.33677953 0.62266421 0.35027769 0.72501487 0.25 0.625 0.35001487 0.62276226 0.7490924
		 0.625 0.75 0.875 0 0.625 0.54634458 0.875 0.20365542 0.62265658 0.54629099 0.625
		 0.53098595 0.875 0.21901403 0.62261909 0.53099853 0.625 0.51555508 0.875 0.2344449
		 0.62262207 0.51555401 0.625 0.5 0.875 0.25 0.62262785 0.49906483 0.625 0.45033669
		 0.82533669 0.25 0.6226334 0.45039845 0.625 0.40028694 0.77528691 0.25 0.62263823
		 0.40035963 0.625 0.25 0.62264204 0.25828761 0.62402385 0.25030872;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 61 ".pt[0:60]" -type "float3"  0 0 -0.51454687 0 0 -0.5034759 
		0 0 -0.5034759 0 0 -0.51011783 0 0 -0.50839877 0 0 -0.50679684 0 0 -0.50542128 0 
		0 -0.50436574 0 0 -0.50370222 0 0 -0.51366115 0 0 -0.51454687 0 0 -0.5144282 0 0 
		-0.51410401 0 0 -0.51366115 0 0 -0.51366115 0 0 -0.51366115 0 0 -0.51410401 0 0 -0.5144282 
		0 0 -0.51454687 0 0 -0.5144282 0 0 -0.51410401 0 0 -0.51366115 0 0 -0.51366115 0 
		0 -0.51410401 0 0 -0.5144282 0 0 -0.51454687 0 0 -0.51011783 0 0 -0.51012564 0 0 
		-0.51014686 0 0 -0.51017588 0 0 -0.50359458 0 0 -0.50391877 0 0 -0.50436163 0 0 -0.5034759 
		0 0 -0.50436163 0 0 -0.50391877 0 0 -0.50359458 0 0 -0.5034759 0 0 -0.50456512 0 
		0 -0.5041337 0 0 -0.50381786 0 0 -0.50370222 0 0 -0.50513947 0 0 -0.50475258 0 0 
		-0.50446939 0 0 -0.50436574 0 0 -0.50605297 0 0 -0.50573713 0 0 -0.50550592 0 0 -0.50542128 
		0 0 -0.50724357 0 0 -0.50702024 0 0 -0.50685668 0 0 -0.50679684 0 0 -0.50862998 0 
		0 -0.50851434 0 0 -0.50842977 0 0 -0.50839877 0 0 -0.51404387 0 0 -0.51404387 0 0 
		-0.51436156;
	setAttr -s 61 ".vt[0:60]"  -2.65406036 0.062374711 2.71195364 -2.65406036 0.062374711 2.39183378
		 -2.65406036 0.87713891 2.39183378 -2.65406036 1.06254971 2.58388734 -2.65406036 1.056231976 2.53417945
		 -2.65406036 1.037709355 2.4878602 -2.65406036 1.0082441568 2.44808483 -2.65406036 0.96984434 2.41756415
		 -2.65406036 0.92512673 2.3983779 -2.65406036 1.06254971 2.68634295 -2.65406036 1.037824631 2.71195364
		 -2.65406036 1.050187111 2.7085228 -2.65406036 1.059237123 2.69914842 -1.32712424 1.050187111 2.68634295
		 -1.33617425 1.059237123 2.68634295 -1.34853673 1.06254971 2.68634295 -1.34853673 1.059237123 2.69914842
		 -1.34853673 1.050187111 2.7085228 -1.34853673 1.037824631 2.71195364 -1.33617425 1.037824631 2.7085228
		 -1.32712424 1.037824631 2.69914842 -1.32381165 1.037824631 2.68634295 -1.32381165 0.062374711 2.68634295
		 -1.32712424 0.062374711 2.69914842 -1.33617425 0.062374711 2.7085228 -1.34853673 0.062374711 2.71195364
		 -1.34853673 1.06254971 2.58388734 -1.33617425 1.059237123 2.58411193 -1.32712424 1.050187111 2.5847261
		 -1.32381165 1.037824631 2.58556557 -1.33617425 0.062374711 2.3952651 -1.32712424 0.062374711 2.40463924
		 -1.32381165 0.062374711 2.41744447 -1.34853673 0.062374711 2.39183378 -1.32381165 0.87551838 2.41744447
		 -1.32712424 0.87632865 2.40463924 -1.33617425 0.87692177 2.3952651 -1.34853673 0.87713891 2.39183378
		 -1.32381165 0.9186722 2.42332935 -1.32712424 0.9218995 2.41085339 -1.33617425 0.92426199 2.401721
		 -1.34853673 0.92512673 2.3983779 -1.32381165 0.95737511 2.43993521 -1.32712424 0.9636097 2.42874956
		 -1.33617425 0.9681738 2.42056108 -1.34853673 0.96984434 2.41756415 -1.32381165 0.99061 2.46635056
		 -1.32712424 0.99942708 2.45721793 -1.33617425 1.0058816671 2.45053196 -1.34853673 1.0082441568 2.44808483
		 -1.32381165 1.016112089 2.50077629 -1.32712424 1.026910782 2.49431825 -1.33617425 1.034815907 2.48959064
		 -1.34853673 1.037709355 2.4878602 -1.32381165 1.032143354 2.54086518 -1.32712424 1.044187665 2.53752232
		 -1.33617425 1.053004742 2.53507519 -1.34853673 1.056231976 2.53417945 -1.32898355 1.048507929 2.69740939
		 -1.33785343 1.057377815 2.69740939 -1.33785343 1.048507929 2.70659661;
	setAttr -s 108 ".ed[0:107]"  0 25 0 1 33 0 0 10 0 1 0 0 2 1 0 2 8 0 8 7 0
		 7 6 0 6 5 0 5 4 0 4 3 0 9 3 0 32 22 0 9 12 0 12 16 0 16 15 1 15 9 1 12 11 0 11 17 1
		 17 16 1 11 10 0 10 18 1 18 17 1 15 14 1 14 27 1 27 26 1 26 15 1 14 13 1 13 28 1 28 27 1
		 13 21 1 21 29 1 29 28 1 21 20 1 20 23 0 23 22 0 22 21 1 20 19 1 19 24 1 24 23 0 19 18 1
		 18 25 1 25 24 0 57 26 1 29 54 1 32 31 0 31 35 0 35 34 1 34 32 1 31 30 0 30 36 1 36 35 1
		 30 33 0 33 37 1 37 36 1 39 38 1 38 34 1 40 39 1 37 41 1 41 40 1 43 42 1 42 38 1 44 43 1
		 41 45 1 45 44 1 47 46 1 46 42 1 48 47 1 45 49 1 49 48 1 51 50 1 50 46 1 52 51 1 49 53 1
		 53 52 1 55 54 1 54 50 1 56 55 1 53 57 1 57 56 1 26 3 1 2 37 1 8 41 1 7 45 1 6 49 1
		 5 53 1 4 57 1 36 40 1 35 39 0 40 44 0 39 43 1 44 48 0 43 47 1 48 52 1 47 51 1 52 56 1
		 51 55 1 27 56 1 28 55 1 13 58 0 58 20 0 14 59 0 59 58 1 16 59 0 17 60 0 60 59 1 19 60 0
		 58 60 1;
	setAttr -s 49 -ch 216 ".fc[0:48]" -type "polyFaces" 
		f 4 13 14 15 16
		mu 0 4 6 46 50 7
		f 4 17 18 19 -15
		mu 0 4 46 45 51 50
		f 4 20 21 22 -19
		mu 0 4 45 0 2 51
		f 4 23 24 25 26
		mu 0 4 7 49 58 8
		f 4 27 28 29 -25
		mu 0 4 49 47 60 58
		f 4 30 31 32 -29
		mu 0 4 48 23 44 59
		f 4 33 34 35 36
		mu 0 4 23 53 54 1
		f 4 37 38 39 -35
		mu 0 4 53 52 56 54
		f 4 40 41 42 -39
		mu 0 4 52 2 3 56
		f 4 45 46 47 48
		mu 0 4 24 63 65 25
		f 4 49 50 51 -47
		mu 0 4 62 61 66 64
		f 4 52 53 54 -51
		mu 0 4 61 4 12 66
		f 4 0 -42 -22 -3
		mu 0 4 5 3 2 0
		f 4 -17 -27 80 -12
		mu 0 4 6 7 8 21
		f 4 81 -54 -2 -5
		mu 0 4 9 12 4 10
		f 4 5 82 -59 -82
		mu 0 4 9 11 14 12
		f 4 6 83 -64 -83
		mu 0 4 11 13 16 14
		f 4 7 84 -69 -84
		mu 0 4 13 15 18 16
		f 4 8 85 -74 -85
		mu 0 4 15 17 20 18
		f 4 9 86 -79 -86
		mu 0 4 17 19 22 20
		f 4 10 -81 -44 -87
		mu 0 4 19 21 8 22
		f 10 -37 -13 -49 -57 -62 -67 -72 -77 -45 -32
		mu 0 10 23 1 24 25 26 27 28 29 43 44
		f 13 11 -11 -10 -9 -8 -7 -6 4 3 2 -21 -18 -14
		mu 0 13 30 31 32 33 34 35 36 37 38 5 0 45 46
		f 10 -50 -46 12 -36 -40 -43 -1 -4 1 -53
		mu 0 10 61 62 39 40 55 57 41 42 10 4
		f 4 -55 58 59 -88
		mu 0 4 66 12 14 69
		f 4 -48 88 55 56
		mu 0 4 25 65 68 26
		f 4 -52 87 57 -89
		mu 0 4 64 66 69 67
		f 4 -60 63 64 -90
		mu 0 4 69 14 16 72
		f 4 -56 90 60 61
		mu 0 4 26 68 71 27
		f 4 -58 89 62 -91
		mu 0 4 67 69 72 70
		f 4 -65 68 69 -92
		mu 0 4 72 16 18 75
		f 4 -61 92 65 66
		mu 0 4 27 71 74 28
		f 4 -63 91 67 -93
		mu 0 4 70 72 75 73
		f 4 -70 73 74 -94
		mu 0 4 75 18 20 78
		f 4 -66 94 70 71
		mu 0 4 28 74 77 29
		f 4 -68 93 72 -95
		mu 0 4 73 75 78 76
		f 4 -75 78 79 -96
		mu 0 4 78 20 22 81
		f 4 -71 96 75 76
		mu 0 4 29 77 80 43
		f 4 -73 95 77 -97
		mu 0 4 76 78 81 79
		f 4 -26 97 -80 43
		mu 0 4 8 58 81 22
		f 4 -30 98 -78 -98
		mu 0 4 58 60 79 81
		f 4 -33 44 -76 -99
		mu 0 4 59 44 43 80
		f 4 -34 -31 99 100
		mu 0 4 53 23 48 82
		f 4 -100 -28 101 102
		mu 0 4 82 47 49 83
		f 4 -24 -16 103 -102
		mu 0 4 49 7 50 83
		f 4 -104 -20 104 105
		mu 0 4 83 50 51 84
		f 4 -23 -41 106 -105
		mu 0 4 51 2 52 84
		f 4 -107 -38 -101 107
		mu 0 4 84 52 53 82
		f 3 -103 -106 -108
		mu 0 3 82 83 84;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "PictureFrame";
	rename -uid "3F757179-4EB9-9D12-ACCC-6ABF7582245E";
	setAttr ".rp" -type "double3" -3 1.8209974765777588 1.8812928699924347 ;
	setAttr ".sp" -type "double3" -3 1.8209974765777588 1.8812928699924347 ;
createNode transform -n "Picture" -p "PictureFrame";
	rename -uid "9EFD99C9-455D-D7F2-A030-E98F381B3421";
	setAttr ".rp" -type "double3" -2.9515607729554176 2.4863701271742689 0.3607439302875397 ;
	setAttr ".sp" -type "double3" -2.9515607729554176 2.4863701271742689 0.3607439302875397 ;
createNode mesh -n "PictureShape" -p "Picture";
	rename -uid "8F1A2BB0-4F60-8762-718C-1687EF688A8A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 4 "e[0]" "e[1]" "e[2]" "e[3]";
	setAttr ".pv" -type "double2" 0 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -2.0360382 3.4947033 1.2965267 
		-3.4515607 1.8935593 1.2965267 -3.4515607 1.8935593 -0.57503879 -2.0360382 3.4947033 
		-0.57503879;
	setAttr -s 4 ".vt[0:3]"  -0.91552258 3.7252903e-08 0.50000006 0.5 0 0.50000006
		 0.5 0 -0.50000006 -0.91552246 1.8626451e-08 -0.50000006;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 2 0 3 2 0 0 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 1 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Frame" -p "PictureFrame";
	rename -uid "9799FA1C-4EBE-098A-2C5C-13A7173A218C";
	setAttr ".rp" -type "double3" -2.9515607729554176 2.4863701271742689 0.3607439302875397 ;
	setAttr ".sp" -type "double3" -2.9515607729554176 2.4863701271742689 0.3607439302875397 ;
createNode mesh -n "FrameShape" -p "Frame";
	rename -uid "051A586B-4F35-CAE9-F9AF-2392577A35F7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 2.2261885e-08 5.2191408e-05
		 1 5.0514936e-05 5.014007e-09 5.0182098e-05 1 0 0 0 0.99999321 5.4766013e-05 0 0.050781727
		 0 0 1 0 6.1764607e-09 0.050778978 0.99999994 0.91496015 0.99999994 1 0 1 1 0.90508842
		 1 1 0 1 1 0.91495633 1 1 0 1 1 0.90508455 1 1 6.8265493e-08 0.99999994 2.9314693e-09
		 0.91495633 0 0.90508455 0 0.91496009 1 0.050779104 1.2709471e-07 0.90508842 0.99999994
		 0.050782025 0 0.36297703 0.99999994 0.36297759 0 0.68156224 1 0.68156254 0 1 0 0
		 1 0 1 1 0 0.45439249 1 0.45439252 0.9999913 0.36298493 2.836542e-08 0.36298162 0.99999565
		 0.68156552 1.4179457e-08 0.68156385 1 0 1 1 0 1 0 0 1 0.45439392 1.4558529e-09 0.45439392
		 3.9512087e-09 0.39276382 1 0.39276391 1.9897206e-09 0.6942125 1 0.6942125 0 1 0 0
		 1 0 1 1 6.2603903e-08 0.44582558 1 0.44582558 0.99999994 0.39276743 0 0.39276722
		 1 0.69421673 0 0.69421661 1 0 1 1 0 1 0 0 1 0.44582665 0 0.44582665;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt[0:29]" -type "float3"  -1.9432201 3.4947031 1.1682491 
		-3.5443711 1.8935516 1.1682491 -1.9432275 3.4947033 -0.44675875 -3.5443716 1.8935593 
		-0.44675875 -1.9191055 3.6157038 1.2159204 -3.6653726 1.8694367 1.2159204 -1.9191055 
		3.6157038 -0.49798614 -3.6653726 1.8694367 -0.49798614 -1.9110172 3.5004368 1.180712 
		-1.8900669 3.5186105 1.1935639 -1.882834 3.5461433 1.2049849 -1.8897119 3.57741 1.2129965 
		-1.9085302 3.6051285 1.2159204 -3.5501053 1.8613482 1.180712 -3.568279 1.840398 1.1935639 
		-3.5958116 1.8331647 1.2049849 -3.6270785 1.8400429 1.2129965 -3.6547968 1.858861 
		1.2159204 -1.935688 3.4945328 -0.44936004 -1.9051178 3.5001969 -0.46215072 -1.8857229 
		3.5180659 -0.4753049 -1.8798656 3.5451443 -0.48693091 -1.8878083 3.5760596 -0.49504012 
		-1.9073029 3.6039007 -0.49798614 -3.5442011 1.8860193 -0.44936019 -3.5498655 1.8554487 
		-0.46215087 -3.5677352 1.8360537 -0.4753049 -3.5948133 1.8301963 -0.48693091 -3.6257286 
		1.8381388 -0.49504012 -3.6535692 1.8576334 -0.49798614;
	setAttr -s 30 ".vt[0:29]"  -1.0083367825 3.8146973e-06 0.62828207 0.59281445 4.0531158e-06 0.62828207
		 -1.0083332062 0 -0.62828004 0.59281075 0 -0.62828004 -1.08089447 -0.048439264 0.66537285
		 0.66537261 -0.048439264 0.66537285 -1.08089447 -0.048439264 -0.66813767 0.66537261 -0.048439264 -0.66813767
		 -1.027305126 0.01323843 0.63797867 -1.046867132 0.014626741 0.64797831 -1.064249992 0.0044767857 0.6568644
		 -1.076444387 -0.014595509 0.66309786 -1.08089447 -0.03786397 0.66537285 0.61178327 0.013238668 0.63797867
		 0.63134515 0.01462698 0.64797831 0.64872813 0.0044772625 0.6568644 0.66092241 -0.01459527 0.66309786
		 0.66537261 -0.037863493 0.66537285 -1.012017727 0.00385499 -0.63030398 -1.030134916 0.016308069 -0.64025581
		 -1.048766851 0.017071009 -0.65049046 -1.065234661 0.0064604282 -0.65953612 -1.076720953 -0.01296854 -0.66584551
		 -1.080894232 -0.036636353 -0.66813767 0.59649551 0.0038552284 -0.6303041 0.61461306 0.016308308 -0.64025593
		 0.63324535 0.017071009 -0.65049046 0.64971316 0.0064606667 -0.65953612 0.66119957 -0.012968302 -0.66584551
		 0.66537261 -0.036635876 -0.66813767;
	setAttr -s 57 ".ed[0:56]"  0 1 0 0 2 0 1 3 0 2 3 0 4 5 0 4 6 0 5 7 0
		 6 7 0 13 1 0 14 13 1 15 14 0 16 15 0 12 17 1 17 16 0 12 11 0 23 12 1 11 10 0 10 9 0
		 9 8 1 8 0 0 0 18 1 25 24 0 24 1 1 26 25 1 27 26 0 28 27 0 17 29 1 29 28 0 23 22 0
		 29 23 1 22 21 0 21 20 0 20 19 1 19 18 0 18 24 1 2 18 0 24 3 0 12 4 0 5 17 0 23 6 0
		 7 29 0 11 16 1 10 15 1 9 14 0 8 13 1 16 28 1 15 27 1 14 26 0 13 25 0 11 22 1 10 21 1
		 9 20 0 8 19 0 22 28 1 21 27 1 20 26 1 19 25 1;
	setAttr -s 27 -ch 106 ".fc[0:26]" -type "polyFaces" 
		f 3 1 35 -21
		mu 0 3 2 3 25
		f 3 -3 -23 36
		mu 0 3 4 5 6
		f 4 3 -37 -35 -36
		mu 0 4 7 8 27 9
		f 4 -13 37 4 38
		mu 0 4 22 10 11 12
		f 4 -16 39 -6 -38
		mu 0 4 24 13 14 15
		f 4 -27 -39 6 40
		mu 0 4 23 16 17 18
		f 4 -30 -41 -8 -40
		mu 0 4 26 19 20 21
		f 4 -15 12 13 -42
		mu 0 4 37 10 22 47
		f 4 -17 41 11 -43
		mu 0 4 34 37 47 45
		f 4 -18 42 10 -44
		mu 0 4 31 35 44 41
		f 4 -20 44 8 -1
		mu 0 4 1 29 39 0
		f 4 -19 43 9 -45
		mu 0 4 29 31 41 39
		f 4 -14 26 27 -46
		mu 0 4 46 16 23 67
		f 4 -12 45 25 -47
		mu 0 4 42 46 67 65
		f 4 -11 46 24 -48
		mu 0 4 40 43 64 61
		f 4 -9 48 21 22
		mu 0 4 5 38 59 6
		f 4 -10 47 23 -49
		mu 0 4 38 40 61 59
		f 4 14 49 -29 15
		mu 0 4 24 36 57 13
		f 4 16 50 -31 -50
		mu 0 4 36 33 54 57
		f 4 17 51 -32 -51
		mu 0 4 32 30 51 55
		f 4 18 52 -33 -52
		mu 0 4 30 28 49 51
		f 4 19 20 -34 -53
		mu 0 4 28 2 25 49
		f 4 28 53 -28 29
		mu 0 4 26 56 66 19
		f 4 30 54 -26 -54
		mu 0 4 56 53 62 66
		f 4 31 55 -25 -55
		mu 0 4 52 50 60 63
		f 4 32 56 -24 -56
		mu 0 4 50 48 58 60
		f 4 33 34 -22 -57
		mu 0 4 48 9 27 58;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Lamp";
	rename -uid "D449CBBD-4AC1-730E-0065-21A9B6674FA7";
	setAttr ".rp" -type "double3" -2.345452438793262 1.7104191240602657 -1.6932755743557828 ;
	setAttr ".sp" -type "double3" -2.345452438793262 1.7104191240602657 -1.6932755743557828 ;
createNode transform -n "LampStand" -p "Lamp";
	rename -uid "FDC0A008-4B8E-D400-28ED-898360935BAB";
	setAttr ".rp" -type "double3" -2.3454545907586271 0.12166202922429886 -2.4044179454476384 ;
	setAttr ".sp" -type "double3" -2.3454545907586271 0.12166202922429886 -2.4044179454476384 ;
createNode mesh -n "LampStandShape" -p "LampStand";
	rename -uid "D1913F2D-4A70-27C8-749D-A8801899ADFC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0:59]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[30:59]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:59]" "vtx[90]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[30:59]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[30:59]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[60:89]" "vtx[91]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 31 "f[90:119]" "f[152:154]" "f[157:159]" "f[162:164]" "f[167:169]" "f[172:174]" "f[177:179]" "f[182:184]" "f[187:189]" "f[192:194]" "f[197:199]" "f[202:204]" "f[207:209]" "f[212:214]" "f[217:219]" "f[222:224]" "f[227:229]" "f[232:234]" "f[237:239]" "f[242:244]" "f[247:249]" "f[252:254]" "f[257:259]" "f[262:264]" "f[267:269]" "f[272:274]" "f[277:279]" "f[282:284]" "f[287:289]" "f[292:294]" "f[297:299]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 32 "f[60:89]" "f[120:151]" "f[155:156]" "f[160:161]" "f[165:166]" "f[170:171]" "f[175:176]" "f[180:181]" "f[185:186]" "f[190:191]" "f[195:196]" "f[200:201]" "f[205:206]" "f[210:211]" "f[215:216]" "f[220:221]" "f[225:226]" "f[230:231]" "f[235:236]" "f[240:241]" "f[245:246]" "f[250:251]" "f[255:256]" "f[260:261]" "f[265:266]" "f[270:271]" "f[275:276]" "f[280:281]" "f[285:286]" "f[290:291]" "f[295:296]" "f[300:1109]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.5 0.49999997280247044 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 2378 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.57641786 0.1400069 0.57137084
		 0.12447369 0.56320453 0.11032924 0.5522759 0.098191768 0.53906256 0.088591725 0.52414197
		 0.081948653 0.50816631 0.078552917 0.49183372 0.078552917 0.47585803 0.081948638
		 0.46093747 0.08859171 0.44772416 0.098191768 0.43679553 0.11032924 0.42862922 0.12447369
		 0.4235822 0.14000687 0.42187497 0.15625 0.4235822 0.1724931 0.42862922 0.18802631
		 0.43679553 0.20217073 0.44772416 0.2143082 0.46093747 0.22390825 0.47585803 0.2305513
		 0.49183372 0.23394704 0.50816631 0.23394704 0.52414197 0.2305513 0.5390625 0.22390825
		 0.55227584 0.2143082 0.56320447 0.20217073 0.57137072 0.18802631 0.5764178 0.1724931
		 0.578125 0.15625 0.65283573 0.1237638 0.64274162 0.092697352 0.62640905 0.064408481
		 0.60455179 0.040133536 0.57812512 0.020933434 0.54828399 0.0076473057 0.51633263
		 0.00085583329 0.48366743 0.00085583329 0.45171607 0.0076472908 0.42187497 0.020933419
		 0.3954483 0.040133536 0.37359104 0.064408481 0.35725844 0.092697352 0.34716436 0.12376377
		 0.34374994 0.15625 0.34716436 0.1887362 0.35725847 0.21980262 0.37359104 0.24809146
		 0.3954483 0.2723664 0.42187497 0.29156652 0.45171607 0.3048526 0.4836674 0.31164408
		 0.51633257 0.31164408 0.54828393 0.3048526 0.578125 0.29156649 0.60455167 0.2723664
		 0.62640893 0.24809146 0.6427415 0.21980262 0.65283555 0.1887362 0.65625 0.15625 0.5
		 0.15625 0.5 0.84375 0.375 0.3125 0.38333333 0.3125 0.375 0.36878172 0.39166665 0.3125
		 0.38333333 0.36878186 0.39999989 0.3125 0.39166665 0.36878186 0.4083333 0.3125 0.39999995
		 0.36878186 0.41666663 0.3125 0.4083333 0.36878189 0.42499986 0.3125 0.4166666 0.36878186
		 0.43333328 0.3125 0.42499992 0.36878183 0.4416666 0.3125 0.43333325 0.36878186 0.44999984
		 0.3125 0.44166657 0.36878183 0.45833325 0.3125 0.4499999 0.36878183 0.46666658 0.3125
		 0.45833325 0.36878109 0.4749999 0.3125 0.46666658 0.36878186 0.48333323 0.3125 0.4749999
		 0.36878186 0.49166656 0.3125 0.48333323 0.36878186 0.49999988 0.3125 0.49166656 0.36878192
		 0.50833321 0.3125 0.49999988 0.36878172 0.51666653 0.3125 0.50833321 0.36878216 0.52499986
		 0.3125 0.51666653 0.36878109 0.53333318 0.3125 0.52499986 0.3687824 0.54166651 0.3125
		 0.53333318 0.36878297 0.54999983 0.3125 0.54166651 0.36878109 0.55833316 0.3125 0.54999983
		 0.36878282 0.56666648 0.3125 0.55833316 0.36878258 0.57499981 0.3125 0.56666648 0.36878216
		 0.58333313 0.3125 0.57499981 0.36878231 0.59166646 0.3125 0.58333313 0.36878252 0.59999979
		 0.3125 0.59166646 0.36878186 0.60833311 0.3125 0.59999979 0.36878186 0.61666644 0.3125
		 0.60833311 0.36878234 0.62499976 0.3125 0.61666644 0.36878192 0.61941135 0.89691544
		 0.57641786 0.85999316 0.6057483 0.92058063 0.57137078 0.87552637 0.58746338 0.94088799
		 0.56320447 0.88967073 0.56535596 0.95694989 0.55227584 0.9018082 0.54039234 0.96806443
		 0.5390625 0.91140825 0.51366323 0.97374576 0.52414197 0.9180513 0.48633686 0.97374582
		 0.50816631 0.92144704 0.45960787 0.96806443 0.49183372 0.92144704 0.43464416 0.95694989
		 0.47585803 0.9180513 0.41253665 0.94088787 0.46093747 0.91140825 0.39425191 0.92058051
		 0.44772416 0.9018082 0.38058874 0.89691538 0.4367955 0.88967067 0.37214449 0.87092656
		 0.42862922 0.87552625 0.36928818 0.84375 0.4235822 0.85999304 0.37214446 0.8165735
		 0.42187497 0.84374994 0.38058871 0.79058468 0.42358223 0.82750678 0.39425197 0.76691955
		 0.42862928 0.81197357 0.41253689 0.74661231 0.43679559 0.79782921 0.43464422 0.73055011
		 0.44772425 0.78569168 0.45960784 0.71943539 0.46093756 0.77609164 0.48633689 0.71375406
		 0.47585809 0.76944858 0.51366317 0.713754 0.49183381 0.7660529 0.54039222 0.71943569
		 0.50816631 0.7660529 0.56535608 0.73055005 0.52414203 0.76944858 0.58746344 0.74661207
		 0.53906262 0.77609169 0.60574818 0.76691949 0.55227596 0.78569174 0.61941141 0.79058468
		 0.56320459 0.79782927 0.62785572 0.8165735 0.57137096 0.81197363 0.63071197 0.84375006
		 0.57641792 0.8275069 0.62785566 0.87092656 0.57812512 0.84375 0.62499976 0.36878186
		 0.375 0.49032646 0.62499976 0.49032655 0.375 0.60009241 0.62499976 0.60009241 0.375
		 0.6875 0.65283555 0.8762362 0.62499976 0.6875 0.6332038 0.87206328 0.38333333 0.48958999
		 0.38333333 0.59911978 0.38333333 0.6875 0.6427415 0.90730262 0.62440634 0.89913929
		 0.39166665 0.48908782 0.39166665 0.59853768 0.39166665 0.6875 0.62640893 0.93559146
		 0.61017168 0.92379439 0.39999998 0.48875171 0.39999998 0.59818381 0.39999998 0.6875
		 0.60455167 0.9598664 0.59112197 0.94495124 0.4083333 0.48852947 0.4083333 0.59796596
		 0.4083333 0.6875 0.578125 0.97906649 0.56808984 0.961685 0.41666663 0.4883838 0.41666663
		 0.59783047 0.41666663 0.6875 0.54828393 0.9923526 0.54208189 0.97326452 0.42499995
		 0.48828888 0.42499995 0.5977456 0.42499995 0.6875 0.51633257 0.99914408 0.51423472
		 0.97918355 0.43333328 0.48822731 0.43333328 0.59769207 0.43333328 0.6875 0.4836674
		 0.99914408 0.48576528 0.97918355 0.44166657 0.48818749 0.4416666 0.59765822 0.4416666
		 0.6875 0.45171607 0.9923526 0.45791823 0.97326452 0.44999993 0.48816183 0.44999993
		 0.5976367 0.44999993 0.6875 0.42187497 0.97906649 0.43191025 0.961685 0.45833322
		 0.48814535 0.45833325 0.59762305 0.45833325 0.6875 0.3954483 0.9598664 0.40887809
		 0.94495118 0.46666658 0.48813492 0.46666658 0.59761447 0.46666658 0.6875 0.37359104
		 0.93559146 0.38982841 0.92379433 0.47499993 0.48812839 0.4749999 0.5976091 0.4749999
		 0.6875;
	setAttr ".uvst[0].uvsp[250:499]" 0.35725847 0.90730262 0.37559375 0.89913923
		 0.48333323 0.48812449 0.48333323 0.59760594 0.48333323 0.6875 0.34716436 0.8762362
		 0.36679626 0.87206334 0.49166656 0.4881224 0.49166656 0.59760427 0.49166656 0.6875
		 0.34374994 0.84375 0.36382043 0.84375 0.49999988 0.48812178 0.49999988 0.59760374
		 0.49999988 0.6875 0.34716436 0.8112638 0.36679626 0.81543666 0.50833321 0.48812243
		 0.50833321 0.59760427 0.50833321 0.6875 0.35725844 0.78019738 0.37559375 0.78836077
		 0.51666653 0.48812452 0.51666653 0.59760594 0.51666653 0.6875 0.37359104 0.75190848
		 0.38982847 0.76370567 0.52499986 0.48812857 0.52499986 0.59760916 0.52499986 0.6875
		 0.3954483 0.72763354 0.40887818 0.74254894 0.53333318 0.48813519 0.53333318 0.59761459
		 0.53333318 0.6875 0.42187497 0.70843339 0.43191028 0.72581494 0.54166651 0.48814559
		 0.54166651 0.59762317 0.54166651 0.6875 0.45171607 0.69514728 0.45791826 0.71423537
		 0.54999983 0.48816216 0.54999983 0.59763682 0.54999983 0.6875 0.48366743 0.6883558
		 0.48576534 0.70831633 0.55833316 0.48818782 0.55833316 0.59765834 0.55833316 0.6875
		 0.51633263 0.6883558 0.51423466 0.70831633 0.56666648 0.48822758 0.56666648 0.59769219
		 0.56666648 0.6875 0.54828399 0.69514728 0.54208189 0.71423548 0.57499981 0.48828915
		 0.57499981 0.59774572 0.57499981 0.6875 0.57812512 0.70843345 0.5680899 0.72581494
		 0.58333313 0.48838404 0.58333313 0.59783059 0.58333313 0.6875 0.60455179 0.72763354
		 0.59112203 0.74254882 0.59166646 0.48852962 0.59166646 0.59796602 0.59166646 0.6875
		 0.62640905 0.75190848 0.61017168 0.76370561 0.59999979 0.48875183 0.59999979 0.59818387
		 0.59999979 0.6875 0.64274162 0.78019738 0.6244064 0.78836077 0.60833311 0.48908797
		 0.60833311 0.59853774 0.60833311 0.6875 0.65283573 0.8112638 0.63320386 0.8154366
		 0.61666644 0.48959008 0.61666644 0.59911984 0.65625 0.84375 0.61666644 0.6875 0.63617963
		 0.84375006 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1;
	setAttr ".uvst[0].uvsp[500:749]" 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 7.1525574e-06 0.99999487 6.8545341e-06 1.7724777e-05 0.29651353
		 0 6.3180923e-06 0.99999219 5.6807676e-06 0 0.29649484 0 6.3180923e-06 0.99998796
		 5.6590466e-06 6.7355968e-06 0.29651481 0 4.2915344e-06 1 0 0 0.2965064 0 0 1 0 0
		 0.29647398 0 0 1 0 0 0.29648817 0 0 1 0 0 0.29648578 0 0 1 0 1.3118e-05 0.29649693
		 0 0 1 0 0 0.29648173 0 0 1 0 0 0.29645538 0 0 0.99998009 5.1964889e-08 1.2410053e-05
		 0.2965014 0 0 1 0 0 0.29652047 0 0 0.99998516 -4.8259608e-08 7.622211e-05 0.29650575
		 0 0 1 0 0 0.29653102 7.0899705e-07 6.2586878e-09 1 0 3.5450105e-07 0.29652137 4.2538345e-06
		 3.769992e-08 1 0 0 0.29652947 0 0 1 0 0 0.2964924 1.1346818e-05 3.7669452e-08 1 0
		 0 0.29651719 0 0 1 0 3.5455787e-07 0.29650646 0 0 1 0 0.00011131996 0.29650673 0
		 0 1 0 9.2179425e-06 0.29651073 0 0 1 0 1.2407766e-05 0.29651266 0 0 1 0 7.7997092e-06
		 0.29651302 0 0 1 0 5.4597189e-05 0.29651165 0 0 0.99999654 3.4570694e-06 7.230894e-05
		 0.29653472 1.4891156e-05 4.9571909e-06 0.99999499 5.0067902e-06 1.8791221e-05 0.29651305
		 1.2053259e-05 4.9340651e-06 1 1.1265278e-05 8.8626903e-06 0.2965084 8.5082365e-06
		 7.1081804e-06 1 9.4175339e-06 0 0.2965126 4.963335e-06 6.3615475e-06 1 7.1525574e-06
		 0 0.2965101 7.091565e-07 6.3837961e-06 0.99999738 7.0929527e-06 0 0.29651487 0.99999607
		 0.5 0 0.50001073 0.99999368 0.5 0 0.5 0.99999154 0.5 0 0.50001073 0.99998987 0.5
		 0 0.5 1 0.5 0 0.50001073 1 0.5 0 0.5 1 0.5 0 0.50001073 1 0.5 0 0.5 0.99998862 0.5
		 0 0.5 1 0.5 0 0.50001073 1 0.5 0 0.5 1 0.5 0 0.5 1 0.5 0 0.50001073 1 0.5 0 0.5 1
		 0.5 0 0.50001073 1 0.5 0 0.50001073 1 0.5 0 0.50001073 1 0.5 0 0.5 1 0.50000507 0
		 0.50001073 1 0.5 0 0.5 1 0.5 0 0.5 1 0.5 0 0.50001073 1 0.5 0 0.5 1 0.50000572 0
		 0.50001073 1 0.50000513 0 0.50001073 1 0.50000417 0 0.5 1 0.50000322 0 0.50001073
		 1 0.50000203 0 0.50001073 1 0.50000072 0 0.50001073 0.99999875 0.5 0 0.5 0.99997127
		 0.68321109 0.99999177 0.99999344 6.5565109e-06 0.99999338 1 0.68321681 0.99998808
		 0.99999398 0 0.99998885 0.99998081 0.68320644 0.99998492 0.99999481 5.1259995e-06
		 0.99999487 0.99995291 0.68319803 1 1 0 0.99998653 1 0.68320543 1 1 0 1 1 0.68321812
		 1 1 0 1 1 0.68324029 1 1 0 1 1 0.68319011 0.99998069 1;
	setAttr ".uvst[0].uvsp[750:999]" 0 1 0.99994814 0.68320936 1 1 0 1 1 0.68322432
		 1 1 0 1 0.99992335 0.6832186 1 1 0 1 1 0.68323863 1 1 0 1 0.99997759 0.68321627 1
		 1 0 1 0.99994445 0.68320453 1 1 0 1 0.99995458 0.68322033 1 1 0 1 0.99994707 0.6832087
		 1 1 0 1 1 0.68324661 1 1 0 1 0.99996978 0.68320268 1 1 0 1 1 0.68323112 1 1 0 1 0.99991977
		 0.68319702 1 1 0 1 0.99994445 0.68322033 1 1 1.19893e-05 0.99998802 0.99997914 0.68322432
		 1 1 0 1 1 0.68322217 1 1 0 1 1 0.68322289 1 1 0 1 1 0.68321389 1 0.99999595 0 1 0.99999267
		 0.68321222 1 0.99999481 1.1920929e-05 0.99999481 0.9999916 0.6832062 1 0.99999398
		 8.4042549e-06 0.99999398 1 0.683231 1 0.99999338 5.1274465e-06 0.99999338 1 0.68322647
		 1 0.99999309 2.6206947e-06 0.99999309 1 0.68321407 0.99999577 0.99999309 0 0.99999309
		 1 0.29652011 0.99997485 0.29650974 1 0.29651606 0.99998856 0.2965129 0.99993223 0.29651421
		 0.99997377 0.29650283 0.9999795 0.29649764 1 0.29650068 0.99995852 0.29650635 0.99995184
		 0.29648358 1 0.29650569 0.99999356 0.29652411 1 0.29653352 0.99999619 0.29653329
		 1 0.29652095 0.99999517 0.29653239 0.99997139 0.29650897 0.99999619 0.29651976 1
		 0.29650646 1 0.29654759 1 0.29651386 1 0.2965169 1 0.29651558 1 0.29653239 1 0.29656136
		 1 0.29651958 1 0.29651272 0.99999404 0.29651636 0.99999714 0.29651177 1 0.29651505
		 3.4452398e-05 0.68320501 1.0461812e-05 0.68320757 0 0.68320101 1.4792107e-05 0.68320757
		 0 0.68319952 0 0.68318129 2.7320016e-06 0.6832037 1.7991407e-06 0.68321705 4.571239e-05
		 0.68321168 3.1319669e-06 0.68318814 0 0.68319088 2.7186683e-05 0.68320733 0 0.6831916
		 4.4377706e-05 0.68321079 0 0.68320823 0 0.68318498 0 0.68320429 0 0.68319017 3.738646e-05
		 0.68322319 0 0.6831919 2.7857641e-05 0.68321365 0 0.68316853 0 0.68320072 0 0.68321693
		 1.5858053e-05 0.68321228 3.3516502e-05 0.68320179 1.1927891e-05 0.68320644 0 0.68320966
		 0 0.68320322 3.1651551e-05 0.68321127 1.2787448e-05 0.49247333 1 0.4924781 0 1 0
		 0 1 0 1 1 0 0.22962281 0.9999994 0.22961925 0 0.49246067 0.99998188 0.49247143 0
		 1 0 0 1 0 1 1 0 0.22962277 0.99999821 0.22961923 4.8593542e-06 0.492475 1 0.49247593
		 0 1 0 0 1 0 1 1 0 0.22962283 0.99999708 0.22961926 0 0.49246904 0.99999171 0.49247372
		 0 1 0 0 1 0 1 1 0 0.2296228 0.99999613 0.22961926 0 0.49244478 0.99995112 0.49247381
		 0 1 0 0 1 0 1 1 0 0.22962281 0.99999535 0.22961925 0 0.49245551 0.99998111 0.49246609
		 0 1 0 0 1 0 1 1 0 0.22962277 1 0.22961923 0 0.49245328 0.99998522 0.49246183 0 1
		 0 0 1 0 1 1 0 0.22962278 1 0.22961922 9.4639136e-06 0.49246132 1 0.49246404 0 1 0
		 0 1 0 1 1 0 0.22962275 1 0.22961922 0 0.49244991 0.99997008 0.49246767 0 1 0 0 1
		 0 1 1 0 0.22962277 1 0.22961923 0 0.49243173 0.99996525 0.49245209 0 1 0 0 1 0 1
		 1 0 0.22962278 0.99999475 0.22961919 8.953155e-06 0.49246538 1 0.49246848 0 1 0 0
		 1 0 1 1 0 0.2296228 1 0.22961926 0 0.49247867 0.99999535 0.49248129 0 1 0 0 1 0 1
		 1 0 0.22962277 1 0.2296192 5.4990061e-05 0.49246755 1 0.49248761 0 1 0 0 1 0 1 1
		 0 0.22962284 1 0.22961926 0 0.49248675 0.99999726 0.49248838 0 1 0 0 1 0 1 1 0 0.22962277
		 1 0.22961923 2.5575233e-07 0.49248022 1 0.49247992 0 1 0 0 1 0 1 1 0 0.2296228 1
		 0.22961922 0 0.49248564 0.99999654 0.49248773 0 1;
	setAttr ".uvst[0].uvsp[1000:1249]" 0 0 1 0 1 1 0 0.2296228 1 0.22961922 0 0.49245825
		 0.99997938 0.4924702 0 1 0 0 1 0 1 1 0 0.22962283 1 0.22961925 0 0.49247673 0.99999726
		 0.49247858 0 1 0 0 1 0 1 1 0 0.22962277 1 0.22961923 2.5579322e-07 0.49246964 1 0.49246964
		 0 1 0 0 1 0 1 1 0 0.22962281 1 0.22961925 8.0311154e-05 0.49246877 1 0.49249825 0
		 1 0 0 1 0 1 1 0 0.22962275 1 0.22962151 6.6502353e-06 0.49247143 1 0.49247369 0 1
		 0 0 1 0 1 1 0 0.22962281 1 0.22961928 8.9515179e-06 0.49247277 1 0.49247581 0 1 0
		 0 1 0 1 1 0 0.22962281 1 0.22961922 5.6270592e-06 0.49247301 1 0.49247485 0 1 0 0
		 1 0 1 1 0 0.22962278 1 0.22961925 3.9388815e-05 0.49247256 1 0.49248752 0 1 0 0 1
		 0 1 1 0 0.22962283 1 0.22961925 5.216691e-05 0.49248862 1 0.49250785 0 1 0 0 1 0
		 1 1 0 0.22962281 1 0.22962186 1.3556806e-05 0.49247384 1 0.49247855 0 1 0 0 1 0 1
		 1 0 0.2296228 1 0.22962159 6.3939387e-06 0.49246988 1 0.49247298 0 1 0 0 1 0 1 1
		 0 0.22962283 1 0.22962117 0 0.49247217 0.99999571 0.49247488 0 1 0 0 1 0 1 1 0 0.2296228
		 1 0.2296207 0 0.49247086 0.99999791 0.49247208 0 1 0 0 1 0 1 1 0 0.22962281 1 0.22962016
		 1 0.49247417 0 0.49247405 1 0 1 1 0 1 0 0 1 0.22961955 0 0.22962277 0 0.77039206
		 0.9999994 0.7703858 0 1 0 0 1 0 1 1 7.5479679e-06 0.4929193 1 0.49292397 0 0.77038229
		 0.99999821 0.7703858 0 1 0 0 1 0 1 1 0 0.49291375 0.99997926 0.49292102 0 0.77039206
		 0.99999708 0.7703858 0 1 0 0 1 0 1 1 1.0672165e-05 0.49291855 1 0.49292523 0 0.77038223
		 0.99999613 0.7703858 0 1 0 0 1 0 1 1 0 0.49291265 0.99998617 0.49291766 0 0.77039206
		 0.99999535 0.7703858 0 1 0 0 1 0 1 1 0 0.49290034 0.99996603 0.49291241 0 0.77038229
		 1 0.7703858 0 1 0 0 1 0 1 1 1.9710774e-06 0.49291602 1 0.49291727 0 0.77039212 1
		 0.77038586 0 1 0 0 1 0 1 1 1.2980407e-06 0.49292615 1 0.49292693 0 0.77038229 1 0.77038586
		 0 1 0 0 1 0 1 1 3.298049e-05 0.49292231 1 0.49294293 0 0.77038229 1 0.7703858 0 1
		 0 0 1 0 1 1 2.2596475e-06 0.49290574 1 0.49290717 0 0.77039212 0.99999475 0.77038586
		 0 1 0 0 1 0 1 1 0 0.4929069 0.99996257 0.49292025 0 0.77038223 1 0.7703858 0 1 0
		 0 1 0 1 1 1.9614565e-05 0.49291834 1 0.49293059 0 0.77038229 1 0.77038586 0 1 0 0
		 1 0 1 1 0 0.49290743 0.99994469 0.49292693 0 0.770392 1 0.7703858 0 1 0 0 1 0 1 1
		 3.2017553e-05 0.49292174 1 0.49294183 0 0.77038229 1 0.7703858 0 1 0 0 1 0 1 1 0
		 0.492919 0.99998385 0.49292481 0 0.77039206 1 0.7703858 0 1 0 0 1 0 1 1 0 0.49290177
		 0.99995995 0.4929159 0 0.77039206 1 0.7703858 0 1 0 0 1 0 1 1 0 0.49291617 0.99996722
		 0.49292773 0 0.77039206 1 0.7703858 0 1 0 0 1 0;
	setAttr ".uvst[0].uvsp[1250:1499]" 1 1 0 0.49290657 0.99996179 0.49291995 0 0.77038229
		 1 0.77038586 0 1 0 0 1 0 1 1 2.6973472e-05 0.49292982 1 0.49294671 0 0.77039206 1
		 0.7703858 0 1 0 0 1 0 1 1 0 0.49290663 0.99997818 0.49291441 0 0.77038229 1 0.77038819
		 0 1 0 0 1 0 1 1 2.0098663e-05 0.49292335 1 0.49293593 0 0.77038223 1 0.7703858 0
		 1 0 0 1 0 1 1 0 0.49289101 0.99994212 0.49291158 0 0.77039206 1 0.7703858 0 1 0 0
		 1 0 1 1 0 0.49291429 0.99995995 0.49292845 0 0.77038229 1 0.7703858 0 1 0 0 1 0 1
		 1 0 0.492926 0.99998492 0.49293134 0 0.77039206 1 0.7703858 0 1 0 0 1 0 1 1 1.1441225e-05
		 0.49292213 1 0.49292928 0 0.77039206 1 0.77038842 0 1 0 0 1 0 1 1 2.4181421e-05 0.49291512
		 1 0.49293035 0 0.77038223 1 0.77038813 0 1 0 0 1 0 1 1 8.605698e-06 0.49291766 1
		 0.49292302 0 0.77039206 1 0.77038771 0 1 0 0 1 0 1 1 0 0.49292058 0.9999947 0.49292243
		 0 0.77039206 1 0.77038729 0 1 0 0 1 0 1 1 0 0.49291661 0.99999392 0.49291876 0 0.77039206
		 1 0.7703867 0 1 0 0 1 0 1 1 2.28359e-05 0.49292195 1 0.49293619 1 0.77038616 0 0.77038229
		 1 0 1 1 0 1 0 0 1 0.49293318 2.4856663e-05 0.49291769 0 2.6226044e-06 0.99999487
		 5.1259995e-06 3.3302764e-05 0.45728794 0 2.5033951e-06 0.99998975 5.1275647e-06 0
		 0.45727301 0 2.6226044e-06 0.99999231 2.5657205e-06 0 0.45727086 0 2.5033951e-06
		 1 0 0 0.45725149 0 0 1 0 0 0.45720387 0 0 1 0 0 0.45727533 0 0 1 0 2.5619806e-06
		 0.45728284 0 0 0.99997956 -5.4395059e-08 0 0.45722091 0 2.5033951e-06 1 0 0 0.45726675
		 0 0 1 0 0.00010761422 0.45727846 0 0 1 0 2.1772095e-05 0.45728055 0 0 1 0 0 0.45725697
		 0 0 1 0 3.8425378e-06 0.45727739 0 0 1 0 0 0.4572745 0 0 1 0 0 0.45728028 0 0 1 0
		 0 0.45727503 0 0 1 0 7.6860997e-06 0.45728064 0 0 1 0 6.6606211e-05 0.45727977 0
		 0 1 0 3.842863e-06 0.45728275 0 0 1 0 0 0.45727521 2.3060249e-05 6.7484507e-09 1
		 0 0 0.45728058 0 0 1 0 0.00012425416 0.45728734 0 0 1 0 0 0.45727199 0 0 1 0 7.6856859e-06
		 0.45728934 0 0 0.99999487 5.1259995e-06 8.1967002e-05 0.45729005 1.537153e-05 2.5694681e-06
		 1 0 3.8428825e-05 0.45728895 1.2809312e-05 2.5686859e-06 0.99999738 2.6226044e-06
		 0 0.45728493 7.6863162e-06 5.1286825e-06 1 5.0663948e-06 1.9215791e-05 0.45728967
		 1.0247267e-05 2.5677318e-06 1 3.2782555e-06 0 0.45727694 2.5618363e-06 2.5641632e-06
		 0.99999815 3.3378601e-06 1.2809181e-06 0.4572852 0.99999726 0.44995892 0 0.55005622
		 0.99999553 0.44995892 0 0.55006641 0.9999941 0.44995892 0 0.55005622 0.99999285 0.44995898
		 0 0.55006129 0.99999189 0.44995892 0 0.55006129 1 0.44995898 0 0.55005622 0.99998224
		 0.44995892 0 0.55005622 0.9999913 0.44995898 0 0.55005622 1 0.44995886 0 0.55005622
		 1 0.44995892 0 0.55006641 1 0.44995892 0 0.55005622 1 0.44995886 0 0.55002046 1 0.44995892
		 0 0.55005622 1 0.44995886 0 0.55005622 1 0.44995892 0 0.55005622 1 0.44995892 0 0.55006129
		 1 0.44995892 0 0.55006641 1 0.44995892 0 0.55006129 1 0.44995892 0 0.55006129 1 0.44996339
		 0 0.55005622 1 0.44996852 0 0.55005622 1 0.44995892 0 0.55005622 1 0.44996369 0 0.55005622
		 1 0.44996339 0 0.55006129 1 0.44996285 0 0.55005622 1 0.4499622 0 0.55006129 1 0.44996142;
	setAttr ".uvst[0].uvsp[1500:1749]" 0 0.55006129 1 0.44996047 0 0.55006129 1 0.44995946
		 0 0.55005622 0.99999911 0.44995898 0 0.55005622 0.84803969 0.3039082 0.84803224 0.30391061
		 0.84802091 0.30391094 0.84798145 0.30391258 0.84804529 0.30390942 0.84804559 0.30390877
		 0.8480016 0.30391461 0.84802163 0.30391693 0.84804934 0.30390131 0.84804738 0.30390519
		 0.84803557 0.30391401 0.84804261 0.30391234 0.84804136 0.30391479 0.84803855 0.30391291
		 0.84804386 0.30391228 0.848032 0.30391109 0.84804249 0.30391508 0.84803456 0.30391589
		 0.84802163 0.30391198 0.84804392 0.30391216 0.84804976 0.30390048 0.84801197 0.30391389
		 0.84803081 0.30391106 0.84804851 0.30390298 0.8480466 0.3039068 0.84804475 0.30391049
		 0.84804666 0.30390662 0.84804475 0.30391049 0.84804606 0.30390781 0.84804726 0.30390549
		 0.5 1 0 0.44999492 1 0.45729452 0 0.44999492 0.99998832 0.45728755 0 0.44998467 0.99998367
		 0.45728803 0 0.44999492 0.99997032 0.45728517 0 0.4499898 0.9999249 0.45728683 0
		 0.4499898 0.99999714 0.45727873 0 0.44999492 1 0.45728254 0 0.44999492 0.99994624
		 0.45728141 0 0.44999492 0.99998975 0.45727748 0 0.44999492 1 0.45730156 0 0.44998467
		 1 0.45728672 0 0.44999492 0.9999823 0.4572764 0 0.44992846 1 0.45727974 0 0.44999492
		 0.9999975 0.45727605 0 0.44999492 1 0.45728153 0 0.44999492 0.99999917 0.45727563
		 0 0.4499898 1 0.45728052 0 0.44998467 1 0.45729369 0 0.4499898 1 0.45728338 0 0.4499898
		 0.99999249 0.45728362 0 0.44999492 0.99999619 0.45728266 0 0.44999492 1 0.45731252
		 0 0.44999492 0.99998736 0.45728689 0 0.44999492 1 0.45729071 0 0.4499898 1 0.45730728
		 0 0.44999492 1 0.45729786 0 0.4499898 0.99999923 0.45728797 0 0.4499898 1 0.45729172
		 0 0.4499898 0.99998903 0.45728743 0 0.44999492 1 0.45728666 0.15195921 0.30391094
		 0.99999911 0.55004954 0.15196532 0.30390823 0.99999726 0.55004954 0.15195498 0.30390996
		 0.99999553 0.55004954 0.1519534 0.3039068 0.9999941 0.55004954 0.15195352 0.30390704
		 0.99999285 0.55004954 0.15194821 0.30389643 0.99999189 0.55004954 0.15197083 0.30391428
		 1 0.55004954 0.15198097 0.30391464 0.99998224 0.55004954 0.15195158 0.30390316 0.9999913
		 0.55004954 0.15195537 0.30391073 1 0.55004954 0.15200567 0.30391428 1 0.55004954
		 0.15197441 0.30391151 1 0.55004954 0.15195522 0.30391043 1 0.55004954 0.15195927
		 0.30391356 1 0.55004954 0.15195832 0.30391663 1 0.55004948 0.15195572 0.30391145
		 1 0.55004954 0.15196055 0.30391362 1 0.55004954 0.15195644 0.30391288 1 0.55004954
		 0.15195855 0.30391461 1 0.55004954 0.15195593 0.30391186 1 0.55004954 0.15195379
		 0.30390757 1 0.55005312 0.15196043 0.30391338 1 0.55005741 0.15199801 0.30391389
		 1 0.55004954 0.15195251 0.30390501 1 0.55005348 0.15195435 0.30390871 1 0.55005324
		 0.15198311 0.30391148 1 0.55005276 0.15197892 0.30391306 1 0.55005217 0.15196741
		 0.3039124 1 0.55005157 0.15196992 0.30390999 1 0.55005085 0.15195429 0.30390859 1
		 0.5500499 2.8693406e-05 0.53240341 1 0.53240913 1.7493194e-05 0.71492553 1 0.71492898
		 0 1 0 0 1 0 1 1 0 0.13201405 0.99999976 0.1320035 0 0.28545335 0.9999994 0.28543055
		 0 0.5323903 0.99998993 0.53240287 0 0.71491766 0.99999386 0.71492529 0 1 0 0 1 0
		 1 1 0 0.13201106 0.99999923 0.1320035 0 0.28544685 0.99999827 0.28543052 0 0.53238857
		 0.99998593 0.53240335 0 0.71491647 0.99999142 0.71492547 0 1 0 0 1 0 1 1 0 0.13201407
		 0.99999869 0.1320035 0 0.28545335 0.99999714 0.28543052 0 0.532372 0.99997443 0.53240103
		 0 0.71490657 0.99998438 0.71492428 0 1 0 0 1 0 1 1 0 0.13201256 0.99999827 0.1320035
		 0 0.2854501 0.99999624 0.28543052 0 0.53233075 0.99993527 0.53240228 0 0.71488112
		 0.99996054 0.71492469 0 1 0 0 1 0 1 1 0 0.13201255 0.99999791 0.1320035 0 0.2854501
		 0.99999547 0.28543055 0 0.53239274 0.99999756 0.53239566 0 0.71491897 0.99999851
		 0.71492076 0 1 0 0 1 0 1 1 0 0.13201405 0.99999762 0.1320035 0 0.28545335 0.99999487
		 0.28543052 2.2073848e-06 0.53239864 1 0.5323984 1.3457513e-06 0.71492279 1 0.71492261
		 0 1 0 0 1 0 1 1 0 0.13201407 1 0.13200352 0 0.28545335 1 0.28543055 0 0.53234529
		 0.99995369 0.53239739 0 0.71489024 0.99997175 0.71492201 0 1 0 0 1 0 1 1;
	setAttr ".uvst[0].uvsp[1750:1999]" 0 0.13201407 0.99999481 0.1320035 0 0.28545335
		 0.99998873 0.28543052 0 0.53238553 0.99999118 0.53239477 0 0.7149145 0.99999464 0.71492016
		 0 1 0 0 1 0 1 1 0 0.13201407 0.99999744 0.13200353 0 0.28545335 0.99999446 0.28543055
		 9.2719638e-05 0.53239501 1 0.53241491 5.6527373e-05 0.71492034 1 0.7149325 0 1 0
		 0 1 0 1 1 0 0.13201103 1 0.13200346 0 0.28544685 1 0.28543046 1.875867e-05 0.53239709
		 1 0.5324024 1.1436389e-05 0.71492177 1 0.71492499 0 1 0 0 1 0 1 1 0 0.13201405 1
		 0.13200349 0 0.28545335 1 0.28543052 0 0.53237718 0.99998474 0.53239387 0 0.71490943
		 0.9999907 0.71491963 0 1 0 0 1 0 1 1 0 0.13199455 1 0.13200349 0 0.28541118 1 0.28543052
		 3.3107065e-06 0.53239363 1 0.53239566 2.0184013e-06 0.71491963 1 0.71492088 0 1 0
		 0 1 0 1 1 0 0.13201407 1 0.13200349 0 0.28545335 1 0.28543046 0 0.53239197 0.99999785
		 0.53239328 0 0.71491855 0.99999869 0.71491939 0 1 0 0 1 0 1 1 0 0.13201407 1 0.1320035
		 0 0.28545335 1 0.28543052 0 0.5323965 1 0.53239757 0 0.71492165 1 0.71492231 0 1
		 0 0 1 0 1 1 0 0.13201405 1 0.13200347 0 0.28545335 1 0.28543046 0 0.53239244 0.99999928
		 0.53239292 0 0.71491885 0.99999958 0.71491921 0 1 0 0 1 0 1 1 0 0.13201256 1 0.1320035
		 0 0.2854501 1 0.28543052 6.6222919e-06 0.53239661 1 0.53239655 4.0373402e-06 0.71492141
		 1 0.71492136 0 1 0 0 1 0 1 1 0 0.13201106 1 0.1320035 0 0.28544685 1 0.28543052 5.7387355e-05
		 0.53239679 1 0.53240877 3.4986711e-05 0.71492153 1 0.71492887 0 1 0 0 1 0 1 1 0 0.13201255
		 1 0.13200349 0 0.2854501 1 0.28543052 3.3109784e-06 0.53239942 1 0.53239995 2.018568e-06
		 0.71492302 1 0.71492338 0 1 0 0 1 0 1 1 0 0.13201259 1 0.13200353 0 0.2854501 1 0.28543052
		 0 0.53239226 0.9999935 0.53239948 0 0.71491879 0.99999607 0.7149232 0 1 0 0 1 0 1
		 1 0 0.13201408 1 0.13200352 0 0.28545335 1 0.28543052 0 0.53239727 0.99999672 0.53239906
		 0 0.71492171 0.99999797 0.71492279 0 1 0 0 1 0 1 1 0 0.13201407 1 0.13200481 0 0.28545335
		 1 0.28543335 0.00010705653 0.53240252 1 0.53242421 6.5267959e-05 0.71492505 1 0.71493828
		 0 1 0 0 1 0 1 1 0 0.13201407 1 0.13200632 0 0.28545335 1 0.2854366 0 0.53238928 0.99998909
		 0.5324021 0 0.714917 0.99999338 0.71492481 0 1 0 0 1 0 1 1 0 0.13201407 1 0.1320035
		 0 0.28545335 1 0.28543052 6.6219409e-06 0.53240377 1 0.53240496 4.0371269e-06 0.71492565
		 1 0.71492636 0 1 0 0 1 0 1 1 0 0.13201255 1 0.13200489 0 0.2854501 1 0.28543353 7.0622133e-05
		 0.53240532 1 0.53242016 4.3055417e-05 0.71492672 1 0.71493578 0 1 0 0 1 0 1 1 0 0.13201407
		 1 0.13200481 0 0.28545335 1 0.28543335 3.3109951e-05 0.53240472 1 0.53241241 2.0185782e-05
		 0.7149263 1 0.71493101 0 1 0 0 1 0 1 1 0 0.13201259 1 0.13200468 0 0.2854501 1 0.28543302
		 0 0.53240114 0.99999934 0.53240377 0 0.7149241 0.99999958 0.71492571 0 1 0 0 1 0
		 1 1 0 0.13201256 1 0.13200447 0 0.2854501 1 0.28543261 1.655618e-05 0.5324049 1 0.53240669
		 1.0093624e-05 0.71492642 1 0.71492749 0 1 0 0 1 0 1 1 0 0.13201256 1 0.13200423 0
		 0.2854501 1 0.2854321 0 0.53239393 0.99999052 0.53240299 0 0.71491981 0.99999422
		 0.71492529 0 1 0 0;
	setAttr ".uvst[0].uvsp[2000:2249]" 1 0 1 1 0 0.13201405 1 0.13200395 0 0.28545335
		 1 0.2854315 1 0.53240204 1.10363e-06 0.53240079 1 0.71492481 6.728377e-07 0.71492404
		 1 0 1 1 0 1 0 0 1 0.13200365 0 0.13201405 1 0.28543085 0 0.28545335 0 0.71457911
		 0.9999994 0.71457487 0 0.86800092 0.99999976 0.86799896 0 1 0 0 1 0 1 1 0.079823636
		 0.1596355 0.920183 0.15963405 0.13093619 0.26185307 0.86907464 0.26185071 0 0.71458554
		 0.99999827 0.71457487 0 0.8680039 0.99999923 0.86799896 0 1 0 0 1 0 1 1 0.079818144
		 0.15963629 0.92017907 0.15963537 0.13092721 0.26185441 0.86906821 0.26185289 0 0.71457911
		 0.99999714 0.71457487 0 0.86800098 0.99999869 0.86799902 0 1 0 0 1 0 1 1 0.079817399
		 0.1596348 0.92017508 0.1596368 0.13092591 0.26185182 0.86906171 0.2618551 0 0.71458232
		 0.99999624 0.71457487 0 0.86800241 0.99999827 0.86799902 0 1 0 0 1 0 1 1 0.079817377
		 0.15963475 0.92016917 0.1596368 0.130926 0.261852 0.86905199 0.26185533 0 0.71458232
		 0.99999547 0.71457487 0 0.86800247 0.99999791 0.86799902 0 1 0 0 1 0 1 1 0.079814643
		 0.15962929 0.92014843 0.15963776 0.13092145 0.26184291 0.86901796 0.26185682 0 0.71457911
		 0.99999487 0.71457487 0 0.86800098 0.99999762 0.86799902 0 1 0 0 1 0 1 1 0.079826616
		 0.15963884 0.92018187 0.15963629 0.13094105 0.26185849 0.86907285 0.26185432 0 0.71457911
		 1 0.71457487 0 0.86800098 1 0.86799902 0 1 0 0 1 0 1 1 0.079831816 0.15963879 0.92018211
		 0.15963571 0.13094965 0.26185855 0.86907321 0.26185349 0 0.71457911 0.99998873 0.71457487
		 0 0.86800098 0.99999481 0.86799902 0 1 0 0 1 0 1 1 0.079816386 0.15963277 0.92015904
		 0.15963878 0.13092433 0.26184866 0.8690353 0.26185852 0 0.71457911 0.99999446 0.71457487
		 0 0.86800092 0.99999744 0.86799902 0 1 0 0 1 0 1 1 0.079818338 0.15963668 0.92016959
		 0.15963992 0.13092753 0.26185507 0.86905265 0.26186043 0 0.71458554 1 0.71457487
		 0 0.86800396 1 0.86799902 0 1 0 0 1 0 1 1 0.079844758 0.15963852 0.92018414 0.15963171
		 0.1309709 0.26185814 0.86907649 0.26184699 0 0.71457911 1 0.71457487 0 0.86800092
		 1 0.86799896 0 1 0 0 1 0 1 1 0.079828382 0.15963717 0.92018306 0.15963385 0.13094409
		 0.26185602 0.8690747 0.26185057 0 0.7145564 1 0.71457487 0 0.86799043 1 0.86799902
		 0 1 0 0 1 0 1 1 0.079818271 0.15963654 0.92017692 0.15963842 0.13092747 0.26185495
		 0.86906457 0.26185805 0 0.71457911 1 0.71457487 0 0.86800092 1 0.86799896 0 1 0 0
		 1 0 1 1 0.079820454 0.15963829 0.92018056 0.15963764 0.13093103 0.26185781 0.86907059
		 0.26185673 0 0.71457911 1 0.71457487 0 0.86800092 1 0.86799896 0 1 0 0 1 0 1 1 0.079819791
		 0.15963958 0.92018002 0.1596386 0.13092999 0.26185998 0.86906976 0.26185837 0 0.71457911
		 1 0.71457481 0 0.86800092 1 0.86799896 0 1 0 0 1 0 1 1 0.079818614 0.15963723 0.92017835
		 0.159638 0.13092801 0.26185602 0.86906707 0.2618573 0 0.71458232 1 0.71457487 0 0.86800241
		 1 0.86799896 0 1 0 0 1 0 1 1 0.079820983 0.15963803 0.92018133 0.15963733 0.13093194
		 0.26185745 0.86907184 0.26185629 0 0.71458554 1 0.71457487 0 0.8680039 1 0.86799896
		 0 1 0 0 1 0 1 1 0.079818957 0.15963791 0.92017496 0.15963697 0.13092853 0.26185706
		 0.86906153 0.26185554 0 0.71458232 1 0.71457487 0 0.86800241 1 0.86799902 0 1 0 0
		 1 0 1 1 0.079820029 0.15963875 0.9201805 0.159639 0.13093036 0.26185855 0.86907053
		 0.26185897 0 0.71458232 1 0.71457487 0 0.86800241 1 0.86799902 0 1 0 0 1 0 1 1 0.079818636
		 0.15963727 0.92017639 0.15963939 0.13092797 0.26185593 0.86906385 0.26185939 0 0.71457911
		 1 0.71457487 0 0.86800092 1 0.86799896;
	setAttr ".uvst[0].uvsp[2250:2377]" 0 1 0 0 1 0 1 1 0.079817459 0.15963492 0.92016965
		 0.15963724 0.13092609 0.26185217 0.86905271 0.26185599 0 0.71457911 1 0.71457714
		 0 0.86800098 1 0.86800003 0 1 0 0 1 0 1 1 0.079821125 0.15963832 0.92018116 0.15963767
		 0.13093209 0.26185775 0.86907166 0.26185668 0 0.71457911 1 0.71457982 0 0.86800092
		 1 0.86800128 0 1 0 0 1 0 1 1 0.079840757 0.15963838 0.92018431 0.15963133 0.13096434
		 0.2618579 0.86907685 0.26184633 0 0.71457911 1 0.71457487 0 0.86800092 1 0.86799896
		 0 1 0 0 1 0 1 1 0.079816848 0.1596337 0.92016447 0.15963836 0.13092512 0.26185024
		 0.86904424 0.2618579 0 0.71458232 1 0.71457738 0 0.86800247 1 0.86800015 0 1 0 0
		 1 0 1 1 0.079817958 0.15963592 0.92017424 0.15963715 0.13092685 0.26185369 0.86906034
		 0.26185572 0 0.71457911 1 0.7145772 0 0.86800092 1 0.86800009 0 1 0 0 1 0 1 1 0.079832919
		 0.15963708 0.92018372 0.15963262 0.13095143 0.26185569 0.86907583 0.26184839 0 0.71458232
		 1 0.7145769 0 0.86800241 1 0.86799991 0 1 0 0 1 0 1 1 0.079830788 0.15963805 0.92018265
		 0.15963477 0.13094787 0.26185715 0.86907411 0.26185176 0 0.71458232 1 0.71457654
		 0 0.86800241 1 0.86799973 0 1 0 0 1 0 1 1 0.079824634 0.1596375 0.92018175 0.15963648
		 0.1309379 0.2618565 0.86907256 0.26185486 0 0.71458232 1 0.71457613 0 0.86800241
		 1 0.86799955 0 1 0 0 1 0 1 1 0.07982599 0.15963629 0.9201827 0.15963453 0.13094001
		 0.26185429 0.86907429 0.2618514 0 0.71457911 1 0.71457571 0 0.86800092 1 0.86799937
		 0 1 0 0 1 0 1 1 0.079817832 0.15963566 0.92018169 0.15963666 0.1309267 0.2618534
		 0.8690725 0.26185504 1 0.71457511 0 0.71457911 1 0.86799914 0 0.86800098 1 0 1 1
		 0 1 0 0 0.92018235 0.15963525 0.079820409 0.15963688 0.86907369 0.26185259 0.13093087
		 0.2618553;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1053 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -2.6243572 1.0805676 -2.3451362 -2.6059375 
		1.0805676 -2.2884455 -2.5761333 1.0805676 -2.2368231 -2.5362475 1.0805676 -2.1925263 
		-2.488023 1.0805676 -2.1574888 -2.4335682 1.0805676 -2.1332436 -2.3752606 1.0805676 
		-2.120851 -2.3156507 1.0805676 -2.120851 -2.2573473 1.0805676 -2.1332436 -2.2028909 
		1.0805676 -2.1574888 -2.1546674 1.0805676 -2.1925263 -2.1147842 1.0805676 -2.2368231 
		-2.0849776 1.0805676 -2.2884455 -2.0665603 1.0805676 -2.3451362 -2.0603259 1.0805676 
		-2.404418 -2.0665603 1.0805676 -2.4636998 -2.0849776 1.0805676 -2.5203912 -2.1147842 
		1.0805676 -2.5720134 -2.1546674 1.0805676 -2.6163106 -2.2028909 1.0805676 -2.6513479 
		-2.2573473 1.0805676 -2.6755924 -2.3156507 1.0805676 -2.6879857 -2.3752587 1.0805676 
		-2.6879857 -2.4335682 1.0805676 -2.6755924 -2.488023 1.0805676 -2.6513479 -2.536247 
		1.0805676 -2.6163106 -2.576133 1.0805676 -2.5720134 -2.6059372 1.0805676 -2.5203912 
		-2.624357 1.0805676 -2.4636998 -2.6305878 1.0805676 -2.404418 -2.9032555 1.0805676 
		-2.2858546 -2.8664157 1.0805676 -2.1724725 -2.8068075 1.0805676 -2.0692277 -2.7270365 
		1.0805676 -1.9806334 -2.6305881 1.0805676 -1.9105588 -2.5216784 1.0805676 -1.8620689 
		-2.405067 1.0805676 -1.8372833 -2.2858479 1.0805676 -1.8372833 -2.169235 1.0805676 
		-1.8620689 -2.0603259 1.0805676 -1.9105588 -1.9638811 1.0805676 -1.9806334 -1.8841096 
		1.0805676 -2.0692277 -1.8244975 1.0805676 -2.1724725 -1.7876586 1.0805676 -2.2858543 
		-1.7751997 1.0805676 -2.404418 -1.7876586 1.0805676 -2.5229814 -1.8244975 1.0805676 
		-2.6363633 -1.8841096 1.0805676 -2.739608 -1.9638811 1.0805676 -2.8282032 -2.0603259 
		1.0805676 -2.898277 -2.169235 1.0805676 -2.9467676 -2.2858479 1.0805676 -2.9715536 
		-2.4050665 1.0805676 -2.9715536 -2.521678 1.0805676 -2.9467666 -2.6305878 1.0805676 
		-2.898277 -2.7270362 1.0805676 -2.8282032 -2.806807 1.0805676 -2.739608 -2.8664153 
		1.0805676 -2.6363633 -2.9032547 1.0805676 -2.5229814 -2.9157166 1.0805676 -2.404418 
		-2.4095228 -0.83724344 -2.3908014 -2.4052916 -0.83724344 -2.3777788 -2.3984454 -0.83724344 
		-2.3659215 -2.3892834 -0.83724344 -2.3557456 -2.3782039 -0.83724344 -2.3476973 -2.3656952 
		-0.83724344 -2.342128 -2.3523021 -0.83724344 -2.3392813 -2.3386092 -0.83724344 -2.3392813 
		-2.3252161 -0.83724344 -2.342128 -2.3127074 -0.83724344 -2.3476973 -2.3016307 -0.83724344 
		-2.3557456 -2.2924716 -0.83724344 -2.3659215 -2.2856233 -0.83724344 -2.3777788 -2.2813933 
		-0.83724344 -2.3908014 -2.279963 -0.83724344 -2.404418 -2.2813933 -0.83724344 -2.4180355 
		-2.2856233 -0.83724344 -2.4310579 -2.2924716 -0.83724344 -2.4429164 -2.3016307 -0.83724344 
		-2.4530914 -2.3127074 -0.83724344 -2.4611394 -2.3252161 -0.83724344 -2.4667089 -2.3386092 
		-0.83724344 -2.4695554 -2.3523021 -0.83724344 -2.4695554 -2.3656952 -0.83724344 -2.4667089 
		-2.3782039 -0.83724344 -2.4611394 -2.3892834 -0.83724344 -2.4530914 -2.3984454 -0.83724344 
		-2.4429164 -2.4052916 -0.83724344 -2.4310579 -2.4095228 -0.83724344 -2.4180355 -2.410954 
		-0.83724344 -2.404418 -2.3454556 1.0805676 -2.404418 -2.3454556 -0.83724344 -2.404418 
		-2.9032555 0.79273289 -2.2858546 -2.8987939 0.28904268 -2.2868037 -2.8858442 -0.16534314 
		-2.2895555 -2.8656745 -0.52594548 -2.2938423 -2.8402596 -0.75746685 -2.2992449 -2.8120875 
		-0.83724344 -2.3052325 -2.8664157 0.79273289 -2.1724725 -2.8622482 0.28904268 -2.1743283 
		-2.8501544 -0.16534314 -2.1797128 -2.8313169 -0.52594548 -2.1880996 -2.8075802 -0.75746685 
		-2.1986685 -2.7812686 -0.83724344 -2.2103825 -2.8068075 0.79273289 -2.0692277 -2.8031168 
		0.28904268 -2.0719094 -2.7924063 -0.16534314 -2.0796909 -2.7757242 -0.52594548 -2.0918107 
		-2.7547042 -0.75746685 -2.1070833 -2.7314034 -0.83724344 -2.1240129 -2.7270365 0.79273289 
		-1.9806334 -2.723984 0.28904268 -1.9840226 -2.7151256 -0.16534314 -1.993861 -2.701328 
		-0.52594548 -2.0091848 -2.6839423 -0.75746685 -2.0284934 -2.6646698 -0.83724344 -2.0498977 
		-2.6305881 0.79273289 -1.9105588 -2.6283073 0.28904268 -1.9145104 -2.6216879 -0.16534314 
		-1.9259746 -2.6113777 -0.52594548 -1.9438319 -2.5983865 -0.75746685 -1.9663336 -2.5839853 
		-0.83724344 -1.9912769 -2.5216784 0.79273289 -1.8620689 -2.5202687 0.28904268 -1.8664074 
		-2.5161777 -0.16534314 -1.8789986 -2.5098054 -0.52594548 -1.8986093 -2.5017765 -0.75746685 
		-1.9233209 -2.4928763 -0.83724344 -1.9507128 -2.405067 0.79273289 -1.8372833 -2.4045899 
		0.28904268 -1.8418194 -2.4032061 -0.16534314 -1.8549858 -2.4010508 -0.52594548 -1.8754927 
		-2.398335 -0.75746685 -1.9013339 -2.3953242 -0.83724344 -1.9299775 -2.2858479 0.79273289 
		-1.8372833 -2.2863259 0.28904268 -1.8418194 -2.2877076 -0.16534314 -1.8549858 -2.2898633 
		-0.52594548 -1.8754927 -2.2925782 -0.75746685 -1.9013339 -2.2955892 -0.83724344 -1.9299775 
		-2.169235 0.79273289 -1.8620689 -2.1706457 0.28904268 -1.8664074 -2.1747401 -0.16534314 
		-1.8789986 -2.181109 -0.52594548 -1.8986093 -2.1891398 -0.75746685 -1.9233209 -2.1980374 
		-0.83724344 -1.9507128 -2.0603259 0.79273289 -1.9105588 -2.0626075 0.28904268 -1.9145104 
		-2.0692255 -0.16534314 -1.9259746 -2.0795398 -0.52594548 -1.9438319 -2.092531 -0.75746685 
		-1.9663336 -2.1069322 -0.83724344 -1.9912769 -1.9638811 0.79273289 -1.9806334 -1.9669336 
		0.28904268 -1.9840226 -1.975788 -0.16534314 -1.993861 -1.9895898 -0.52594548 -2.0091848 
		-2.0069726 -0.75746685 -2.0284934 -2.0262444 -0.83724344 -2.0498977 -1.8841096 0.79273289 
		-2.0692277 -1.8877977 0.28904268 -2.0719094 -1.8985106 -0.16534314 -2.0796909 -1.9151924 
		-0.52594548 -2.0918107 -1.9362131 -0.75746685 -2.1070833 -1.9595116 -0.83724344 -2.1240129 
		-1.8244975 0.79273289 -2.1724725 -1.8286685 0.28904268 -2.1743283;
	setAttr ".pt[166:331]" -1.840763 -0.16534314 -2.1797128 -1.859599 -0.52594548 
		-2.1880996 -1.8833365 -0.75746685 -2.1986685 -1.9096484 -0.83724344 -2.2103825 -1.7876586 
		0.79273289 -2.2858543 -1.7921234 0.28904268 -2.2868028 -1.8050687 -0.16534314 -2.2895555 
		-1.825242 -0.52594548 -2.2938423 -1.8506571 -0.75746685 -2.2992449 -1.8788297 -0.83724344 
		-2.3052325 -1.7751997 0.79273289 -2.404418 -1.7797573 0.28904268 -2.404418 -1.7930003 
		-0.16534314 -2.404418 -1.8136201 -0.52594548 -2.404418 -1.8396029 -0.75746685 -2.404418 
		-1.8684019 -0.83724344 -2.404418 -1.7876586 0.79273289 -2.5229814 -1.7921234 0.28904268 
		-2.522033 -1.8050687 -0.16534314 -2.5192804 -1.825242 -0.52594548 -2.5149932 -1.8506571 
		-0.75746685 -2.5095913 -1.8788297 -0.83724344 -2.503603 -1.8244975 0.79273289 -2.6363633 
		-1.8286685 0.28904268 -2.6345084 -1.840763 -0.16534314 -2.6291232 -1.859599 -0.52594548 
		-2.6207364 -1.8833365 -0.75746685 -2.6101682 -1.9096484 -0.83724344 -2.5984533 -1.8841096 
		0.79273289 -2.739608 -1.8877977 0.28904268 -2.736927 -1.8985106 -0.16534314 -2.7291451 
		-1.9151924 -0.52594548 -2.717025 -1.9362131 -0.75746685 -2.7017527 -1.9595116 -0.83724344 
		-2.684823 -1.9638811 0.79273289 -2.8282032 -1.9669336 0.28904268 -2.8248131 -1.975788 
		-0.16534314 -2.8149748 -1.9895898 -0.52594548 -2.7996514 -2.0069726 -0.75746685 -2.7803421 
		-2.0262444 -0.83724344 -2.7589381 -2.0603259 0.79273289 -2.898277 -2.0626075 0.28904268 
		-2.8943264 -2.0692255 -0.16534314 -2.8828611 -2.0795398 -0.52594548 -2.8650038 -2.092531 
		-0.75746685 -2.8425021 -2.1069322 -0.83724344 -2.817559 -2.169235 0.79273289 -2.9467676 
		-2.1706457 0.28904268 -2.9424286 -2.1747401 -0.16534314 -2.9298377 -2.181109 -0.52594548 
		-2.9102266 -2.1891398 -0.75746685 -2.8855159 -2.1980374 -0.83724344 -2.8581233 -2.2858479 
		0.79273289 -2.9715536 -2.2863259 0.28904268 -2.9670167 -2.2877076 -0.16534314 -2.9538503 
		-2.2898633 -0.52594548 -2.9333432 -2.2925782 -0.75746685 -2.9075029 -2.2955892 -0.83724344 
		-2.878859 -2.4050665 0.79273289 -2.9715536 -2.4045897 0.28904268 -2.9670167 -2.4032059 
		-0.16534314 -2.9538503 -2.4010503 -0.52594548 -2.9333432 -2.3983343 -0.75746685 -2.9075029 
		-2.3953238 -0.83724344 -2.878859 -2.521678 0.79273289 -2.9467666 -2.5202684 0.28904268 
		-2.9424281 -2.5161772 -0.16534314 -2.9298372 -2.5098052 -0.52594548 -2.9102266 -2.5017762 
		-0.75746685 -2.8855159 -2.4928761 -0.83724344 -2.8581233 -2.6305878 0.79273289 -2.898277 
		-2.6283069 0.28904268 -2.8943264 -2.6216874 -0.16534314 -2.8828611 -2.6113775 -0.52594548 
		-2.8650038 -2.5983863 -0.75746685 -2.8425021 -2.5839851 -0.83724344 -2.817559 -2.7270362 
		0.79273289 -2.8282032 -2.7239835 0.28904268 -2.8248131 -2.7151251 -0.16534314 -2.8149748 
		-2.7013278 -0.52594548 -2.7996514 -2.6839418 -0.75746685 -2.7803421 -2.6646695 -0.83724344 
		-2.7589381 -2.806807 0.79273289 -2.739608 -2.8031163 0.28904268 -2.736927 -2.7924058 
		-0.16534314 -2.7291451 -2.7757237 -0.52594548 -2.717025 -2.7547038 -0.75746685 -2.7017527 
		-2.7314029 -0.83724344 -2.684823 -2.8664153 0.79273289 -2.6363633 -2.8622477 0.28904268 
		-2.6345077 -2.8501537 -0.16534314 -2.6291232 -2.8313165 -0.52594548 -2.6207364 -2.8075798 
		-0.75746685 -2.6101682 -2.7812681 -0.83724344 -2.5984533 -2.9032547 0.79273289 -2.5229814 
		-2.898793 0.28904268 -2.522033 -2.8858435 -0.16534314 -2.5192804 -2.8656738 -0.52594548 
		-2.5149932 -2.8402591 -0.75746685 -2.5095913 -2.8120866 -0.83724344 -2.503603 -2.9157166 
		0.79273289 -2.404418 -2.911155 0.28904268 -2.404418 -2.8979163 -0.16534314 -2.404418 
		-2.8772957 -0.52594548 -2.404418 -2.8513136 -0.75746685 -2.4044178 -2.8225114 -0.83724344 
		-2.4044178 -2.4095228 -61.401829 -2.3908014 -2.4052916 -61.401829 -2.3777788 -2.3984454 
		-61.401829 -2.3659215 -2.3892834 -61.401829 -2.3557456 -2.3782039 -61.401829 -2.3476973 
		-2.3656952 -61.401829 -2.342128 -2.3523021 -61.401829 -2.3392813 -2.3386092 -61.401829 
		-2.3392813 -2.3252161 -61.401829 -2.342128 -2.3127074 -61.401829 -2.3476973 -2.3016307 
		-61.401829 -2.3557456 -2.2924716 -61.401829 -2.3659215 -2.2856233 -61.401829 -2.3777788 
		-2.2813933 -61.401829 -2.3908014 -2.279963 -61.401829 -2.404418 -2.2813933 -61.401829 
		-2.4180355 -2.2856233 -61.401829 -2.4310579 -2.2924716 -61.401829 -2.4429164 -2.3016307 
		-61.401829 -2.4530914 -2.3127074 -61.401829 -2.4611394 -2.3252161 -61.401829 -2.4667089 
		-2.3386092 -61.401829 -2.4695554 -2.3523021 -61.401829 -2.4695554 -2.3656952 -61.401829 
		-2.4667089 -2.3782039 -61.401829 -2.4611394 -2.3892834 -61.401829 -2.4530914 -2.3984454 
		-61.401829 -2.4429164 -2.4052916 -61.401829 -2.4310579 -2.4095228 -61.401829 -2.4180355 
		-2.410954 -61.401829 -2.404418 -2.4084122 -62.343067 -2.3910375 -2.4042544 -62.343067 
		-2.3782406 -2.397527 -62.343067 -2.3665891 -2.3885238 -62.343067 -2.3565893 -2.3776369 
		-62.343067 -2.3486814 -2.365345 -62.343067 -2.3432088 -2.3521841 -62.343067 -2.3404107 
		-2.3387291 -62.343067 -2.3404107 -2.3255699 -62.343067 -2.3432088 -2.3132763 -62.343067 
		-2.3486814 -2.3023913 -62.343067 -2.3565893 -2.2933872 -62.343067 -2.3665891 -2.2866607 
		-62.343067 -2.3782406 -2.2825019 -62.343067 -2.3910375 -2.2810972 -62.343067 -2.4044189 
		-2.2825019 -62.343067 -2.4178004 -2.2866607 -62.343067 -2.4305964 -2.2933872 -62.343067 
		-2.4422488 -2.3023913 -62.343067 -2.4522476 -2.3132763 -62.343067 -2.4601569 -2.3255699 
		-62.343067 -2.4656291 -2.3387291 -62.343067 -2.4684272 -2.3521841 -62.343067 -2.4684272 
		-2.365345 -62.343067 -2.4656291 -2.3776369 -62.343067 -2.4601569 -2.3885238 -62.343067 
		-2.4522476 -2.397527 -62.343067 -2.4422488 -2.4042544 -62.343067 -2.4305964 -2.4084122 
		-62.343067 -2.4178004 -2.4098186 -62.343067 -2.4044189;
	setAttr ".pt[332:497]" -2.4084122 -63.043354 -2.3910375 -2.4042544 -63.043354 
		-2.3782406 -2.397527 -63.043354 -2.3665891 -2.3885238 -63.043354 -2.3565893 -2.3776369 
		-63.043354 -2.3486814 -2.365345 -63.043354 -2.3432088 -2.3521841 -63.043354 -2.3404107 
		-2.3387291 -63.043354 -2.3404107 -2.3255699 -63.043354 -2.3432088 -2.3132763 -63.043354 
		-2.3486814 -2.3023913 -63.043354 -2.3565893 -2.2933872 -63.043354 -2.3665891 -2.2866607 
		-63.043354 -2.3782406 -2.2825019 -63.043354 -2.3910375 -2.2810972 -63.043354 -2.4044189 
		-2.2825019 -63.043354 -2.4178004 -2.2866607 -63.043354 -2.4305964 -2.2933872 -63.043354 
		-2.4422488 -2.3023913 -63.043354 -2.4522476 -2.3132763 -63.043354 -2.4601569 -2.3255699 
		-63.043354 -2.4656291 -2.3387291 -63.043354 -2.4684272 -2.3521841 -63.043354 -2.4684272 
		-2.365345 -63.043354 -2.4656291 -2.3776369 -63.043354 -2.4601569 -2.3885238 -63.043354 
		-2.4522476 -2.397527 -63.043354 -2.4422488 -2.4042544 -63.043354 -2.4305964 -2.4084122 
		-63.043354 -2.4178004 -2.4098186 -63.043354 -2.4044189 -2.3454576 -64.771103 -2.4044194 
		-2.4206161 -61.401829 -2.3884432 -2.4306884 -61.43766 -2.3863022 -2.4392273 -61.539658 
		-2.3844872 -2.4449329 -61.692326 -2.3832746 -2.4469364 -61.872452 -2.3828487 -2.4156523 
		-61.401829 -2.3731666 -2.4250593 -61.43766 -2.3689778 -2.4330342 -61.539658 -2.365427 
		-2.4383628 -61.692326 -2.3630545 -2.4402342 -61.872452 -2.3622215 -2.4076204 -61.401829 
		-2.3592551 -2.4159513 -61.43766 -2.3532026 -2.4230139 -61.539658 -2.3480718 -2.4277327 
		-61.692326 -2.3446429 -2.42939 -61.872452 -2.3434391 -2.3968723 -61.401829 -2.3473172 
		-2.4037626 -61.43766 -2.3396647 -2.4096036 -61.539658 -2.3331773 -2.4135067 -61.692326 
		-2.3288426 -2.4148772 -61.872452 -2.3273206 -2.3838768 -61.401829 -2.3378763 -2.3890254 
		-61.43766 -2.3289585 -2.3933899 -61.539658 -2.3213985 -2.3963068 -61.692326 -2.3163474 
		-2.3973308 -61.872452 -2.3145728 -2.3692012 -61.401829 -2.3313427 -2.3723829 -61.43766 
		-2.3215489 -2.3750803 -61.539658 -2.3132463 -2.3768821 -61.692326 -2.3076992 -2.3775148 
		-61.872452 -2.3057508 -2.3534884 -61.401829 -2.3280027 -2.3545651 -61.43766 -2.3177619 
		-2.3554773 -61.539658 -2.3090799 -2.356087 -61.692326 -2.3032794 -2.3563001 -61.872452 
		-2.3012419 -2.3374245 -61.401829 -2.3280027 -2.3363481 -61.43766 -2.3177619 -2.3354356 
		-61.539658 -2.3090799 -2.334826 -61.692326 -2.3032794 -2.3346112 -61.872452 -2.3012419 
		-2.3217132 -61.401829 -2.3313417 -2.3185303 -61.43766 -2.3215489 -2.3158326 -61.539658 
		-2.3132463 -2.3140306 -61.692326 -2.3076992 -2.3133965 -61.872452 -2.3057508 -2.3070395 
		-61.401829 -2.3378761 -2.3018901 -61.43766 -2.3289585 -2.2975261 -61.539658 -2.321398 
		-2.2946098 -61.692326 -2.3163474 -2.2935846 -61.872452 -2.3145728 -2.2940428 -61.401829 
		-2.3473177 -2.2871521 -61.43766 -2.3396657 -2.2813115 -61.539658 -2.3331778 -2.2774084 
		-61.692326 -2.3288426 -2.2760367 -61.872452 -2.3273206 -2.2832954 -61.401829 -2.3592551 
		-2.2749646 -61.43766 -2.3532026 -2.2679014 -61.539658 -2.3480718 -2.2631834 -61.692326 
		-2.3446429 -2.2615252 -61.872452 -2.3434391 -2.2752626 -61.401829 -2.373167 -2.265856 
		-61.43766 -2.368979 -2.2578814 -61.539658 -2.365428 -2.252552 -61.692326 -2.3630545 
		-2.2506807 -61.872452 -2.3622215 -2.270299 -61.401829 -2.3884432 -2.2602265 -61.43766 
		-2.3863022 -2.251687 -61.539658 -2.3844872 -2.2459822 -61.692326 -2.3832746 -2.2439775 
		-61.872452 -2.3828487 -2.2686207 -61.401829 -2.404418 -2.2583225 -61.43766 -2.404418 
		-2.2495933 -61.539658 -2.404418 -2.2437606 -61.692326 -2.404418 -2.2417114 -61.872452 
		-2.404418 -2.270299 -61.401829 -2.4203935 -2.2602265 -61.43766 -2.4225345 -2.251687 
		-61.539658 -2.4243495 -2.2459822 -61.692326 -2.4255621 -2.2439775 -61.872452 -2.425988 
		-2.2752626 -61.401829 -2.4356704 -2.265856 -61.43766 -2.4398589 -2.2578814 -61.539658 
		-2.4434099 -2.252552 -61.692326 -2.4457824 -2.2506807 -61.872452 -2.4466155 -2.2832954 
		-61.401829 -2.4495831 -2.2749646 -61.43766 -2.455636 -2.2679014 -61.539658 -2.4607666 
		-2.2631834 -61.692326 -2.464195 -2.2615252 -61.872452 -2.4653988 -2.2940428 -61.401829 
		-2.4615197 -2.2871521 -61.43766 -2.4691722 -2.2813115 -61.539658 -2.4756596 -2.2774084 
		-61.692326 -2.4799943 -2.2760367 -61.872452 -2.4815164 -2.3070395 -61.401829 -2.4709623 
		-2.3018901 -61.43766 -2.4798799 -2.2975261 -61.539658 -2.4874399 -2.2946098 -61.692326 
		-2.4924912 -2.2935846 -61.872452 -2.4942651 -2.3217115 -61.401829 -2.4774952 -2.3185303 
		-61.43766 -2.487289 -2.3158326 -61.539658 -2.4955907 -2.3140306 -61.692326 -2.5011387 
		-2.3133965 -61.872452 -2.5030863 -2.3374248 -61.401829 -2.4808352 -2.3363485 -61.43766 
		-2.491076 -2.3354356 -61.539658 -2.4997575 -2.334826 -61.692326 -2.5055585 -2.3346112 
		-61.872452 -2.5075953 -2.3534884 -61.401829 -2.4808352 -2.3545649 -61.43766 -2.491076 
		-2.3554773 -61.539658 -2.4997575 -2.356087 -61.692326 -2.5055585 -2.3563001 -61.872452 
		-2.5075953 -2.3692014 -61.401829 -2.4774952 -2.3723829 -61.43766 -2.487289 -2.3750806 
		-61.539658 -2.4955907 -2.3768821 -61.692326 -2.5011387 -2.3775148 -61.872452 -2.5030863 
		-2.3838768 -61.401829 -2.4709623 -2.3890254 -61.43766 -2.4798794 -2.3933899 -61.539658 
		-2.4874399 -2.3963068 -61.692326 -2.4924912 -2.3973308 -61.872452 -2.4942651 -2.3968723 
		-61.401829 -2.4615197 -2.4037626 -61.43766 -2.4691722 -2.4096036 -61.539658 -2.4756596 
		-2.4135067 -61.692326 -2.4799943 -2.4148772 -61.872452 -2.4815164 -2.4076204 -61.401829 
		-2.4495831 -2.4159513 -61.43766 -2.4556351 -2.4230139 -61.539658 -2.4607666 -2.4277327 
		-61.692326 -2.464195 -2.42939 -61.872452 -2.4653988;
	setAttr ".pt[498:663]" -2.4156523 -61.401829 -2.4356713 -2.4250591 -61.43766 
		-2.4398594 -2.4330342 -61.539658 -2.4434099 -2.4383628 -61.692326 -2.4457824 -2.4402342 
		-61.872452 -2.4466155 -2.4206161 -61.401829 -2.4203935 -2.4306884 -61.43766 -2.4225345 
		-2.4392273 -61.539658 -2.4243495 -2.4449329 -61.692326 -2.4255621 -2.4469364 -61.872452 
		-2.425988 -2.4222953 -61.401829 -2.404418 -2.4325924 -61.43766 -2.404418 -2.4413221 
		-61.539658 -2.404418 -2.447155 -61.692326 -2.404418 -2.4492035 -61.872452 -2.404418 
		-2.4449329 -62.052589 -2.3832746 -2.4392273 -62.205242 -2.3844872 -2.4306884 -62.307255 
		-2.3863022 -2.4206161 -62.343067 -2.3884432 -2.4383628 -62.052589 -2.3630545 -2.4330342 
		-62.205242 -2.365427 -2.4250593 -62.307255 -2.3689778 -2.4156523 -62.343067 -2.3731666 
		-2.4277327 -62.052589 -2.3446429 -2.4230139 -62.205242 -2.3480718 -2.4159513 -62.307255 
		-2.3532026 -2.4076204 -62.343067 -2.3592551 -2.4135067 -62.052589 -2.3288426 -2.4096036 
		-62.205242 -2.3331773 -2.4037626 -62.307255 -2.3396647 -2.3968723 -62.343067 -2.3473172 
		-2.3963068 -62.052589 -2.3163474 -2.3933899 -62.205242 -2.3213985 -2.3890254 -62.307255 
		-2.3289585 -2.3838768 -62.343067 -2.3378763 -2.3768821 -62.052589 -2.3076992 -2.3750803 
		-62.205242 -2.3132463 -2.3723829 -62.307255 -2.3215489 -2.3692012 -62.343067 -2.3313427 
		-2.356087 -62.052589 -2.3032794 -2.3554773 -62.205242 -2.3090799 -2.3545651 -62.307255 
		-2.3177619 -2.3534884 -62.343067 -2.3280027 -2.334826 -62.052589 -2.3032794 -2.3354356 
		-62.205242 -2.3090799 -2.3363481 -62.307255 -2.3177619 -2.3374245 -62.343067 -2.3280027 
		-2.3140306 -62.052589 -2.3076992 -2.3158326 -62.205242 -2.3132463 -2.3185303 -62.307255 
		-2.3215489 -2.3217132 -62.343067 -2.3313417 -2.2946098 -62.052589 -2.3163474 -2.2975261 
		-62.205242 -2.321398 -2.3018901 -62.307255 -2.3289585 -2.3070395 -62.343067 -2.3378761 
		-2.2774084 -62.052589 -2.3288426 -2.2813115 -62.205242 -2.3331778 -2.2871521 -62.307255 
		-2.3396657 -2.2940428 -62.343067 -2.3473177 -2.2631834 -62.052589 -2.3446429 -2.2679014 
		-62.205242 -2.3480718 -2.2749646 -62.307255 -2.3532026 -2.2832954 -62.343067 -2.3592551 
		-2.252552 -62.052589 -2.3630545 -2.2578814 -62.205242 -2.365428 -2.265856 -62.307255 
		-2.368979 -2.2752626 -62.343067 -2.373167 -2.2459822 -62.052589 -2.3832746 -2.251687 
		-62.205242 -2.3844872 -2.2602265 -62.307255 -2.3863022 -2.270299 -62.343067 -2.3884432 
		-2.2437606 -62.052589 -2.404418 -2.2495933 -62.205242 -2.404418 -2.2583225 -62.307255 
		-2.404418 -2.2686207 -62.343067 -2.404418 -2.2459822 -62.052589 -2.4255621 -2.251687 
		-62.205242 -2.4243495 -2.2602265 -62.307255 -2.4225345 -2.270299 -62.343067 -2.4203935 
		-2.252552 -62.052589 -2.4457824 -2.2578814 -62.205242 -2.4434099 -2.265856 -62.307255 
		-2.4398589 -2.2752626 -62.343067 -2.4356704 -2.2631834 -62.052589 -2.464195 -2.2679014 
		-62.205242 -2.4607666 -2.2749646 -62.307255 -2.455636 -2.2832954 -62.343067 -2.4495831 
		-2.2774084 -62.052589 -2.4799943 -2.2813115 -62.205242 -2.4756596 -2.2871521 -62.307255 
		-2.4691722 -2.2940428 -62.343067 -2.4615197 -2.2946098 -62.052589 -2.4924912 -2.2975261 
		-62.205242 -2.4874399 -2.3018901 -62.307255 -2.4798799 -2.3070395 -62.343067 -2.4709623 
		-2.3140306 -62.052589 -2.5011387 -2.3158326 -62.205242 -2.4955907 -2.3185303 -62.307255 
		-2.487289 -2.3217115 -62.343067 -2.4774952 -2.334826 -62.052589 -2.5055585 -2.3354356 
		-62.205242 -2.4997575 -2.3363485 -62.307255 -2.491076 -2.3374248 -62.343067 -2.4808352 
		-2.356087 -62.052589 -2.5055585 -2.3554773 -62.205242 -2.4997575 -2.3545649 -62.307255 
		-2.491076 -2.3534884 -62.343067 -2.4808352 -2.3768821 -62.052589 -2.5011387 -2.3750806 
		-62.205242 -2.4955907 -2.3723829 -62.307255 -2.487289 -2.3692014 -62.343067 -2.4774952 
		-2.3963068 -62.052589 -2.4924912 -2.3933899 -62.205242 -2.4874399 -2.3890254 -62.307255 
		-2.4798794 -2.3838768 -62.343067 -2.4709623 -2.4135067 -62.052589 -2.4799943 -2.4096036 
		-62.205242 -2.4756596 -2.4037626 -62.307255 -2.4691722 -2.3968723 -62.343067 -2.4615197 
		-2.4277327 -62.052589 -2.464195 -2.4230139 -62.205242 -2.4607666 -2.4159513 -62.307255 
		-2.4556351 -2.4076204 -62.343067 -2.4495831 -2.4383628 -62.052589 -2.4457824 -2.4330342 
		-62.205242 -2.4434099 -2.4250591 -62.307255 -2.4398594 -2.4156523 -62.343067 -2.4356713 
		-2.4449329 -62.052589 -2.4255621 -2.4392273 -62.205242 -2.4243495 -2.4306884 -62.307255 
		-2.4225345 -2.4206161 -62.343067 -2.4203935 -2.447155 -62.052589 -2.404418 -2.4413221 
		-62.205242 -2.404418 -2.4325924 -62.307255 -2.404418 -2.4222953 -62.343067 -2.404418 
		-2.44505 -63.043354 -2.3832495 -2.4563043 -63.069855 -2.3808575 -2.4667914 -63.147511 
		-2.3786285 -2.4757972 -63.271061 -2.3767145 -2.4827073 -63.432068 -2.3752458 -2.4870512 
		-63.619568 -2.3743224 -2.488533 -63.820774 -2.3740075 -2.4384725 -63.043354 -2.3630059 
		-2.4489834 -63.069855 -2.3583262 -2.4587779 -63.147511 -2.353965 -2.4671888 -63.271061 
		-2.35022 -2.4736426 -63.432068 -2.3473468 -2.4776995 -63.619568 -2.3455405 -2.4790833 
		-63.820774 -2.3449242 -2.4278302 -63.043354 -2.3445733 -2.4371383 -63.069855 -2.3378105 
		-2.445812 -63.147511 -2.3315089 -2.4532604 -63.271061 -2.3260972 -2.458976 -63.432068 
		-2.3219447 -2.4625685 -63.619568 -2.3193343 -2.4637942 -63.820774 -2.318444 -2.4135876 
		-63.043354 -2.3287544 -2.4212863 -63.069855 -2.320204 -2.4284601 -63.147511 -2.3122361 
		-2.4346206 -63.271061 -2.3053946 -2.439348 -63.432068 -2.3001447 -2.4423194 -63.619568 
		-2.2968435 -2.4433329 -63.820774 -2.295718 -2.3963675 -63.043354 -2.3162448 -2.4021201 
		-63.069855 -2.3062811 -2.4074805 -63.147511 -2.2969961;
	setAttr ".pt[664:829]" -2.4120836 -63.271061 -2.289022 -2.4156156 -63.432068 
		-2.2829041 -2.417836 -63.619568 -2.2790575 -2.4185934 -63.820774 -2.2777457 -2.37692 
		-63.043354 -2.3075871 -2.3804755 -63.069855 -2.2966442 -2.3837888 -63.147511 -2.286448 
		-2.3866341 -63.271061 -2.2776914 -2.3888171 -63.432068 -2.2709727 -2.3901899 -63.619568 
		-2.2667489 -2.3906579 -63.820774 -2.2653084 -2.3560998 -63.043354 -2.3031602 -2.3573024 
		-63.069855 -2.2917175 -2.3584237 -63.147511 -2.281055 -2.3593862 -63.271061 -2.271899 
		-2.3601248 -63.432068 -2.264873 -2.360589 -63.619568 -2.2604566 -2.3607471 -63.820774 
		-2.2589498 -2.3348162 -63.043354 -2.3031602 -2.3336134 -63.069855 -2.2917175 -2.3324921 
		-63.147511 -2.281055 -2.3315301 -63.271061 -2.271899 -2.3307912 -63.432068 -2.264873 
		-2.3303268 -63.619568 -2.2604566 -2.3301687 -63.820774 -2.2589498 -2.3139954 -63.043354 
		-2.3075871 -2.3104398 -63.069855 -2.2966442 -2.3071265 -63.147511 -2.286448 -2.3042815 
		-63.271061 -2.2776914 -2.3020983 -63.432068 -2.2709727 -2.3007262 -63.619568 -2.2667489 
		-2.3002579 -63.820774 -2.2653084 -2.2945476 -63.043354 -2.3162448 -2.288795 -63.069855 
		-2.3062811 -2.2834344 -63.147511 -2.2969961 -2.278831 -63.271061 -2.289022 -2.2752993 
		-63.432068 -2.2829041 -2.2730792 -63.619568 -2.2790575 -2.2723212 -63.820774 -2.2777457 
		-2.2773283 -63.043354 -2.3287542 -2.2696295 -63.069855 -2.320204 -2.2624557 -63.147511 
		-2.3122361 -2.2562952 -63.271061 -2.3053946 -2.2515683 -63.432068 -2.3001447 -2.2485967 
		-63.619568 -2.2968435 -2.2475827 -63.820774 -2.295718 -2.2630856 -63.043354 -2.3445733 
		-2.253777 -63.069855 -2.3378105 -2.2451034 -63.147511 -2.3315089 -2.2376549 -63.271061 
		-2.326097 -2.2319391 -63.432068 -2.3219447 -2.2283466 -63.619568 -2.3193343 -2.2271206 
		-63.820774 -2.318444 -2.2524436 -63.043354 -2.3630059 -2.2419333 -63.069855 -2.3583262 
		-2.2321384 -63.147511 -2.353965 -2.2237279 -63.271061 -2.35022 -2.2172742 -63.432068 
		-2.3473468 -2.2132173 -63.619568 -2.3455405 -2.211833 -63.820774 -2.3449242 -2.2458653 
		-63.043354 -2.3832502 -2.234611 -63.069855 -2.3808577 -2.2241237 -63.147511 -2.3786285 
		-2.2151182 -63.271061 -2.3767145 -2.2082078 -63.432068 -2.3752458 -2.2038639 -63.619568 
		-2.3743224 -2.2023818 -63.820774 -2.3740075 -2.2436414 -63.043354 -2.4044189 -2.232136 
		-63.069855 -2.4044189 -2.2214139 -63.147511 -2.4044189 -2.2122078 -63.271061 -2.4044189 
		-2.2051432 -63.432068 -2.4044189 -2.2007022 -63.619568 -2.4044189 -2.199187 -63.820774 
		-2.4044189 -2.2458653 -63.043354 -2.4255884 -2.234611 -63.069855 -2.4279809 -2.2241237 
		-63.147511 -2.4302104 -2.2151182 -63.271061 -2.4321241 -2.2082078 -63.432068 -2.433593 
		-2.2038639 -63.619568 -2.4345167 -2.2023818 -63.820774 -2.4348314 -2.2524436 -63.043354 
		-2.4458313 -2.2419333 -63.069855 -2.4505115 -2.2321384 -63.147511 -2.4548717 -2.2237279 
		-63.271061 -2.4586167 -2.2172742 -63.432068 -2.4614899 -2.2132173 -63.619568 -2.4632969 
		-2.211833 -63.820774 -2.4639125 -2.2630856 -63.043354 -2.4642658 -2.253777 -63.069855 
		-2.4710286 -2.2451034 -63.147511 -2.4773307 -2.2376549 -63.271061 -2.4827421 -2.2319391 
		-63.432068 -2.4868941 -2.2283466 -63.619568 -2.4895046 -2.2271206 -63.820774 -2.4903948 
		-2.2773287 -63.043354 -2.4800832 -2.2696295 -63.069855 -2.4886339 -2.2624559 -63.147511 
		-2.4966013 -2.2562957 -63.271061 -2.5034432 -2.2515683 -63.432068 -2.5086935 -2.2485967 
		-63.619568 -2.5119934 -2.2475827 -63.820774 -2.513119 -2.2945483 -63.043354 -2.492595 
		-2.2887957 -63.069855 -2.5025589 -2.2834351 -63.147511 -2.5118439 -2.2788317 -63.271061 
		-2.5198174 -2.2752993 -63.432068 -2.5259354 -2.2730792 -63.619568 -2.5297816 -2.2723212 
		-63.820774 -2.5310934 -2.3139944 -63.043354 -2.5012519 -2.3104393 -63.069855 -2.5121946 
		-2.3071263 -63.147511 -2.5223911 -2.3042812 -63.271061 -2.5311472 -2.3020983 -63.432068 
		-2.5378661 -2.3007262 -63.619568 -2.5420895 -2.3002579 -63.820774 -2.5435302 -2.3348162 
		-63.043354 -2.5056789 -2.3336134 -63.069855 -2.5171213 -2.3324921 -63.147511 -2.5277841 
		-2.3315301 -63.271061 -2.5369403 -2.3307912 -63.432068 -2.5439665 -2.3303268 -63.619568 
		-2.5483828 -2.3301687 -63.820774 -2.5498893 -2.3560996 -63.043354 -2.5056789 -2.3573024 
		-63.069855 -2.5171213 -2.358423 -63.147511 -2.5277841 -2.3593862 -63.271061 -2.5369403 
		-2.3601248 -63.432068 -2.5439665 -2.360589 -63.619568 -2.5483828 -2.3607471 -63.820774 
		-2.5498893 -2.3769205 -63.043354 -2.5012527 -2.3804758 -63.069855 -2.5121946 -2.3837891 
		-63.147511 -2.5223911 -2.3866341 -63.271061 -2.5311475 -2.3888171 -63.432068 -2.5378661 
		-2.3901899 -63.619568 -2.5420895 -2.3906579 -63.820774 -2.5435302 -2.3963668 -63.043354 
		-2.492595 -2.4021196 -63.069855 -2.5025589 -2.4074802 -63.147511 -2.5118439 -2.4120831 
		-63.271061 -2.5198174 -2.4156156 -63.432068 -2.5259354 -2.417836 -63.619568 -2.5297816 
		-2.4185934 -63.820774 -2.5310934 -2.4135876 -63.043354 -2.4800832 -2.4212863 -63.069855 
		-2.4886339 -2.4284601 -63.147511 -2.4966013 -2.4346206 -63.271061 -2.5034432 -2.439348 
		-63.432068 -2.5086935 -2.4423194 -63.619568 -2.5119934 -2.4433329 -63.820774 -2.513119 
		-2.42783 -63.043354 -2.4642656 -2.4371383 -63.069855 -2.4710286 -2.445812 -63.147511 
		-2.4773304 -2.4532604 -63.271061 -2.4827418 -2.458976 -63.432068 -2.4868941 -2.4625685 
		-63.619568 -2.4895046 -2.4637942 -63.820774 -2.4903948 -2.4384725 -63.043354 -2.4458313 
		-2.4489834 -63.069855 -2.4505115 -2.4587779 -63.147511 -2.4548717 -2.4671888 -63.271061 
		-2.4586167 -2.4736426 -63.432068 -2.4614899 -2.4776995 -63.619568 -2.4632969 -2.4790833 
		-63.820774 -2.4639125 -2.44505 -63.043354 -2.4255891;
	setAttr ".pt[830:995]" -2.4563043 -63.069855 -2.4279811 -2.4667914 -63.147511 
		-2.4302104 -2.4757972 -63.271061 -2.4321241 -2.4827073 -63.432068 -2.433593 -2.4870512 
		-63.619568 -2.4345167 -2.488533 -63.820774 -2.4348314 -2.4472749 -63.043354 -2.4044189 
		-2.4587805 -63.069855 -2.4044189 -2.469502 -63.147511 -2.4044189 -2.4787087 -63.271061 
		-2.4044189 -2.4857731 -63.432068 -2.4044189 -2.4902141 -63.619568 -2.4044189 -2.491729 
		-63.820774 -2.4044189 -2.488533 -63.993717 -2.3740075 -2.4870512 -64.194901 -2.3743224 
		-2.4827075 -64.382362 -2.3752458 -2.4757972 -64.543373 -2.3767145 -2.4667919 -64.666924 
		-2.3786285 -2.4563046 -64.744583 -2.3808575 -2.4450507 -64.77108 -2.3832495 -2.4790833 
		-63.993717 -2.3449242 -2.4776995 -64.194901 -2.3455405 -2.4736426 -64.382362 -2.3473468 
		-2.4671888 -64.543373 -2.35022 -2.4587784 -64.666924 -2.3539648 -2.4489839 -64.744583 
		-2.358326 -2.4384732 -64.77108 -2.3630054 -2.4637942 -63.993717 -2.318444 -2.4625685 
		-64.194901 -2.3193343 -2.458976 -64.382362 -2.3219447 -2.4532607 -64.543373 -2.326097 
		-2.4458122 -64.666924 -2.3315089 -2.4371386 -64.744583 -2.3378105 -2.4278305 -64.77108 
		-2.3445733 -2.4433329 -63.993717 -2.295718 -2.4423194 -64.194901 -2.2968435 -2.439348 
		-64.382362 -2.3001447 -2.4346209 -64.543373 -2.3053946 -2.4284604 -64.666924 -2.3122361 
		-2.4212863 -64.744583 -2.320204 -2.4135878 -64.77108 -2.3287542 -2.4185934 -63.993717 
		-2.2777457 -2.417836 -64.194901 -2.2790575 -2.4156158 -64.382362 -2.2829041 -2.4120839 
		-64.543373 -2.289022 -2.4074805 -64.666924 -2.2969952 -2.4021201 -64.744583 -2.3062806 
		-2.3963678 -64.77108 -2.3162448 -2.3906579 -63.993717 -2.2653084 -2.3901899 -64.194901 
		-2.2667489 -2.3888171 -64.382362 -2.2709727 -2.3866341 -64.543373 -2.2776914 -2.3837891 
		-64.666924 -2.2864475 -2.3804758 -64.744583 -2.2966442 -2.3769205 -64.77108 -2.307586 
		-2.3607471 -63.993717 -2.2589498 -2.360589 -64.194901 -2.2604558 -2.3601248 -64.382362 
		-2.264873 -2.3593862 -64.543373 -2.2718983 -2.3584237 -64.666924 -2.2810545 -2.3573024 
		-64.744583 -2.2917175 -2.3560998 -64.77108 -2.3031597 -2.3301687 -63.993717 -2.2589498 
		-2.3303268 -64.194901 -2.2604558 -2.3307912 -64.382362 -2.264873 -2.3315301 -64.543373 
		-2.2718983 -2.3324921 -64.666924 -2.2810545 -2.3336134 -64.744583 -2.2917175 -2.3348162 
		-64.77108 -2.3031597 -2.3002579 -63.993717 -2.2653084 -2.3007262 -64.194901 -2.2667489 
		-2.3020983 -64.382362 -2.2709727 -2.3042815 -64.543373 -2.2776914 -2.3071263 -64.666924 
		-2.2864475 -2.3104398 -64.744583 -2.2966442 -2.3139954 -64.77108 -2.3075867 -2.2723212 
		-63.993717 -2.2777457 -2.2730792 -64.194901 -2.2790575 -2.2752993 -64.382362 -2.2829041 
		-2.278831 -64.543373 -2.289022 -2.2834344 -64.666924 -2.2969952 -2.288795 -64.744583 
		-2.3062806 -2.2945476 -64.77108 -2.3162448 -2.2475827 -63.993717 -2.295718 -2.2485967 
		-64.194901 -2.2968435 -2.2515683 -64.382362 -2.3001442 -2.2562952 -64.543373 -2.3053946 
		-2.2624555 -64.666924 -2.3122358 -2.2696295 -64.744583 -2.3202038 -2.2773275 -64.77108 
		-2.3287539 -2.2271206 -63.993717 -2.318444 -2.2283466 -64.194901 -2.3193343 -2.2319391 
		-64.382362 -2.3219447 -2.2376549 -64.543373 -2.326097 -2.2451031 -64.666924 -2.3315082 
		-2.253777 -64.744583 -2.33781 -2.2630849 -64.77108 -2.344573 -2.211833 -63.993717 
		-2.3449242 -2.2132173 -64.194901 -2.3455405 -2.2172742 -64.382362 -2.3473468 -2.2237279 
		-64.543373 -2.35022 -2.2321384 -64.666924 -2.3539648 -2.2419331 -64.744583 -2.358326 
		-2.2524436 -64.77108 -2.3630054 -2.2023818 -63.993717 -2.3740075 -2.2038639 -64.194901 
		-2.3743224 -2.2082078 -64.382362 -2.3752458 -2.2151182 -64.543373 -2.3767145 -2.224123 
		-64.666924 -2.3786285 -2.2346108 -64.744583 -2.3808577 -2.2458649 -64.77108 -2.3832502 
		-2.199187 -63.993717 -2.4044189 -2.2007022 -64.194901 -2.4044189 -2.205143 -64.382362 
		-2.4044189 -2.2122078 -64.543373 -2.4044189 -2.2214139 -64.666924 -2.4044189 -2.2321358 
		-64.744583 -2.4044189 -2.2436407 -64.77108 -2.4044189 -2.2023818 -63.993717 -2.4348314 
		-2.2038639 -64.194901 -2.4345167 -2.2082078 -64.382362 -2.433593 -2.2151182 -64.543373 
		-2.4321241 -2.224123 -64.666924 -2.4302104 -2.2346108 -64.744583 -2.4279811 -2.2458649 
		-64.77108 -2.4255891 -2.211833 -63.993717 -2.4639125 -2.2132173 -64.194901 -2.4632969 
		-2.2172742 -64.382362 -2.4614899 -2.2237279 -64.543373 -2.4586167 -2.2321384 -64.666924 
		-2.4548721 -2.2419331 -64.744583 -2.4505117 -2.2524436 -64.77108 -2.4458315 -2.2271206 
		-63.993717 -2.4903948 -2.2283466 -64.194901 -2.4895046 -2.2319391 -64.382362 -2.4868941 
		-2.2376549 -64.543373 -2.4827421 -2.2451031 -64.666924 -2.4773307 -2.253777 -64.744583 
		-2.4710286 -2.2630849 -64.77108 -2.4642658 -2.2475827 -63.993717 -2.513119 -2.2485967 
		-64.194901 -2.5119934 -2.2515683 -64.382362 -2.5086935 -2.2562952 -64.543373 -2.5034432 
		-2.2624557 -64.666924 -2.4966013 -2.2696295 -64.744583 -2.4886339 -2.2773283 -64.77108 
		-2.4800835 -2.2723212 -63.993717 -2.5310934 -2.2730792 -64.194901 -2.5297816 -2.2752993 
		-64.382362 -2.5259354 -2.2788317 -64.543373 -2.5198174 -2.2834346 -64.666924 -2.5118444 
		-2.288795 -64.744583 -2.5025592 -2.294548 -64.77108 -2.492595 -2.3002579 -63.993717 
		-2.5435302 -2.3007252 -64.194901 -2.5420895 -2.3020983 -64.382362 -2.5378661 -2.3042812 
		-64.543373 -2.5311475 -2.3071263 -64.666924 -2.5223913 -2.3104393 -64.744583 -2.5121946 
		-2.3139944 -64.77108 -2.5012527 -2.3301687 -63.993717 -2.5498893 -2.3303268 -64.194901 
		-2.5483828 -2.3307912 -64.382362 -2.5439665 -2.3315301 -64.543373 -2.5369403 -2.3324921 
		-64.666924 -2.5277843 -2.3336134 -64.744583 -2.5171216;
	setAttr ".pt[996:1052]" -2.3348162 -64.77108 -2.5056791 -2.3607471 -63.993717 
		-2.5498893 -2.360589 -64.194901 -2.5483828 -2.3601248 -64.382362 -2.5439665 -2.3593862 
		-64.543373 -2.5369403 -2.3584237 -64.666924 -2.5277843 -2.3573024 -64.744583 -2.5171216 
		-2.3560996 -64.77108 -2.5056791 -2.3906579 -63.993717 -2.5435302 -2.3901899 -64.194901 
		-2.5420895 -2.3888171 -64.382362 -2.5378661 -2.3866341 -64.543373 -2.5311475 -2.3837891 
		-64.666924 -2.5223913 -2.3804758 -64.744583 -2.5121949 -2.3769205 -64.77108 -2.5012529 
		-2.4185934 -63.993717 -2.5310934 -2.417836 -64.194901 -2.5297816 -2.4156156 -64.382362 
		-2.5259354 -2.4120831 -64.543373 -2.5198174 -2.4074802 -64.666924 -2.5118444 -2.4021196 
		-64.744583 -2.5025592 -2.3963671 -64.77108 -2.492595 -2.4433329 -63.993717 -2.513119 
		-2.4423194 -64.194901 -2.5119934 -2.439348 -64.382362 -2.5086935 -2.4346209 -64.543373 
		-2.5034432 -2.4284601 -64.666924 -2.4966013 -2.4212863 -64.744583 -2.4886339 -2.4135878 
		-64.77108 -2.4800835 -2.4637942 -63.993717 -2.4903948 -2.4625685 -64.194901 -2.4895046 
		-2.458976 -64.382362 -2.4868941 -2.4532607 -64.543373 -2.4827418 -2.4458122 -64.666924 
		-2.4773307 -2.4371383 -64.744583 -2.4710286 -2.4278302 -64.77108 -2.4642656 -2.4790833 
		-63.993717 -2.4639125 -2.4776995 -64.194901 -2.4632969 -2.4736426 -64.382362 -2.4614899 
		-2.4671888 -64.543373 -2.4586167 -2.4587784 -64.666924 -2.4548721 -2.4489839 -64.744583 
		-2.4505117 -2.4384732 -64.77108 -2.4458315 -2.488533 -63.993717 -2.4348314 -2.4870512 
		-64.194901 -2.4345167 -2.4827075 -64.382362 -2.433593 -2.4757972 -64.543373 -2.4321241 
		-2.4667919 -64.666924 -2.4302104 -2.4563046 -64.744583 -2.4279811 -2.4450507 -64.77108 
		-2.4255891 -2.491729 -63.993717 -2.4044189 -2.4902141 -64.194901 -2.4044189 -2.4857731 
		-64.382362 -2.4044189 -2.478709 -64.543373 -2.4044189 -2.4695022 -64.666924 -2.4044189 
		-2.458781 -64.744583 -2.4044189 -2.4472754 -64.77108 -2.4044189;
	setAttr -s 1053 ".vt";
	setAttr ".vt[0:165]"  0.48908091 -1.000000119209 -0.10395575 0.45677996 -1.000000119209 -0.20336819
		 0.40451574 -1.000000119209 -0.29389238 0.33457232 -1.000000119209 -0.37157059 0.25000668 -1.000000119209 -0.43301201
		 0.15451527 -1.000000119209 -0.47552824 0.052267551 -1.000000119209 -0.49725962 -0.052263737 -1.000000119209 -0.49725962
		 -0.15450382 -1.000000119209 -0.47552824 -0.24999809 -1.000000119209 -0.43301201 -0.3345623 -1.000000119209 -0.37157059
		 -0.40450096 -1.000000119209 -0.29389238 -0.45676947 -1.000000119209 -0.20336819 -0.48906612 -1.000000119209 -0.10395575
		 -0.49999857 -1.000000119209 0 -0.48906612 -1.000000119209 0.10395622 -0.45676947 -1.000000119209 0.20336962
		 -0.40450096 -1.000000119209 0.29389334 -0.3345623 -1.000000119209 0.37157249 -0.24999809 -1.000000119209 0.43301344
		 -0.15450382 -1.000000119209 0.47552872 -0.052263737 -1.000000119209 0.49726105 0.052264214 -1.000000119209 0.49726105
		 0.15451527 -1.000000119209 0.47552872 0.25000668 -1.000000119209 0.43301344 0.33457184 -1.000000119209 0.37157249
		 0.40451527 -1.000000119209 0.29389334 0.45677948 -1.000000119209 0.20336962 0.48908043 -1.000000119209 0.10395622
		 0.50000668 -1.000000119209 0 0.97815347 -1.000000119209 -0.20791149 0.91355181 -1.000000119209 -0.40673685
		 0.80902338 -1.000000119209 -0.58778572 0.66913795 -1.000000119209 -0.74314404 0.50000715 -1.000000119209 -0.86602592
		 0.30902433 -1.000000119209 -0.95105743 0.10453558 -1.000000119209 -0.99452114 -0.10452557 -1.000000119209 -0.99452114
		 -0.3090167 -1.000000119209 -0.95105743 -0.49999857 -1.000000119209 -0.86602592 -0.66912317 -1.000000119209 -0.74314404
		 -0.80900955 -1.000000119209 -0.58778572 -0.91354465 -1.000000119209 -0.40673685 -0.97814512 -1.000000119209 -0.20791197
		 -0.99999285 -1.000000119209 0 -0.97814512 -1.000000119209 0.20791149 -0.91354465 -1.000000119209 0.40673685
		 -0.80900955 -1.000000119209 0.58778572 -0.66912317 -1.000000119209 0.74314499 -0.49999857 -1.000000119209 0.86602592
		 -0.3090167 -1.000000119209 0.95105815 -0.10452557 -1.000000119209 0.99452257 0.1045351 -1.000000119209 0.99452257
		 0.30902338 -1.000000119209 0.95105672 0.50000668 -1.000000119209 0.86602592 0.66913748 -1.000000119209 0.74314499
		 0.8090229 -1.000000119209 0.58778572 0.91355109 -1.000000119209 0.40673685 0.97815228 -1.000000119209 0.20791149
		 1.000005483627 -1.000000119209 0 0.11234951 1 -0.023877621 0.10492945 1 -0.046714306
		 0.092924118 1 -0.06750679 0.076858044 1 -0.085351467 0.057428837 1 -0.099464893 0.035493851 1 -0.109231
		 0.012007713 1 -0.114223 -0.012003899 1 -0.114223 -0.035490036 1 -0.109231 -0.057425022 1 -0.099464893
		 -0.076848984 1 -0.085351467 -0.09291029 1 -0.06750679 -0.10491943 1 -0.046714306
		 -0.11233711 1 -0.023877621 -0.11484528 1 0 -0.11233711 1 0.023879528 -0.10491943 1 0.046715736
		 -0.09291029 1 0.067510605 -0.076848984 1 0.085353374 -0.057425022 1 0.099466324 -0.035490036 1 0.1092329
		 -0.012003899 1 0.11422443 0.012007713 1 0.11422443 0.035493851 1 0.1092329 0.057428837 1 0.099466324
		 0.076858044 1 0.085353374 0.092924118 1 0.067510605 0.10492945 1 0.046715736 0.11234951 1 0.023879528
		 0.1148591 1 0 1.9073486e-06 -1.000000119209 0 1.9073486e-06 1 0 0.97815347 -0.69983006 -0.20791149
		 0.97032976 -0.17455387 -0.20624685 0.94762158 0.29930496 -0.20142126 0.91225195 0.67536116 -0.19390392
		 0.8676846 0.91680455 -0.1844306 0.81828237 1 -0.17393017 0.91355181 -0.69983006 -0.40673685
		 0.90624356 -0.17455387 -0.40348244 0.88503599 0.29930496 -0.39404058 0.85200286 0.67536116 -0.3793335
		 0.81037855 0.91680455 -0.36080027 0.7642386 1 -0.3402586 0.80902338 -0.69983006 -0.58778572
		 0.80255175 -0.17455387 -0.58308315 0.78376985 0.29930496 -0.56943798 0.75451612 0.67536116 -0.54818439
		 0.71765566 0.91680455 -0.52140284 0.67679548 1 -0.49171495 0.66913795 -0.69983006 -0.74314404
		 0.66378498 -0.17455387 -0.73720074 0.64825106 0.29930496 -0.71994829 0.62405586 0.67536116 -0.69307661
		 0.59356833 0.91680455 -0.65921688 0.55977249 1 -0.62168264 0.50000715 -0.69983006 -0.86602592
		 0.49600744 -0.17455387 -0.85909653 0.4843998 0.29930496 -0.83899307 0.46632004 0.67536116 -0.8076787
		 0.44353867 0.91680455 -0.76821995 0.41828489 1 -0.72447968 0.30902433 -0.69983006 -0.95105743
		 0.30655241 -0.17455387 -0.9434495 0.2993784 0.29930496 -0.92136955 0.28820419 0.67536116 -0.88698053
		 0.27412462 0.91680455 -0.84364653 0.25851727 1 -0.79561234 0.10453558 -0.69983006 -0.99452114
		 0.10369921 -0.17455387 -0.98656654 0.10127258 0.29930496 -0.96347809 0.097493172 0.67536116 -0.92751741
		 0.092730522 0.91680455 -0.88220263 0.087450981 1 -0.83197355 -0.10452557 -0.69983006 -0.99452114
		 -0.10368729 -0.17455387 -0.98656654 -0.10126448 0.29930496 -0.96347809 -0.097484112 0.67536116 -0.92751741
		 -0.09272337 0.91680455 -0.88220263 -0.087443352 1 -0.83197355 -0.3090167 -0.69983006 -0.95105743
		 -0.30654287 -0.17455387 -0.9434495 -0.29936314 0.29930496 -0.92136955 -0.28819466 0.67536116 -0.88698053
		 -0.27411175 0.91680455 -0.84364653 -0.25850916 1 -0.79561234 -0.49999857 -0.69983006 -0.86602592
		 -0.49599743 -0.17455387 -0.85909653 -0.48439217 0.29930496 -0.83899307 -0.46630526 0.67536116 -0.8076787
		 -0.44352388 0.91680455 -0.76821995 -0.41827011 1 -0.72447968 -0.66912317 -0.69983006 -0.74314404
		 -0.6637702 -0.17455387 -0.73720074 -0.64824343 0.29930496 -0.71994829 -0.6240406 0.67536116 -0.69307661
		 -0.59355831 0.91680455 -0.65921688 -0.55976343 1 -0.62168264 -0.80900955 -0.69983006 -0.58778572
		 -0.80254221 -0.17455387 -0.58308315 -0.78375626 0.29930496 -0.56943798 -0.75450325 0.67536116 -0.54818439
		 -0.71764135 0.91680455 -0.52140284 -0.67678547 1 -0.49171495 -0.91354465 -0.69983006 -0.40673685
		 -0.90623045 -0.17455387 -0.40348244;
	setAttr ".vt[166:331]" -0.88502169 0.29930496 -0.39404058 -0.85199118 0.67536116 -0.3793335
		 -0.8103652 0.91680455 -0.36080027 -0.76422501 1 -0.3402586 -0.97814512 -0.69983006 -0.20791197
		 -0.97031546 -0.17455387 -0.20624876 -0.94761467 0.29930496 -0.20142126 -0.91223907 0.67536116 -0.19390392
		 -0.86767149 0.91680455 -0.1844306 -0.8182683 1 -0.17393017 -0.99999285 -0.69983006 0
		 -0.99200058 -0.17455387 0 -0.96877766 0.29930496 0 -0.93261909 0.67536116 0 -0.88705587 0.91680455 0
		 -0.83655453 1 0 -0.97814512 -0.69983006 0.20791149 -0.97031546 -0.17455387 0.20624828
		 -0.94761467 0.29930496 0.20142174 -0.91223907 0.67536116 0.19390345 -0.86767149 0.91680455 0.18443108
		 -0.8182683 1 0.17392969 -0.91354465 -0.69983006 0.40673685 -0.90623045 -0.17455387 0.40348387
		 -0.88502169 0.29930496 0.39404058 -0.85199118 0.67536116 0.3793335 -0.8103652 0.91680455 0.36080122
		 -0.76422501 1 0.34025812 -0.80900955 -0.69983006 0.58778572 -0.80254221 -0.17455387 0.58308411
		 -0.78375626 0.29930496 0.56943798 -0.75450325 0.67536116 0.54818439 -0.71764135 0.91680455 0.52140284
		 -0.67678547 1 0.49171543 -0.66912317 -0.69983006 0.74314499 -0.6637702 -0.17455387 0.73720026
		 -0.64824343 0.29930496 0.71994781 -0.6240406 0.67536116 0.69307709 -0.59355831 0.91680455 0.6592164
		 -0.55976343 1 0.62168264 -0.49999857 -0.69983006 0.86602592 -0.49599743 -0.17455387 0.85909796
		 -0.48439217 0.29930496 0.8389926 -0.46630526 0.67536116 0.80767822 -0.44352388 0.91680455 0.76821947
		 -0.41827011 1 0.72447968 -0.3090167 -0.69983006 0.95105815 -0.30654287 -0.17455387 0.94344974
		 -0.29936314 0.29930496 0.92137051 -0.28819466 0.67536116 0.88698053 -0.27411175 0.91680455 0.84364796
		 -0.25850916 1 0.79561281 -0.10452557 -0.69983006 0.99452257 -0.10368729 -0.17455387 0.98656678
		 -0.10126448 0.29930496 0.96347833 -0.097484112 0.67536116 0.92751765 -0.09272337 0.91680455 0.88220406
		 -0.087443352 1 0.83197451 0.1045351 -0.69983006 0.99452257 0.10369873 -0.17455387 0.98656678
		 0.10127211 0.29930496 0.96347833 0.097492218 0.67536116 0.92751765 0.092729568 0.91680455 0.88220406
		 0.087450027 1 0.83197451 0.30902338 -0.69983006 0.95105672 0.30655193 -0.17455387 0.94344878
		 0.29937744 0.29930496 0.92136955 0.28820372 0.67536116 0.8869803 0.27412415 0.91680455 0.84364796
		 0.25851679 1 0.79561281 0.50000668 -0.69983006 0.86602592 0.49600697 -0.17455387 0.85909796
		 0.48439884 0.29930496 0.8389926 0.46631956 0.67536116 0.80767822 0.44353819 0.91680455 0.76821947
		 0.41828442 1 0.72447968 0.66913748 -0.69983006 0.74314499 0.6637845 -0.17455387 0.73720026
		 0.6482501 0.29930496 0.71994781 0.62405539 0.67536116 0.69307709 0.59356785 0.91680455 0.6592164
		 0.55977201 1 0.62168264 0.8090229 -0.69983006 0.58778572 0.80255079 -0.17455387 0.58308411
		 0.78376913 0.29930496 0.56943798 0.75451517 0.67536116 0.54818439 0.71765518 0.91680455 0.52140284
		 0.67679501 1 0.49171543 0.91355109 -0.69983006 0.40673685 0.90624285 -0.17455387 0.40348291
		 0.88503504 0.29930496 0.39404058 0.85200238 0.67536116 0.3793335 0.8103776 0.91680455 0.36080122
		 0.76423812 1 0.34025812 0.97815228 -0.69983006 0.20791149 0.97032833 -0.17455387 0.20624828
		 0.94762039 0.29930496 0.20142174 0.91225076 0.67536116 0.19390345 0.86768389 0.91680455 0.18443108
		 0.81828094 1 0.17392969 1.000005483627 -0.69983006 0 0.9920063 -0.17455387 0 0.96879077 0.29930496 0
		 0.93263078 0.67536116 0 0.88706875 0.91680455 -4.7683716e-07 0.83656168 1 -4.7683716e-07
		 0.11234951 63.9019165 -0.023877621 0.10492945 63.9019165 -0.046714306 0.092924118 63.9019165 -0.06750679
		 0.076858044 63.9019165 -0.085351467 0.057428837 63.9019165 -0.099464893 0.035493851 63.9019165 -0.109231
		 0.012007713 63.9019165 -0.114223 -0.012003899 63.9019165 -0.114223 -0.035490036 63.9019165 -0.109231
		 -0.057425022 63.9019165 -0.099464893 -0.076848984 63.9019165 -0.085351467 -0.09291029 63.9019165 -0.06750679
		 -0.10491943 63.9019165 -0.046714306 -0.11233711 63.9019165 -0.023877621 -0.11484528 63.9019165 0
		 -0.11233711 63.9019165 0.023879528 -0.10491943 63.9019165 0.046715736 -0.09291029 63.9019165 0.067510605
		 -0.076848984 63.9019165 0.085353374 -0.057425022 63.9019165 0.099466324 -0.035490036 63.9019165 0.1092329
		 -0.012003899 63.9019165 0.11422443 0.012007713 63.9019165 0.11422443 0.035493851 63.9019165 0.1092329
		 0.057428837 63.9019165 0.099466324 0.076858044 63.9019165 0.085353374 0.092924118 63.9019165 0.067510605
		 0.10492945 63.9019165 0.046715736 0.11234951 63.9019165 0.023879528 0.1148591 63.9019165 0
		 0.11040211 64.88349152 -0.023463726 0.10311079 64.88349152 -0.04590416 0.091313839 64.88349152 -0.066336155
		 0.075525761 64.88349152 -0.083871841 0.056434631 64.88349152 -0.097738743 0.034879684 64.88349152 -0.10733557
		 0.011800766 64.88349152 -0.11224222 -0.011793613 64.88349152 -0.11224222 -0.034869671 64.88349152 -0.10733557
		 -0.056427479 64.88349152 -0.097738743 -0.07551527 64.88349152 -0.083871841 -0.091304779 64.88349152 -0.066336155
		 -0.1031003 64.88349152 -0.04590416 -0.11039305 64.88349152 -0.023463726 -0.11285639 64.88349152 1.9073486e-06
		 -0.11039305 64.88349152 0.023467541 -0.1031003 64.88349152 0.045906067 -0.091304779 64.88349152 0.06633997
		 -0.07551527 64.88349152 0.083873749 -0.056427479 64.88349152 0.097743034 -0.034869671 64.88349152 0.10733938
		 -0.011793613 64.88349152 0.11224604 0.011800766 64.88349152 0.11224604 0.034879684 64.88349152 0.10733938
		 0.056434631 64.88349152 0.097743034 0.075525761 64.88349152 0.083873749 0.091313839 64.88349152 0.06633997
		 0.10311079 64.88349152 0.045906067 0.11040211 64.88349152 0.023467541 0.11286831 64.88349152 1.9073486e-06;
	setAttr ".vt[332:497]" 0.11040211 65.61379242 -0.023463726 0.10311079 65.61379242 -0.04590416
		 0.091313839 65.61379242 -0.066336155 0.075525761 65.61379242 -0.083871841 0.056434631 65.61379242 -0.097738743
		 0.034879684 65.61379242 -0.10733557 0.011800766 65.61379242 -0.11224222 -0.011793613 65.61379242 -0.11224222
		 -0.034869671 65.61379242 -0.10733557 -0.056427479 65.61379242 -0.097738743 -0.07551527 65.61379242 -0.083871841
		 -0.091304779 65.61379242 -0.066336155 -0.1031003 65.61379242 -0.04590416 -0.11039305 65.61379242 -0.023463726
		 -0.11285639 65.61379242 1.9073486e-06 -0.11039305 65.61379242 0.023467541 -0.1031003 65.61379242 0.045906067
		 -0.091304779 65.61379242 0.06633997 -0.07551527 65.61379242 0.083873749 -0.056427479 65.61379242 0.097743034
		 -0.034869671 65.61379242 0.10733938 -0.011793613 65.61379242 0.11224604 0.011800766 65.61379242 0.11224604
		 0.034879684 65.61379242 0.10733938 0.056434631 65.61379242 0.097743034 0.075525761 65.61379242 0.083873749
		 0.091313839 65.61379242 0.06633997 0.10311079 65.61379242 0.045906067 0.11040211 65.61379242 0.023467541
		 0.11286831 65.61379242 1.9073486e-06 5.2452087e-06 67.41564178 2.3841858e-06 0.13180256 63.9019165 -0.028013229
		 0.14946508 63.93928528 -0.031767368 0.1644392 64.045654297 -0.034950256 0.1744442 64.2048645 -0.03707695
		 0.17795753 64.39270782 -0.037823677 0.1230979 63.9019165 -0.054801941 0.13959408 63.93928528 -0.062147617
		 0.15357876 64.045654297 -0.068374157 0.16292286 64.2048645 -0.072534561 0.16620445 64.39270782 -0.073995113
		 0.10901356 63.9019165 -0.07919693 0.12362242 63.93928528 -0.089810848 0.13600731 64.045654297 -0.098807812
		 0.14428234 64.2048645 -0.10482073 0.14718819 64.39270782 -0.10693169 0.090165615 63.9019165 -0.10013103
		 0.10224819 63.93928528 -0.11355066 0.11249113 64.045654297 -0.12492657 0.11933565 64.2048645 -0.13252783
		 0.12173891 64.39270782 -0.13519716 0.06737709 63.9019165 -0.11668682 0.076405525 63.93928528 -0.1323247
		 0.084059238 64.045654297 -0.1455822 0.089173794 64.2048645 -0.15443945 0.090969563 64.39270782 -0.15755129
		 0.041641712 63.9019165 -0.12814379 0.047221184 63.93928528 -0.14531803 0.051951408 64.045654297 -0.15987778
		 0.055110931 64.2048645 -0.16960478 0.056220531 64.39270782 -0.17302179 0.014088154 63.9019165 -0.13400078
		 0.015976429 63.93928528 -0.15195894 0.017575741 64.045654297 -0.16718388 0.01864481 64.2048645 -0.17735529
		 0.01901865 64.39270782 -0.18092823 -0.014081478 63.9019165 -0.13400078 -0.0159688 63.93928528 -0.15195894
		 -0.017569065 64.045654297 -0.16718388 -0.018638134 64.2048645 -0.17735529 -0.019014835 64.39270782 -0.18092823
		 -0.041632652 63.9019165 -0.12814569 -0.047214031 63.93928528 -0.14531803 -0.051944733 64.045654297 -0.15987778
		 -0.055104733 64.2048645 -0.16960478 -0.056216717 64.39270782 -0.17302179 -0.067364216 63.9019165 -0.1166873
		 -0.076394081 63.93928528 -0.1323247 -0.084046841 64.045654297 -0.14558268 -0.089160919 64.2048645 -0.15443945
		 -0.090958595 64.39270782 -0.15755129 -0.090155125 63.9019165 -0.10013056 -0.10223866 63.93928528 -0.11354876
		 -0.11248064 64.045654297 -0.12492609 -0.11932516 64.2048645 -0.13252783 -0.12173033 64.39270782 -0.13519716
		 -0.10900164 63.9019165 -0.07919693 -0.1236105 63.93928528 -0.089810848 -0.13599634 64.045654297 -0.098807812
		 -0.14426994 64.2048645 -0.10482073 -0.1471777 64.39270782 -0.10693169 -0.12308788 63.9019165 -0.054801464
		 -0.13958311 63.93928528 -0.062145233 -0.15356731 64.045654297 -0.06837225 -0.16291285 64.2048645 -0.072534561
		 -0.16619444 64.39270782 -0.073995113 -0.13179207 63.9019165 -0.028013229 -0.14945507 63.93928528 -0.031767368
		 -0.16442966 64.045654297 -0.034950256 -0.17443371 64.2048645 -0.03707695 -0.17794895 64.39270782 -0.037823677
		 -0.13473511 63.9019165 0 -0.15279388 63.93928528 0 -0.16810131 64.045654297 0 -0.17832947 64.2048645 0
		 -0.18192291 64.39270782 0 -0.13179207 63.9019165 0.02801466 -0.14945507 63.93928528 0.031768799
		 -0.16442966 64.045654297 0.034951687 -0.17443371 64.2048645 0.037078381 -0.17794895 64.39270782 0.037825108
		 -0.12308788 63.9019165 0.054803848 -0.13958311 63.93928528 0.062149048 -0.15356731 64.045654297 0.068376064
		 -0.16291285 64.2048645 0.072536469 -0.16619444 64.39270782 0.073997021 -0.10900164 63.9019165 0.079201221
		 -0.1236105 63.93928528 0.089815617 -0.13599634 64.045654297 0.098812103 -0.14426994 64.2048645 0.10482454
		 -0.1471777 64.39270782 0.1069355 -0.090155125 63.9019165 0.10013294 -0.10223866 63.93928528 0.11355257
		 -0.11248064 64.045654297 0.12492847 -0.11932516 64.2048645 0.13252974 -0.12173033 64.39270782 0.13519907
		 -0.067364216 63.9019165 0.11669159 -0.076394081 63.93928528 0.13232899 -0.084046841 64.045654297 0.14558649
		 -0.089160919 64.2048645 0.15444422 -0.090958595 64.39270782 0.1575551 -0.041635513 63.9019165 0.1281476
		 -0.047214031 63.93928528 0.14532185 -0.051944733 64.045654297 0.15987968 -0.055104733 64.2048645 0.16960859
		 -0.056216717 64.39270782 0.1730237 -0.014081001 63.9019165 0.13400459 -0.015968323 63.93928528 0.15196276
		 -0.017569065 64.045654297 0.16718626 -0.018638134 64.2048645 0.1773591 -0.019014835 64.39270782 0.18093061
		 0.014088154 63.9019165 0.13400459 0.015975952 63.93928528 0.15196276 0.017575741 64.045654297 0.16718626
		 0.01864481 64.2048645 0.1773591 0.01901865 64.39270782 0.18093061 0.041642189 63.9019165 0.1281476
		 0.047221184 63.93928528 0.14532185 0.051951885 64.045654297 0.15987968 0.055110931 64.2048645 0.16960859
		 0.056220531 64.39270782 0.1730237 0.06737709 63.9019165 0.11669159 0.076405525 63.93928528 0.13232851
		 0.084059238 64.045654297 0.14558649 0.089173794 64.2048645 0.15444422 0.090969563 64.39270782 0.1575551
		 0.090165615 63.9019165 0.10013294 0.10224819 63.93928528 0.11355257 0.11249113 64.045654297 0.12492847
		 0.11933565 64.2048645 0.13252974 0.12173891 64.39270782 0.13519907 0.10901356 63.9019165 0.079201221
		 0.12362242 63.93928528 0.089813709 0.13600731 64.045654297 0.098812103 0.14428234 64.2048645 0.10482454
		 0.14718819 64.39270782 0.1069355;
	setAttr ".vt[498:663]" 0.1230979 63.9019165 0.054805756 0.1395936 63.93928528 0.062149525
		 0.15357876 64.045654297 0.068376064 0.16292286 64.2048645 0.072536469 0.16620445 64.39270782 0.073997021
		 0.13180256 63.9019165 0.02801466 0.14946508 63.93928528 0.031768799 0.1644392 64.045654297 0.034951687
		 0.1744442 64.2048645 0.037078381 0.17795753 64.39270782 0.037825108 0.13474703 63.9019165 0
		 0.1528039 63.93928528 0 0.16811228 64.045654297 0 0.17834091 64.2048645 0 0.18193293 64.39270782 0
		 0.1744442 64.58056641 -0.03707695 0.1644392 64.73976135 -0.034950256 0.14946508 64.84614563 -0.031767368
		 0.13180256 64.88349152 -0.028013229 0.16292286 64.58056641 -0.072534561 0.15357876 64.73976135 -0.068374157
		 0.13959408 64.84614563 -0.062147617 0.1230979 64.88349152 -0.054801941 0.14428234 64.58056641 -0.10482073
		 0.13600731 64.73976135 -0.098807812 0.12362242 64.84614563 -0.089810848 0.10901356 64.88349152 -0.07919693
		 0.11933565 64.58056641 -0.13252783 0.11249113 64.73976135 -0.12492657 0.10224819 64.84614563 -0.11355066
		 0.090165615 64.88349152 -0.10013103 0.089173794 64.58056641 -0.15443945 0.084059238 64.73976135 -0.1455822
		 0.076405525 64.84614563 -0.1323247 0.06737709 64.88349152 -0.11668682 0.055110931 64.58056641 -0.16960478
		 0.051951408 64.73976135 -0.15987778 0.047221184 64.84614563 -0.14531803 0.041641712 64.88349152 -0.12814379
		 0.01864481 64.58056641 -0.17735529 0.017575741 64.73976135 -0.16718388 0.015976429 64.84614563 -0.15195894
		 0.014088154 64.88349152 -0.13400078 -0.018638134 64.58056641 -0.17735529 -0.017569065 64.73976135 -0.16718388
		 -0.0159688 64.84614563 -0.15195894 -0.014081478 64.88349152 -0.13400078 -0.055104733 64.58056641 -0.16960478
		 -0.051944733 64.73976135 -0.15987778 -0.047214031 64.84614563 -0.14531803 -0.041632652 64.88349152 -0.12814569
		 -0.089160919 64.58056641 -0.15443945 -0.084046841 64.73976135 -0.14558268 -0.076394081 64.84614563 -0.1323247
		 -0.067364216 64.88349152 -0.1166873 -0.11932516 64.58056641 -0.13252783 -0.11248064 64.73976135 -0.12492609
		 -0.10223866 64.84614563 -0.11354876 -0.090155125 64.88349152 -0.10013056 -0.14426994 64.58056641 -0.10482073
		 -0.13599634 64.73976135 -0.098807812 -0.1236105 64.84614563 -0.089810848 -0.10900164 64.88349152 -0.07919693
		 -0.16291285 64.58056641 -0.072534561 -0.15356731 64.73976135 -0.06837225 -0.13958311 64.84614563 -0.062145233
		 -0.12308788 64.88349152 -0.054801464 -0.17443371 64.58056641 -0.03707695 -0.16442966 64.73976135 -0.034950256
		 -0.14945507 64.84614563 -0.031767368 -0.13179207 64.88349152 -0.028013229 -0.17832947 64.58056641 0
		 -0.16810131 64.73976135 0 -0.15279388 64.84614563 0 -0.13473511 64.88349152 0 -0.17443371 64.58056641 0.037078381
		 -0.16442966 64.73976135 0.034951687 -0.14945507 64.84614563 0.031768799 -0.13179207 64.88349152 0.02801466
		 -0.16291285 64.58056641 0.072536469 -0.15356731 64.73976135 0.068376064 -0.13958311 64.84614563 0.062149048
		 -0.12308788 64.88349152 0.054803848 -0.14426994 64.58056641 0.10482454 -0.13599634 64.73976135 0.098812103
		 -0.1236105 64.84614563 0.089815617 -0.10900164 64.88349152 0.079201221 -0.11932516 64.58056641 0.13252974
		 -0.11248064 64.73976135 0.12492847 -0.10223866 64.84614563 0.11355257 -0.090155125 64.88349152 0.10013294
		 -0.089160919 64.58056641 0.15444422 -0.084046841 64.73976135 0.14558649 -0.076394081 64.84614563 0.13232899
		 -0.067364216 64.88349152 0.11669159 -0.055104733 64.58056641 0.16960859 -0.051944733 64.73976135 0.15987968
		 -0.047214031 64.84614563 0.14532185 -0.041635513 64.88349152 0.1281476 -0.018638134 64.58056641 0.1773591
		 -0.017569065 64.73976135 0.16718626 -0.015968323 64.84614563 0.15196276 -0.014081001 64.88349152 0.13400459
		 0.01864481 64.58056641 0.1773591 0.017575741 64.73976135 0.16718626 0.015975952 64.84614563 0.15196276
		 0.014088154 64.88349152 0.13400459 0.055110931 64.58056641 0.16960859 0.051951885 64.73976135 0.15987968
		 0.047221184 64.84614563 0.14532185 0.041642189 64.88349152 0.1281476 0.089173794 64.58056641 0.15444422
		 0.084059238 64.73976135 0.14558649 0.076405525 64.84614563 0.13232851 0.06737709 64.88349152 0.11669159
		 0.11933565 64.58056641 0.13252974 0.11249113 64.73976135 0.12492847 0.10224819 64.84614563 0.11355257
		 0.090165615 64.88349152 0.10013294 0.14428234 64.58056641 0.10482454 0.13600731 64.73976135 0.098812103
		 0.12362242 64.84614563 0.089813709 0.10901356 64.88349152 0.079201221 0.16292286 64.58056641 0.072536469
		 0.15357876 64.73976135 0.068376064 0.1395936 64.84614563 0.062149525 0.1230979 64.88349152 0.054805756
		 0.1744442 64.58056641 0.037078381 0.1644392 64.73976135 0.034951687 0.14946508 64.84614563 0.031768799
		 0.13180256 64.88349152 0.02801466 0.17834091 64.58056641 0 0.16811228 64.73976135 0
		 0.1528039 64.84614563 0 0.13474703 64.88349152 0 0.17464972 65.61379242 -0.037120819
		 0.19438505 65.64142609 -0.041315556 0.21277523 65.72241211 -0.04522419 0.2285676 65.85125732 -0.048580647
		 0.24068499 66.019165039 -0.051156044 0.24830246 66.21469879 -0.052775383 0.25090075 66.42453003 -0.05332756
		 0.1631155 65.61379242 -0.072619915 0.18154716 65.64142609 -0.080825806 0.19872284 65.72241211 -0.088473797
		 0.21347189 65.85125732 -0.095040798 0.22478914 66.019165039 -0.10007954 0.23190355 66.21469879 -0.10324669
		 0.23433018 66.42453003 -0.10432768 0.14445305 65.61379242 -0.1049428 0.16077566 65.64142609 -0.11680222
		 0.17598581 65.72241211 -0.12785244 0.18904734 65.85125732 -0.13734245 0.19906998 66.019165039 -0.14462423
		 0.20536995 66.21469879 -0.14920187 0.20751905 66.42453003 -0.15076303 0.11947727 65.61379242 -0.1326828
		 0.13297796 65.64142609 -0.14767647 0.14555788 65.72241211 -0.16164923 0.15636063 65.85125732 -0.17364645
		 0.16465044 66.019165039 -0.18285275 0.16986132 66.21469879 -0.18864107 0.17163849 66.42453003 -0.19061518
		 0.089280605 65.61379242 -0.15461922 0.099368095 65.64142609 -0.17209196 0.10876799 65.72241211 -0.18837404;
	setAttr ".vt[664:829]" 0.11683989 65.85125732 -0.20235729 0.12303352 66.019165039 -0.21308517
		 0.12692738 66.21469879 -0.21983051 0.12825537 66.42453003 -0.22213078 0.055177689 65.61379242 -0.16980171
		 0.061412334 65.64142609 -0.18899107 0.067222595 65.72241211 -0.20687103 0.072212219 65.85125732 -0.22222614
		 0.076040268 66.019165039 -0.23400831 0.078447342 66.21469879 -0.24141502 0.079267979 66.42453003 -0.24394083
		 0.018667698 65.61379242 -0.17756462 0.020776272 65.64142609 -0.19762993 0.022742748 65.72241211 -0.21632814
		 0.024430275 65.85125732 -0.23238373 0.025725842 66.019165039 -0.24470425 0.026539803 66.21469879 -0.25244904
		 0.026816845 66.42453003 -0.25509167 -0.0186553 65.61379242 -0.17756462 -0.020764351 65.64142609 -0.19762993
		 -0.022730827 65.72241211 -0.21632814 -0.024417877 65.85125732 -0.23238373 -0.025713444 66.019165039 -0.24470425
		 -0.026527882 66.21469879 -0.25244904 -0.026804924 66.42453003 -0.25509167 -0.055166721 65.61379242 -0.16980171
		 -0.061401367 65.64142609 -0.18899107 -0.067211628 65.72241211 -0.20687103 -0.072200775 65.85125732 -0.22222614
		 -0.076029301 66.019165039 -0.23400831 -0.078435421 66.21469879 -0.24141502 -0.079256535 66.42453003 -0.24394083
		 -0.089270115 65.61379242 -0.15461922 -0.099357605 65.64142609 -0.17209196 -0.10875797 65.72241211 -0.18837404
		 -0.11683035 65.85125732 -0.20235729 -0.12302351 66.019165039 -0.21308517 -0.12691689 66.21469879 -0.21983051
		 -0.12824583 66.42453003 -0.22213078 -0.11946535 65.61379242 -0.13268328 -0.13296604 65.64142609 -0.14767647
		 -0.14554596 65.72241211 -0.16164923 -0.15634871 65.85125732 -0.17364645 -0.16463804 66.019165039 -0.18285275
		 -0.16984892 66.21469879 -0.18864107 -0.17162704 66.42453003 -0.19061518 -0.14444113 65.61379242 -0.1049428
		 -0.16076469 65.64142609 -0.11680222 -0.17597485 65.72241211 -0.12785244 -0.18903637 65.85125732 -0.13734293
		 -0.19905949 66.019165039 -0.14462423 -0.20535946 66.21469879 -0.14920187 -0.20750904 66.42453003 -0.15076303
		 -0.1631031 65.61379242 -0.072619915 -0.18153381 65.64142609 -0.080825806 -0.19870996 65.72241211 -0.088473797
		 -0.21345854 65.85125732 -0.095040798 -0.22477579 66.019165039 -0.10007954 -0.23188972 66.21469879 -0.10324669
		 -0.2343173 66.42453003 -0.10432768 -0.17463875 65.61379242 -0.037119389 -0.19437408 65.64142609 -0.041315079
		 -0.21276426 65.72241211 -0.04522419 -0.22855663 65.85125732 -0.048580647 -0.2406745 66.019165039 -0.051156044
		 -0.24829197 66.21469879 -0.052775383 -0.25089073 66.42453003 -0.05332756 -0.17853832 65.61379242 1.9073486e-06
		 -0.19871426 65.64142609 1.9073486e-06 -0.21751642 65.72241211 1.9073486e-06 -0.23366022 65.85125732 1.9073486e-06
		 -0.24604845 66.019165039 1.9073486e-06 -0.25383615 66.21469879 1.9073486e-06 -0.25649309 66.42453003 1.9073486e-06
		 -0.17463875 65.61379242 0.037124157 -0.19437408 65.64142609 0.041319847 -0.21276426 65.72241211 0.045229435
		 -0.22855663 65.85125732 0.048585415 -0.2406745 66.019165039 0.051161289 -0.24829197 66.21469879 0.052780628
		 -0.25089073 66.42453003 0.053332806 -0.1631031 65.61379242 0.072621822 -0.18153381 65.64142609 0.080829144
		 -0.19870996 65.72241211 0.088475227 -0.21345854 65.85125732 0.095042229 -0.22477579 66.019165039 0.10008097
		 -0.23188972 66.21469879 0.10324955 -0.2343173 66.42453003 0.10432911 -0.14444113 65.61379242 0.10494852
		 -0.16076469 65.64142609 0.11680746 -0.17597485 65.72241211 0.12785912 -0.18903637 65.85125732 0.13734818
		 -0.19905949 66.019165039 0.14462948 -0.20535946 66.21469879 0.14920712 -0.20750904 66.42453003 0.15076828
		 -0.11946487 65.61379242 0.13268566 -0.13296604 65.64142609 0.14768028 -0.14554548 65.72241211 0.16165161
		 -0.15634823 65.85125732 0.17364979 -0.16463804 66.019165039 0.18285656 -0.16984892 66.21469879 0.18864298
		 -0.17162704 66.42453003 0.19061708 -0.089268684 65.61379242 0.15462637 -0.099356174 65.64142609 0.17209911
		 -0.10875654 65.72241211 0.1883812 -0.11682892 65.85125732 0.20236301 -0.12302351 66.019165039 0.21309185
		 -0.12691689 66.21469879 0.21983624 -0.12824583 66.42453003 0.2221365 -0.055168152 65.61379242 0.16980696
		 -0.061402321 65.64142609 0.18899584 -0.067212105 65.72241211 0.20687628 -0.072201252 65.85125732 0.22223091
		 -0.076029301 66.019165039 0.23401308 -0.078435421 66.21469879 0.24141932 -0.079256535 66.42453003 0.2439456
		 -0.0186553 65.61379242 0.17756987 -0.020764351 65.64142609 0.19763517 -0.022730827 65.72241211 0.21633339
		 -0.024417877 65.85125732 0.23238993 -0.025713444 66.019165039 0.24471092 -0.026527882 66.21469879 0.25245523
		 -0.026804924 66.42453003 0.25509691 0.018667221 65.61379242 0.17756987 0.020776272 65.64142609 0.19763517
		 0.022741318 65.72241211 0.21633339 0.024430275 65.85125732 0.23238993 0.025725838 66.019165039 0.24471092
		 0.026539803 66.21469879 0.25245523 0.026816845 66.42453003 0.25509691 0.055178165 65.61379242 0.16980839
		 0.061412811 65.64142609 0.18899584 0.067223072 65.72241211 0.20687628 0.072212219 65.85125732 0.22223139
		 0.076040268 66.019165039 0.23401308 0.078447342 66.21469879 0.24141932 0.079267979 66.42453003 0.2439456
		 0.089279175 65.61379242 0.15462637 0.099367142 65.64142609 0.17209911 0.10876751 65.72241211 0.1883812
		 0.11683941 65.85125732 0.20236301 0.12303352 66.019165039 0.21309185 0.12692738 66.21469879 0.21983624
		 0.12825537 66.42453003 0.2221365 0.11947727 65.61379242 0.13268566 0.13297796 65.64142609 0.14768028
		 0.14555788 65.72241211 0.16165161 0.15636063 65.85125732 0.17364979 0.16465044 66.019165039 0.18285656
		 0.16986132 66.21469879 0.18864298 0.17163849 66.42453003 0.19061708 0.14445257 65.61379242 0.10494804
		 0.16077566 65.64142609 0.11680746 0.17598581 65.72241211 0.12785864 0.18904734 65.85125732 0.1373477
		 0.19906998 66.019165039 0.14462948 0.20536995 66.21469879 0.14920712 0.20751905 66.42453003 0.15076828
		 0.1631155 65.61379242 0.072621822 0.18154716 65.64142609 0.080829144 0.19872284 65.72241211 0.088475227
		 0.21347189 65.85125732 0.095042229 0.22478914 66.019165039 0.10008097 0.23190355 66.21469879 0.10324955
		 0.23433018 66.42453003 0.10432911 0.17464972 65.61379242 0.037125587;
	setAttr ".vt[830:995]" 0.19438505 65.64142609 0.041320324 0.21277523 65.72241211 0.045229435
		 0.2285676 65.85125732 0.048585415 0.24068499 66.019165039 0.051161289 0.24830246 66.21469879 0.052780628
		 0.25090075 66.42453003 0.053332806 0.1785512 65.61379242 1.9073486e-06 0.19872713 65.64142609 1.9073486e-06
		 0.21752834 65.72241211 1.9073486e-06 0.2336731 65.85125732 1.9073486e-06 0.24606133 66.019165039 1.9073486e-06
		 0.25384903 66.21469879 1.9073486e-06 0.25650549 66.42453003 1.9073486e-06 0.25090075 66.60488129 -0.05332756
		 0.24830246 66.81471252 -0.052775383 0.24068546 67.010246277 -0.051156044 0.2285676 67.17815399 -0.048580647
		 0.21277571 67.30699921 -0.04522419 0.19438553 67.38798523 -0.041315556 0.17465067 67.4156189 -0.037120819
		 0.23433018 66.60488129 -0.10432768 0.23190355 66.81471252 -0.10324669 0.22478914 67.010246277 -0.10007954
		 0.21347189 67.17815399 -0.095040798 0.19872332 67.30699921 -0.088474274 0.18154812 67.38798523 -0.080826283
		 0.16311646 67.4156189 -0.072620392 0.20751905 66.60488129 -0.15076303 0.20536995 66.81471252 -0.14920187
		 0.19906998 67.010246277 -0.14462423 0.18904781 67.17815399 -0.13734293 0.17598629 67.30699921 -0.12785244
		 0.16077614 67.38798523 -0.11680222 0.14445353 67.4156189 -0.1049428 0.17163849 66.60488129 -0.19061518
		 0.16986132 66.81471252 -0.18864107 0.16465044 67.010246277 -0.18285275 0.1563611 67.17815399 -0.17364645
		 0.14555836 67.30699921 -0.16164923 0.13297796 67.38798523 -0.14767647 0.11947775 67.4156189 -0.13268328
		 0.12825537 66.60488129 -0.22213078 0.12692738 66.81471252 -0.21983051 0.123034 67.010246277 -0.21308517
		 0.11684036 67.17815399 -0.20235729 0.10876799 67.30699921 -0.18837547 0.099368095 67.38798523 -0.17209244
		 0.089281082 67.4156189 -0.15461922 0.079267979 66.60488129 -0.24394083 0.078447342 66.81471252 -0.24141502
		 0.076040268 67.010246277 -0.23400831 0.072212219 67.17815399 -0.22222614 0.067223072 67.30699921 -0.20687151
		 0.061412811 67.38798523 -0.18899107 0.055178165 67.4156189 -0.16980362 0.026816845 66.60488129 -0.25509167
		 0.026539803 66.81471252 -0.25245047 0.025725842 67.010246277 -0.24470472 0.024430275 67.17815399 -0.23238516
		 0.022742748 67.30699921 -0.21632862 0.020776272 67.38798523 -0.19763041 0.018667698 67.4156189 -0.1775651
		 -0.026804924 66.60488129 -0.25509167 -0.026527882 66.81471252 -0.25245047 -0.025713444 67.010246277 -0.24470472
		 -0.024417877 67.17815399 -0.23238516 -0.022730827 67.30699921 -0.21632862 -0.020764351 67.38798523 -0.19763041
		 -0.0186553 67.4156189 -0.1775651 -0.079256535 66.60488129 -0.24394083 -0.078435421 66.81471252 -0.24141502
		 -0.076029301 67.010246277 -0.23400831 -0.072200775 67.17815399 -0.22222614 -0.067212105 67.30699921 -0.20687151
		 -0.061401367 67.38798523 -0.18899107 -0.055166721 67.4156189 -0.16980219 -0.12824583 66.60488129 -0.22213078
		 -0.12691689 66.81471252 -0.21983051 -0.12302351 67.010246277 -0.21308517 -0.11683035 67.17815399 -0.20235729
		 -0.10875797 67.30699921 -0.18837547 -0.099357605 67.38798523 -0.17209244 -0.089270115 67.4156189 -0.15461922
		 -0.17162704 66.60488129 -0.19061518 -0.16984892 66.81471252 -0.18864107 -0.16463804 67.010246277 -0.18285322
		 -0.15634871 67.17815399 -0.17364645 -0.14554644 67.30699921 -0.1616497 -0.13296604 67.38798523 -0.14767694
		 -0.11946678 67.4156189 -0.13268375 -0.20750904 66.60488129 -0.15076303 -0.20535946 66.81471252 -0.14920187
		 -0.19905949 67.010246277 -0.14462423 -0.18903637 67.17815399 -0.13734293 -0.17597532 67.30699921 -0.12785387
		 -0.16076469 67.38798523 -0.11680269 -0.14444256 67.4156189 -0.10494328 -0.2343173 66.60488129 -0.10432768
		 -0.23188972 66.81471252 -0.10324669 -0.22477579 67.010246277 -0.10007954 -0.21345854 67.17815399 -0.095040798
		 -0.19870996 67.30699921 -0.088474274 -0.18153429 67.38798523 -0.080826283 -0.1631031 67.4156189 -0.072620392
		 -0.25089073 66.60488129 -0.05332756 -0.24829197 66.81471252 -0.052775383 -0.2406745 67.010246277 -0.051156044
		 -0.22855663 67.17815399 -0.048580647 -0.21276569 67.30699921 -0.04522419 -0.19437456 67.38798523 -0.041315079
		 -0.17463923 67.4156189 -0.037119389 -0.25649309 66.60488129 1.9073486e-06 -0.25383615 66.81471252 1.9073486e-06
		 -0.24604893 67.010246277 1.9073486e-06 -0.23366022 67.17815399 1.9073486e-06 -0.21751642 67.30699921 1.9073486e-06
		 -0.19871473 67.38798523 1.9073486e-06 -0.17853975 67.4156189 1.9073486e-06 -0.25089073 66.60488129 0.053332806
		 -0.24829197 66.81471252 0.052780628 -0.2406745 67.010246277 0.051161289 -0.22855663 67.17815399 0.048585415
		 -0.21276569 67.30699921 0.045229435 -0.19437456 67.38798523 0.041320324 -0.17463923 67.4156189 0.037125587
		 -0.2343173 66.60488129 0.10432911 -0.23188972 66.81471252 0.10324955 -0.22477579 67.010246277 0.10008097
		 -0.21345854 67.17815399 0.095042229 -0.19870996 67.30699921 0.088475704 -0.18153429 67.38798523 0.08082962
		 -0.1631031 67.4156189 0.072622299 -0.20750904 66.60488129 0.15076828 -0.20535946 66.81471252 0.14920712
		 -0.19905949 67.010246277 0.14462948 -0.18903637 67.17815399 0.13734818 -0.17597532 67.30699921 0.12785912
		 -0.16076469 67.38798523 0.11680746 -0.14444256 67.4156189 0.10494852 -0.17162704 66.60488129 0.19061708
		 -0.16984892 66.81471252 0.18864298 -0.16463804 67.010246277 0.18285656 -0.15634871 67.17815399 0.17364979
		 -0.14554596 67.30699921 0.16165161 -0.13296604 67.38798523 0.14768028 -0.11946535 67.4156189 0.13268614
		 -0.12824583 66.60488129 0.2221365 -0.12691689 66.81471252 0.21983624 -0.12302351 67.010246277 0.21309185
		 -0.11682892 67.17815399 0.20236301 -0.1087575 67.30699921 0.18838167 -0.099357605 67.38798523 0.17209959
		 -0.089269161 67.4156189 0.15462637 -0.079256535 66.60488129 0.2439456 -0.078436852 66.81471252 0.24141932
		 -0.076029301 67.010246277 0.23401308 -0.072201252 67.17815399 0.22223139 -0.067212105 67.30699921 0.20687675
		 -0.061402321 67.38798523 0.18899584 -0.055168152 67.4156189 0.16980839 -0.026804924 66.60488129 0.25509691
		 -0.026527882 66.81471252 0.25245523 -0.025713444 67.010246277 0.24471092 -0.024417877 67.17815399 0.23238993
		 -0.022730827 67.30699921 0.21633387 -0.020764351 67.38798523 0.19763565;
	setAttr ".vt[996:1052]" -0.0186553 67.4156189 0.17757034 0.026816845 66.60488129 0.25509691
		 0.026539803 66.81471252 0.25245523 0.025725842 67.010246277 0.24471092 0.024430275 67.17815399 0.23238993
		 0.022742748 67.30699921 0.21633387 0.020776272 67.38798523 0.19763565 0.018667221 67.4156189 0.17757034
		 0.079267979 66.60488129 0.2439456 0.078447342 66.81471252 0.24141932 0.076040268 67.010246277 0.23401308
		 0.072212219 67.17815399 0.22223139 0.067223072 67.30699921 0.20687675 0.061412811 67.38798523 0.18899632
		 0.055178165 67.4156189 0.16980886 0.12825537 66.60488129 0.2221365 0.12692738 66.81471252 0.21983624
		 0.12303352 67.010246277 0.21309185 0.11683941 67.17815399 0.20236301 0.10876751 67.30699921 0.18838167
		 0.099367142 67.38798523 0.17209959 0.089279652 67.4156189 0.15462637 0.17163849 66.60488129 0.19061708
		 0.16986132 66.81471252 0.18864298 0.16465044 67.010246277 0.18285656 0.1563611 67.17815399 0.17364979
		 0.14555788 67.30699921 0.16165161 0.13297796 67.38798523 0.14768028 0.11947775 67.4156189 0.13268614
		 0.20751905 66.60488129 0.15076828 0.20536995 66.81471252 0.14920712 0.19906998 67.010246277 0.14462948
		 0.18904781 67.17815399 0.1373477 0.17598629 67.30699921 0.12785912 0.16077566 67.38798523 0.11680746
		 0.14445305 67.4156189 0.10494804 0.23433018 66.60488129 0.10432911 0.23190355 66.81471252 0.10324955
		 0.22478914 67.010246277 0.10008097 0.21347189 67.17815399 0.095042229 0.19872332 67.30699921 0.088475704
		 0.18154812 67.38798523 0.08082962 0.16311646 67.4156189 0.072622299 0.25090075 66.60488129 0.053332806
		 0.24830246 66.81471252 0.052780628 0.24068546 67.010246277 0.051161289 0.2285676 67.17815399 0.048585415
		 0.21277571 67.30699921 0.045229435 0.19438553 67.38798523 0.041320324 0.17465067 67.4156189 0.037125587
		 0.25650549 66.60488129 1.9073486e-06 0.25384903 66.81471252 1.9073486e-06 0.24606133 67.010246277 1.9073486e-06
		 0.23367357 67.17815399 1.9073486e-06 0.21752882 67.30699921 1.9073486e-06 0.19872808 67.38798523 1.9073486e-06
		 0.17855215 67.4156189 1.9073486e-06;
	setAttr -s 2160 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 0 1 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 30 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 84 0 84 85 0 85 86 0
		 86 87 0 87 88 0 88 89 0 89 60 0 0 30 1 1 31 1 2 32 1 3 33 1 4 34 1 5 35 1 6 36 1
		 7 37 1 8 38 1 9 39 1 10 40 1 11 41 1 12 42 1 13 43 1 14 44 1 15 45 1 16 46 1 17 47 1
		 18 48 1 19 49 1 20 50 1 21 51 1 22 52 1 23 53 1 24 54 1 25 55 1 26 56 1 27 57 1 28 58 1
		 29 59 1 90 0 1 90 1 1 90 2 1 90 3 1 90 4 1 90 5 1 90 6 1 90 7 1 90 8 1 90 9 1 90 10 1
		 90 11 1 90 12 1 90 13 1 90 14 1 90 15 1 90 16 1 90 17 1 90 18 1 90 19 1 90 20 1 90 21 1
		 90 22 1 90 23 1 90 24 1 90 25 1 90 26 1 90 27 1 90 28 1 90 29 1 60 91 1 61 91 1 62 91 1
		 63 91 1 64 91 1 65 91 1 66 91 1 67 91 1 68 91 1 69 91 1 70 91 1 71 91 1 72 91 1 73 91 1
		 74 91 1 75 91 1;
	setAttr ".ed[166:331]" 76 91 1 77 91 1 78 91 1 79 91 1 80 91 1 81 91 1 82 91 1
		 83 91 1 84 91 1 85 91 1 86 91 1 87 91 1 88 91 1 89 91 1 267 266 1 266 92 1 268 267 1
		 269 268 1 270 269 1 97 271 1 271 270 1 97 96 1 103 97 1 96 95 1 95 94 1 94 93 1 93 92 1
		 92 98 1 103 102 1 109 103 1 102 101 1 101 100 1 100 99 1 99 98 1 98 104 1 109 108 1
		 115 109 1 108 107 1 107 106 1 106 105 1 105 104 1 104 110 1 115 114 1 121 115 1 114 113 1
		 113 112 1 112 111 1 111 110 1 110 116 1 121 120 1 127 121 1 120 119 1 119 118 1 118 117 1
		 117 116 1 116 122 1 127 126 1 133 127 1 126 125 1 125 124 1 124 123 1 123 122 1 122 128 1
		 133 132 1 139 133 1 132 131 1 131 130 1 130 129 1 129 128 1 128 134 1 139 138 1 145 139 1
		 138 137 1 137 136 1 136 135 1 135 134 1 134 140 1 145 144 1 151 145 1 144 143 1 143 142 1
		 142 141 1 141 140 1 140 146 1 151 150 1 157 151 1 150 149 1 149 148 1 148 147 1 147 146 1
		 146 152 1 157 156 1 163 157 1 156 155 1 155 154 1 154 153 1 153 152 1 152 158 1 163 162 1
		 169 163 1 162 161 1 161 160 1 160 159 1 159 158 1 158 164 1 169 168 1 175 169 1 168 167 1
		 167 166 1 166 165 1 165 164 1 164 170 1 175 174 1 181 175 1 174 173 1 173 172 1 172 171 1
		 171 170 1 170 176 1 181 180 1 187 181 1 180 179 1 179 178 1 178 177 1 177 176 1 176 182 1
		 187 186 1 193 187 1 186 185 1 185 184 1 184 183 1 183 182 1 182 188 1 193 192 1 199 193 1
		 192 191 1 191 190 1 190 189 1 189 188 1 188 194 1 199 198 1 205 199 1 198 197 1 197 196 1
		 196 195 1 195 194 1 194 200 1 205 204 1 211 205 1 204 203 1 203 202 1 202 201 1 201 200 1
		 200 206 1 211 210 1 217 211 1 210 209 1 209 208 1 208 207 1 207 206 1 206 212 1 217 216 1
		 223 217 1 216 215 1 215 214 1 214 213 1;
	setAttr ".ed[332:497]" 213 212 1 212 218 1 223 222 1 229 223 1 222 221 1 221 220 1
		 220 219 1 219 218 1 218 224 1 229 228 1 235 229 1 228 227 1 227 226 1 226 225 1 225 224 1
		 224 230 1 235 234 1 241 235 1 234 233 1 233 232 1 232 231 1 231 230 1 230 236 1 241 240 1
		 247 241 1 240 239 1 239 238 1 238 237 1 237 236 1 236 242 1 247 246 1 253 247 1 246 245 1
		 245 244 1 244 243 1 243 242 1 242 248 1 253 252 1 259 253 1 252 251 1 251 250 1 250 249 1
		 249 248 1 248 254 1 259 258 1 265 259 1 258 257 1 257 256 1 256 255 1 255 254 1 254 260 1
		 265 264 1 271 265 1 264 263 1 263 262 1 262 261 1 261 260 1 260 266 1 31 98 1 92 30 1
		 32 104 1 33 110 1 34 116 1 35 122 1 36 128 1 37 134 1 38 140 1 39 146 1 40 152 1
		 41 158 1 42 164 1 43 170 1 44 176 1 45 182 1 46 188 1 47 194 1 48 200 1 49 206 1
		 50 212 1 51 218 1 52 224 1 53 230 1 54 236 1 55 242 1 56 248 1 57 254 1 58 260 1
		 59 266 1 103 61 1 60 97 1 109 62 1 115 63 1 121 64 1 127 65 1 133 66 1 139 67 1 145 68 1
		 151 69 1 157 70 1 163 71 1 169 72 1 175 73 1 181 74 1 187 75 1 193 76 1 199 77 1
		 205 78 1 211 79 1 217 80 1 223 81 1 229 82 1 235 83 1 241 84 1 247 85 1 253 86 1
		 259 87 1 265 88 1 271 89 1 96 270 1 95 269 1 94 268 1 93 267 1 96 102 1 95 101 1
		 94 100 1 93 99 1 102 108 1 101 107 1 100 106 1 99 105 1 108 114 1 107 113 1 106 112 1
		 105 111 1 114 120 1 113 119 1 112 118 1 111 117 1 120 126 1 119 125 1 118 124 1 117 123 1
		 126 132 1 125 131 1 124 130 1 123 129 1 132 138 1 131 137 1 130 136 1 129 135 1 138 144 1
		 137 143 1 136 142 1 135 141 1 144 150 1 143 149 1 142 148 1 141 147 1 150 156 1 149 155 1
		 148 154 1 147 153 1 156 162 1 155 161 1 154 160 1 153 159 1;
	setAttr ".ed[498:663]" 162 168 1 161 167 1 160 166 1 159 165 1 168 174 1 167 173 1
		 166 172 1 165 171 1 174 180 1 173 179 1 172 178 1 171 177 1 180 186 1 179 185 1 178 184 1
		 177 183 1 186 192 1 185 191 1 184 190 1 183 189 1 192 198 1 191 197 1 190 196 1 189 195 1
		 198 204 1 197 203 1 196 202 1 195 201 1 204 210 1 203 209 1 202 208 1 201 207 1 210 216 1
		 209 215 1 208 214 1 207 213 1 216 222 1 215 221 1 214 220 1 213 219 1 222 228 1 221 227 1
		 220 226 1 219 225 1 228 234 1 227 233 1 226 232 1 225 231 1 234 240 1 233 239 1 232 238 1
		 231 237 1 240 246 1 239 245 1 238 244 1 237 243 1 246 252 1 245 251 1 244 250 1 243 249 1
		 252 258 1 251 257 1 250 256 1 249 255 1 258 264 1 257 263 1 256 262 1 255 261 1 264 270 1
		 263 269 1 262 268 1 261 267 1 60 272 1 61 273 1 272 273 0 62 274 1 273 274 0 63 275 1
		 274 275 0 64 276 1 275 276 0 65 277 1 276 277 0 66 278 1 277 278 0 67 279 1 278 279 0
		 68 280 1 279 280 0 69 281 1 280 281 0 70 282 1 281 282 0 71 283 1 282 283 0 72 284 1
		 283 284 0 73 285 1 284 285 0 74 286 1 285 286 0 75 287 1 286 287 0 76 288 1 287 288 0
		 77 289 1 288 289 0 78 290 1 289 290 0 79 291 1 290 291 0 80 292 1 291 292 0 81 293 1
		 292 293 0 82 294 1 293 294 0 83 295 1 294 295 0 84 296 1 295 296 0 85 297 1 296 297 0
		 86 298 1 297 298 0 87 299 1 298 299 0 88 300 1 299 300 0 89 301 1 300 301 0 301 272 0
		 302 303 0 303 304 0 304 305 0 305 306 0 306 307 0 307 308 0 308 309 0 309 310 0 310 311 0
		 311 312 0 312 313 0 313 314 0 314 315 0 315 316 0 316 317 0 317 318 0 318 319 0 319 320 0
		 320 321 0 321 322 0 322 323 0 323 324 0 324 325 0 325 326 0 326 327 0 327 328 0 328 329 0
		 329 330 0 330 331 0 331 302 0 302 332 1 303 333 1 332 333 0 304 334 1;
	setAttr ".ed[664:829]" 333 334 0 305 335 1 334 335 0 306 336 1 335 336 0 307 337 1
		 336 337 0 308 338 1 337 338 0 309 339 1 338 339 0 310 340 1 339 340 0 311 341 1 340 341 0
		 312 342 1 341 342 0 313 343 1 342 343 0 314 344 1 343 344 0 315 345 1 344 345 0 316 346 1
		 345 346 0 317 347 1 346 347 0 318 348 1 347 348 0 319 349 1 348 349 0 320 350 1 349 350 0
		 321 351 1 350 351 0 322 352 1 351 352 0 323 353 1 352 353 0 324 354 1 353 354 0 325 355 1
		 354 355 0 326 356 1 355 356 0 327 357 1 356 357 0 328 358 1 357 358 0 329 359 1 358 359 0
		 330 360 1 359 360 0 331 361 1 360 361 0 361 332 0 509 508 1 508 363 1 510 509 1 511 510 1
		 367 512 1 512 511 1 367 366 1 372 367 1 366 365 1 365 364 1 364 363 1 363 368 1 372 371 1
		 377 372 1 371 370 1 370 369 1 369 368 1 368 373 1 377 376 1 382 377 1 376 375 1 375 374 1
		 374 373 1 373 378 1 382 381 1 387 382 1 381 380 1 380 379 1 379 378 1 378 383 1 387 386 1
		 392 387 1 386 385 1 385 384 1 384 383 1 383 388 1 392 391 1 397 392 1 391 390 1 390 389 1
		 389 388 1 388 393 1 397 396 1 402 397 1 396 395 1 395 394 1 394 393 1 393 398 1 402 401 1
		 407 402 1 401 400 1 400 399 1 399 398 1 398 403 1 407 406 1 412 407 1 406 405 1 405 404 1
		 404 403 1 403 408 1 412 411 1 417 412 1 411 410 1 410 409 1 409 408 1 408 413 1 417 416 1
		 422 417 1 416 415 1 415 414 1 414 413 1 413 418 1 422 421 1 427 422 1 421 420 1 420 419 1
		 419 418 1 418 423 1 427 426 1 432 427 1 426 425 1 425 424 1 424 423 1 423 428 1 432 431 1
		 437 432 1 431 430 1 430 429 1 429 428 1 428 433 1 437 436 1 442 437 1 436 435 1 435 434 1
		 434 433 1 433 438 1 442 441 1 447 442 1 441 440 1 440 439 1 439 438 1 438 443 1 447 446 1
		 452 447 1 446 445 1 445 444 1 444 443 1 443 448 1 452 451 1 457 452 1;
	setAttr ".ed[830:995]" 451 450 1 450 449 1 449 448 1 448 453 1 457 456 1 462 457 1
		 456 455 1 455 454 1 454 453 1 453 458 1 462 461 1 467 462 1 461 460 1 460 459 1 459 458 1
		 458 463 1 467 466 1 472 467 1 466 465 1 465 464 1 464 463 1 463 468 1 472 471 1 477 472 1
		 471 470 1 470 469 1 469 468 1 468 473 1 477 476 1 482 477 1 476 475 1 475 474 1 474 473 1
		 473 478 1 482 481 1 487 482 1 481 480 1 480 479 1 479 478 1 478 483 1 487 486 1 492 487 1
		 486 485 1 485 484 1 484 483 1 483 488 1 492 491 1 497 492 1 491 490 1 490 489 1 489 488 1
		 488 493 1 497 496 1 502 497 1 496 495 1 495 494 1 494 493 1 493 498 1 502 501 1 507 502 1
		 501 500 1 500 499 1 499 498 1 498 503 1 507 506 1 512 507 1 506 505 1 505 504 1 504 503 1
		 503 508 1 629 512 1 630 629 1 631 630 1 516 632 1 632 631 1 516 515 1 520 516 1 515 514 1
		 514 513 1 513 367 1 520 519 1 524 520 1 519 518 1 518 517 1 517 372 1 524 523 1 528 524 1
		 523 522 1 522 521 1 521 377 1 528 527 1 532 528 1 527 526 1 526 525 1 525 382 1 532 531 1
		 536 532 1 531 530 1 530 529 1 529 387 1 536 535 1 540 536 1 535 534 1 534 533 1 533 392 1
		 540 539 1 544 540 1 539 538 1 538 537 1 537 397 1 544 543 1 548 544 1 543 542 1 542 541 1
		 541 402 1 548 547 1 552 548 1 547 546 1 546 545 1 545 407 1 552 551 1 556 552 1 551 550 1
		 550 549 1 549 412 1 556 555 1 560 556 1 555 554 1 554 553 1 553 417 1 560 559 1 564 560 1
		 559 558 1 558 557 1 557 422 1 564 563 1 568 564 1 563 562 1 562 561 1 561 427 1 568 567 1
		 572 568 1 567 566 1 566 565 1 565 432 1 572 571 1 576 572 1 571 570 1 570 569 1 569 437 1
		 576 575 1 580 576 1 575 574 1 574 573 1 573 442 1 580 579 1 584 580 1 579 578 1 578 577 1
		 577 447 1 584 583 1 588 584 1 583 582 1 582 581 1 581 452 1 588 587 1;
	setAttr ".ed[996:1161]" 592 588 1 587 586 1 586 585 1 585 457 1 592 591 1 596 592 1
		 591 590 1 590 589 1 589 462 1 596 595 1 600 596 1 595 594 1 594 593 1 593 467 1 600 599 1
		 604 600 1 599 598 1 598 597 1 597 472 1 604 603 1 608 604 1 603 602 1 602 601 1 601 477 1
		 608 607 1 612 608 1 607 606 1 606 605 1 605 482 1 612 611 1 616 612 1 611 610 1 610 609 1
		 609 487 1 616 615 1 620 616 1 615 614 1 614 613 1 613 492 1 620 619 1 624 620 1 619 618 1
		 618 617 1 617 497 1 624 623 1 628 624 1 623 622 1 622 621 1 621 502 1 628 627 1 632 628 1
		 627 626 1 626 625 1 625 507 1 273 368 1 363 272 1 274 373 1 275 378 1 276 383 1 277 388 1
		 278 393 1 279 398 1 280 403 1 281 408 1 282 413 1 283 418 1 284 423 1 285 428 1 286 433 1
		 287 438 1 288 443 1 289 448 1 290 453 1 291 458 1 292 463 1 293 468 1 294 473 1 295 478 1
		 296 483 1 297 488 1 298 493 1 299 498 1 300 503 1 301 508 1 520 303 1 302 516 1 524 304 1
		 528 305 1 532 306 1 536 307 1 540 308 1 544 309 1 548 310 1 552 311 1 556 312 1 560 313 1
		 564 314 1 568 315 1 572 316 1 576 317 1 580 318 1 584 319 1 588 320 1 592 321 1 596 322 1
		 600 323 1 604 324 1 608 325 1 612 326 1 616 327 1 620 328 1 624 329 1 628 330 1 632 331 1
		 366 511 1 365 510 1 364 509 1 366 371 1 365 370 1 364 369 1 371 376 1 370 375 1 369 374 1
		 376 381 1 375 380 1 374 379 1 381 386 1 380 385 1 379 384 1 386 391 1 385 390 1 384 389 1
		 391 396 1 390 395 1 389 394 1 396 401 1 395 400 1 394 399 1 401 406 1 400 405 1 399 404 1
		 406 411 1 405 410 1 404 409 1 411 416 1 410 415 1 409 414 1 416 421 1 415 420 1 414 419 1
		 421 426 1 420 425 1 419 424 1 426 431 1 425 430 1 424 429 1 431 436 1 430 435 1 429 434 1
		 436 441 1 435 440 1 434 439 1 441 446 1 440 445 1 439 444 1 446 451 1;
	setAttr ".ed[1162:1327]" 445 450 1 444 449 1 451 456 1 450 455 1 449 454 1 456 461 1
		 455 460 1 454 459 1 461 466 1 460 465 1 459 464 1 466 471 1 465 470 1 464 469 1 471 476 1
		 470 475 1 469 474 1 476 481 1 475 480 1 474 479 1 481 486 1 480 485 1 479 484 1 486 491 1
		 485 490 1 484 489 1 491 496 1 490 495 1 489 494 1 496 501 1 495 500 1 494 499 1 501 506 1
		 500 505 1 499 504 1 506 511 1 505 510 1 504 509 1 515 631 1 514 630 1 513 629 1 515 519 1
		 514 518 1 513 517 1 519 523 1 518 522 1 517 521 1 523 527 1 522 526 1 521 525 1 527 531 1
		 526 530 1 525 529 1 531 535 1 530 534 1 529 533 1 535 539 1 534 538 1 533 537 1 539 543 1
		 538 542 1 537 541 1 543 547 1 542 546 1 541 545 1 547 551 1 546 550 1 545 549 1 551 555 1
		 550 554 1 549 553 1 555 559 1 554 558 1 553 557 1 559 563 1 558 562 1 557 561 1 563 567 1
		 562 566 1 561 565 1 567 571 1 566 570 1 565 569 1 571 575 1 570 574 1 569 573 1 575 579 1
		 574 578 1 573 577 1 579 583 1 578 582 1 577 581 1 583 587 1 582 586 1 581 585 1 587 591 1
		 586 590 1 585 589 1 591 595 1 590 594 1 589 593 1 595 599 1 594 598 1 593 597 1 599 603 1
		 598 602 1 597 601 1 603 607 1 602 606 1 601 605 1 607 611 1 606 610 1 605 609 1 611 615 1
		 610 614 1 609 613 1 615 619 1 614 618 1 613 617 1 619 623 1 618 622 1 617 621 1 623 627 1
		 622 626 1 621 625 1 627 631 1 626 630 1 625 629 1 837 836 1 836 633 1 838 837 1 839 838 1
		 840 839 1 841 840 1 639 842 1 842 841 1 639 638 1 646 639 1 638 637 1 637 636 1 636 635 1
		 635 634 1 634 633 1 633 640 1 646 645 1 653 646 1 645 644 1 644 643 1 643 642 1 642 641 1
		 641 640 1 640 647 1 653 652 1 660 653 1 652 651 1 651 650 1 650 649 1 649 648 1 648 647 1
		 647 654 1 660 659 1 667 660 1 659 658 1 658 657 1 657 656 1 656 655 1;
	setAttr ".ed[1328:1493]" 655 654 1 654 661 1 667 666 1 674 667 1 666 665 1 665 664 1
		 664 663 1 663 662 1 662 661 1 661 668 1 674 673 1 681 674 1 673 672 1 672 671 1 671 670 1
		 670 669 1 669 668 1 668 675 1 681 680 1 688 681 1 680 679 1 679 678 1 678 677 1 677 676 1
		 676 675 1 675 682 1 688 687 1 695 688 1 687 686 1 686 685 1 685 684 1 684 683 1 683 682 1
		 682 689 1 695 694 1 702 695 1 694 693 1 693 692 1 692 691 1 691 690 1 690 689 1 689 696 1
		 702 701 1 709 702 1 701 700 1 700 699 1 699 698 1 698 697 1 697 696 1 696 703 1 709 708 1
		 716 709 1 708 707 1 707 706 1 706 705 1 705 704 1 704 703 1 703 710 1 716 715 1 723 716 1
		 715 714 1 714 713 1 713 712 1 712 711 1 711 710 1 710 717 1 723 722 1 730 723 1 722 721 1
		 721 720 1 720 719 1 719 718 1 718 717 1 717 724 1 730 729 1 737 730 1 729 728 1 728 727 1
		 727 726 1 726 725 1 725 724 1 724 731 1 737 736 1 744 737 1 736 735 1 735 734 1 734 733 1
		 733 732 1 732 731 1 731 738 1 744 743 1 751 744 1 743 742 1 742 741 1 741 740 1 740 739 1
		 739 738 1 738 745 1 751 750 1 758 751 1 750 749 1 749 748 1 748 747 1 747 746 1 746 745 1
		 745 752 1 758 757 1 765 758 1 757 756 1 756 755 1 755 754 1 754 753 1 753 752 1 752 759 1
		 765 764 1 772 765 1 764 763 1 763 762 1 762 761 1 761 760 1 760 759 1 759 766 1 772 771 1
		 779 772 1 771 770 1 770 769 1 769 768 1 768 767 1 767 766 1 766 773 1 779 778 1 786 779 1
		 778 777 1 777 776 1 776 775 1 775 774 1 774 773 1 773 780 1 786 785 1 793 786 1 785 784 1
		 784 783 1 783 782 1 782 781 1 781 780 1 780 787 1 793 792 1 800 793 1 792 791 1 791 790 1
		 790 789 1 789 788 1 788 787 1 787 794 1 800 799 1 807 800 1 799 798 1 798 797 1 797 796 1
		 796 795 1 795 794 1 794 801 1 807 806 1 814 807 1 806 805 1 805 804 1;
	setAttr ".ed[1494:1659]" 804 803 1 803 802 1 802 801 1 801 808 1 814 813 1 821 814 1
		 813 812 1 812 811 1 811 810 1 810 809 1 809 808 1 808 815 1 821 820 1 828 821 1 820 819 1
		 819 818 1 818 817 1 817 816 1 816 815 1 815 822 1 828 827 1 835 828 1 827 826 1 826 825 1
		 825 824 1 824 823 1 823 822 1 822 829 1 835 834 1 842 835 1 834 833 1 833 832 1 832 831 1
		 831 830 1 830 829 1 829 836 1 1047 1046 1 1046 843 1 1048 1047 1 1049 1048 1 1050 1049 1
		 1051 1050 1 849 1052 1 1052 1051 1 849 848 1 856 849 1 848 847 1 847 846 1 846 845 1
		 845 844 1 844 843 1 843 850 1 856 855 1 863 856 1 855 854 1 854 853 1 853 852 1 852 851 1
		 851 850 1 850 857 1 863 862 1 870 863 1 862 861 1 861 860 1 860 859 1 859 858 1 858 857 1
		 857 864 1 870 869 1 877 870 1 869 868 1 868 867 1 867 866 1 866 865 1 865 864 1 864 871 1
		 877 876 1 884 877 1 876 875 1 875 874 1 874 873 1 873 872 1 872 871 1 871 878 1 884 883 1
		 891 884 1 883 882 1 882 881 1 881 880 1 880 879 1 879 878 1 878 885 1 891 890 1 898 891 1
		 890 889 1 889 888 1 888 887 1 887 886 1 886 885 1 885 892 1 898 897 1 905 898 1 897 896 1
		 896 895 1 895 894 1 894 893 1 893 892 1 892 899 1 905 904 1 912 905 1 904 903 1 903 902 1
		 902 901 1 901 900 1 900 899 1 899 906 1 912 911 1 919 912 1 911 910 1 910 909 1 909 908 1
		 908 907 1 907 906 1 906 913 1 919 918 1 926 919 1 918 917 1 917 916 1 916 915 1 915 914 1
		 914 913 1 913 920 1 926 925 1 933 926 1 925 924 1 924 923 1 923 922 1 922 921 1 921 920 1
		 920 927 1 933 932 1 940 933 1 932 931 1 931 930 1 930 929 1 929 928 1 928 927 1 927 934 1
		 940 939 1 947 940 1 939 938 1 938 937 1 937 936 1 936 935 1 935 934 1 934 941 1 947 946 1
		 954 947 1 946 945 1 945 944 1 944 943 1 943 942 1 942 941 1 941 948 1 954 953 1 961 954 1;
	setAttr ".ed[1660:1825]" 953 952 1 952 951 1 951 950 1 950 949 1 949 948 1 948 955 1
		 961 960 1 968 961 1 960 959 1 959 958 1 958 957 1 957 956 1 956 955 1 955 962 1 968 967 1
		 975 968 1 967 966 1 966 965 1 965 964 1 964 963 1 963 962 1 962 969 1 975 974 1 982 975 1
		 974 973 1 973 972 1 972 971 1 971 970 1 970 969 1 969 976 1 982 981 1 989 982 1 981 980 1
		 980 979 1 979 978 1 978 977 1 977 976 1 976 983 1 989 988 1 996 989 1 988 987 1 987 986 1
		 986 985 1 985 984 1 984 983 1 983 990 1 996 995 1 1003 996 1 995 994 1 994 993 1
		 993 992 1 992 991 1 991 990 1 990 997 1 1003 1002 1 1010 1003 1 1002 1001 1 1001 1000 1
		 1000 999 1 999 998 1 998 997 1 997 1004 1 1010 1009 1 1017 1010 1 1009 1008 1 1008 1007 1
		 1007 1006 1 1006 1005 1 1005 1004 1 1004 1011 1 1017 1016 1 1024 1017 1 1016 1015 1
		 1015 1014 1 1014 1013 1 1013 1012 1 1012 1011 1 1011 1018 1 1024 1023 1 1031 1024 1
		 1023 1022 1 1022 1021 1 1021 1020 1 1020 1019 1 1019 1018 1 1018 1025 1 1031 1030 1
		 1038 1031 1 1030 1029 1 1029 1028 1 1028 1027 1 1027 1026 1 1026 1025 1 1025 1032 1
		 1038 1037 1 1045 1038 1 1037 1036 1 1036 1035 1 1035 1034 1 1034 1033 1 1033 1032 1
		 1032 1039 1 1045 1044 1 1052 1045 1 1044 1043 1 1043 1042 1 1042 1041 1 1041 1040 1
		 1040 1039 1 1039 1046 1 333 640 1 633 332 1 334 647 1 335 654 1 336 661 1 337 668 1
		 338 675 1 339 682 1 340 689 1 341 696 1 342 703 1 343 710 1 344 717 1 345 724 1 346 731 1
		 347 738 1 348 745 1 349 752 1 350 759 1 351 766 1 352 773 1 353 780 1 354 787 1 355 794 1
		 356 801 1 357 808 1 358 815 1 359 822 1 360 829 1 361 836 1 646 850 1 843 639 1 653 857 1
		 660 864 1 667 871 1 674 878 1 681 885 1 688 892 1 695 899 1 702 906 1 709 913 1 716 920 1
		 723 927 1 730 934 1 737 941 1 744 948 1 751 955 1 758 962 1 765 969 1 772 976 1 779 983 1
		 786 990 1 793 997 1 800 1004 1 807 1011 1 814 1018 1;
	setAttr ".ed[1826:1991]" 821 1025 1 828 1032 1 835 1039 1 842 1046 1 856 362 1
		 362 849 1 863 362 1 870 362 1 877 362 1 884 362 1 891 362 1 898 362 1 905 362 1 912 362 1
		 919 362 1 926 362 1 933 362 1 940 362 1 947 362 1 954 362 1 961 362 1 968 362 1 975 362 1
		 982 362 1 989 362 1 996 362 1 1003 362 1 1010 362 1 1017 362 1 1024 362 1 1031 362 1
		 1038 362 1 1045 362 1 1052 362 1 638 841 1 637 840 1 636 839 1 635 838 1 634 837 1
		 638 645 1 637 644 1 636 643 1 635 642 1 634 641 1 645 652 1 644 651 1 643 650 1 642 649 1
		 641 648 1 652 659 1 651 658 1 650 657 1 649 656 1 648 655 1 659 666 1 658 665 1 657 664 1
		 656 663 1 655 662 1 666 673 1 665 672 1 664 671 1 663 670 1 662 669 1 673 680 1 672 679 1
		 671 678 1 670 677 1 669 676 1 680 687 1 679 686 1 678 685 1 677 684 1 676 683 1 687 694 1
		 686 693 1 685 692 1 684 691 1 683 690 1 694 701 1 693 700 1 692 699 1 691 698 1 690 697 1
		 701 708 1 700 707 1 699 706 1 698 705 1 697 704 1 708 715 1 707 714 1 706 713 1 705 712 1
		 704 711 1 715 722 1 714 721 1 713 720 1 712 719 1 711 718 1 722 729 1 721 728 1 720 727 1
		 719 726 1 718 725 1 729 736 1 728 735 1 727 734 1 726 733 1 725 732 1 736 743 1 735 742 1
		 734 741 1 733 740 1 732 739 1 743 750 1 742 749 1 741 748 1 740 747 1 739 746 1 750 757 1
		 749 756 1 748 755 1 747 754 1 746 753 1 757 764 1 756 763 1 755 762 1 754 761 1 753 760 1
		 764 771 1 763 770 1 762 769 1 761 768 1 760 767 1 771 778 1 770 777 1 769 776 1 768 775 1
		 767 774 1 778 785 1 777 784 1 776 783 1 775 782 1 774 781 1 785 792 1 784 791 1 783 790 1
		 782 789 1 781 788 1 792 799 1 791 798 1 790 797 1 789 796 1 788 795 1 799 806 1 798 805 1
		 797 804 1 796 803 1 795 802 1 806 813 1 805 812 1 804 811 1 803 810 1 802 809 1 813 820 1
		 812 819 1;
	setAttr ".ed[1992:2157]" 811 818 1 810 817 1 809 816 1 820 827 1 819 826 1 818 825 1
		 817 824 1 816 823 1 827 834 1 826 833 1 825 832 1 824 831 1 823 830 1 834 841 1 833 840 1
		 832 839 1 831 838 1 830 837 1 848 1051 1 847 1050 1 846 1049 1 845 1048 1 844 1047 1
		 848 855 1 847 854 1 846 853 1 845 852 1 844 851 1 855 862 1 854 861 1 853 860 1 852 859 1
		 851 858 1 862 869 1 861 868 1 860 867 1 859 866 1 858 865 1 869 876 1 868 875 1 867 874 1
		 866 873 1 865 872 1 876 883 1 875 882 1 874 881 1 873 880 1 872 879 1 883 890 1 882 889 1
		 881 888 1 880 887 1 879 886 1 890 897 1 889 896 1 888 895 1 887 894 1 886 893 1 897 904 1
		 896 903 1 895 902 1 894 901 1 893 900 1 904 911 1 903 910 1 902 909 1 901 908 1 900 907 1
		 911 918 1 910 917 1 909 916 1 908 915 1 907 914 1 918 925 1 917 924 1 916 923 1 915 922 1
		 914 921 1 925 932 1 924 931 1 923 930 1 922 929 1 921 928 1 932 939 1 931 938 1 930 937 1
		 929 936 1 928 935 1 939 946 1 938 945 1 937 944 1 936 943 1 935 942 1 946 953 1 945 952 1
		 944 951 1 943 950 1 942 949 1 953 960 1 952 959 1 951 958 1 950 957 1 949 956 1 960 967 1
		 959 966 1 958 965 1 957 964 1 956 963 1 967 974 1 966 973 1 965 972 1 964 971 1 963 970 1
		 974 981 1 973 980 1 972 979 1 971 978 1 970 977 1 981 988 1 980 987 1 979 986 1 978 985 1
		 977 984 1 988 995 1 987 994 1 986 993 1 985 992 1 984 991 1 995 1002 1 994 1001 1
		 993 1000 1 992 999 1 991 998 1 1002 1009 1 1001 1008 1 1000 1007 1 999 1006 1 998 1005 1
		 1009 1016 1 1008 1015 1 1007 1014 1 1006 1013 1 1005 1012 1 1016 1023 1 1015 1022 1
		 1014 1021 1 1013 1020 1 1012 1019 1 1023 1030 1 1022 1029 1 1021 1028 1 1020 1027 1
		 1019 1026 1 1030 1037 1 1029 1036 1 1028 1035 1 1027 1034 1 1026 1033 1 1037 1044 1
		 1036 1043 1 1035 1042 1 1034 1041 1 1033 1040 1 1044 1051 1 1043 1050 1 1042 1049 1;
	setAttr ".ed[2158:2159]" 1041 1048 1 1040 1047 1;
	setAttr -s 1110 -ch 4350 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 91 -31 -91
		mu 0 4 0 1 31 30
		f 4 1 92 -32 -92
		mu 0 4 1 2 32 31
		f 4 2 93 -33 -93
		mu 0 4 2 3 33 32
		f 4 3 94 -34 -94
		mu 0 4 3 4 34 33
		f 4 4 95 -35 -95
		mu 0 4 4 5 35 34
		f 4 5 96 -36 -96
		mu 0 4 5 6 36 35
		f 4 6 97 -37 -97
		mu 0 4 6 7 37 36
		f 4 7 98 -38 -98
		mu 0 4 7 8 38 37
		f 4 8 99 -39 -99
		mu 0 4 8 9 39 38
		f 4 9 100 -40 -100
		mu 0 4 9 10 40 39
		f 4 10 101 -41 -101
		mu 0 4 10 11 41 40
		f 4 11 102 -42 -102
		mu 0 4 11 12 42 41
		f 4 12 103 -43 -103
		mu 0 4 12 13 43 42
		f 4 13 104 -44 -104
		mu 0 4 13 14 44 43
		f 4 14 105 -45 -105
		mu 0 4 14 15 45 44
		f 4 15 106 -46 -106
		mu 0 4 15 16 46 45
		f 4 16 107 -47 -107
		mu 0 4 16 17 47 46
		f 4 17 108 -48 -108
		mu 0 4 17 18 48 47
		f 4 18 109 -49 -109
		mu 0 4 18 19 49 48
		f 4 19 110 -50 -110
		mu 0 4 19 20 50 49
		f 4 20 111 -51 -111
		mu 0 4 20 21 51 50
		f 4 21 112 -52 -112
		mu 0 4 21 22 52 51
		f 4 22 113 -53 -113
		mu 0 4 22 23 53 52
		f 4 23 114 -54 -114
		mu 0 4 23 24 54 53
		f 4 24 115 -55 -115
		mu 0 4 24 25 55 54
		f 4 25 116 -56 -116
		mu 0 4 25 26 56 55
		f 4 26 117 -57 -117
		mu 0 4 26 27 57 56
		f 4 27 118 -58 -118
		mu 0 4 27 28 58 57
		f 4 28 119 -59 -119
		mu 0 4 28 29 59 58
		f 4 29 90 -60 -120
		mu 0 4 29 0 30 59
		f 3 -1 -121 121
		mu 0 3 1 0 60
		f 3 -2 -122 122
		mu 0 3 2 1 60
		f 3 -3 -123 123
		mu 0 3 3 2 60
		f 3 -4 -124 124
		mu 0 3 4 3 60
		f 3 -5 -125 125
		mu 0 3 5 4 60
		f 3 -6 -126 126
		mu 0 3 6 5 60
		f 3 -7 -127 127
		mu 0 3 7 6 60
		f 3 -8 -128 128
		mu 0 3 8 7 60
		f 3 -9 -129 129
		mu 0 3 9 8 60
		f 3 -10 -130 130
		mu 0 3 10 9 60
		f 3 -11 -131 131
		mu 0 3 11 10 60
		f 3 -12 -132 132
		mu 0 3 12 11 60
		f 3 -13 -133 133
		mu 0 3 13 12 60
		f 3 -14 -134 134
		mu 0 3 14 13 60
		f 3 -15 -135 135
		mu 0 3 15 14 60
		f 3 -16 -136 136
		mu 0 3 16 15 60
		f 3 -17 -137 137
		mu 0 3 17 16 60
		f 3 -18 -138 138
		mu 0 3 18 17 60
		f 3 -19 -139 139
		mu 0 3 19 18 60
		f 3 -20 -140 140
		mu 0 3 20 19 60
		f 3 -21 -141 141
		mu 0 3 21 20 60
		f 3 -22 -142 142
		mu 0 3 22 21 60
		f 3 -23 -143 143
		mu 0 3 23 22 60
		f 3 -24 -144 144
		mu 0 3 24 23 60
		f 3 -25 -145 145
		mu 0 3 25 24 60
		f 3 -26 -146 146
		mu 0 3 26 25 60
		f 3 -27 -147 147
		mu 0 3 27 26 60
		f 3 -28 -148 148
		mu 0 3 28 27 60
		f 3 -29 -149 149
		mu 0 3 29 28 60
		f 3 -30 -150 120
		mu 0 3 0 29 60
		f 3 60 151 -151
		mu 0 3 124 126 61
		f 3 61 152 -152
		mu 0 3 126 128 61
		f 3 62 153 -153
		mu 0 3 128 130 61
		f 3 63 154 -154
		mu 0 3 130 132 61
		f 3 64 155 -155
		mu 0 3 132 134 61
		f 3 65 156 -156
		mu 0 3 134 136 61
		f 3 66 157 -157
		mu 0 3 136 138 61
		f 3 67 158 -158
		mu 0 3 138 140 61
		f 3 68 159 -159
		mu 0 3 140 142 61
		f 3 69 160 -160
		mu 0 3 142 144 61
		f 3 70 161 -161
		mu 0 3 144 146 61
		f 3 71 162 -162
		mu 0 3 146 148 61
		f 3 72 163 -163
		mu 0 3 148 150 61
		f 3 73 164 -164
		mu 0 3 150 152 61
		f 3 74 165 -165
		mu 0 3 152 154 61
		f 3 75 166 -166
		mu 0 3 154 156 61
		f 3 76 167 -167
		mu 0 3 156 158 61
		f 3 77 168 -168
		mu 0 3 158 160 61
		f 3 78 169 -169
		mu 0 3 160 162 61
		f 3 79 170 -170
		mu 0 3 162 164 61
		f 3 80 171 -171
		mu 0 3 164 166 61
		f 3 81 172 -172
		mu 0 3 166 168 61
		f 3 82 173 -173
		mu 0 3 168 170 61
		f 3 83 174 -174
		mu 0 3 170 172 61
		f 3 84 175 -175
		mu 0 3 172 174 61
		f 3 85 176 -176
		mu 0 3 174 176 61
		f 3 86 177 -177
		mu 0 3 176 178 61
		f 3 87 178 -178
		mu 0 3 178 180 61
		f 3 88 179 -179
		mu 0 3 180 182 61
		f 3 89 150 -180
		mu 0 3 182 124 61
		f 4 30 390 -194 391
		mu 0 4 62 63 66 64
		f 4 31 392 -201 -391
		mu 0 4 63 65 68 66
		f 4 32 393 -208 -393
		mu 0 4 65 67 70 68
		f 4 33 394 -215 -394
		mu 0 4 67 69 72 70
		f 4 34 395 -222 -395
		mu 0 4 69 71 74 72
		f 4 35 396 -229 -396
		mu 0 4 71 73 76 74
		f 4 36 397 -236 -397
		mu 0 4 73 75 78 76
		f 4 37 398 -243 -398
		mu 0 4 75 77 80 78
		f 4 38 399 -250 -399
		mu 0 4 77 79 82 80
		f 4 39 400 -257 -400
		mu 0 4 79 81 84 82
		f 4 40 401 -264 -401
		mu 0 4 81 83 86 84
		f 4 41 402 -271 -402
		mu 0 4 83 85 88 86
		f 4 42 403 -278 -403
		mu 0 4 85 87 90 88
		f 4 43 404 -285 -404
		mu 0 4 87 89 92 90
		f 4 44 405 -292 -405
		mu 0 4 89 91 94 92
		f 4 45 406 -299 -406
		mu 0 4 91 93 96 94
		f 4 46 407 -306 -407
		mu 0 4 93 95 98 96
		f 4 47 408 -313 -408
		mu 0 4 95 97 100 98
		f 4 48 409 -320 -409
		mu 0 4 97 99 102 100
		f 4 49 410 -327 -410
		mu 0 4 99 101 104 102
		f 4 50 411 -334 -411
		mu 0 4 101 103 106 104
		f 4 51 412 -341 -412
		mu 0 4 103 105 108 106
		f 4 52 413 -348 -413
		mu 0 4 105 107 110 108
		f 4 53 414 -355 -414
		mu 0 4 107 109 112 110
		f 4 54 415 -362 -415
		mu 0 4 109 111 114 112
		f 4 55 416 -369 -416
		mu 0 4 111 113 116 114
		f 4 56 417 -376 -417
		mu 0 4 113 115 118 116
		f 4 57 418 -383 -418
		mu 0 4 115 117 120 118
		f 4 58 419 -390 -419
		mu 0 4 117 119 122 120
		f 4 59 -392 -182 -420
		mu 0 4 119 121 183 122
		f 4 -189 420 -61 421
		mu 0 4 181 123 126 124
		f 4 -196 422 -62 -421
		mu 0 4 123 125 128 126
		f 4 -203 423 -63 -423
		mu 0 4 125 127 130 128
		f 4 -210 424 -64 -424
		mu 0 4 127 129 132 130
		f 4 -217 425 -65 -425
		mu 0 4 129 131 134 132
		f 4 -224 426 -66 -426
		mu 0 4 131 133 136 134
		f 4 -231 427 -67 -427
		mu 0 4 133 135 138 136
		f 4 -238 428 -68 -428
		mu 0 4 135 137 140 138
		f 4 -245 429 -69 -429
		mu 0 4 137 139 142 140
		f 4 -252 430 -70 -430
		mu 0 4 139 141 144 142
		f 4 -259 431 -71 -431
		mu 0 4 141 143 146 144
		f 4 -266 432 -72 -432
		mu 0 4 143 145 148 146
		f 4 -273 433 -73 -433
		mu 0 4 145 147 150 148
		f 4 -280 434 -74 -434
		mu 0 4 147 149 152 150
		f 4 -287 435 -75 -435
		mu 0 4 149 151 154 152
		f 4 -294 436 -76 -436
		mu 0 4 151 153 156 154
		f 4 -301 437 -77 -437
		mu 0 4 153 155 158 156
		f 4 -308 438 -78 -438
		mu 0 4 155 157 160 158
		f 4 -315 439 -79 -439
		mu 0 4 157 159 162 160
		f 4 -322 440 -80 -440
		mu 0 4 159 161 164 162
		f 4 -329 441 -81 -441
		mu 0 4 161 163 166 164
		f 4 -336 442 -82 -442
		mu 0 4 163 165 168 166
		f 4 -343 443 -83 -443
		mu 0 4 165 167 170 168
		f 4 -350 444 -84 -444
		mu 0 4 167 169 172 170
		f 4 -357 445 -85 -445
		mu 0 4 169 171 174 172
		f 4 -364 446 -86 -446
		mu 0 4 171 173 176 174
		f 4 -371 447 -87 -447
		mu 0 4 173 175 178 176
		f 4 -378 448 -88 -448
		mu 0 4 175 177 180 178
		f 4 -385 449 -89 -449
		mu 0 4 177 179 182 180
		f 4 -186 -422 -90 -450
		mu 0 4 179 181 124 182
		f 4 -188 185 186 -451
		mu 0 4 191 181 179 336
		f 4 -190 450 184 -452
		mu 0 4 189 191 336 334
		f 4 -191 451 183 -453
		mu 0 4 187 190 335 333
		f 4 -193 453 180 181
		mu 0 4 183 185 332 122
		f 4 -192 452 182 -454
		mu 0 4 185 187 333 332
		f 4 187 454 -195 188
		mu 0 4 181 191 196 123
		f 4 189 455 -197 -455
		mu 0 4 191 189 195 196
		f 4 190 456 -198 -456
		mu 0 4 188 186 193 194
		f 4 191 457 -199 -457
		mu 0 4 186 184 192 193
		f 4 192 193 -200 -458
		mu 0 4 184 64 66 192
		f 4 194 458 -202 195
		mu 0 4 123 196 201 125
		f 4 196 459 -204 -459
		mu 0 4 196 195 200 201
		f 4 197 460 -205 -460
		mu 0 4 194 193 198 199
		f 4 198 461 -206 -461
		mu 0 4 193 192 197 198
		f 4 199 200 -207 -462
		mu 0 4 192 66 68 197
		f 4 201 462 -209 202
		mu 0 4 125 201 206 127
		f 4 203 463 -211 -463
		mu 0 4 201 200 205 206
		f 4 204 464 -212 -464
		mu 0 4 199 198 203 204
		f 4 205 465 -213 -465
		mu 0 4 198 197 202 203
		f 4 206 207 -214 -466
		mu 0 4 197 68 70 202
		f 4 208 466 -216 209
		mu 0 4 127 206 211 129
		f 4 210 467 -218 -467
		mu 0 4 206 205 210 211
		f 4 211 468 -219 -468
		mu 0 4 204 203 208 209
		f 4 212 469 -220 -469
		mu 0 4 203 202 207 208
		f 4 213 214 -221 -470
		mu 0 4 202 70 72 207
		f 4 215 470 -223 216
		mu 0 4 129 211 216 131
		f 4 217 471 -225 -471
		mu 0 4 211 210 215 216
		f 4 218 472 -226 -472
		mu 0 4 209 208 213 214
		f 4 219 473 -227 -473
		mu 0 4 208 207 212 213
		f 4 220 221 -228 -474
		mu 0 4 207 72 74 212
		f 4 222 474 -230 223
		mu 0 4 131 216 221 133
		f 4 224 475 -232 -475
		mu 0 4 216 215 220 221
		f 4 225 476 -233 -476
		mu 0 4 214 213 218 219
		f 4 226 477 -234 -477
		mu 0 4 213 212 217 218
		f 4 227 228 -235 -478
		mu 0 4 212 74 76 217
		f 4 229 478 -237 230
		mu 0 4 133 221 226 135
		f 4 231 479 -239 -479
		mu 0 4 221 220 225 226
		f 4 232 480 -240 -480
		mu 0 4 219 218 223 224
		f 4 233 481 -241 -481
		mu 0 4 218 217 222 223
		f 4 234 235 -242 -482
		mu 0 4 217 76 78 222
		f 4 236 482 -244 237
		mu 0 4 135 226 231 137
		f 4 238 483 -246 -483
		mu 0 4 226 225 230 231
		f 4 239 484 -247 -484
		mu 0 4 224 223 228 229
		f 4 240 485 -248 -485
		mu 0 4 223 222 227 228
		f 4 241 242 -249 -486
		mu 0 4 222 78 80 227
		f 4 243 486 -251 244
		mu 0 4 137 231 236 139
		f 4 245 487 -253 -487
		mu 0 4 231 230 235 236
		f 4 246 488 -254 -488
		mu 0 4 229 228 233 234
		f 4 247 489 -255 -489
		mu 0 4 228 227 232 233
		f 4 248 249 -256 -490
		mu 0 4 227 80 82 232
		f 4 250 490 -258 251
		mu 0 4 139 236 241 141
		f 4 252 491 -260 -491
		mu 0 4 236 235 240 241
		f 4 253 492 -261 -492
		mu 0 4 234 233 238 239
		f 4 254 493 -262 -493
		mu 0 4 233 232 237 238
		f 4 255 256 -263 -494
		mu 0 4 232 82 84 237
		f 4 257 494 -265 258
		mu 0 4 141 241 246 143
		f 4 259 495 -267 -495
		mu 0 4 241 240 245 246
		f 4 260 496 -268 -496
		mu 0 4 239 238 243 244
		f 4 261 497 -269 -497
		mu 0 4 238 237 242 243
		f 4 262 263 -270 -498
		mu 0 4 237 84 86 242
		f 4 264 498 -272 265
		mu 0 4 143 246 251 145
		f 4 266 499 -274 -499
		mu 0 4 246 245 250 251
		f 4 267 500 -275 -500
		mu 0 4 244 243 248 249
		f 4 268 501 -276 -501
		mu 0 4 243 242 247 248
		f 4 269 270 -277 -502
		mu 0 4 242 86 88 247
		f 4 271 502 -279 272
		mu 0 4 145 251 256 147
		f 4 273 503 -281 -503
		mu 0 4 251 250 255 256
		f 4 274 504 -282 -504
		mu 0 4 249 248 253 254
		f 4 275 505 -283 -505
		mu 0 4 248 247 252 253
		f 4 276 277 -284 -506
		mu 0 4 247 88 90 252
		f 4 278 506 -286 279
		mu 0 4 147 256 261 149
		f 4 280 507 -288 -507
		mu 0 4 256 255 260 261
		f 4 281 508 -289 -508
		mu 0 4 254 253 258 259
		f 4 282 509 -290 -509
		mu 0 4 253 252 257 258
		f 4 283 284 -291 -510
		mu 0 4 252 90 92 257
		f 4 285 510 -293 286
		mu 0 4 149 261 266 151
		f 4 287 511 -295 -511
		mu 0 4 261 260 265 266
		f 4 288 512 -296 -512
		mu 0 4 259 258 263 264
		f 4 289 513 -297 -513
		mu 0 4 258 257 262 263
		f 4 290 291 -298 -514
		mu 0 4 257 92 94 262
		f 4 292 514 -300 293
		mu 0 4 151 266 271 153
		f 4 294 515 -302 -515
		mu 0 4 266 265 270 271
		f 4 295 516 -303 -516
		mu 0 4 264 263 268 269
		f 4 296 517 -304 -517
		mu 0 4 263 262 267 268
		f 4 297 298 -305 -518
		mu 0 4 262 94 96 267
		f 4 299 518 -307 300
		mu 0 4 153 271 276 155
		f 4 301 519 -309 -519
		mu 0 4 271 270 275 276
		f 4 302 520 -310 -520
		mu 0 4 269 268 273 274
		f 4 303 521 -311 -521
		mu 0 4 268 267 272 273
		f 4 304 305 -312 -522
		mu 0 4 267 96 98 272
		f 4 306 522 -314 307
		mu 0 4 155 276 281 157
		f 4 308 523 -316 -523
		mu 0 4 276 275 280 281
		f 4 309 524 -317 -524
		mu 0 4 274 273 278 279
		f 4 310 525 -318 -525
		mu 0 4 273 272 277 278
		f 4 311 312 -319 -526
		mu 0 4 272 98 100 277
		f 4 313 526 -321 314
		mu 0 4 157 281 286 159
		f 4 315 527 -323 -527
		mu 0 4 281 280 285 286
		f 4 316 528 -324 -528
		mu 0 4 279 278 283 284
		f 4 317 529 -325 -529
		mu 0 4 278 277 282 283
		f 4 318 319 -326 -530
		mu 0 4 277 100 102 282
		f 4 320 530 -328 321
		mu 0 4 159 286 291 161
		f 4 322 531 -330 -531
		mu 0 4 286 285 290 291
		f 4 323 532 -331 -532
		mu 0 4 284 283 288 289
		f 4 324 533 -332 -533
		mu 0 4 283 282 287 288
		f 4 325 326 -333 -534
		mu 0 4 282 102 104 287
		f 4 327 534 -335 328
		mu 0 4 161 291 296 163
		f 4 329 535 -337 -535
		mu 0 4 291 290 295 296
		f 4 330 536 -338 -536
		mu 0 4 289 288 293 294
		f 4 331 537 -339 -537
		mu 0 4 288 287 292 293
		f 4 332 333 -340 -538
		mu 0 4 287 104 106 292
		f 4 334 538 -342 335
		mu 0 4 163 296 301 165
		f 4 336 539 -344 -539
		mu 0 4 296 295 300 301
		f 4 337 540 -345 -540
		mu 0 4 294 293 298 299
		f 4 338 541 -346 -541
		mu 0 4 293 292 297 298
		f 4 339 340 -347 -542
		mu 0 4 292 106 108 297
		f 4 341 542 -349 342
		mu 0 4 165 301 306 167
		f 4 343 543 -351 -543
		mu 0 4 301 300 305 306
		f 4 344 544 -352 -544
		mu 0 4 299 298 303 304
		f 4 345 545 -353 -545
		mu 0 4 298 297 302 303
		f 4 346 347 -354 -546
		mu 0 4 297 108 110 302
		f 4 348 546 -356 349
		mu 0 4 167 306 311 169
		f 4 350 547 -358 -547
		mu 0 4 306 305 310 311
		f 4 351 548 -359 -548
		mu 0 4 304 303 308 309
		f 4 352 549 -360 -549
		mu 0 4 303 302 307 308
		f 4 353 354 -361 -550
		mu 0 4 302 110 112 307
		f 4 355 550 -363 356
		mu 0 4 169 311 316 171
		f 4 357 551 -365 -551
		mu 0 4 311 310 315 316
		f 4 358 552 -366 -552
		mu 0 4 309 308 313 314
		f 4 359 553 -367 -553
		mu 0 4 308 307 312 313
		f 4 360 361 -368 -554
		mu 0 4 307 112 114 312
		f 4 362 554 -370 363
		mu 0 4 171 316 321 173
		f 4 364 555 -372 -555
		mu 0 4 316 315 320 321
		f 4 365 556 -373 -556
		mu 0 4 314 313 318 319
		f 4 366 557 -374 -557
		mu 0 4 313 312 317 318
		f 4 367 368 -375 -558
		mu 0 4 312 114 116 317
		f 4 369 558 -377 370
		mu 0 4 173 321 326 175
		f 4 371 559 -379 -559
		mu 0 4 321 320 325 326
		f 4 372 560 -380 -560
		mu 0 4 319 318 323 324
		f 4 373 561 -381 -561
		mu 0 4 318 317 322 323
		f 4 374 375 -382 -562
		mu 0 4 317 116 118 322
		f 4 376 562 -384 377
		mu 0 4 175 326 331 177
		f 4 378 563 -386 -563
		mu 0 4 326 325 330 331
		f 4 379 564 -387 -564
		mu 0 4 324 323 328 329
		f 4 380 565 -388 -565
		mu 0 4 323 322 327 328
		f 4 381 382 -389 -566
		mu 0 4 322 118 120 327
		f 4 383 566 -187 384
		mu 0 4 177 331 336 179
		f 4 385 567 -185 -567
		mu 0 4 331 330 334 336
		f 4 386 568 -184 -568
		mu 0 4 329 328 333 335
		f 4 387 569 -183 -569
		mu 0 4 328 327 332 333
		f 4 388 389 -181 -570
		mu 0 4 327 120 122 332
		f 4 60 571 -573 -571
		mu 0 4 337 338 339 340
		f 4 61 573 -575 -572
		mu 0 4 341 342 343 344
		f 4 62 575 -577 -574
		mu 0 4 345 346 347 348
		f 4 63 577 -579 -576
		mu 0 4 349 350 351 352
		f 4 64 579 -581 -578
		mu 0 4 353 354 355 356
		f 4 65 581 -583 -580
		mu 0 4 357 358 359 360
		f 4 66 583 -585 -582
		mu 0 4 361 362 363 364
		f 4 67 585 -587 -584
		mu 0 4 365 366 367 368
		f 4 68 587 -589 -586
		mu 0 4 369 370 371 372
		f 4 69 589 -591 -588
		mu 0 4 373 374 375 376
		f 4 70 591 -593 -590
		mu 0 4 377 378 379 380
		f 4 71 593 -595 -592
		mu 0 4 381 382 383 384
		f 4 72 595 -597 -594
		mu 0 4 385 386 387 388
		f 4 73 597 -599 -596
		mu 0 4 389 390 391 392
		f 4 74 599 -601 -598
		mu 0 4 393 394 395 396
		f 4 75 601 -603 -600
		mu 0 4 397 398 399 400
		f 4 76 603 -605 -602
		mu 0 4 401 402 403 404
		f 4 77 605 -607 -604
		mu 0 4 405 406 407 408
		f 4 78 607 -609 -606
		mu 0 4 409 410 411 412
		f 4 79 609 -611 -608
		mu 0 4 413 414 415 416
		f 4 80 611 -613 -610
		mu 0 4 417 418 419 420
		f 4 81 613 -615 -612
		mu 0 4 421 422 423 424
		f 4 82 615 -617 -614
		mu 0 4 425 426 427 428
		f 4 83 617 -619 -616
		mu 0 4 429 430 431 432
		f 4 84 619 -621 -618
		mu 0 4 433 434 435 436
		f 4 85 621 -623 -620
		mu 0 4 437 438 439 440
		f 4 86 623 -625 -622
		mu 0 4 441 442 443 444
		f 4 87 625 -627 -624
		mu 0 4 445 446 447 448
		f 4 88 627 -629 -626
		mu 0 4 449 450 451 452
		f 4 89 570 -630 -628
		mu 0 4 453 454 455 456
		f 4 630 661 -663 -661
		mu 0 4 457 458 459 460
		f 4 631 663 -665 -662
		mu 0 4 461 462 463 464
		f 4 632 665 -667 -664
		mu 0 4 465 466 467 468
		f 4 633 667 -669 -666
		mu 0 4 469 470 471 472
		f 4 634 669 -671 -668
		mu 0 4 473 474 475 476
		f 4 635 671 -673 -670
		mu 0 4 477 478 479 480
		f 4 636 673 -675 -672
		mu 0 4 481 482 483 484
		f 4 637 675 -677 -674
		mu 0 4 485 486 487 488
		f 4 638 677 -679 -676
		mu 0 4 489 490 491 492
		f 4 639 679 -681 -678
		mu 0 4 493 494 495 496
		f 4 640 681 -683 -680
		mu 0 4 497 498 499 500
		f 4 641 683 -685 -682
		mu 0 4 501 502 503 504
		f 4 642 685 -687 -684
		mu 0 4 505 506 507 508
		f 4 643 687 -689 -686
		mu 0 4 509 510 511 512
		f 4 644 689 -691 -688
		mu 0 4 513 514 515 516
		f 4 645 691 -693 -690
		mu 0 4 517 518 519 520
		f 4 646 693 -695 -692
		mu 0 4 521 522 523 524
		f 4 647 695 -697 -694
		mu 0 4 525 526 527 528
		f 4 648 697 -699 -696
		mu 0 4 529 530 531 532
		f 4 649 699 -701 -698
		mu 0 4 533 534 535 536
		f 4 650 701 -703 -700
		mu 0 4 537 538 539 540
		f 4 651 703 -705 -702
		mu 0 4 541 542 543 544
		f 4 652 705 -707 -704
		mu 0 4 545 546 547 548
		f 4 653 707 -709 -706
		mu 0 4 549 550 551 552
		f 4 654 709 -711 -708
		mu 0 4 553 554 555 556
		f 4 655 711 -713 -710
		mu 0 4 557 558 559 560
		f 4 656 713 -715 -712
		mu 0 4 561 562 563 564
		f 4 657 715 -717 -714
		mu 0 4 565 566 567 568
		f 4 658 717 -719 -716
		mu 0 4 569 570 571 572
		f 4 659 660 -720 -718
		mu 0 4 573 574 575 576
		f 4 572 1050 -732 1051
		mu 0 4 577 578 818 579
		f 4 574 1052 -738 -1051
		mu 0 4 580 581 819 582
		f 4 576 1053 -744 -1053
		mu 0 4 583 584 820 585
		f 4 578 1054 -750 -1054
		mu 0 4 586 587 821 588
		f 4 580 1055 -756 -1055
		mu 0 4 589 590 822 591
		f 4 582 1056 -762 -1056
		mu 0 4 592 593 823 594
		f 4 584 1057 -768 -1057
		mu 0 4 595 596 824 597
		f 4 586 1058 -774 -1058
		mu 0 4 598 599 825 600
		f 4 588 1059 -780 -1059
		mu 0 4 601 602 826 603
		f 4 590 1060 -786 -1060
		mu 0 4 604 605 827 606
		f 4 592 1061 -792 -1061
		mu 0 4 607 608 828 609
		f 4 594 1062 -798 -1062
		mu 0 4 610 611 829 612
		f 4 596 1063 -804 -1063
		mu 0 4 613 614 830 615
		f 4 598 1064 -810 -1064
		mu 0 4 616 617 831 618
		f 4 600 1065 -816 -1065
		mu 0 4 619 620 832 621
		f 4 602 1066 -822 -1066
		mu 0 4 622 623 833 624
		f 4 604 1067 -828 -1067
		mu 0 4 625 626 834 627
		f 4 606 1068 -834 -1068
		mu 0 4 628 629 835 630
		f 4 608 1069 -840 -1069
		mu 0 4 631 632 836 633
		f 4 610 1070 -846 -1070
		mu 0 4 634 635 837 636
		f 4 612 1071 -852 -1071
		mu 0 4 637 638 838 639
		f 4 614 1072 -858 -1072
		mu 0 4 640 641 839 642
		f 4 616 1073 -864 -1073
		mu 0 4 643 644 840 645
		f 4 618 1074 -870 -1074
		mu 0 4 646 647 841 648
		f 4 620 1075 -876 -1075
		mu 0 4 649 650 842 651
		f 4 622 1076 -882 -1076
		mu 0 4 652 653 843 654
		f 4 624 1077 -888 -1077
		mu 0 4 655 656 844 657
		f 4 626 1078 -894 -1078
		mu 0 4 658 659 845 660
		f 4 628 1079 -900 -1079
		mu 0 4 661 662 846 663
		f 4 629 -1052 -722 -1080
		mu 0 4 664 665 817 666
		f 4 -907 1080 -631 1081
		mu 0 4 848 727 728 729
		f 4 -912 1082 -632 -1081
		mu 0 4 849 730 731 732
		f 4 -917 1083 -633 -1083
		mu 0 4 850 733 734 735
		f 4 -922 1084 -634 -1084
		mu 0 4 851 736 737 738
		f 4 -927 1085 -635 -1085
		mu 0 4 852 739 740 741
		f 4 -932 1086 -636 -1086
		mu 0 4 853 742 743 744
		f 4 -937 1087 -637 -1087
		mu 0 4 854 745 746 747
		f 4 -942 1088 -638 -1088
		mu 0 4 855 748 749 750
		f 4 -947 1089 -639 -1089
		mu 0 4 856 751 752 753
		f 4 -952 1090 -640 -1090
		mu 0 4 857 754 755 756
		f 4 -957 1091 -641 -1091
		mu 0 4 858 757 758 759
		f 4 -962 1092 -642 -1092
		mu 0 4 859 760 761 762
		f 4 -967 1093 -643 -1093
		mu 0 4 860 763 764 765
		f 4 -972 1094 -644 -1094
		mu 0 4 861 766 767 768
		f 4 -977 1095 -645 -1095
		mu 0 4 862 769 770 771
		f 4 -982 1096 -646 -1096
		mu 0 4 863 772 773 774
		f 4 -987 1097 -647 -1097
		mu 0 4 864 775 776 777
		f 4 -992 1098 -648 -1098
		mu 0 4 865 778 779 780
		f 4 -997 1099 -649 -1099
		mu 0 4 866 781 782 783
		f 4 -1002 1100 -650 -1100
		mu 0 4 867 784 785 786
		f 4 -1007 1101 -651 -1101
		mu 0 4 868 787 788 789
		f 4 -1012 1102 -652 -1102
		mu 0 4 869 790 791 792
		f 4 -1017 1103 -653 -1103
		mu 0 4 870 793 794 795
		f 4 -1022 1104 -654 -1104
		mu 0 4 871 796 797 798
		f 4 -1027 1105 -655 -1105
		mu 0 4 872 799 800 801
		f 4 -1032 1106 -656 -1106
		mu 0 4 873 802 803 804
		f 4 -1037 1107 -657 -1107
		mu 0 4 874 805 806 807
		f 4 -1042 1108 -658 -1108
		mu 0 4 875 808 809 810
		f 4 -1047 1109 -659 -1109
		mu 0 4 876 811 812 813
		f 4 -904 -1082 -660 -1110
		mu 0 4 847 814 815 816
		f 4 -727 724 725 -1111
		mu 0 4 884 725 726 1116
		f 4 -729 1110 723 -1112
		mu 0 4 881 884 1116 1114
		f 4 -731 1112 720 721
		mu 0 4 817 878 1110 666
		f 4 -730 1111 722 -1113
		mu 0 4 878 882 1113 1110
		f 4 726 1113 -733 727
		mu 0 4 668 883 892 667
		f 4 728 1114 -735 -1114
		mu 0 4 883 880 889 892
		f 4 729 1115 -736 -1115
		mu 0 4 879 877 886 890
		f 4 730 731 -737 -1116
		mu 0 4 877 579 818 886
		f 4 732 1116 -739 733
		mu 0 4 670 891 900 669
		f 4 734 1117 -741 -1117
		mu 0 4 891 888 897 900
		f 4 735 1118 -742 -1118
		mu 0 4 887 885 894 898
		f 4 736 737 -743 -1119
		mu 0 4 885 582 819 894
		f 4 738 1119 -745 739
		mu 0 4 672 899 908 671
		f 4 740 1120 -747 -1120
		mu 0 4 899 896 905 908
		f 4 741 1121 -748 -1121
		mu 0 4 895 893 902 906
		f 4 742 743 -749 -1122
		mu 0 4 893 585 820 902
		f 4 744 1122 -751 745
		mu 0 4 674 907 916 673
		f 4 746 1123 -753 -1123
		mu 0 4 907 904 913 916
		f 4 747 1124 -754 -1124
		mu 0 4 903 901 910 914
		f 4 748 749 -755 -1125
		mu 0 4 901 588 821 910
		f 4 750 1125 -757 751
		mu 0 4 676 915 924 675
		f 4 752 1126 -759 -1126
		mu 0 4 915 912 921 924
		f 4 753 1127 -760 -1127
		mu 0 4 911 909 918 922
		f 4 754 755 -761 -1128
		mu 0 4 909 591 822 918
		f 4 756 1128 -763 757
		mu 0 4 678 923 932 677
		f 4 758 1129 -765 -1129
		mu 0 4 923 920 929 932
		f 4 759 1130 -766 -1130
		mu 0 4 919 917 926 930
		f 4 760 761 -767 -1131
		mu 0 4 917 594 823 926
		f 4 762 1131 -769 763
		mu 0 4 680 931 940 679
		f 4 764 1132 -771 -1132
		mu 0 4 931 928 937 940
		f 4 765 1133 -772 -1133
		mu 0 4 927 925 934 938
		f 4 766 767 -773 -1134
		mu 0 4 925 597 824 934
		f 4 768 1134 -775 769
		mu 0 4 682 939 948 681
		f 4 770 1135 -777 -1135
		mu 0 4 939 936 945 948
		f 4 771 1136 -778 -1136
		mu 0 4 935 933 942 946
		f 4 772 773 -779 -1137
		mu 0 4 933 600 825 942
		f 4 774 1137 -781 775
		mu 0 4 684 947 956 683
		f 4 776 1138 -783 -1138
		mu 0 4 947 944 953 956
		f 4 777 1139 -784 -1139
		mu 0 4 943 941 950 954
		f 4 778 779 -785 -1140
		mu 0 4 941 603 826 950
		f 4 780 1140 -787 781
		mu 0 4 686 955 964 685
		f 4 782 1141 -789 -1141
		mu 0 4 955 952 961 964
		f 4 783 1142 -790 -1142
		mu 0 4 951 949 958 962
		f 4 784 785 -791 -1143
		mu 0 4 949 606 827 958
		f 4 786 1143 -793 787
		mu 0 4 688 963 972 687
		f 4 788 1144 -795 -1144
		mu 0 4 963 960 969 972
		f 4 789 1145 -796 -1145
		mu 0 4 959 957 966 970
		f 4 790 791 -797 -1146
		mu 0 4 957 609 828 966
		f 4 792 1146 -799 793
		mu 0 4 690 971 980 689
		f 4 794 1147 -801 -1147
		mu 0 4 971 968 977 980
		f 4 795 1148 -802 -1148
		mu 0 4 967 965 974 978
		f 4 796 797 -803 -1149
		mu 0 4 965 612 829 974
		f 4 798 1149 -805 799
		mu 0 4 692 979 988 691
		f 4 800 1150 -807 -1150
		mu 0 4 979 976 985 988
		f 4 801 1151 -808 -1151
		mu 0 4 975 973 982 986
		f 4 802 803 -809 -1152
		mu 0 4 973 615 830 982
		f 4 804 1152 -811 805
		mu 0 4 694 987 996 693
		f 4 806 1153 -813 -1153
		mu 0 4 987 984 993 996
		f 4 807 1154 -814 -1154
		mu 0 4 983 981 990 994
		f 4 808 809 -815 -1155
		mu 0 4 981 618 831 990
		f 4 810 1155 -817 811
		mu 0 4 696 995 1004 695
		f 4 812 1156 -819 -1156
		mu 0 4 995 992 1001 1004
		f 4 813 1157 -820 -1157
		mu 0 4 991 989 998 1002
		f 4 814 815 -821 -1158
		mu 0 4 989 621 832 998
		f 4 816 1158 -823 817
		mu 0 4 698 1003 1012 697
		f 4 818 1159 -825 -1159
		mu 0 4 1003 1000 1009 1012
		f 4 819 1160 -826 -1160
		mu 0 4 999 997 1006 1010
		f 4 820 821 -827 -1161
		mu 0 4 997 624 833 1006
		f 4 822 1161 -829 823
		mu 0 4 700 1011 1020 699
		f 4 824 1162 -831 -1162
		mu 0 4 1011 1008 1017 1020
		f 4 825 1163 -832 -1163
		mu 0 4 1007 1005 1014 1018
		f 4 826 827 -833 -1164
		mu 0 4 1005 627 834 1014
		f 4 828 1164 -835 829
		mu 0 4 702 1019 1028 701
		f 4 830 1165 -837 -1165
		mu 0 4 1019 1016 1025 1028
		f 4 831 1166 -838 -1166
		mu 0 4 1015 1013 1022 1026
		f 4 832 833 -839 -1167
		mu 0 4 1013 630 835 1022
		f 4 834 1167 -841 835
		mu 0 4 704 1027 1036 703
		f 4 836 1168 -843 -1168
		mu 0 4 1027 1024 1033 1036
		f 4 837 1169 -844 -1169
		mu 0 4 1023 1021 1030 1034
		f 4 838 839 -845 -1170
		mu 0 4 1021 633 836 1030;
	setAttr ".fc[500:999]"
		f 4 840 1170 -847 841
		mu 0 4 706 1035 1044 705
		f 4 842 1171 -849 -1171
		mu 0 4 1035 1032 1041 1044
		f 4 843 1172 -850 -1172
		mu 0 4 1031 1029 1038 1042
		f 4 844 845 -851 -1173
		mu 0 4 1029 636 837 1038
		f 4 846 1173 -853 847
		mu 0 4 708 1043 1052 707
		f 4 848 1174 -855 -1174
		mu 0 4 1043 1040 1049 1052
		f 4 849 1175 -856 -1175
		mu 0 4 1039 1037 1046 1050
		f 4 850 851 -857 -1176
		mu 0 4 1037 639 838 1046
		f 4 852 1176 -859 853
		mu 0 4 710 1051 1060 709
		f 4 854 1177 -861 -1177
		mu 0 4 1051 1048 1057 1060
		f 4 855 1178 -862 -1178
		mu 0 4 1047 1045 1054 1058
		f 4 856 857 -863 -1179
		mu 0 4 1045 642 839 1054
		f 4 858 1179 -865 859
		mu 0 4 712 1059 1068 711
		f 4 860 1180 -867 -1180
		mu 0 4 1059 1056 1065 1068
		f 4 861 1181 -868 -1181
		mu 0 4 1055 1053 1062 1066
		f 4 862 863 -869 -1182
		mu 0 4 1053 645 840 1062
		f 4 864 1182 -871 865
		mu 0 4 714 1067 1076 713
		f 4 866 1183 -873 -1183
		mu 0 4 1067 1064 1073 1076
		f 4 867 1184 -874 -1184
		mu 0 4 1063 1061 1070 1074
		f 4 868 869 -875 -1185
		mu 0 4 1061 648 841 1070
		f 4 870 1185 -877 871
		mu 0 4 716 1075 1084 715
		f 4 872 1186 -879 -1186
		mu 0 4 1075 1072 1081 1084
		f 4 873 1187 -880 -1187
		mu 0 4 1071 1069 1078 1082
		f 4 874 875 -881 -1188
		mu 0 4 1069 651 842 1078
		f 4 876 1188 -883 877
		mu 0 4 718 1083 1092 717
		f 4 878 1189 -885 -1189
		mu 0 4 1083 1080 1089 1092
		f 4 879 1190 -886 -1190
		mu 0 4 1079 1077 1086 1090
		f 4 880 881 -887 -1191
		mu 0 4 1077 654 843 1086
		f 4 882 1191 -889 883
		mu 0 4 720 1091 1100 719
		f 4 884 1192 -891 -1192
		mu 0 4 1091 1088 1097 1100
		f 4 885 1193 -892 -1193
		mu 0 4 1087 1085 1094 1098
		f 4 886 887 -893 -1194
		mu 0 4 1085 657 844 1094
		f 4 888 1194 -895 889
		mu 0 4 722 1099 1108 721
		f 4 890 1195 -897 -1195
		mu 0 4 1099 1096 1105 1108
		f 4 891 1196 -898 -1196
		mu 0 4 1095 1093 1102 1106
		f 4 892 893 -899 -1197
		mu 0 4 1093 660 845 1102
		f 4 894 1197 -726 895
		mu 0 4 724 1107 1115 723
		f 4 896 1198 -724 -1198
		mu 0 4 1107 1104 1111 1115
		f 4 897 1199 -723 -1199
		mu 0 4 1103 1101 1109 1112
		f 4 898 899 -721 -1200
		mu 0 4 1101 663 846 1109
		f 4 -906 903 904 -1201
		mu 0 4 1124 814 847 1356
		f 4 -908 1200 902 -1202
		mu 0 4 1121 1124 1356 1354
		f 4 -910 1202 900 -725
		mu 0 4 725 1118 1350 726
		f 4 -909 1201 901 -1203
		mu 0 4 1118 1122 1353 1350
		f 4 905 1203 -911 906
		mu 0 4 848 1123 1132 727
		f 4 907 1204 -913 -1204
		mu 0 4 1123 1120 1129 1132
		f 4 908 1205 -914 -1205
		mu 0 4 1119 1117 1126 1130
		f 4 909 -728 -915 -1206
		mu 0 4 1117 668 667 1126
		f 4 910 1206 -916 911
		mu 0 4 849 1131 1140 730
		f 4 912 1207 -918 -1207
		mu 0 4 1131 1128 1137 1140
		f 4 913 1208 -919 -1208
		mu 0 4 1127 1125 1134 1138
		f 4 914 -734 -920 -1209
		mu 0 4 1125 670 669 1134
		f 4 915 1209 -921 916
		mu 0 4 850 1139 1148 733
		f 4 917 1210 -923 -1210
		mu 0 4 1139 1136 1145 1148
		f 4 918 1211 -924 -1211
		mu 0 4 1135 1133 1142 1146
		f 4 919 -740 -925 -1212
		mu 0 4 1133 672 671 1142
		f 4 920 1212 -926 921
		mu 0 4 851 1147 1156 736
		f 4 922 1213 -928 -1213
		mu 0 4 1147 1144 1153 1156
		f 4 923 1214 -929 -1214
		mu 0 4 1143 1141 1150 1154
		f 4 924 -746 -930 -1215
		mu 0 4 1141 674 673 1150
		f 4 925 1215 -931 926
		mu 0 4 852 1155 1164 739
		f 4 927 1216 -933 -1216
		mu 0 4 1155 1152 1161 1164
		f 4 928 1217 -934 -1217
		mu 0 4 1151 1149 1158 1162
		f 4 929 -752 -935 -1218
		mu 0 4 1149 676 675 1158
		f 4 930 1218 -936 931
		mu 0 4 853 1163 1172 742
		f 4 932 1219 -938 -1219
		mu 0 4 1163 1160 1169 1172
		f 4 933 1220 -939 -1220
		mu 0 4 1159 1157 1166 1170
		f 4 934 -758 -940 -1221
		mu 0 4 1157 678 677 1166
		f 4 935 1221 -941 936
		mu 0 4 854 1171 1180 745
		f 4 937 1222 -943 -1222
		mu 0 4 1171 1168 1177 1180
		f 4 938 1223 -944 -1223
		mu 0 4 1167 1165 1174 1178
		f 4 939 -764 -945 -1224
		mu 0 4 1165 680 679 1174
		f 4 940 1224 -946 941
		mu 0 4 855 1179 1188 748
		f 4 942 1225 -948 -1225
		mu 0 4 1179 1176 1185 1188
		f 4 943 1226 -949 -1226
		mu 0 4 1175 1173 1182 1186
		f 4 944 -770 -950 -1227
		mu 0 4 1173 682 681 1182
		f 4 945 1227 -951 946
		mu 0 4 856 1187 1196 751
		f 4 947 1228 -953 -1228
		mu 0 4 1187 1184 1193 1196
		f 4 948 1229 -954 -1229
		mu 0 4 1183 1181 1190 1194
		f 4 949 -776 -955 -1230
		mu 0 4 1181 684 683 1190
		f 4 950 1230 -956 951
		mu 0 4 857 1195 1204 754
		f 4 952 1231 -958 -1231
		mu 0 4 1195 1192 1201 1204
		f 4 953 1232 -959 -1232
		mu 0 4 1191 1189 1198 1202
		f 4 954 -782 -960 -1233
		mu 0 4 1189 686 685 1198
		f 4 955 1233 -961 956
		mu 0 4 858 1203 1212 757
		f 4 957 1234 -963 -1234
		mu 0 4 1203 1200 1209 1212
		f 4 958 1235 -964 -1235
		mu 0 4 1199 1197 1206 1210
		f 4 959 -788 -965 -1236
		mu 0 4 1197 688 687 1206
		f 4 960 1236 -966 961
		mu 0 4 859 1211 1220 760
		f 4 962 1237 -968 -1237
		mu 0 4 1211 1208 1217 1220
		f 4 963 1238 -969 -1238
		mu 0 4 1207 1205 1214 1218
		f 4 964 -794 -970 -1239
		mu 0 4 1205 690 689 1214
		f 4 965 1239 -971 966
		mu 0 4 860 1219 1228 763
		f 4 967 1240 -973 -1240
		mu 0 4 1219 1216 1225 1228
		f 4 968 1241 -974 -1241
		mu 0 4 1215 1213 1222 1226
		f 4 969 -800 -975 -1242
		mu 0 4 1213 692 691 1222
		f 4 970 1242 -976 971
		mu 0 4 861 1227 1236 766
		f 4 972 1243 -978 -1243
		mu 0 4 1227 1224 1233 1236
		f 4 973 1244 -979 -1244
		mu 0 4 1223 1221 1230 1234
		f 4 974 -806 -980 -1245
		mu 0 4 1221 694 693 1230
		f 4 975 1245 -981 976
		mu 0 4 862 1235 1244 769
		f 4 977 1246 -983 -1246
		mu 0 4 1235 1232 1241 1244
		f 4 978 1247 -984 -1247
		mu 0 4 1231 1229 1238 1242
		f 4 979 -812 -985 -1248
		mu 0 4 1229 696 695 1238
		f 4 980 1248 -986 981
		mu 0 4 863 1243 1252 772
		f 4 982 1249 -988 -1249
		mu 0 4 1243 1240 1249 1252
		f 4 983 1250 -989 -1250
		mu 0 4 1239 1237 1246 1250
		f 4 984 -818 -990 -1251
		mu 0 4 1237 698 697 1246
		f 4 985 1251 -991 986
		mu 0 4 864 1251 1260 775
		f 4 987 1252 -993 -1252
		mu 0 4 1251 1248 1257 1260
		f 4 988 1253 -994 -1253
		mu 0 4 1247 1245 1254 1258
		f 4 989 -824 -995 -1254
		mu 0 4 1245 700 699 1254
		f 4 990 1254 -996 991
		mu 0 4 865 1259 1268 778
		f 4 992 1255 -998 -1255
		mu 0 4 1259 1256 1265 1268
		f 4 993 1256 -999 -1256
		mu 0 4 1255 1253 1262 1266
		f 4 994 -830 -1000 -1257
		mu 0 4 1253 702 701 1262
		f 4 995 1257 -1001 996
		mu 0 4 866 1267 1276 781
		f 4 997 1258 -1003 -1258
		mu 0 4 1267 1264 1273 1276
		f 4 998 1259 -1004 -1259
		mu 0 4 1263 1261 1270 1274
		f 4 999 -836 -1005 -1260
		mu 0 4 1261 704 703 1270
		f 4 1000 1260 -1006 1001
		mu 0 4 867 1275 1284 784
		f 4 1002 1261 -1008 -1261
		mu 0 4 1275 1272 1281 1284
		f 4 1003 1262 -1009 -1262
		mu 0 4 1271 1269 1278 1282
		f 4 1004 -842 -1010 -1263
		mu 0 4 1269 706 705 1278
		f 4 1005 1263 -1011 1006
		mu 0 4 868 1283 1292 787
		f 4 1007 1264 -1013 -1264
		mu 0 4 1283 1280 1289 1292
		f 4 1008 1265 -1014 -1265
		mu 0 4 1279 1277 1286 1290
		f 4 1009 -848 -1015 -1266
		mu 0 4 1277 708 707 1286
		f 4 1010 1266 -1016 1011
		mu 0 4 869 1291 1300 790
		f 4 1012 1267 -1018 -1267
		mu 0 4 1291 1288 1297 1300
		f 4 1013 1268 -1019 -1268
		mu 0 4 1287 1285 1294 1298
		f 4 1014 -854 -1020 -1269
		mu 0 4 1285 710 709 1294
		f 4 1015 1269 -1021 1016
		mu 0 4 870 1299 1308 793
		f 4 1017 1270 -1023 -1270
		mu 0 4 1299 1296 1305 1308
		f 4 1018 1271 -1024 -1271
		mu 0 4 1295 1293 1302 1306
		f 4 1019 -860 -1025 -1272
		mu 0 4 1293 712 711 1302
		f 4 1020 1272 -1026 1021
		mu 0 4 871 1307 1316 796
		f 4 1022 1273 -1028 -1273
		mu 0 4 1307 1304 1313 1316
		f 4 1023 1274 -1029 -1274
		mu 0 4 1303 1301 1310 1314
		f 4 1024 -866 -1030 -1275
		mu 0 4 1301 714 713 1310
		f 4 1025 1275 -1031 1026
		mu 0 4 872 1315 1324 799
		f 4 1027 1276 -1033 -1276
		mu 0 4 1315 1312 1321 1324
		f 4 1028 1277 -1034 -1277
		mu 0 4 1311 1309 1318 1322
		f 4 1029 -872 -1035 -1278
		mu 0 4 1309 716 715 1318
		f 4 1030 1278 -1036 1031
		mu 0 4 873 1323 1332 802
		f 4 1032 1279 -1038 -1279
		mu 0 4 1323 1320 1329 1332
		f 4 1033 1280 -1039 -1280
		mu 0 4 1319 1317 1326 1330
		f 4 1034 -878 -1040 -1281
		mu 0 4 1317 718 717 1326
		f 4 1035 1281 -1041 1036
		mu 0 4 874 1331 1340 805
		f 4 1037 1282 -1043 -1282
		mu 0 4 1331 1328 1337 1340
		f 4 1038 1283 -1044 -1283
		mu 0 4 1327 1325 1334 1338
		f 4 1039 -884 -1045 -1284
		mu 0 4 1325 720 719 1334
		f 4 1040 1284 -1046 1041
		mu 0 4 875 1339 1348 808
		f 4 1042 1285 -1048 -1285
		mu 0 4 1339 1336 1345 1348
		f 4 1043 1286 -1049 -1286
		mu 0 4 1335 1333 1342 1346
		f 4 1044 -890 -1050 -1287
		mu 0 4 1333 722 721 1342
		f 4 1045 1287 -905 1046
		mu 0 4 876 1347 1355 811
		f 4 1047 1288 -903 -1288
		mu 0 4 1347 1344 1351 1355
		f 4 1048 1289 -902 -1289
		mu 0 4 1343 1341 1349 1352
		f 4 1049 -896 -901 -1290
		mu 0 4 1341 724 723 1349
		f 4 662 1770 -1306 1771
		mu 0 4 1357 1358 1541 1359
		f 4 664 1772 -1314 -1771
		mu 0 4 1360 1361 1543 1362
		f 4 666 1773 -1322 -1773
		mu 0 4 1363 1364 1545 1365
		f 4 668 1774 -1330 -1774
		mu 0 4 1366 1367 1547 1368
		f 4 670 1775 -1338 -1775
		mu 0 4 1369 1370 1549 1371
		f 4 672 1776 -1346 -1776
		mu 0 4 1372 1373 1551 1374
		f 4 674 1777 -1354 -1777
		mu 0 4 1375 1376 1553 1377
		f 4 676 1778 -1362 -1778
		mu 0 4 1378 1379 1555 1380
		f 4 678 1779 -1370 -1779
		mu 0 4 1381 1382 1557 1383
		f 4 680 1780 -1378 -1780
		mu 0 4 1384 1385 1559 1386
		f 4 682 1781 -1386 -1781
		mu 0 4 1387 1388 1561 1389
		f 4 684 1782 -1394 -1782
		mu 0 4 1390 1391 1563 1392
		f 4 686 1783 -1402 -1783
		mu 0 4 1393 1394 1565 1395
		f 4 688 1784 -1410 -1784
		mu 0 4 1396 1397 1567 1398
		f 4 690 1785 -1418 -1785
		mu 0 4 1399 1400 1569 1401
		f 4 692 1786 -1426 -1786
		mu 0 4 1402 1403 1571 1404
		f 4 694 1787 -1434 -1787
		mu 0 4 1405 1406 1573 1407
		f 4 696 1788 -1442 -1788
		mu 0 4 1408 1409 1575 1410
		f 4 698 1789 -1450 -1789
		mu 0 4 1411 1412 1577 1413
		f 4 700 1790 -1458 -1790
		mu 0 4 1414 1415 1579 1416
		f 4 702 1791 -1466 -1791
		mu 0 4 1417 1418 1581 1419
		f 4 704 1792 -1474 -1792
		mu 0 4 1420 1421 1583 1422
		f 4 706 1793 -1482 -1793
		mu 0 4 1423 1424 1585 1425
		f 4 708 1794 -1490 -1794
		mu 0 4 1426 1427 1587 1428
		f 4 710 1795 -1498 -1795
		mu 0 4 1429 1430 1589 1431
		f 4 712 1796 -1506 -1796
		mu 0 4 1432 1433 1591 1434
		f 4 714 1797 -1514 -1797
		mu 0 4 1435 1436 1593 1437
		f 4 716 1798 -1522 -1798
		mu 0 4 1438 1439 1595 1440
		f 4 718 1799 -1530 -1799
		mu 0 4 1441 1442 1597 1443
		f 4 719 -1772 -1292 -1800
		mu 0 4 1444 1445 1539 1446
		f 4 -1300 1800 -1546 1801
		mu 0 4 1540 1447 1601 1448
		f 4 -1308 1802 -1554 -1801
		mu 0 4 1542 1449 1603 1450
		f 4 -1316 1803 -1562 -1803
		mu 0 4 1544 1451 1605 1452
		f 4 -1324 1804 -1570 -1804
		mu 0 4 1546 1453 1607 1454
		f 4 -1332 1805 -1578 -1805
		mu 0 4 1548 1455 1609 1456
		f 4 -1340 1806 -1586 -1806
		mu 0 4 1550 1457 1611 1458
		f 4 -1348 1807 -1594 -1807
		mu 0 4 1552 1459 1613 1460
		f 4 -1356 1808 -1602 -1808
		mu 0 4 1554 1461 1615 1462
		f 4 -1364 1809 -1610 -1809
		mu 0 4 1556 1463 1617 1464
		f 4 -1372 1810 -1618 -1810
		mu 0 4 1558 1465 1619 1466
		f 4 -1380 1811 -1626 -1811
		mu 0 4 1560 1467 1621 1468
		f 4 -1388 1812 -1634 -1812
		mu 0 4 1562 1469 1623 1470
		f 4 -1396 1813 -1642 -1813
		mu 0 4 1564 1471 1625 1472
		f 4 -1404 1814 -1650 -1814
		mu 0 4 1566 1473 1627 1474
		f 4 -1412 1815 -1658 -1815
		mu 0 4 1568 1475 1629 1476
		f 4 -1420 1816 -1666 -1816
		mu 0 4 1570 1477 1631 1478
		f 4 -1428 1817 -1674 -1817
		mu 0 4 1572 1479 1633 1480
		f 4 -1436 1818 -1682 -1818
		mu 0 4 1574 1481 1635 1482
		f 4 -1444 1819 -1690 -1819
		mu 0 4 1576 1483 1637 1484
		f 4 -1452 1820 -1698 -1820
		mu 0 4 1578 1485 1639 1486
		f 4 -1460 1821 -1706 -1821
		mu 0 4 1580 1487 1641 1488
		f 4 -1468 1822 -1714 -1822
		mu 0 4 1582 1489 1643 1490
		f 4 -1476 1823 -1722 -1823
		mu 0 4 1584 1491 1645 1492
		f 4 -1484 1824 -1730 -1824
		mu 0 4 1586 1493 1647 1494
		f 4 -1492 1825 -1738 -1825
		mu 0 4 1588 1495 1649 1496
		f 4 -1500 1826 -1746 -1826
		mu 0 4 1590 1497 1651 1498
		f 4 -1508 1827 -1754 -1827
		mu 0 4 1592 1499 1653 1500
		f 4 -1516 1828 -1762 -1828
		mu 0 4 1594 1501 1655 1502
		f 4 -1524 1829 -1770 -1829
		mu 0 4 1596 1503 1657 1504
		f 4 -1297 -1802 -1532 -1830
		mu 0 4 1538 1505 1599 1506
		f 3 -1540 1830 1831
		mu 0 3 1600 1507 1537
		f 3 -1548 1832 -1831
		mu 0 3 1602 1508 1537
		f 3 -1556 1833 -1833
		mu 0 3 1604 1509 1537
		f 3 -1564 1834 -1834
		mu 0 3 1606 1510 1537
		f 3 -1572 1835 -1835
		mu 0 3 1608 1511 1537
		f 3 -1580 1836 -1836
		mu 0 3 1610 1512 1537
		f 3 -1588 1837 -1837
		mu 0 3 1612 1513 1537
		f 3 -1596 1838 -1838
		mu 0 3 1614 1514 1537
		f 3 -1604 1839 -1839
		mu 0 3 1616 1515 1537
		f 3 -1612 1840 -1840
		mu 0 3 1618 1516 1537
		f 3 -1620 1841 -1841
		mu 0 3 1620 1517 1537
		f 3 -1628 1842 -1842
		mu 0 3 1622 1518 1537
		f 3 -1636 1843 -1843
		mu 0 3 1624 1519 1537
		f 3 -1644 1844 -1844
		mu 0 3 1626 1520 1537
		f 3 -1652 1845 -1845
		mu 0 3 1628 1521 1537
		f 3 -1660 1846 -1846
		mu 0 3 1630 1522 1537
		f 3 -1668 1847 -1847
		mu 0 3 1632 1523 1537
		f 3 -1676 1848 -1848
		mu 0 3 1634 1524 1537
		f 3 -1684 1849 -1849
		mu 0 3 1636 1525 1537
		f 3 -1692 1850 -1850
		mu 0 3 1638 1526 1537
		f 3 -1700 1851 -1851
		mu 0 3 1640 1527 1537
		f 3 -1708 1852 -1852
		mu 0 3 1642 1528 1537
		f 3 -1716 1853 -1853
		mu 0 3 1644 1529 1537
		f 3 -1724 1854 -1854
		mu 0 3 1646 1530 1537
		f 3 -1732 1855 -1855
		mu 0 3 1648 1531 1537
		f 3 -1740 1856 -1856
		mu 0 3 1650 1532 1537
		f 3 -1748 1857 -1857
		mu 0 3 1652 1533 1537
		f 3 -1756 1858 -1858
		mu 0 3 1654 1534 1537
		f 3 -1764 1859 -1859
		mu 0 3 1656 1535 1537
		f 3 -1537 -1832 -1860
		mu 0 3 1598 1536 1537
		f 4 -1299 1296 1297 -1861
		mu 0 4 1669 1505 1538 2017
		f 4 -1301 1860 1295 -1862
		mu 0 4 1667 1669 2017 2015
		f 4 -1302 1861 1294 -1863
		mu 0 4 1664 1667 2015 2013
		f 4 -1303 1862 1293 -1864
		mu 0 4 1661 1665 2012 2009
		f 4 -1305 1864 1290 1291
		mu 0 4 1539 1659 2007 1446
		f 4 -1304 1863 1292 -1865
		mu 0 4 1659 1661 2009 2007
		f 4 1298 1865 -1307 1299
		mu 0 4 1540 1668 1681 1447
		f 4 1300 1866 -1309 -1866
		mu 0 4 1668 1666 1679 1681
		f 4 1301 1867 -1310 -1867
		mu 0 4 1666 1663 1676 1679
		f 4 1302 1868 -1311 -1868
		mu 0 4 1662 1660 1673 1677
		f 4 1303 1869 -1312 -1869
		mu 0 4 1660 1658 1671 1673
		f 4 1304 1305 -1313 -1870
		mu 0 4 1658 1359 1541 1671
		f 4 1306 1870 -1315 1307
		mu 0 4 1542 1680 1693 1449
		f 4 1308 1871 -1317 -1871
		mu 0 4 1680 1678 1691 1693
		f 4 1309 1872 -1318 -1872
		mu 0 4 1678 1675 1688 1691
		f 4 1310 1873 -1319 -1873
		mu 0 4 1674 1672 1685 1689
		f 4 1311 1874 -1320 -1874
		mu 0 4 1672 1670 1683 1685
		f 4 1312 1313 -1321 -1875
		mu 0 4 1670 1362 1543 1683
		f 4 1314 1875 -1323 1315
		mu 0 4 1544 1692 1705 1451
		f 4 1316 1876 -1325 -1876
		mu 0 4 1692 1690 1703 1705
		f 4 1317 1877 -1326 -1877
		mu 0 4 1690 1687 1700 1703
		f 4 1318 1878 -1327 -1878
		mu 0 4 1686 1684 1697 1701
		f 4 1319 1879 -1328 -1879
		mu 0 4 1684 1682 1695 1697
		f 4 1320 1321 -1329 -1880
		mu 0 4 1682 1365 1545 1695
		f 4 1322 1880 -1331 1323
		mu 0 4 1546 1704 1717 1453
		f 4 1324 1881 -1333 -1881
		mu 0 4 1704 1702 1715 1717
		f 4 1325 1882 -1334 -1882
		mu 0 4 1702 1699 1712 1715
		f 4 1326 1883 -1335 -1883
		mu 0 4 1698 1696 1709 1713
		f 4 1327 1884 -1336 -1884
		mu 0 4 1696 1694 1707 1709
		f 4 1328 1329 -1337 -1885
		mu 0 4 1694 1368 1547 1707
		f 4 1330 1885 -1339 1331
		mu 0 4 1548 1716 1729 1455
		f 4 1332 1886 -1341 -1886
		mu 0 4 1716 1714 1727 1729
		f 4 1333 1887 -1342 -1887
		mu 0 4 1714 1711 1724 1727
		f 4 1334 1888 -1343 -1888
		mu 0 4 1710 1708 1721 1725
		f 4 1335 1889 -1344 -1889
		mu 0 4 1708 1706 1719 1721
		f 4 1336 1337 -1345 -1890
		mu 0 4 1706 1371 1549 1719
		f 4 1338 1890 -1347 1339
		mu 0 4 1550 1728 1741 1457
		f 4 1340 1891 -1349 -1891
		mu 0 4 1728 1726 1739 1741
		f 4 1341 1892 -1350 -1892
		mu 0 4 1726 1723 1736 1739
		f 4 1342 1893 -1351 -1893
		mu 0 4 1722 1720 1733 1737
		f 4 1343 1894 -1352 -1894
		mu 0 4 1720 1718 1731 1733
		f 4 1344 1345 -1353 -1895
		mu 0 4 1718 1374 1551 1731
		f 4 1346 1895 -1355 1347
		mu 0 4 1552 1740 1753 1459
		f 4 1348 1896 -1357 -1896
		mu 0 4 1740 1738 1751 1753
		f 4 1349 1897 -1358 -1897
		mu 0 4 1738 1735 1748 1751
		f 4 1350 1898 -1359 -1898
		mu 0 4 1734 1732 1745 1749
		f 4 1351 1899 -1360 -1899
		mu 0 4 1732 1730 1743 1745
		f 4 1352 1353 -1361 -1900
		mu 0 4 1730 1377 1553 1743
		f 4 1354 1900 -1363 1355
		mu 0 4 1554 1752 1765 1461
		f 4 1356 1901 -1365 -1901
		mu 0 4 1752 1750 1763 1765
		f 4 1357 1902 -1366 -1902
		mu 0 4 1750 1747 1760 1763
		f 4 1358 1903 -1367 -1903
		mu 0 4 1746 1744 1757 1761
		f 4 1359 1904 -1368 -1904
		mu 0 4 1744 1742 1755 1757
		f 4 1360 1361 -1369 -1905
		mu 0 4 1742 1380 1555 1755
		f 4 1362 1905 -1371 1363
		mu 0 4 1556 1764 1777 1463
		f 4 1364 1906 -1373 -1906
		mu 0 4 1764 1762 1775 1777
		f 4 1365 1907 -1374 -1907
		mu 0 4 1762 1759 1772 1775
		f 4 1366 1908 -1375 -1908
		mu 0 4 1758 1756 1769 1773
		f 4 1367 1909 -1376 -1909
		mu 0 4 1756 1754 1767 1769
		f 4 1368 1369 -1377 -1910
		mu 0 4 1754 1383 1557 1767
		f 4 1370 1910 -1379 1371
		mu 0 4 1558 1776 1789 1465
		f 4 1372 1911 -1381 -1911
		mu 0 4 1776 1774 1787 1789
		f 4 1373 1912 -1382 -1912
		mu 0 4 1774 1771 1784 1787
		f 4 1374 1913 -1383 -1913
		mu 0 4 1770 1768 1781 1785
		f 4 1375 1914 -1384 -1914
		mu 0 4 1768 1766 1779 1781
		f 4 1376 1377 -1385 -1915
		mu 0 4 1766 1386 1559 1779
		f 4 1378 1915 -1387 1379
		mu 0 4 1560 1788 1801 1467
		f 4 1380 1916 -1389 -1916
		mu 0 4 1788 1786 1799 1801
		f 4 1381 1917 -1390 -1917
		mu 0 4 1786 1783 1796 1799
		f 4 1382 1918 -1391 -1918
		mu 0 4 1782 1780 1793 1797
		f 4 1383 1919 -1392 -1919
		mu 0 4 1780 1778 1791 1793
		f 4 1384 1385 -1393 -1920
		mu 0 4 1778 1389 1561 1791
		f 4 1386 1920 -1395 1387
		mu 0 4 1562 1800 1813 1469
		f 4 1388 1921 -1397 -1921
		mu 0 4 1800 1798 1811 1813
		f 4 1389 1922 -1398 -1922
		mu 0 4 1798 1795 1808 1811
		f 4 1390 1923 -1399 -1923
		mu 0 4 1794 1792 1805 1809
		f 4 1391 1924 -1400 -1924
		mu 0 4 1792 1790 1803 1805
		f 4 1392 1393 -1401 -1925
		mu 0 4 1790 1392 1563 1803
		f 4 1394 1925 -1403 1395
		mu 0 4 1564 1812 1825 1471
		f 4 1396 1926 -1405 -1926
		mu 0 4 1812 1810 1823 1825
		f 4 1397 1927 -1406 -1927
		mu 0 4 1810 1807 1820 1823
		f 4 1398 1928 -1407 -1928
		mu 0 4 1806 1804 1817 1821
		f 4 1399 1929 -1408 -1929
		mu 0 4 1804 1802 1815 1817
		f 4 1400 1401 -1409 -1930
		mu 0 4 1802 1395 1565 1815
		f 4 1402 1930 -1411 1403
		mu 0 4 1566 1824 1837 1473
		f 4 1404 1931 -1413 -1931
		mu 0 4 1824 1822 1835 1837
		f 4 1405 1932 -1414 -1932
		mu 0 4 1822 1819 1832 1835
		f 4 1406 1933 -1415 -1933
		mu 0 4 1818 1816 1829 1833
		f 4 1407 1934 -1416 -1934
		mu 0 4 1816 1814 1827 1829
		f 4 1408 1409 -1417 -1935
		mu 0 4 1814 1398 1567 1827
		f 4 1410 1935 -1419 1411
		mu 0 4 1568 1836 1849 1475
		f 4 1412 1936 -1421 -1936
		mu 0 4 1836 1834 1847 1849
		f 4 1413 1937 -1422 -1937
		mu 0 4 1834 1831 1844 1847
		f 4 1414 1938 -1423 -1938
		mu 0 4 1830 1828 1841 1845
		f 4 1415 1939 -1424 -1939
		mu 0 4 1828 1826 1839 1841
		f 4 1416 1417 -1425 -1940
		mu 0 4 1826 1401 1569 1839
		f 4 1418 1940 -1427 1419
		mu 0 4 1570 1848 1861 1477
		f 4 1420 1941 -1429 -1941
		mu 0 4 1848 1846 1859 1861
		f 4 1421 1942 -1430 -1942
		mu 0 4 1846 1843 1856 1859
		f 4 1422 1943 -1431 -1943
		mu 0 4 1842 1840 1853 1857
		f 4 1423 1944 -1432 -1944
		mu 0 4 1840 1838 1851 1853
		f 4 1424 1425 -1433 -1945
		mu 0 4 1838 1404 1571 1851
		f 4 1426 1945 -1435 1427
		mu 0 4 1572 1860 1873 1479
		f 4 1428 1946 -1437 -1946
		mu 0 4 1860 1858 1871 1873
		f 4 1429 1947 -1438 -1947
		mu 0 4 1858 1855 1868 1871
		f 4 1430 1948 -1439 -1948
		mu 0 4 1854 1852 1865 1869
		f 4 1431 1949 -1440 -1949
		mu 0 4 1852 1850 1863 1865
		f 4 1432 1433 -1441 -1950
		mu 0 4 1850 1407 1573 1863
		f 4 1434 1950 -1443 1435
		mu 0 4 1574 1872 1885 1481
		f 4 1436 1951 -1445 -1951
		mu 0 4 1872 1870 1883 1885
		f 4 1437 1952 -1446 -1952
		mu 0 4 1870 1867 1880 1883
		f 4 1438 1953 -1447 -1953
		mu 0 4 1866 1864 1877 1881
		f 4 1439 1954 -1448 -1954
		mu 0 4 1864 1862 1875 1877
		f 4 1440 1441 -1449 -1955
		mu 0 4 1862 1410 1575 1875
		f 4 1442 1955 -1451 1443
		mu 0 4 1576 1884 1897 1483
		f 4 1444 1956 -1453 -1956
		mu 0 4 1884 1882 1895 1897
		f 4 1445 1957 -1454 -1957
		mu 0 4 1882 1879 1892 1895
		f 4 1446 1958 -1455 -1958
		mu 0 4 1878 1876 1889 1893
		f 4 1447 1959 -1456 -1959
		mu 0 4 1876 1874 1887 1889
		f 4 1448 1449 -1457 -1960
		mu 0 4 1874 1413 1577 1887
		f 4 1450 1960 -1459 1451
		mu 0 4 1578 1896 1909 1485
		f 4 1452 1961 -1461 -1961
		mu 0 4 1896 1894 1907 1909
		f 4 1453 1962 -1462 -1962
		mu 0 4 1894 1891 1904 1907
		f 4 1454 1963 -1463 -1963
		mu 0 4 1890 1888 1901 1905
		f 4 1455 1964 -1464 -1964
		mu 0 4 1888 1886 1899 1901
		f 4 1456 1457 -1465 -1965
		mu 0 4 1886 1416 1579 1899
		f 4 1458 1965 -1467 1459
		mu 0 4 1580 1908 1921 1487
		f 4 1460 1966 -1469 -1966
		mu 0 4 1908 1906 1919 1921
		f 4 1461 1967 -1470 -1967
		mu 0 4 1906 1903 1916 1919
		f 4 1462 1968 -1471 -1968
		mu 0 4 1902 1900 1913 1917
		f 4 1463 1969 -1472 -1969
		mu 0 4 1900 1898 1911 1913
		f 4 1464 1465 -1473 -1970
		mu 0 4 1898 1419 1581 1911
		f 4 1466 1970 -1475 1467
		mu 0 4 1582 1920 1933 1489
		f 4 1468 1971 -1477 -1971
		mu 0 4 1920 1918 1931 1933
		f 4 1469 1972 -1478 -1972
		mu 0 4 1918 1915 1928 1931
		f 4 1470 1973 -1479 -1973
		mu 0 4 1914 1912 1925 1929
		f 4 1471 1974 -1480 -1974
		mu 0 4 1912 1910 1923 1925
		f 4 1472 1473 -1481 -1975
		mu 0 4 1910 1422 1583 1923
		f 4 1474 1975 -1483 1475
		mu 0 4 1584 1932 1945 1491
		f 4 1476 1976 -1485 -1976
		mu 0 4 1932 1930 1943 1945
		f 4 1477 1977 -1486 -1977
		mu 0 4 1930 1927 1940 1943
		f 4 1478 1978 -1487 -1978
		mu 0 4 1926 1924 1937 1941
		f 4 1479 1979 -1488 -1979
		mu 0 4 1924 1922 1935 1937
		f 4 1480 1481 -1489 -1980
		mu 0 4 1922 1425 1585 1935
		f 4 1482 1980 -1491 1483
		mu 0 4 1586 1944 1957 1493
		f 4 1484 1981 -1493 -1981
		mu 0 4 1944 1942 1955 1957
		f 4 1485 1982 -1494 -1982
		mu 0 4 1942 1939 1952 1955
		f 4 1486 1983 -1495 -1983
		mu 0 4 1938 1936 1949 1953
		f 4 1487 1984 -1496 -1984
		mu 0 4 1936 1934 1947 1949
		f 4 1488 1489 -1497 -1985
		mu 0 4 1934 1428 1587 1947
		f 4 1490 1985 -1499 1491
		mu 0 4 1588 1956 1969 1495
		f 4 1492 1986 -1501 -1986
		mu 0 4 1956 1954 1967 1969
		f 4 1493 1987 -1502 -1987
		mu 0 4 1954 1951 1964 1967
		f 4 1494 1988 -1503 -1988
		mu 0 4 1950 1948 1961 1965
		f 4 1495 1989 -1504 -1989
		mu 0 4 1948 1946 1959 1961
		f 4 1496 1497 -1505 -1990
		mu 0 4 1946 1431 1589 1959
		f 4 1498 1990 -1507 1499
		mu 0 4 1590 1968 1981 1497
		f 4 1500 1991 -1509 -1991
		mu 0 4 1968 1966 1979 1981
		f 4 1501 1992 -1510 -1992
		mu 0 4 1966 1963 1976 1979
		f 4 1502 1993 -1511 -1993
		mu 0 4 1962 1960 1973 1977
		f 4 1503 1994 -1512 -1994
		mu 0 4 1960 1958 1971 1973
		f 4 1504 1505 -1513 -1995
		mu 0 4 1958 1434 1591 1971
		f 4 1506 1995 -1515 1507
		mu 0 4 1592 1980 1993 1499
		f 4 1508 1996 -1517 -1996
		mu 0 4 1980 1978 1991 1993
		f 4 1509 1997 -1518 -1997
		mu 0 4 1978 1975 1988 1991
		f 4 1510 1998 -1519 -1998
		mu 0 4 1974 1972 1985 1989
		f 4 1511 1999 -1520 -1999
		mu 0 4 1972 1970 1983 1985
		f 4 1512 1513 -1521 -2000
		mu 0 4 1970 1437 1593 1983
		f 4 1514 2000 -1523 1515
		mu 0 4 1594 1992 2005 1501
		f 4 1516 2001 -1525 -2001
		mu 0 4 1992 1990 2003 2005
		f 4 1517 2002 -1526 -2002
		mu 0 4 1990 1987 2000 2003
		f 4 1518 2003 -1527 -2003
		mu 0 4 1986 1984 1997 2001
		f 4 1519 2004 -1528 -2004
		mu 0 4 1984 1982 1995 1997
		f 4 1520 1521 -1529 -2005
		mu 0 4 1982 1440 1595 1995
		f 4 1522 2005 -1298 1523
		mu 0 4 1596 2004 2016 1503
		f 4 1524 2006 -1296 -2006
		mu 0 4 2004 2002 2014 2016
		f 4 1525 2007 -1295 -2007
		mu 0 4 2002 1999 2010 2014
		f 4 1526 2008 -1294 -2008
		mu 0 4 1998 1996 2008 2011
		f 4 1527 2009 -1293 -2009
		mu 0 4 1996 1994 2006 2008
		f 4 1528 1529 -1291 -2010
		mu 0 4 1994 1443 1597 2006
		f 4 -1539 1536 1537 -2011
		mu 0 4 2029 1536 1598 2377
		f 4 -1541 2010 1535 -2012
		mu 0 4 2027 2029 2377 2375
		f 4 -1542 2011 1534 -2013
		mu 0 4 2024 2027 2375 2373
		f 4 -1543 2012 1533 -2014
		mu 0 4 2021 2025 2372 2369
		f 4 -1545 2014 1530 1531
		mu 0 4 1599 2019 2367 1506
		f 4 -1544 2013 1532 -2015
		mu 0 4 2019 2021 2369 2367
		f 4 1538 2015 -1547 1539
		mu 0 4 1600 2028 2041 1507
		f 4 1540 2016 -1549 -2016
		mu 0 4 2028 2026 2039 2041
		f 4 1541 2017 -1550 -2017
		mu 0 4 2026 2023 2036 2039
		f 4 1542 2018 -1551 -2018
		mu 0 4 2022 2020 2033 2037
		f 4 1543 2019 -1552 -2019
		mu 0 4 2020 2018 2031 2033
		f 4 1544 1545 -1553 -2020
		mu 0 4 2018 1448 1601 2031
		f 4 1546 2020 -1555 1547
		mu 0 4 1602 2040 2053 1508
		f 4 1548 2021 -1557 -2021
		mu 0 4 2040 2038 2051 2053
		f 4 1549 2022 -1558 -2022
		mu 0 4 2038 2035 2048 2051
		f 4 1550 2023 -1559 -2023
		mu 0 4 2034 2032 2045 2049
		f 4 1551 2024 -1560 -2024
		mu 0 4 2032 2030 2043 2045
		f 4 1552 1553 -1561 -2025
		mu 0 4 2030 1450 1603 2043
		f 4 1554 2025 -1563 1555
		mu 0 4 1604 2052 2065 1509
		f 4 1556 2026 -1565 -2026
		mu 0 4 2052 2050 2063 2065
		f 4 1557 2027 -1566 -2027
		mu 0 4 2050 2047 2060 2063
		f 4 1558 2028 -1567 -2028
		mu 0 4 2046 2044 2057 2061
		f 4 1559 2029 -1568 -2029
		mu 0 4 2044 2042 2055 2057
		f 4 1560 1561 -1569 -2030
		mu 0 4 2042 1452 1605 2055
		f 4 1562 2030 -1571 1563
		mu 0 4 1606 2064 2077 1510
		f 4 1564 2031 -1573 -2031
		mu 0 4 2064 2062 2075 2077
		f 4 1565 2032 -1574 -2032
		mu 0 4 2062 2059 2072 2075
		f 4 1566 2033 -1575 -2033
		mu 0 4 2058 2056 2069 2073
		f 4 1567 2034 -1576 -2034
		mu 0 4 2056 2054 2067 2069
		f 4 1568 1569 -1577 -2035
		mu 0 4 2054 1454 1607 2067
		f 4 1570 2035 -1579 1571
		mu 0 4 1608 2076 2089 1511
		f 4 1572 2036 -1581 -2036
		mu 0 4 2076 2074 2087 2089
		f 4 1573 2037 -1582 -2037
		mu 0 4 2074 2071 2084 2087
		f 4 1574 2038 -1583 -2038
		mu 0 4 2070 2068 2081 2085
		f 4 1575 2039 -1584 -2039
		mu 0 4 2068 2066 2079 2081
		f 4 1576 1577 -1585 -2040
		mu 0 4 2066 1456 1609 2079
		f 4 1578 2040 -1587 1579
		mu 0 4 1610 2088 2101 1512
		f 4 1580 2041 -1589 -2041
		mu 0 4 2088 2086 2099 2101
		f 4 1581 2042 -1590 -2042
		mu 0 4 2086 2083 2096 2099
		f 4 1582 2043 -1591 -2043
		mu 0 4 2082 2080 2093 2097
		f 4 1583 2044 -1592 -2044
		mu 0 4 2080 2078 2091 2093
		f 4 1584 1585 -1593 -2045
		mu 0 4 2078 1458 1611 2091
		f 4 1586 2045 -1595 1587
		mu 0 4 1612 2100 2113 1513
		f 4 1588 2046 -1597 -2046
		mu 0 4 2100 2098 2111 2113
		f 4 1589 2047 -1598 -2047
		mu 0 4 2098 2095 2108 2111
		f 4 1590 2048 -1599 -2048
		mu 0 4 2094 2092 2105 2109
		f 4 1591 2049 -1600 -2049
		mu 0 4 2092 2090 2103 2105
		f 4 1592 1593 -1601 -2050
		mu 0 4 2090 1460 1613 2103
		f 4 1594 2050 -1603 1595
		mu 0 4 1614 2112 2125 1514
		f 4 1596 2051 -1605 -2051
		mu 0 4 2112 2110 2123 2125
		f 4 1597 2052 -1606 -2052
		mu 0 4 2110 2107 2120 2123
		f 4 1598 2053 -1607 -2053
		mu 0 4 2106 2104 2117 2121
		f 4 1599 2054 -1608 -2054
		mu 0 4 2104 2102 2115 2117
		f 4 1600 1601 -1609 -2055
		mu 0 4 2102 1462 1615 2115
		f 4 1602 2055 -1611 1603
		mu 0 4 1616 2124 2137 1515
		f 4 1604 2056 -1613 -2056
		mu 0 4 2124 2122 2135 2137
		f 4 1605 2057 -1614 -2057
		mu 0 4 2122 2119 2132 2135
		f 4 1606 2058 -1615 -2058
		mu 0 4 2118 2116 2129 2133
		f 4 1607 2059 -1616 -2059
		mu 0 4 2116 2114 2127 2129
		f 4 1608 1609 -1617 -2060
		mu 0 4 2114 1464 1617 2127
		f 4 1610 2060 -1619 1611
		mu 0 4 1618 2136 2149 1516
		f 4 1612 2061 -1621 -2061
		mu 0 4 2136 2134 2147 2149
		f 4 1613 2062 -1622 -2062
		mu 0 4 2134 2131 2144 2147
		f 4 1614 2063 -1623 -2063
		mu 0 4 2130 2128 2141 2145
		f 4 1615 2064 -1624 -2064
		mu 0 4 2128 2126 2139 2141
		f 4 1616 1617 -1625 -2065
		mu 0 4 2126 1466 1619 2139
		f 4 1618 2065 -1627 1619
		mu 0 4 1620 2148 2161 1517
		f 4 1620 2066 -1629 -2066
		mu 0 4 2148 2146 2159 2161
		f 4 1621 2067 -1630 -2067
		mu 0 4 2146 2143 2156 2159
		f 4 1622 2068 -1631 -2068
		mu 0 4 2142 2140 2153 2157;
	setAttr ".fc[1000:1109]"
		f 4 1623 2069 -1632 -2069
		mu 0 4 2140 2138 2151 2153
		f 4 1624 1625 -1633 -2070
		mu 0 4 2138 1468 1621 2151
		f 4 1626 2070 -1635 1627
		mu 0 4 1622 2160 2173 1518
		f 4 1628 2071 -1637 -2071
		mu 0 4 2160 2158 2171 2173
		f 4 1629 2072 -1638 -2072
		mu 0 4 2158 2155 2168 2171
		f 4 1630 2073 -1639 -2073
		mu 0 4 2154 2152 2165 2169
		f 4 1631 2074 -1640 -2074
		mu 0 4 2152 2150 2163 2165
		f 4 1632 1633 -1641 -2075
		mu 0 4 2150 1470 1623 2163
		f 4 1634 2075 -1643 1635
		mu 0 4 1624 2172 2185 1519
		f 4 1636 2076 -1645 -2076
		mu 0 4 2172 2170 2183 2185
		f 4 1637 2077 -1646 -2077
		mu 0 4 2170 2167 2180 2183
		f 4 1638 2078 -1647 -2078
		mu 0 4 2166 2164 2177 2181
		f 4 1639 2079 -1648 -2079
		mu 0 4 2164 2162 2175 2177
		f 4 1640 1641 -1649 -2080
		mu 0 4 2162 1472 1625 2175
		f 4 1642 2080 -1651 1643
		mu 0 4 1626 2184 2197 1520
		f 4 1644 2081 -1653 -2081
		mu 0 4 2184 2182 2195 2197
		f 4 1645 2082 -1654 -2082
		mu 0 4 2182 2179 2192 2195
		f 4 1646 2083 -1655 -2083
		mu 0 4 2178 2176 2189 2193
		f 4 1647 2084 -1656 -2084
		mu 0 4 2176 2174 2187 2189
		f 4 1648 1649 -1657 -2085
		mu 0 4 2174 1474 1627 2187
		f 4 1650 2085 -1659 1651
		mu 0 4 1628 2196 2209 1521
		f 4 1652 2086 -1661 -2086
		mu 0 4 2196 2194 2207 2209
		f 4 1653 2087 -1662 -2087
		mu 0 4 2194 2191 2204 2207
		f 4 1654 2088 -1663 -2088
		mu 0 4 2190 2188 2201 2205
		f 4 1655 2089 -1664 -2089
		mu 0 4 2188 2186 2199 2201
		f 4 1656 1657 -1665 -2090
		mu 0 4 2186 1476 1629 2199
		f 4 1658 2090 -1667 1659
		mu 0 4 1630 2208 2221 1522
		f 4 1660 2091 -1669 -2091
		mu 0 4 2208 2206 2219 2221
		f 4 1661 2092 -1670 -2092
		mu 0 4 2206 2203 2216 2219
		f 4 1662 2093 -1671 -2093
		mu 0 4 2202 2200 2213 2217
		f 4 1663 2094 -1672 -2094
		mu 0 4 2200 2198 2211 2213
		f 4 1664 1665 -1673 -2095
		mu 0 4 2198 1478 1631 2211
		f 4 1666 2095 -1675 1667
		mu 0 4 1632 2220 2233 1523
		f 4 1668 2096 -1677 -2096
		mu 0 4 2220 2218 2231 2233
		f 4 1669 2097 -1678 -2097
		mu 0 4 2218 2215 2228 2231
		f 4 1670 2098 -1679 -2098
		mu 0 4 2214 2212 2225 2229
		f 4 1671 2099 -1680 -2099
		mu 0 4 2212 2210 2223 2225
		f 4 1672 1673 -1681 -2100
		mu 0 4 2210 1480 1633 2223
		f 4 1674 2100 -1683 1675
		mu 0 4 1634 2232 2245 1524
		f 4 1676 2101 -1685 -2101
		mu 0 4 2232 2230 2243 2245
		f 4 1677 2102 -1686 -2102
		mu 0 4 2230 2227 2240 2243
		f 4 1678 2103 -1687 -2103
		mu 0 4 2226 2224 2237 2241
		f 4 1679 2104 -1688 -2104
		mu 0 4 2224 2222 2235 2237
		f 4 1680 1681 -1689 -2105
		mu 0 4 2222 1482 1635 2235
		f 4 1682 2105 -1691 1683
		mu 0 4 1636 2244 2257 1525
		f 4 1684 2106 -1693 -2106
		mu 0 4 2244 2242 2255 2257
		f 4 1685 2107 -1694 -2107
		mu 0 4 2242 2239 2252 2255
		f 4 1686 2108 -1695 -2108
		mu 0 4 2238 2236 2249 2253
		f 4 1687 2109 -1696 -2109
		mu 0 4 2236 2234 2247 2249
		f 4 1688 1689 -1697 -2110
		mu 0 4 2234 1484 1637 2247
		f 4 1690 2110 -1699 1691
		mu 0 4 1638 2256 2269 1526
		f 4 1692 2111 -1701 -2111
		mu 0 4 2256 2254 2267 2269
		f 4 1693 2112 -1702 -2112
		mu 0 4 2254 2251 2264 2267
		f 4 1694 2113 -1703 -2113
		mu 0 4 2250 2248 2261 2265
		f 4 1695 2114 -1704 -2114
		mu 0 4 2248 2246 2259 2261
		f 4 1696 1697 -1705 -2115
		mu 0 4 2246 1486 1639 2259
		f 4 1698 2115 -1707 1699
		mu 0 4 1640 2268 2281 1527
		f 4 1700 2116 -1709 -2116
		mu 0 4 2268 2266 2279 2281
		f 4 1701 2117 -1710 -2117
		mu 0 4 2266 2263 2276 2279
		f 4 1702 2118 -1711 -2118
		mu 0 4 2262 2260 2273 2277
		f 4 1703 2119 -1712 -2119
		mu 0 4 2260 2258 2271 2273
		f 4 1704 1705 -1713 -2120
		mu 0 4 2258 1488 1641 2271
		f 4 1706 2120 -1715 1707
		mu 0 4 1642 2280 2293 1528
		f 4 1708 2121 -1717 -2121
		mu 0 4 2280 2278 2291 2293
		f 4 1709 2122 -1718 -2122
		mu 0 4 2278 2275 2288 2291
		f 4 1710 2123 -1719 -2123
		mu 0 4 2274 2272 2285 2289
		f 4 1711 2124 -1720 -2124
		mu 0 4 2272 2270 2283 2285
		f 4 1712 1713 -1721 -2125
		mu 0 4 2270 1490 1643 2283
		f 4 1714 2125 -1723 1715
		mu 0 4 1644 2292 2305 1529
		f 4 1716 2126 -1725 -2126
		mu 0 4 2292 2290 2303 2305
		f 4 1717 2127 -1726 -2127
		mu 0 4 2290 2287 2300 2303
		f 4 1718 2128 -1727 -2128
		mu 0 4 2286 2284 2297 2301
		f 4 1719 2129 -1728 -2129
		mu 0 4 2284 2282 2295 2297
		f 4 1720 1721 -1729 -2130
		mu 0 4 2282 1492 1645 2295
		f 4 1722 2130 -1731 1723
		mu 0 4 1646 2304 2317 1530
		f 4 1724 2131 -1733 -2131
		mu 0 4 2304 2302 2315 2317
		f 4 1725 2132 -1734 -2132
		mu 0 4 2302 2299 2312 2315
		f 4 1726 2133 -1735 -2133
		mu 0 4 2298 2296 2309 2313
		f 4 1727 2134 -1736 -2134
		mu 0 4 2296 2294 2307 2309
		f 4 1728 1729 -1737 -2135
		mu 0 4 2294 1494 1647 2307
		f 4 1730 2135 -1739 1731
		mu 0 4 1648 2316 2329 1531
		f 4 1732 2136 -1741 -2136
		mu 0 4 2316 2314 2327 2329
		f 4 1733 2137 -1742 -2137
		mu 0 4 2314 2311 2324 2327
		f 4 1734 2138 -1743 -2138
		mu 0 4 2310 2308 2321 2325
		f 4 1735 2139 -1744 -2139
		mu 0 4 2308 2306 2319 2321
		f 4 1736 1737 -1745 -2140
		mu 0 4 2306 1496 1649 2319
		f 4 1738 2140 -1747 1739
		mu 0 4 1650 2328 2341 1532
		f 4 1740 2141 -1749 -2141
		mu 0 4 2328 2326 2339 2341
		f 4 1741 2142 -1750 -2142
		mu 0 4 2326 2323 2336 2339
		f 4 1742 2143 -1751 -2143
		mu 0 4 2322 2320 2333 2337
		f 4 1743 2144 -1752 -2144
		mu 0 4 2320 2318 2331 2333
		f 4 1744 1745 -1753 -2145
		mu 0 4 2318 1498 1651 2331
		f 4 1746 2145 -1755 1747
		mu 0 4 1652 2340 2353 1533
		f 4 1748 2146 -1757 -2146
		mu 0 4 2340 2338 2351 2353
		f 4 1749 2147 -1758 -2147
		mu 0 4 2338 2335 2348 2351
		f 4 1750 2148 -1759 -2148
		mu 0 4 2334 2332 2345 2349
		f 4 1751 2149 -1760 -2149
		mu 0 4 2332 2330 2343 2345
		f 4 1752 1753 -1761 -2150
		mu 0 4 2330 1500 1653 2343
		f 4 1754 2150 -1763 1755
		mu 0 4 1654 2352 2365 1534
		f 4 1756 2151 -1765 -2151
		mu 0 4 2352 2350 2363 2365
		f 4 1757 2152 -1766 -2152
		mu 0 4 2350 2347 2360 2363
		f 4 1758 2153 -1767 -2153
		mu 0 4 2346 2344 2357 2361
		f 4 1759 2154 -1768 -2154
		mu 0 4 2344 2342 2355 2357
		f 4 1760 1761 -1769 -2155
		mu 0 4 2342 1502 1655 2355
		f 4 1762 2155 -1538 1763
		mu 0 4 1656 2364 2376 1535
		f 4 1764 2156 -1536 -2156
		mu 0 4 2364 2362 2374 2376
		f 4 1765 2157 -1535 -2157
		mu 0 4 2362 2359 2370 2374
		f 4 1766 2158 -1534 -2158
		mu 0 4 2358 2356 2368 2371
		f 4 1767 2159 -1533 -2159
		mu 0 4 2356 2354 2366 2368
		f 4 1768 1769 -1531 -2160
		mu 0 4 2354 1504 1657 2366;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LampShade" -p "Lamp";
	rename -uid "52406E06-4784-F18E-B3D0-CFB4367EE384";
	setAttr ".rp" -type "double3" -2.3454523930569851 2.5512442201536074 -1.2201944659744406 ;
	setAttr ".sp" -type "double3" -2.3454523930569851 2.5512442201536074 -1.2201944659744406 ;
createNode mesh -n "LampShadeShape" -p "LampShade";
	rename -uid "942ECE2C-407D-A4CC-0C01-418FB60C7C8E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 357 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 1 0.050000001 1 0.1 1 0.15000001
		 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006 1 0.55000007
		 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014 1 0.90000015
		 1 0.95000017 1 1.000000119209 1 1.000000119209 0.75 0 0.5 0 0.25 0.050000001 0.25
		 0.1 0.25 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004
		 0.25 0.45000005 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25
		 0.70000011 0.25 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017
		 0.25 1.000000119209 0.25 0 0 0.050000001 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001
		 0 0.35000002 0 0.40000004 0 0.45000005 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001
		 0 0.70000011 0 0.75000012 0 0.80000013 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209
		 0 9.9917985e-09 0.75 0 0.62498605 4.311838e-08 0.65206981 0.049999908 0.62498373
		 0.050000101 0.65207189 0.09999986 0.62498546 0.10000004 0.65207171 0.14999992 0.62498558
		 0.15000002 0.65207148 0.20000003 0.62498617 0.19999993 0.6520713 0.24999985 0.62498569
		 0.25 0.65207022 0.3000001 0.62498564 0.30000001 0.652071 0.35000008 0.62498355 0.34999993
		 0.65207124 0.39999992 0.62498647 0.4000001 0.65207112 0.45000005 0.62498677 0.45000008
		 0.65206975 0.5 0.62498558 0.50000006 0.65207165 0.55000001 0.6249851 0.55000013 0.65207058
		 0.60000008 0.62498564 0.60000008 0.6520713 0.64999998 0.62498492 0.65000015 0.65207165
		 0.69999987 0.62498462 0.70000023 0.6520713 0.75000024 0.6249851 0.74999994 0.65206999
		 0.80000013 0.62498635 0.80000013 0.65207154 0.85000008 0.62498736 0.8500002 0.65207189
		 0.90000015 0.6249854 0.90000015 0.65207124 0.95000017 0.62498748 0.95000017 0.65207213
		 1.000000119209 0.62498605 0 0.75 0.050000001 0.75 0.050000001 0.5 1.0555373e-08 0.5
		 0.050000001 0.75 0.099999979 0.75 0.1 0.5 0.050000023 0.5 0.1 0.75 0.15000001 0.75
		 0.15000001 0.5 0.099999979 0.5 0.15000001 0.75 0.19999994 0.75 0.2 0.5 0.15000001
		 0.5 0.2 0.75 0.25 0.75 0.25 0.5 0.2 0.5 0.25 0.75 0.30000001 0.75 0.30000001 0.5
		 0.25 0.5 0.30000001 0.75 0.35000011 0.75 0.35000002 0.5 0.30000004 0.5 0.35000002
		 0.75 0.40000001 0.75 0.40000004 0.5 0.35000002 0.5 0.40000004 0.75 0.45000005 0.75
		 0.45000005 0.5 0.40000004 0.5 0.45000005 0.75 0.50000006 0.75 0.50000006 0.5 0.45000005
		 0.5 0.50000006 0.75 0.55000013 0.75 0.55000007 0.5 0.50000006 0.5 0.55000007 0.75
		 0.60000008 0.75 0.60000008 0.5 0.55000007 0.5 0.60000008 0.75 0.6500001 0.75 0.6500001
		 0.5 0.60000008 0.5 0.6500001 0.75 0.70000011 0.75 0.70000011 0.5 0.6500001 0.5 0.70000011
		 0.75 0.75000012 0.75 0.75000012 0.5 0.70000005 0.5 0.75000012 0.75 0.80000013 0.75
		 0.80000013 0.5 0.75000012 0.5 0.80000013 0.75 0.85000008 0.75 0.85000014 0.5 0.80000013
		 0.5 0.85000014 0.75 0.90000015 0.75 0.90000015 0.5 0.85000008 0.5 0.90000015 0.75
		 0.95000017 0.75 0.95000017 0.5 0.90000015 0.5 0.95000017 0.75 1.000000119209 0.75
		 1.000000119209 0.5 0.95000017 0.5 1.000000119209 0.65207011 1.000000119209 0.5 1.000000119209
		 0.67177874 3.6451564e-08 0.6717785 1.000000119209 0.69143778 2.9801546e-08 0.6914376
		 1.000000119209 0.71102422 2.3176069e-08 0.71102411 1.000000119209 0.73053688 1.6575553e-08
		 0.73053682 0.050000027 0.74316764 0.050000031 0.73645878 0.050000012 0.73000979 0.050000064
		 0.69068617 1.000000119209 0.52482688 8.45868e-09 0.52482688 1.000000119209 0.54974103
		 6.3546253e-09 0.54974103 1.000000119209 0.57473826 4.2435442e-09 0.57473826 1.000000119209
		 0.59981906 2.1254107e-09 0.59981906 0.049999934 0.59948742 0.049999978 0.57435775
		 0.049999971 0.54945689 0.050000001 0.52468991 0.099999994 0.73028564 0.099999994
		 0.71056801 0.10000002 0.69091588 0.10000004 0.67137754 0.099999875 0.59948838 0.099999927
		 0.57435781 0.099999912 0.5494563 0.099999942 0.52468956 0.15000002 0.73011523 0.15000004
		 0.71028006 0.15000004 0.69061244 0.15000005 0.67119646 0.14999993 0.59948838 0.14999993
		 0.57435834 0.14999996 0.54945678 0.14999999 0.52469021 0.19999993 0.73011458 0.19999994
		 0.71027845 0.1999999 0.69061035 0.1999999 0.67119497 0.20000003 0.59948891 0.20000002
		 0.57435799 0.19999999 0.549456 0.20000002 0.52468997 0.25 0.73011363 0.24999994 0.71027845
		 0.24999994 0.69061005 0.25 0.67119479 0.24999987 0.59948856 0.24999996 0.57435775
		 0.2499999 0.5494554 0.24999993 0.5246895 0.30000001 0.7301138 0.30000001 0.71027839
		 0.29999998 0.69061095 0.29999995 0.67119569 0.3000001 0.59948778;
	setAttr ".uvst[0].uvsp[250:356]" 0.30000001 0.57435876 0.30000007 0.54945564
		 0.30000001 0.52469021 0.35000005 0.73011428 0.34999999 0.71027827 0.34999996 0.69060981
		 0.34999996 0.67119473 0.35000014 0.59948623 0.35000008 0.5743562 0.35000014 0.54945612
		 0.35000005 0.52468985 0.40000004 0.73011345 0.4000001 0.71027821 0.40000007 0.69060975
		 0.40000013 0.67119443 0.39999992 0.59948963 0.39999998 0.57435852 0.40000004 0.54945672
		 0.40000001 0.52469045 0.45000005 0.73011327 0.45000008 0.7102775 0.45000008 0.69060951
		 0.45000011 0.67119342 0.45000005 0.5994885 0.45000005 0.57435793 0.45000002 0.54945636
		 0.45000008 0.52469105 0.50000006 0.73011386 0.50000006 0.71027839 0.50000006 0.69061065
		 0.50000006 0.67119563 0.5 0.59948826 0.50000006 0.57435864 0.50000006 0.54945672
		 0.50000006 0.52468973 0.55000019 0.73011333 0.55000013 0.71027756 0.55000013 0.69061011
		 0.55000013 0.67119449 0.55000007 0.5994885 0.55000007 0.57435811 0.55000007 0.54945654
		 0.55000007 0.52468961 0.60000014 0.73011321 0.60000014 0.71027821 0.60000008 0.69060934
		 0.60000014 0.67119461 0.60000008 0.5994882 0.60000014 0.57435906 0.60000014 0.54945666
		 0.60000008 0.52469069 0.6500001 0.73011422 0.65000015 0.71027792 0.65000015 0.69061029
		 0.65000015 0.67119479 0.64999998 0.5994882 0.65000004 0.57435811 0.65000004 0.54945672
		 0.65000004 0.52468914 0.70000011 0.73011321 0.70000023 0.71027827 0.70000011 0.69061053
		 0.70000029 0.67119479 0.69999987 0.5994876 0.69999987 0.57435685 0.69999999 0.54945552
		 0.70000005 0.52468914 0.75000006 0.73011339 0.75 0.71027684 0.75000006 0.6906088
		 0.75 0.67119402 0.75000024 0.59948754 0.7500003 0.57435685 0.7500003 0.54945493 0.75000018
		 0.52468914 0.80000013 0.73011357 0.80000019 0.71027875 0.80000007 0.69061065 0.80000013
		 0.67119557 0.80000013 0.59948939 0.80000013 0.5743593 0.80000019 0.549456 0.80000013
		 0.52468967 0.85000014 0.73011422 0.85000014 0.71027839 0.85000014 0.69061095 0.85000014
		 0.67119545 0.85000008 0.59948933 0.85000002 0.57435894 0.85000008 0.54945678 0.85000008
		 0.52469051 0.90000015 0.73011327 0.90000015 0.71027792 0.90000015 0.69061035 0.90000015
		 0.67119527 0.90000015 0.59948778 0.90000015 0.57435787 0.90000015 0.54945642 0.90000021
		 0.52468944 0.95000017 0.73011893 0.95000023 0.71028608 0.95000017 0.69061786 0.95000017
		 0.67120057 0.95000017 0.59949076 0.95000017 0.5743593 0.95000017 0.54945695 0.95000017
		 0.52468961;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 320 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -0.31870207 -0.1354489 -0.46447307 
		-0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 
		-0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 
		-0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 
		-0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 
		-0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 
		-0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 
		-0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 
		-0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 
		-0.46447307 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 
		-0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 
		-0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 
		-0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 
		-0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 
		-0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 
		-0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 
		-0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 
		-0.31870207 -0.1354489 -0.46447307 -0.31870207 -0.1354489 -0.46447307 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828;
	setAttr ".pt[166:319]" -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 
		-0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 
		-0.31870207 -0.24776635 -0.44794828 -0.31870207 -0.24776635 -0.44794828 -0.31870207 
		-0.24776635 -0.44794828;
	setAttr -s 320 ".vt";
	setAttr ".vt[0:165]"  -1.5929848 2.46835375 -0.71840245 -1.61217022 2.4499507 -0.8538934
		 -1.67265904 2.43421435 -0.97701114 -1.76853001 2.42268467 -1.075704336 -1.89039874 2.41649055 -1.14031196
		 -2.026336193 2.41623831 -1.16451001 -2.16303515 2.42195225 -1.14592957 -2.2871151 2.43307352 -1.086389542
		 -2.38643026 2.44851351 -0.99171811 -2.45125866 2.4667604 -0.87118238 -2.47525454 2.48602843 -0.73658121
		 -2.45606899 2.50443149 -0.60109031 -2.39558029 2.52016783 -0.47797239 -2.29970908 2.53169751 -0.37927926
		 -2.17784023 2.53789163 -0.31467158 -2.041903019 2.53814411 -0.29047361 -1.9052037 2.53242993 -0.30905393
		 -1.78112388 2.52130866 -0.36859399 -1.68180895 2.50586867 -0.46326542 -1.6169802 2.48762178 -0.58380121
		 -1.78779447 3.11619067 -0.81222886 -1.7978667 3.10652947 -0.88335878 -1.82962191 3.098268032 -0.94799304
		 -1.87995231 3.0922153 -0.99980485 -1.94393063 3.088963509 -1.03372252 -2.015295029 3.088830948 -1.046426058
		 -2.087059259 3.09183073 -1.036671638 -2.15219855 3.097669363 -1.0054143667 -2.20433688 3.10577488 -0.95571387
		 -2.23837042 3.11535406 -0.89243513 -2.25096774 3.12546945 -0.82177228 -2.24089575 3.13513064 -0.75064236
		 -2.20914054 3.14339185 -0.68600798 -2.15881014 3.14944482 -0.63419616 -2.094831467 3.15269661 -0.60027844
		 -2.023467302 3.15282917 -0.58757496 -1.95170295 3.14982915 -0.59732938 -1.88656354 3.14399076 -0.62858665
		 -1.83442545 3.13588524 -0.67828715 -1.80039179 3.12630582 -0.74156594 -1.76901734 3.11581445 -0.81184196
		 -1.7799058 3.10537004 -0.88873911 -1.81423581 3.096438885 -0.95861399 -1.8686471 3.089895248 -1.014626861
		 -1.93781316 3.086379766 -1.051294565 -2.014963627 3.086236477 -1.065027952 -2.092546701 3.089479446 -1.054482818
		 -2.16296768 3.09579134 -1.020691156 -2.21933317 3.10455418 -0.96696091 -2.25612617 3.11491013 -0.8985514
		 -2.26974511 3.12584567 -0.82215917 -2.2588563 3.13629007 -0.74526203 -2.22452641 3.14522123 -0.67538702
		 -2.17011523 3.15176487 -0.61937422 -2.10094929 3.15528035 -0.58270645 -2.023798466 3.15542364 -0.568973
		 -1.94621563 3.15218043 -0.5795182 -1.87579477 3.14586878 -0.61330986 -1.81942892 3.13710594 -0.66704011
		 -1.78263593 3.12674999 -0.73544961 -1.55721724 2.4676373 -0.71766549 -1.57795811 2.44774222 -0.86414206
		 -1.64335132 2.43072963 -0.99724245 -1.74699569 2.41826534 -1.10393775 -1.87874591 2.41156888 -1.17378378
		 -2.025705099 2.41129613 -1.19994378 -2.1734879 2.41747355 -1.17985678 -2.30762839 2.42949653 -1.11548936
		 -2.41499567 2.44618821 -1.01314187 -2.48508048 2.46591473 -0.88283294 -2.51102209 2.48674488 -0.73731816
		 -2.49028111 2.50663996 -0.59084153 -2.42488766 2.52365255 -0.4577412 -2.32124329 2.53611684 -0.35104585
		 -2.18949318 2.5428133 -0.28119972 -2.042534113 2.54308605 -0.25503969 -1.89475131 2.53690863 -0.2751267
		 -1.7606107 2.52488565 -0.33949426 -1.65324318 2.50819397 -0.44184172 -1.58315825 2.48846745 -0.57215071
		 -1.77720809 3.13729143 -0.81498331 -1.78102386 3.13672781 -0.81497264 -1.78443027 3.13494897 -0.81478518
		 -1.78703678 3.13215923 -0.81444252 -1.78854394 3.12868047 -0.81398416 -1.78877795 3.12491441 -0.81346309
		 -1.7987988 3.11530232 -0.88422978 -1.79857135 3.11906219 -0.88479626 -1.79712629 3.12248158 -0.88569289
		 -1.79463029 3.12516522 -0.88681614 -1.79137027 3.12680364 -0.88803685 -1.78771985 3.12720871 -0.88921499
		 -1.76510382 3.12269378 -0.81273174 -1.76389611 3.12649822 -0.81324083 -1.76434219 3.13047194 -0.81380296
		 -1.76636875 3.13394141 -0.81432295 -1.76963985 3.13632298 -0.81471336 -1.77361429 3.13721943 -0.81490916
		 -1.78428161 3.12698698 -0.89024466 -1.78048086 3.12592387 -0.89127529 -1.77735436 3.12340355 -0.89190584
		 -1.77541924 3.11984634 -0.89203238 -1.77499664 3.11585021 -0.89163506 -1.77615559 3.11209249 -0.89078194
		 -1.83039176 3.10708308 -0.94853389 -1.83018446 3.1108377 -0.94914156 -1.82893503 3.11420608 -0.95043635
		 -1.82678759 3.11679912 -0.9522689 -1.8239888 3.1183176 -0.95442849 -1.82085955 3.11858726 -0.95666748
		 -1.81791437 3.11823702 -0.95870018 -1.81466115 3.11703157 -0.96084529 -1.8119905 3.11439276 -0.9624036
		 -1.81034398 3.11076045 -0.96311772 -1.80999494 3.10674524 -0.96287024 -1.81100035 3.10302758 -0.96170455
		 -1.88046515 3.10106111 -1.000081062317 -1.88029003 3.10481191 -1.00072169304 -1.87935066 3.10814309 -1.0023357868
		 -1.87775552 3.11066961 -1.0047369003 -1.87568784 3.11210012 -1.0076491833 -1.87338471 3.11227036 -1.010738492
		 -1.87122071 3.11182642 -1.013575435 -1.86883533 3.11051655 -1.016613841 -1.86688697 3.10779095 -1.018915892
		 -1.8656981 3.10410357 -1.020100951 -1.86546564 3.10007429 -1.019973636 -1.86622763 3.096385717 -1.01855731
		 -1.94411659 3.097826004 -1.033825636 -1.94398212 3.10157466 -1.034487963 -1.94343698 3.10488582 -1.036310911
		 -1.94254386 3.10737681 -1.039084196 -1.94140553 3.10876012 -1.042489171 -1.94015253 3.10887694 -1.046135187
		 -1.93898177 3.10838246 -1.049498558 -1.93769956 3.10701656 -1.053121805 -1.93666959 3.10424423 -1.055910707
		 -1.93606222 3.10052729 -1.057404041 -1.93597817 3.096490622 -1.057355285 -1.93643069 3.092817783 -1.055775046
		 -2.015116692 3.097694397 -1.046464324 -2.015027761 3.10144305 -1.047134757 -2.014922142 3.10475326 -1.049036026
		 -2.014812231 3.10724258 -1.051948905 -2.014710665 3.10862398 -1.055538297 -2.014628887 3.10873866 -1.059392929
		 -2.014565229 3.10824203 -1.062953234 -2.014513493 3.10687375 -1.066795468 -2.014508009 3.10409951 -1.069766641
		 -2.014549255 3.10038137 -1.071375489 -2.014630556 3.096344471 -1.071356058 -2.014738083 3.092672348 -1.069714308
		 -2.086514473 3.10067868 -1.036759734 -2.086471319 3.10442924 -1.037423968 -2.086807966 3.10775805 -1.039265156
		 -2.087485552 3.11028028 -1.042070866 -2.088426352 3.1117053 -1.045518637 -2.0895226 3.1118691 -1.049213171
		 -2.090573072 3.11141896 -1.052622199 -2.091758728 3.11010242 -1.056296349 -2.092782974 3.10737133 -1.05912745
		 -2.093476772 3.10368037 -1.060647607 -2.093724251 3.099650383 -1.060605645 -2.09348464 3.095963717 -1.059010983
		 -2.15132117 3.10648775 -1.0056619644 -2.1513195 3.11024189 -1.0063062906;
	setAttr ".vt[166:319]" -2.15205741 3.11360669 -1.0079548359 -2.15345001 3.11619306 -1.0104177
		 -2.1553371 3.11770272 -1.013411403 -2.15750241 3.11796236 -1.01659286 -2.15956402 3.11760306 -1.019517064
		 -2.16187286 3.11638713 -1.022652149 -2.16383219 3.11373973 -1.025034666 -2.16511798 3.11010194 -1.026270628
		 -2.16551638 3.1060853 -1.026156187 -2.16496158 3.1023705 -1.024712801 -2.20319319 3.11455154 -0.95621538
		 -2.2032249 3.11831093 -0.956828 -2.20428419 3.12172556 -0.95817035 -2.20624876 3.12440109 -0.96008766
		 -2.2088933 3.12602854 -0.96235937 -2.2119143 3.12642121 -0.96472508 -2.21478438 3.12618756 -0.96687794
		 -2.21799207 3.12511158 -0.96915609 -2.22070003 3.12258053 -0.9708252 -2.22245979 3.11901641 -0.97160941
		 -2.22297907 3.11501861 -0.97137976 -2.22217226 3.11126447 -0.9701767 -2.23705292 3.12408185 -0.89325976
		 -2.23710632 3.12784743 -0.89383203 -2.23837519 3.13132119 -0.89478451 -2.24071336 3.13410163 -0.89600736
		 -2.24385238 3.13586831 -0.89735991 -2.24743199 3.1364181 -0.89868701 -2.25083017 3.13633323 -0.89985764
		 -2.25462484 3.13542223 -0.90104479 -2.25782108 3.13302875 -0.90180558 -2.25989008 3.12955165 -0.90201467
		 -2.26048851 3.12557626 -0.90163839 -2.25951695 3.12177587 -0.9007414 -2.24958587 3.1341455 -0.82295775
		 -2.24964714 3.13791752 -0.82348496 -2.25099373 3.1414535 -0.82400209 -2.25347018 3.14434505 -0.82444948
		 -2.25679207 3.14625859 -0.82477552 -2.26057839 3.14697456 -0.82494283 -2.26417255 3.14704657 -0.82501692
		 -2.26818442 3.14631009 -0.82498562 -2.27156138 3.1440618 -0.82473218 -2.27374506 3.14067674 -0.82429892
		 -2.27437234 3.13672447 -0.8237589 -2.27333999 3.1328752 -0.82320362 -2.23956513 3.14375734 -0.75219107
		 -2.23961997 3.14753556 -0.75267285 -2.24090457 3.15113115 -0.75275183 -2.2432704 3.15412879 -0.75241858
		 -2.24644589 3.15618277 -0.75171137 -2.250067 3.15705729 -0.7507112 -2.25350475 3.15727901 -0.74968153
		 -2.25734282 3.15670919 -0.74842381 -2.26057529 3.15459943 -0.74714941 -2.26266742 3.15130234 -0.74606961
		 -2.26327157 3.14737248 -0.74536467 -2.26228786 3.14347649 -0.74515343 -2.20797229 3.15197682 -0.68788677
		 -2.20800686 3.15576029 -0.68832737 -2.20909572 3.15940666 -0.68800801 -2.21111321 3.1624949 -0.68696547
		 -2.21382737 3.1646688 -0.68531936 -2.21692729 3.16567898 -0.68325835 -2.21987224 3.16602898 -0.68122542
		 -2.22316289 3.16560149 -0.67885327 -2.22593951 3.16361046 -0.67665118 -2.22774291 3.16038823 -0.67498386
		 -2.22827363 3.15647769 -0.67412919 -2.22744346 3.15254164 -0.67423058 -2.1578989 3.15799904 -0.6363396
		 -2.15790153 3.16178632 -0.63674712 -2.1586802 3.16547012 -0.63610864 -2.16014528 3.16862464 -0.63449746
		 -2.16212845 3.17088652 -0.63209873 -2.16440225 3.17199588 -0.62918729 -2.16656637 3.17243981 -0.62635028
		 -2.16898918 3.17211676 -0.62308478 -2.1710434 3.17021251 -0.62013894 -2.17238927 3.16704535 -0.61800063
		 -2.17280316 3.16314864 -0.61702591 -2.17221642 3.1591835 -0.61737782 -2.094246864 3.1612339 -0.60259509
		 -2.094208717 3.16502333 -0.60298103 -2.094593048 3.16872692 -0.60213363 -2.095356226 3.1719172 -0.60015029
		 -2.096409798 3.17422652 -0.59725887 -2.0976336 3.17538929 -0.59379077 -2.098805189 3.17588377 -0.59042746
		 -2.10012484 3.17561674 -0.58657712 -2.1012609 3.17375922 -0.58314443 -2.10202503 3.17062163 -0.58069783
		 -2.10229063 3.16673255 -0.57964438 -2.10201335 3.16275167 -0.58016032 -2.023247242 3.16136575 -0.58995652
		 -2.023163557 3.16515517 -0.59033436 -2.023108482 3.16885996 -0.58940864 -2.023088217 3.17205167 -0.58728582
		 -2.023105383 3.17436266 -0.58420986 -2.023157835 3.17552757 -0.58053321 -2.023220778 3.1760242 -0.57697278
		 -2.023309946 3.17575955 -0.57290345 -2.023421526 3.1739037 -0.56928843 -2.023537159 3.17076731 -0.56672633
		 -2.023637533 3.1668787 -0.56564349 -2.023705482 3.16289711 -0.56622088 -1.95184934 3.15838122 -0.59966099
		 -1.95171988 3.16216874 -0.60004503 -1.95122254 3.16585469 -0.59917939 -1.9504149 3.1690135 -0.59716362
		 -1.94938946 3.17128086 -0.59422934 -1.948264 3.17239666 -0.59071285 -1.94721377 3.17284679 -0.58730376
		 -1.94606555 3.17253041 -0.58340257 -1.94514716 3.17063165 -0.57992756 -1.94461036 3.16746783 -0.57745415
		 -1.94454432 3.16357207 -0.57639396 -1.94495928 3.15960503 -0.5769242 -1.88704264 3.15257239 -0.63075864
		 -1.88687158 3.1563561 -0.63116264 -1.88597298 3.16000628 -0.63048959 -1.88445044 3.16310096 -0.6288169
		 -1.88247883 3.16528368 -0.62633675 -1.88028419 3.16630363 -0.62333328 -1.8782233 3.16666317 -0.62040919
		 -1.87595189 3.16624618 -0.61704695 -1.87409854 3.16426373 -0.61402059 -1.87296963 3.16104698 -0.61183131
		 -1.87275255 3.15713787 -0.61084354 -1.87348247 3.15319896 -0.61122257 -1.83517075 3.14450812 -0.6802054
		 -1.83496654 3.14828682 -0.68064111 -1.83374667 3.15188694 -0.68027431 -1.83165193 3.15489268 -0.67914706
		 -1.82892287 3.15695763 -0.67738879 -1.82587254 3.15784454 -0.67520106 -1.8230021 3.15807819 -0.67304832
		 -1.81983173 3.15752125 -0.67054302 -1.81722999 3.15542245 -0.66823006 -1.81562722 3.15213203 -0.66649252
		 -1.81528926 3.14820385 -0.66561997 -1.81627142 3.14430428 -0.66575861 -1.8013109 3.13497758 -0.74316108
		 -1.801085 3.13875008 -0.74363714 -1.79965544 3.14229131 -0.74366021 -1.79718721 3.14519215 -0.74322742
		 -1.79396379 3.14711785 -0.74238837 -1.79035485 3.14784765 -0.74123925 -1.78695643 3.14793253 -0.7400685
		 -1.78319919 3.1472106 -0.73865432 -1.78010893 3.14497423 -0.73724955 -1.77819669 3.14159679 -0.73608726
		 -1.77777994 3.13764644 -0.73536128 -1.77892661 3.13379312 -0.73519391;
	setAttr -s 640 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 40 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 60 0 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1
		 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1
		 17 37 1 18 38 1 19 39 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1 47 67 1
		 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1 58 78 1
		 59 79 1 60 0 1 61 1 1 62 2 1 63 3 1 64 4 1 65 5 1 66 6 1 67 7 1 68 8 1 69 9 1 70 10 1
		 71 11 1 72 12 1 73 13 1 74 14 1 75 15 1 76 16 1 77 17 1 78 18 1 79 19 1 313 80 1
		 85 308 1 85 84 1 84 87 1 87 86 1 86 85 1 84 83 1 83 88 1 88 87 1 83 82 1 82 89 1
		 89 88 1 82 81 1 81 90 1 90 89 1 81 80 1 80 91 1 91 90 1 105 104 1 104 86 1 106 105 1
		 107 106 1 108 107 1 91 109 1 109 108 1 319 92 1;
	setAttr ".ed[166:331]" 97 314 1 97 96 1 96 99 1 99 98 1 98 97 1 96 95 1 95 100 1
		 100 99 1 95 94 1 94 101 1 101 100 1 94 93 1 93 102 1 102 101 1 93 92 1 92 103 1 103 102 1
		 111 110 1 110 98 1 112 111 1 113 112 1 114 113 1 103 115 1 115 114 1 117 116 1 116 104 1
		 118 117 1 119 118 1 120 119 1 109 121 1 121 120 1 123 122 1 122 110 1 124 123 1 125 124 1
		 126 125 1 115 127 1 127 126 1 129 128 1 128 116 1 130 129 1 131 130 1 132 131 1 121 133 1
		 133 132 1 135 134 1 134 122 1 136 135 1 137 136 1 138 137 1 127 139 1 139 138 1 141 140 1
		 140 128 1 142 141 1 143 142 1 144 143 1 133 145 1 145 144 1 147 146 1 146 134 1 148 147 1
		 149 148 1 150 149 1 139 151 1 151 150 1 153 152 1 152 140 1 154 153 1 155 154 1 156 155 1
		 145 157 1 157 156 1 159 158 1 158 146 1 160 159 1 161 160 1 162 161 1 151 163 1 163 162 1
		 165 164 1 164 152 1 166 165 1 167 166 1 168 167 1 157 169 1 169 168 1 171 170 1 170 158 1
		 172 171 1 173 172 1 174 173 1 163 175 1 175 174 1 177 176 1 176 164 1 178 177 1 179 178 1
		 180 179 1 169 181 1 181 180 1 183 182 1 182 170 1 184 183 1 185 184 1 186 185 1 175 187 1
		 187 186 1 189 188 1 188 176 1 190 189 1 191 190 1 192 191 1 181 193 1 193 192 1 195 194 1
		 194 182 1 196 195 1 197 196 1 198 197 1 187 199 1 199 198 1 201 200 1 200 188 1 202 201 1
		 203 202 1 204 203 1 193 205 1 205 204 1 207 206 1 206 194 1 208 207 1 209 208 1 210 209 1
		 199 211 1 211 210 1 213 212 1 212 200 1 214 213 1 215 214 1 216 215 1 205 217 1 217 216 1
		 219 218 1 218 206 1 220 219 1 221 220 1 222 221 1 211 223 1 223 222 1 225 224 1 224 212 1
		 226 225 1 227 226 1 228 227 1 217 229 1 229 228 1 231 230 1 230 218 1 232 231 1 233 232 1
		 234 233 1 223 235 1 235 234 1 237 236 1 236 224 1;
	setAttr ".ed[332:497]" 238 237 1 239 238 1 240 239 1 229 241 1 241 240 1 243 242 1
		 242 230 1 244 243 1 245 244 1 246 245 1 235 247 1 247 246 1 249 248 1 248 236 1 250 249 1
		 251 250 1 252 251 1 241 253 1 253 252 1 255 254 1 254 242 1 256 255 1 257 256 1 258 257 1
		 247 259 1 259 258 1 261 260 1 260 248 1 262 261 1 263 262 1 264 263 1 253 265 1 265 264 1
		 267 266 1 266 254 1 268 267 1 269 268 1 270 269 1 259 271 1 271 270 1 273 272 1 272 260 1
		 274 273 1 275 274 1 276 275 1 265 277 1 277 276 1 279 278 1 278 266 1 280 279 1 281 280 1
		 282 281 1 271 283 1 283 282 1 285 284 1 284 272 1 286 285 1 287 286 1 288 287 1 277 289 1
		 289 288 1 291 290 1 290 278 1 292 291 1 293 292 1 294 293 1 283 295 1 295 294 1 297 296 1
		 296 284 1 298 297 1 299 298 1 300 299 1 289 301 1 301 300 1 303 302 1 302 290 1 304 303 1
		 305 304 1 306 305 1 295 307 1 307 306 1 309 308 1 308 296 1 310 309 1 311 310 1 312 311 1
		 301 313 1 313 312 1 315 314 1 314 302 1 316 315 1 317 316 1 318 317 1 307 319 1 319 318 1
		 80 97 1 98 91 1 110 109 1 122 121 1 134 133 1 146 145 1 158 157 1 170 169 1 182 181 1
		 194 193 1 206 205 1 218 217 1 230 229 1 242 241 1 254 253 1 266 265 1 278 277 1 290 289 1
		 302 301 1 314 313 1 20 85 1 86 21 1 41 103 1 92 40 1 104 22 1 42 115 1 116 23 1 43 127 1
		 128 24 1 44 139 1 140 25 1 45 151 1 152 26 1 46 163 1 164 27 1 47 175 1 176 28 1
		 48 187 1 188 29 1 49 199 1 200 30 1 50 211 1 212 31 1 51 223 1 224 32 1 52 235 1
		 236 33 1 53 247 1 248 34 1 54 259 1 260 35 1 55 271 1 272 36 1 56 283 1 284 37 1
		 57 295 1 296 38 1 58 307 1 308 39 1 59 319 1 90 108 1 89 107 1 88 106 1 87 105 1
		 102 114 1 101 113 1 100 112 1 99 111 1 108 120 1 107 119 1;
	setAttr ".ed[498:639]" 106 118 1 105 117 1 114 126 1 113 125 1 112 124 1 111 123 1
		 120 132 1 119 131 1 118 130 1 117 129 1 126 138 1 125 137 1 124 136 1 123 135 1 132 144 1
		 131 143 1 130 142 1 129 141 1 138 150 1 137 149 1 136 148 1 135 147 1 144 156 1 143 155 1
		 142 154 1 141 153 1 150 162 1 149 161 1 148 160 1 147 159 1 156 168 1 155 167 1 154 166 1
		 153 165 1 162 174 1 161 173 1 160 172 1 159 171 1 168 180 1 167 179 1 166 178 1 165 177 1
		 174 186 1 173 185 1 172 184 1 171 183 1 180 192 1 179 191 1 178 190 1 177 189 1 186 198 1
		 185 197 1 184 196 1 183 195 1 192 204 1 191 203 1 190 202 1 189 201 1 198 210 1 197 209 1
		 196 208 1 195 207 1 204 216 1 203 215 1 202 214 1 201 213 1 210 222 1 209 221 1 208 220 1
		 207 219 1 216 228 1 215 227 1 214 226 1 213 225 1 222 234 1 221 233 1 220 232 1 219 231 1
		 228 240 1 227 239 1 226 238 1 225 237 1 234 246 1 233 245 1 232 244 1 231 243 1 240 252 1
		 239 251 1 238 250 1 237 249 1 246 258 1 245 257 1 244 256 1 243 255 1 252 264 1 251 263 1
		 250 262 1 249 261 1 258 270 1 257 269 1 256 268 1 255 267 1 264 276 1 263 275 1 262 274 1
		 261 273 1 270 282 1 269 281 1 268 280 1 267 279 1 276 288 1 275 287 1 274 286 1 273 285 1
		 282 294 1 281 293 1 280 292 1 279 291 1 288 300 1 287 299 1 286 298 1 285 297 1 294 306 1
		 293 305 1 292 304 1 291 303 1 300 312 1 299 311 1 298 310 1 297 309 1 306 318 1 305 317 1
		 304 316 1 303 315 1 81 312 1 82 311 1 83 310 1 84 309 1 93 318 1 94 317 1 95 316 1
		 96 315 1;
	setAttr -s 320 -ch 1280 ".fc[0:319]" -type "polyFaces" 
		f 4 -1 80 20 -82
		mu 0 4 1 0 107 111
		f 4 -2 81 21 -83
		mu 0 4 2 1 111 115
		f 4 -3 82 22 -84
		mu 0 4 3 2 115 119
		f 4 -4 83 23 -85
		mu 0 4 4 3 119 123
		f 4 -5 84 24 -86
		mu 0 4 5 4 123 127
		f 4 -6 85 25 -87
		mu 0 4 6 5 127 131
		f 4 -7 86 26 -88
		mu 0 4 7 6 131 135
		f 4 -8 87 27 -89
		mu 0 4 8 7 135 139
		f 4 -9 88 28 -90
		mu 0 4 9 8 139 143
		f 4 -10 89 29 -91
		mu 0 4 10 9 143 147
		f 4 -11 90 30 -92
		mu 0 4 11 10 147 151
		f 4 -12 91 31 -93
		mu 0 4 12 11 151 155
		f 4 -13 92 32 -94
		mu 0 4 13 12 155 159
		f 4 -14 93 33 -95
		mu 0 4 14 13 159 163
		f 4 -15 94 34 -96
		mu 0 4 15 14 163 167
		f 4 -16 95 35 -97
		mu 0 4 16 15 167 171
		f 4 -17 96 36 -98
		mu 0 4 17 16 171 175
		f 4 -18 97 37 -99
		mu 0 4 18 17 175 179
		f 4 -19 98 38 -100
		mu 0 4 19 18 179 183
		f 4 -20 99 39 -81
		mu 0 4 20 19 183 21
		f 4 -41 100 60 -102
		mu 0 4 109 22 23 24
		f 4 -42 101 61 -103
		mu 0 4 113 109 24 25
		f 4 -43 102 62 -104
		mu 0 4 117 113 25 26
		f 4 -44 103 63 -105
		mu 0 4 121 117 26 27
		f 4 -45 104 64 -106
		mu 0 4 125 121 27 28
		f 4 -46 105 65 -107
		mu 0 4 129 125 28 29
		f 4 -47 106 66 -108
		mu 0 4 133 129 29 30
		f 4 -48 107 67 -109
		mu 0 4 137 133 30 31
		f 4 -49 108 68 -110
		mu 0 4 141 137 31 32
		f 4 -50 109 69 -111
		mu 0 4 145 141 32 33
		f 4 -51 110 70 -112
		mu 0 4 149 145 33 34
		f 4 -52 111 71 -113
		mu 0 4 153 149 34 35
		f 4 -53 112 72 -114
		mu 0 4 157 153 35 36
		f 4 -54 113 73 -115
		mu 0 4 161 157 36 37
		f 4 -55 114 74 -116
		mu 0 4 165 161 37 38
		f 4 -56 115 75 -117
		mu 0 4 169 165 38 39
		f 4 -57 116 76 -118
		mu 0 4 173 169 39 40
		f 4 -58 117 77 -119
		mu 0 4 177 173 40 41
		f 4 -59 118 78 -120
		mu 0 4 181 177 41 42
		f 4 -60 119 79 -101
		mu 0 4 185 181 42 43
		f 4 -61 120 0 -122
		mu 0 4 24 23 44 45
		f 4 -62 121 1 -123
		mu 0 4 25 24 45 46
		f 4 -63 122 2 -124
		mu 0 4 26 25 46 47
		f 4 -64 123 3 -125
		mu 0 4 27 26 47 48
		f 4 -65 124 4 -126
		mu 0 4 28 27 48 49
		f 4 -66 125 5 -127
		mu 0 4 29 28 49 50
		f 4 -67 126 6 -128
		mu 0 4 30 29 50 51
		f 4 -68 127 7 -129
		mu 0 4 31 30 51 52
		f 4 -69 128 8 -130
		mu 0 4 32 31 52 53
		f 4 -70 129 9 -131
		mu 0 4 33 32 53 54
		f 4 -71 130 10 -132
		mu 0 4 34 33 54 55
		f 4 -72 131 11 -133
		mu 0 4 35 34 55 56
		f 4 -73 132 12 -134
		mu 0 4 36 35 56 57
		f 4 -74 133 13 -135
		mu 0 4 37 36 57 58
		f 4 -75 134 14 -136
		mu 0 4 38 37 58 59
		f 4 -76 135 15 -137
		mu 0 4 39 38 59 60
		f 4 -77 136 16 -138
		mu 0 4 40 39 60 61
		f 4 -78 137 17 -139
		mu 0 4 41 40 61 62
		f 4 -79 138 18 -140
		mu 0 4 42 41 62 63
		f 4 -80 139 19 -121
		mu 0 4 43 42 63 64
		f 4 142 143 144 145
		mu 0 4 65 196 197 108
		f 4 146 147 148 -144
		mu 0 4 196 194 198 197
		f 4 149 150 151 -148
		mu 0 4 194 192 199 198
		f 4 152 153 154 -151
		mu 0 4 192 190 200 199
		f 4 155 156 157 -154
		mu 0 4 190 67 69 200
		f 4 167 168 169 170
		mu 0 4 66 208 209 68
		f 4 171 172 173 -169
		mu 0 4 208 206 210 209
		f 4 174 175 176 -173
		mu 0 4 206 204 211 210
		f 4 177 178 179 -176
		mu 0 4 204 202 212 211
		f 4 180 181 182 -179
		mu 0 4 202 110 114 212
		f 4 -157 428 -171 429
		mu 0 4 69 67 66 68
		f 4 -164 -430 -185 430
		mu 0 4 71 69 68 70
		f 4 -196 -431 -199 431
		mu 0 4 73 71 70 72
		f 4 -210 -432 -213 432
		mu 0 4 75 73 72 74
		f 4 -224 -433 -227 433
		mu 0 4 77 75 74 76
		f 4 -238 -434 -241 434
		mu 0 4 79 77 76 78
		f 4 -252 -435 -255 435
		mu 0 4 81 79 78 80
		f 4 -266 -436 -269 436
		mu 0 4 83 81 80 82
		f 4 -280 -437 -283 437
		mu 0 4 85 83 82 84
		f 4 -294 -438 -297 438
		mu 0 4 87 85 84 86
		f 4 -308 -439 -311 439
		mu 0 4 89 87 86 88
		f 4 -322 -440 -325 440
		mu 0 4 91 89 88 90
		f 4 -336 -441 -339 441
		mu 0 4 93 91 90 92
		f 4 -350 -442 -353 442
		mu 0 4 95 93 92 94
		f 4 -364 -443 -367 443
		mu 0 4 97 95 94 96
		f 4 -378 -444 -381 444
		mu 0 4 99 97 96 98
		f 4 -392 -445 -395 445
		mu 0 4 101 99 98 100
		f 4 -406 -446 -409 446
		mu 0 4 103 101 100 102
		f 4 -420 -447 -423 447
		mu 0 4 105 103 102 104
		f 4 -141 -448 -167 -429
		mu 0 4 187 105 104 106
		f 4 -21 448 -146 449
		mu 0 4 111 107 65 108
		f 4 40 450 -182 451
		mu 0 4 22 109 114 110
		f 4 -22 -450 -160 452
		mu 0 4 115 111 108 112
		f 4 41 453 -189 -451
		mu 0 4 109 113 118 114
		f 4 -23 -453 -192 454
		mu 0 4 119 115 112 116
		f 4 42 455 -203 -454
		mu 0 4 113 117 122 118
		f 4 -24 -455 -206 456
		mu 0 4 123 119 116 120
		f 4 43 457 -217 -456
		mu 0 4 117 121 126 122
		f 4 -25 -457 -220 458
		mu 0 4 127 123 120 124
		f 4 44 459 -231 -458
		mu 0 4 121 125 130 126
		f 4 -26 -459 -234 460
		mu 0 4 131 127 124 128
		f 4 45 461 -245 -460
		mu 0 4 125 129 134 130
		f 4 -27 -461 -248 462
		mu 0 4 135 131 128 132
		f 4 46 463 -259 -462
		mu 0 4 129 133 138 134
		f 4 -28 -463 -262 464
		mu 0 4 139 135 132 136
		f 4 47 465 -273 -464
		mu 0 4 133 137 142 138
		f 4 -29 -465 -276 466
		mu 0 4 143 139 136 140
		f 4 48 467 -287 -466
		mu 0 4 137 141 146 142
		f 4 -30 -467 -290 468
		mu 0 4 147 143 140 144
		f 4 49 469 -301 -468
		mu 0 4 141 145 150 146
		f 4 -31 -469 -304 470
		mu 0 4 151 147 144 148
		f 4 50 471 -315 -470
		mu 0 4 145 149 154 150
		f 4 -32 -471 -318 472
		mu 0 4 155 151 148 152
		f 4 51 473 -329 -472
		mu 0 4 149 153 158 154
		f 4 -33 -473 -332 474
		mu 0 4 159 155 152 156
		f 4 52 475 -343 -474
		mu 0 4 153 157 162 158
		f 4 -34 -475 -346 476
		mu 0 4 163 159 156 160
		f 4 53 477 -357 -476
		mu 0 4 157 161 166 162
		f 4 -35 -477 -360 478
		mu 0 4 167 163 160 164
		f 4 54 479 -371 -478
		mu 0 4 161 165 170 166
		f 4 -36 -479 -374 480
		mu 0 4 171 167 164 168
		f 4 55 481 -385 -480
		mu 0 4 165 169 174 170
		f 4 -37 -481 -388 482
		mu 0 4 175 171 168 172
		f 4 56 483 -399 -482
		mu 0 4 169 173 178 174
		f 4 -38 -483 -402 484
		mu 0 4 179 175 172 176
		f 4 57 485 -413 -484
		mu 0 4 173 177 182 178
		f 4 -39 -485 -416 486
		mu 0 4 183 179 176 180
		f 4 58 487 -427 -486
		mu 0 4 177 181 186 182
		f 4 -40 -487 -142 -449
		mu 0 4 21 183 180 184
		f 4 59 -452 -166 -488
		mu 0 4 181 185 188 186
		f 4 -158 163 164 -489
		mu 0 4 200 69 71 216
		f 4 -155 488 162 -490
		mu 0 4 199 200 216 215
		f 4 -152 489 161 -491
		mu 0 4 198 199 215 214
		f 4 -145 491 158 159
		mu 0 4 108 197 213 112
		f 4 -149 490 160 -492
		mu 0 4 197 198 214 213
		f 4 -183 188 189 -493
		mu 0 4 212 114 118 220
		f 4 -180 492 187 -494
		mu 0 4 211 212 220 219
		f 4 -177 493 186 -495
		mu 0 4 210 211 219 218
		f 4 -170 495 183 184
		mu 0 4 68 209 217 70
		f 4 -174 494 185 -496
		mu 0 4 209 210 218 217
		f 4 -165 195 196 -497
		mu 0 4 216 71 73 224
		f 4 -163 496 194 -498
		mu 0 4 215 216 224 223
		f 4 -162 497 193 -499
		mu 0 4 214 215 223 222
		f 4 -159 499 190 191
		mu 0 4 112 213 221 116
		f 4 -161 498 192 -500
		mu 0 4 213 214 222 221
		f 4 -190 202 203 -501
		mu 0 4 220 118 122 228
		f 4 -188 500 201 -502
		mu 0 4 219 220 228 227
		f 4 -187 501 200 -503
		mu 0 4 218 219 227 226
		f 4 -184 503 197 198
		mu 0 4 70 217 225 72
		f 4 -186 502 199 -504
		mu 0 4 217 218 226 225
		f 4 -197 209 210 -505
		mu 0 4 224 73 75 232
		f 4 -195 504 208 -506
		mu 0 4 223 224 232 231
		f 4 -194 505 207 -507
		mu 0 4 222 223 231 230
		f 4 -191 507 204 205
		mu 0 4 116 221 229 120
		f 4 -193 506 206 -508
		mu 0 4 221 222 230 229
		f 4 -204 216 217 -509
		mu 0 4 228 122 126 236
		f 4 -202 508 215 -510
		mu 0 4 227 228 236 235
		f 4 -201 509 214 -511
		mu 0 4 226 227 235 234
		f 4 -198 511 211 212
		mu 0 4 72 225 233 74
		f 4 -200 510 213 -512
		mu 0 4 225 226 234 233
		f 4 -211 223 224 -513
		mu 0 4 232 75 77 240
		f 4 -209 512 222 -514
		mu 0 4 231 232 240 239
		f 4 -208 513 221 -515
		mu 0 4 230 231 239 238
		f 4 -205 515 218 219
		mu 0 4 120 229 237 124
		f 4 -207 514 220 -516
		mu 0 4 229 230 238 237
		f 4 -218 230 231 -517
		mu 0 4 236 126 130 244
		f 4 -216 516 229 -518
		mu 0 4 235 236 244 243
		f 4 -215 517 228 -519
		mu 0 4 234 235 243 242
		f 4 -212 519 225 226
		mu 0 4 74 233 241 76
		f 4 -214 518 227 -520
		mu 0 4 233 234 242 241
		f 4 -225 237 238 -521
		mu 0 4 240 77 79 248
		f 4 -223 520 236 -522
		mu 0 4 239 240 248 247
		f 4 -222 521 235 -523
		mu 0 4 238 239 247 246
		f 4 -219 523 232 233
		mu 0 4 124 237 245 128
		f 4 -221 522 234 -524
		mu 0 4 237 238 246 245
		f 4 -232 244 245 -525
		mu 0 4 244 130 134 252
		f 4 -230 524 243 -526
		mu 0 4 243 244 252 251
		f 4 -229 525 242 -527
		mu 0 4 242 243 251 250
		f 4 -226 527 239 240
		mu 0 4 76 241 249 78
		f 4 -228 526 241 -528
		mu 0 4 241 242 250 249
		f 4 -239 251 252 -529
		mu 0 4 248 79 81 256
		f 4 -237 528 250 -530
		mu 0 4 247 248 256 255
		f 4 -236 529 249 -531
		mu 0 4 246 247 255 254
		f 4 -233 531 246 247
		mu 0 4 128 245 253 132
		f 4 -235 530 248 -532
		mu 0 4 245 246 254 253
		f 4 -246 258 259 -533
		mu 0 4 252 134 138 260
		f 4 -244 532 257 -534
		mu 0 4 251 252 260 259
		f 4 -243 533 256 -535
		mu 0 4 250 251 259 258
		f 4 -240 535 253 254
		mu 0 4 78 249 257 80
		f 4 -242 534 255 -536
		mu 0 4 249 250 258 257
		f 4 -253 265 266 -537
		mu 0 4 256 81 83 264
		f 4 -251 536 264 -538
		mu 0 4 255 256 264 263
		f 4 -250 537 263 -539
		mu 0 4 254 255 263 262
		f 4 -247 539 260 261
		mu 0 4 132 253 261 136
		f 4 -249 538 262 -540
		mu 0 4 253 254 262 261
		f 4 -260 272 273 -541
		mu 0 4 260 138 142 268
		f 4 -258 540 271 -542
		mu 0 4 259 260 268 267
		f 4 -257 541 270 -543
		mu 0 4 258 259 267 266
		f 4 -254 543 267 268
		mu 0 4 80 257 265 82
		f 4 -256 542 269 -544
		mu 0 4 257 258 266 265
		f 4 -267 279 280 -545
		mu 0 4 264 83 85 272
		f 4 -265 544 278 -546
		mu 0 4 263 264 272 271
		f 4 -264 545 277 -547
		mu 0 4 262 263 271 270
		f 4 -261 547 274 275
		mu 0 4 136 261 269 140
		f 4 -263 546 276 -548
		mu 0 4 261 262 270 269
		f 4 -274 286 287 -549
		mu 0 4 268 142 146 276
		f 4 -272 548 285 -550
		mu 0 4 267 268 276 275
		f 4 -271 549 284 -551
		mu 0 4 266 267 275 274
		f 4 -268 551 281 282
		mu 0 4 82 265 273 84
		f 4 -270 550 283 -552
		mu 0 4 265 266 274 273
		f 4 -281 293 294 -553
		mu 0 4 272 85 87 280
		f 4 -279 552 292 -554
		mu 0 4 271 272 280 279
		f 4 -278 553 291 -555
		mu 0 4 270 271 279 278
		f 4 -275 555 288 289
		mu 0 4 140 269 277 144
		f 4 -277 554 290 -556
		mu 0 4 269 270 278 277
		f 4 -288 300 301 -557
		mu 0 4 276 146 150 284
		f 4 -286 556 299 -558
		mu 0 4 275 276 284 283
		f 4 -285 557 298 -559
		mu 0 4 274 275 283 282
		f 4 -282 559 295 296
		mu 0 4 84 273 281 86
		f 4 -284 558 297 -560
		mu 0 4 273 274 282 281
		f 4 -295 307 308 -561
		mu 0 4 280 87 89 288
		f 4 -293 560 306 -562
		mu 0 4 279 280 288 287
		f 4 -292 561 305 -563
		mu 0 4 278 279 287 286
		f 4 -289 563 302 303
		mu 0 4 144 277 285 148
		f 4 -291 562 304 -564
		mu 0 4 277 278 286 285
		f 4 -302 314 315 -565
		mu 0 4 284 150 154 292
		f 4 -300 564 313 -566
		mu 0 4 283 284 292 291
		f 4 -299 565 312 -567
		mu 0 4 282 283 291 290
		f 4 -296 567 309 310
		mu 0 4 86 281 289 88
		f 4 -298 566 311 -568
		mu 0 4 281 282 290 289
		f 4 -309 321 322 -569
		mu 0 4 288 89 91 296
		f 4 -307 568 320 -570
		mu 0 4 287 288 296 295
		f 4 -306 569 319 -571
		mu 0 4 286 287 295 294
		f 4 -303 571 316 317
		mu 0 4 148 285 293 152
		f 4 -305 570 318 -572
		mu 0 4 285 286 294 293
		f 4 -316 328 329 -573
		mu 0 4 292 154 158 300
		f 4 -314 572 327 -574
		mu 0 4 291 292 300 299
		f 4 -313 573 326 -575
		mu 0 4 290 291 299 298
		f 4 -310 575 323 324
		mu 0 4 88 289 297 90
		f 4 -312 574 325 -576
		mu 0 4 289 290 298 297
		f 4 -323 335 336 -577
		mu 0 4 296 91 93 304
		f 4 -321 576 334 -578
		mu 0 4 295 296 304 303
		f 4 -320 577 333 -579
		mu 0 4 294 295 303 302
		f 4 -317 579 330 331
		mu 0 4 152 293 301 156
		f 4 -319 578 332 -580
		mu 0 4 293 294 302 301
		f 4 -330 342 343 -581
		mu 0 4 300 158 162 308
		f 4 -328 580 341 -582
		mu 0 4 299 300 308 307
		f 4 -327 581 340 -583
		mu 0 4 298 299 307 306
		f 4 -324 583 337 338
		mu 0 4 90 297 305 92
		f 4 -326 582 339 -584
		mu 0 4 297 298 306 305
		f 4 -337 349 350 -585
		mu 0 4 304 93 95 312
		f 4 -335 584 348 -586
		mu 0 4 303 304 312 311
		f 4 -334 585 347 -587
		mu 0 4 302 303 311 310
		f 4 -331 587 344 345
		mu 0 4 156 301 309 160
		f 4 -333 586 346 -588
		mu 0 4 301 302 310 309
		f 4 -344 356 357 -589
		mu 0 4 308 162 166 316
		f 4 -342 588 355 -590
		mu 0 4 307 308 316 315
		f 4 -341 589 354 -591
		mu 0 4 306 307 315 314
		f 4 -338 591 351 352
		mu 0 4 92 305 313 94
		f 4 -340 590 353 -592
		mu 0 4 305 306 314 313
		f 4 -351 363 364 -593
		mu 0 4 312 95 97 320
		f 4 -349 592 362 -594
		mu 0 4 311 312 320 319
		f 4 -348 593 361 -595
		mu 0 4 310 311 319 318
		f 4 -345 595 358 359
		mu 0 4 160 309 317 164
		f 4 -347 594 360 -596
		mu 0 4 309 310 318 317
		f 4 -358 370 371 -597
		mu 0 4 316 166 170 324
		f 4 -356 596 369 -598
		mu 0 4 315 316 324 323
		f 4 -355 597 368 -599
		mu 0 4 314 315 323 322
		f 4 -352 599 365 366
		mu 0 4 94 313 321 96
		f 4 -354 598 367 -600
		mu 0 4 313 314 322 321
		f 4 -365 377 378 -601
		mu 0 4 320 97 99 328
		f 4 -363 600 376 -602
		mu 0 4 319 320 328 327
		f 4 -362 601 375 -603
		mu 0 4 318 319 327 326
		f 4 -359 603 372 373
		mu 0 4 164 317 325 168
		f 4 -361 602 374 -604
		mu 0 4 317 318 326 325
		f 4 -372 384 385 -605
		mu 0 4 324 170 174 332
		f 4 -370 604 383 -606
		mu 0 4 323 324 332 331
		f 4 -369 605 382 -607
		mu 0 4 322 323 331 330
		f 4 -366 607 379 380
		mu 0 4 96 321 329 98
		f 4 -368 606 381 -608
		mu 0 4 321 322 330 329
		f 4 -379 391 392 -609
		mu 0 4 328 99 101 336
		f 4 -377 608 390 -610
		mu 0 4 327 328 336 335
		f 4 -376 609 389 -611
		mu 0 4 326 327 335 334
		f 4 -373 611 386 387
		mu 0 4 168 325 333 172
		f 4 -375 610 388 -612
		mu 0 4 325 326 334 333
		f 4 -386 398 399 -613
		mu 0 4 332 174 178 340
		f 4 -384 612 397 -614
		mu 0 4 331 332 340 339
		f 4 -383 613 396 -615
		mu 0 4 330 331 339 338
		f 4 -380 615 393 394
		mu 0 4 98 329 337 100
		f 4 -382 614 395 -616
		mu 0 4 329 330 338 337
		f 4 -393 405 406 -617
		mu 0 4 336 101 103 344
		f 4 -391 616 404 -618
		mu 0 4 335 336 344 343
		f 4 -390 617 403 -619
		mu 0 4 334 335 343 342
		f 4 -387 619 400 401
		mu 0 4 172 333 341 176
		f 4 -389 618 402 -620
		mu 0 4 333 334 342 341
		f 4 -400 412 413 -621
		mu 0 4 340 178 182 348
		f 4 -398 620 411 -622
		mu 0 4 339 340 348 347
		f 4 -397 621 410 -623
		mu 0 4 338 339 347 346
		f 4 -394 623 407 408
		mu 0 4 100 337 345 102
		f 4 -396 622 409 -624
		mu 0 4 337 338 346 345
		f 4 -407 419 420 -625
		mu 0 4 344 103 105 352
		f 4 -405 624 418 -626
		mu 0 4 343 344 352 351
		f 4 -404 625 417 -627
		mu 0 4 342 343 351 350
		f 4 -401 627 414 415
		mu 0 4 176 341 349 180
		f 4 -403 626 416 -628
		mu 0 4 341 342 350 349
		f 4 -414 426 427 -629
		mu 0 4 348 182 186 356
		f 4 -412 628 425 -630
		mu 0 4 347 348 356 355
		f 4 -411 629 424 -631
		mu 0 4 346 347 355 354
		f 4 -408 631 421 422
		mu 0 4 102 345 353 104
		f 4 -410 630 423 -632
		mu 0 4 345 346 354 353
		f 4 -156 632 -421 140
		mu 0 4 187 189 352 105
		f 4 -153 633 -419 -633
		mu 0 4 189 191 351 352
		f 4 -150 634 -418 -634
		mu 0 4 191 193 350 351
		f 4 -147 635 -417 -635
		mu 0 4 193 195 349 350
		f 4 -143 141 -415 -636
		mu 0 4 195 184 180 349
		f 4 -181 636 -428 165
		mu 0 4 188 201 356 186
		f 4 -178 637 -426 -637
		mu 0 4 201 203 355 356
		f 4 -175 638 -425 -638
		mu 0 4 203 205 354 355
		f 4 -172 639 -424 -639
		mu 0 4 205 207 353 354
		f 4 -168 166 -422 -640
		mu 0 4 207 106 104 353;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane2" -p "Lamp";
	rename -uid "3A6D7D4A-4466-E252-D79A-D9854BFE27BA";
	setAttr ".rp" -type "double3" -2.3454523930569851 2.6035808628119379 -2.2947924086133571 ;
	setAttr ".sp" -type "double3" -2.3454523930569851 2.6035808628119379 -2.2947924086133571 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	rename -uid "CF7A669B-43D4-DA37-C1A8-F2840B7B88C3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[93]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[62]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "e[0:1]" "e[62]" "e[93]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1104 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.40480971 0 0 0.44995588 1
		 0.41680479 0.59517592 0 0.59312057 1 1 0.59288299 0 0.58347249 0.40481943 1 1.8477583e-06
		 0.44846892 0.59518212 2.9802322e-08 1 0.55152428 0.40481949 0.99999619 0.59518433
		 1 1 0.4078179 0.40481377 0 0 0.59288847 0 0.44892329 0.40432793 0 0 0.44734859 0.40457577
		 0 0 0.44555792 0.40481895 0 0 0.44371137 0.40481946 0 0 0.44067544 0.40481985 0 0
		 0.43590364 0.40481964 0 0 0.42913502 0.40481979 0 0 0.42323068 0.40516689 0 0 0.42016762
		 0.40526217 0 0 0.41920003 0.40514189 0 0 0.42013851 0.40481967 0 0 0.4228321 0.40451849
		 0 0 0.42772138 0.40400887 0 0 0.43422967 0.40328401 0 0 0.43946972 0.40262222 0 0
		 0.44356021 0.40280014 0 0 0.44676864 0.40317571 0 0 0.44901234 0.40346718 0 0 0.44983071
		 0.40372849 0 0 0.44946778 0.4040947 0 0 0.44867349 0.4044733 0 0 0.44813949 0.40481865
		 0 0 0.44749519 0.40482295 0 0 0.44403464 0.40480989 0 0 0.43847868 0.40481424 0 0
		 0.43291101 0.40513808 0 0 0.42635286 0.40507323 0 0 0.41883385 0.40460956 0 0 0.40782589
		 0.40383536 0 1 0.44846267 0.59469205 0 1 0.4488647 0.59493458 0 1 0.44837621 0.59518343
		 0 1 0.4471865 0.59518427 0 1 0.44588831 0.59518403 0 1 0.44416863 0.59518433 0 1
		 0.44120687 0.59518421 0 1 0.43653274 0.59553152 0 1 0.42987359 0.59562498 0 1 0.42415446
		 0.59550297 0 1 0.42083064 0.59518439 0 1 0.41942188 0.59488201 0 1 0.41950673 0.5943737
		 0 1 0.4211458 0.59365654 0 1 0.424501 0.59300613 0 1 0.42955846 0.59318018 0 1 0.43511176
		 0.59354949 0 1 0.43996918 0.59383774 0 1 0.44380057 0.59409714 0 1 0.44660282 0.59445953
		 0 1 0.44822812 0.59481847 0 1 0.44868448 0.59518135 0 1 0.44825727 0.59518397 0 1
		 0.44777215 0.5951699 0 1 0.44675428 0.59517503 0 1 0.44411105 0.59550059 0 1 0.43918031
		 0.59543794 0 1 0.43345571 0.59496963 0 1 0.42591155 0.59420204 0 0.5951876 1 1 0.5512042
		 0.59475029 1 1 0.55184925 0.59518528 1 1 0.55272818 0.59518379 1 1 0.55401701 0.59518367
		 1 1 0.55571395 0.59518433 1 1 0.55879635 0.59542251 1 1 0.56335503 0.59554267 1 1
		 0.56961441 0.59574497 1 1 0.57541937 0.59574872 1 1 0.57899094 0.59554863 1 1 0.58051783
		 0.59518433 1 1 0.58048129 0.59486544 1 1 0.57877386 0.59432411 1 1 0.57517695 0.59348714
		 1 1 0.56967545 0.59268761 1 1 0.5639028 0.59295207 1 1 0.55920303 0.59337318 1 1
		 0.55554581 0.59365928 1 1 0.55285972 0.59390372 1 1 0.55143017 0.59432989 1 1 0.55118501
		 0.5947715 1 1 0.55178487 0.59517473 1 1 0.55222785 0.59520012 1 1 0.55298889 0.59482783
		 1 1 0.55609995 0.59487867 1 1 0.56132555 0.59518933 1 1 0.56687659 0.59497803 1 1
		 0.57433581 0.594073 1 1 0.58347386 0 0.55152345 0.40524971 1 0 0.55120409 0.40482008
		 1 0 0.55184937 0.40482011 1 0 0.55272794 0.40481937 1 0 0.55401689 0.4048197 1 0
		 0.55571353 0.40457919 1 0 0.55879408 0.40445903 1 0 0.56335104 0.40425676 1 0 0.56961519
		 0.40425485 1 0 0.57541668 0.40445331 1 0 0.57899112 0.40481952 1 0 0.58051395 0.40512943
		 1 0 0.58047986 0.4056778 1 0 0.5787757 0.40650758 1 0 0.57517755 0.4073143 1 0 0.56967539
		 0.40703586 1 0 0.56390256 0.40661085 1 0 0.55920166 0.40631831 1 0 0.55554491 0.40606669
		 1 0 0.55285901 0.40567207 1 0 0.55142856 0.40530753 1 0 0.5511843 0.40482527 1 0
		 0.55178487 0.40484643 1 0 0.55225933 0.40520728 1 0 0.55298787 0.40512517 1 0 0.55610013
		 0.40482709 1 0 0.56132734 0.40503272 1 0 0.56687796 0.40593529 1 0 0.57433367 0.40688136
		 1 0.028473988 0.29580921 0.056461159 0.14574979;
	setAttr ".uvst[0].uvsp[250:499]" 0.083644554 0 0.24584168 0 0.24169435 0.046099912
		 0.10525539 0.10991414 0.047058038 0.23406635 0.016799148 0.35921249 0.25681257 0.082018688
		 0.12973094 0.1669863 0.053000767 0.26940587 0.01687553 0.37470233 0.27293709 0.10892642
		 0.15511516 0.2093091 0.070929118 0.30343127 0.020587452 0.38150269 0.28129044 0.12338818
		 0.16953824 0.2344574 0.083647609 0.3272455 0.027947547 0.39506173 0.28348807 0.12910776
		 0.17379154 0.24547051 0.08707533 0.33984637 0.029959219 0.40487939 0.28317058 0.13058692
		 0.17335445 0.24866128 0.085808918 0.34373051 0.028162684 0.40781167 0.28236663 0.13032892
		 0.17183223 0.24830012 0.083762027 0.34299627 0.025911465 0.40627894 0.28210258 0.12926763
		 0.17097473 0.24627633 0.082441196 0.3399913 0.024525389 0.4019545 0.28191784 0.12830147
		 0.17052227 0.24431176 0.081768744 0.33698648 0.023840195 0.39774391 0.28172457 0.12783669
		 0.17025438 0.2433386 0.081436753 0.3354381 0.023524702 0.39556217 0.28148565 0.12781954
		 0.17007954 0.24323671 0.081299372 0.33514899 0.023419127 0.3949959 0.28135768 0.12827872
		 0.17008281 0.24406376 0.081372522 0.33616707 0.023496024 0.39602312 0.28123465 0.12925416
		 0.17024916 0.24587391 0.081674516 0.33854169 0.023775153 0.39860797 0.28130764 0.13060054
		 0.17084411 0.24853566 0.082433537 0.34232256 0.024420664 0.40302989 0.28250292 0.13098036
		 0.17287295 0.250099 0.084150523 0.34580764 0.025765562 0.40790945 0.2883054 0.12632303
		 0.18046084 0.24493305 0.08887253 0.34501389 0.028361872 0.41011664 0.30498165 0.10911553
		 0.20477843 0.22021677 0.10773453 0.32738516 0.034978181 0.4067941 0.33221102 0.079420701
		 0.25152886 0.16917035 0.15906389 0.27182081 0.056673259 0.38544366 0.35342363 0.056109745
		 0.29337552 0.12287685 0.21622205 0.2085661 0.10990732 0.32695448 0.36248153 0.046273131
		 0.3131043 0.10108346 0.24622585 0.17532358 0.15799592 0.27339709 0.36423311 0.044469524
		 0.31739587 0.096390598 0.25482196 0.1658182 0.16859846 0.26159197 0.36156049 0.047548056
		 0.31183231 0.1026227 0.2469113 0.17463763 0.15273114 0.2792595 0.35563147 0.054219261
		 0.29949018 0.11637043 0.22673438 0.19706549 0.12070935 0.31470716 0.34456307 0.066562265
		 0.27625257 0.1421835 0.18812181 0.23986323 0.079171576 0.36043465 0.3227897 0.090692721
		 0.23226333 0.19082102 0.13040492 0.30336931 0.043199252 0.39902353 0.29653448 0.11926214
		 0.18878162 0.23740077 0.09343677 0.34113583 0.0291696 0.40936947 0.28455609 0.13038449
		 0.17376168 0.24979489 0.084390223 0.34522948 0.025547033 0.40705875 0.28177065 0.13047144
		 0.17058951 0.24823029 0.081775099 0.34178188 0.02366868 0.40238866 0.28029183 0.12877373
		 0.16868676 0.24490833 0.079876117 0.33701319 0.022329293 0.39631027 0.28781444 0.11786991
		 0.18147434 0.22500125 0.095111094 0.3120071 0.035046019 0.37251911 0.67216682 0.08528468
		 0.75071746 0.17230412 0.83173227 0.2620534 0.91514337 0.35445735 0.69575065 0.11110292
		 0.79054439 0.21584262 0.87558758 0.31007063 0.94798893 0.39054829 0.70537442 0.12137278
		 0.80665833 0.23305152 0.89183396 0.32737529 0.95717126 0.40008807 0.71058083 0.12656689
		 0.81493992 0.24135189 0.89924586 0.33460003 0.95979261 0.40202054 0.71345413 0.12909795
		 0.82003415 0.24586768 0.90502727 0.33964205 0.96327251 0.40454763 0.71538913 0.13043588
		 0.82376862 0.24852067 0.91006577 0.34332037 0.96785861 0.40764713 0.71672809 0.13084938
		 0.82640821 0.24940911 0.91376358 0.34466687 0.97152013 0.40864787 0.71761382 0.13045454
		 0.82815969 0.2486649 0.91624165 0.34359631 0.97406441 0.40691385 0.71835566 0.12953615
		 0.82928526 0.24675356 0.91768295 0.34061688 0.97549117 0.40266585 0.71867704 0.12857135
		 0.82981956 0.24479514 0.91838294 0.33762723 0.97618413 0.39855754 0.71871126 0.12798846
		 0.83000028 0.24361768 0.9186756 0.33583316 0.97649378 0.39610574 0.71851677 0.12778509
		 0.82992667 0.24318753 0.91870445 0.33513406 0.97658032 0.39509791 0.7182399 0.12796737
		 0.8296963 0.24347909 0.91854292 0.33543184 0.97649604 0.39530757 0.71768576 0.12857537
		 0.82915294 0.24457887 0.91808712 0.33684027 0.97619832 0.39684406 0.71668339 0.12952372
		 0.82805574 0.24642709 0.91710973 0.33937657 0.97553897 0.39979449 0.71481848 0.12998861
		 0.82585055 0.2480762 0.91511607 0.34226766 0.97415876 0.40367061 0.70933294 0.12585396
		 0.81942773 0.24481635 0.91074556 0.34261942 0.97158802 0.40657505 0.69147307 0.10720181
		 0.79393536 0.21932682 0.89418197 0.32848242 0.96557182 0.40482402 0.66474468 0.07787922
		 0.74407583 0.16518168 0.84216124 0.27318701 0.94419503 0.38478145 0.64643073 0.057470918
		 0.7051276 0.12216326 0.77998775 0.20479329 0.8903386 0.3267355 0.63789403 0.047830932
		 0.68721974 0.10228383 0.75031656 0.17197256 0.84202772 0.2733894 0.63566411 0.045234382
		 0.68289888 0.097435921 0.7440325 0.16498081 0.83130968 0.26151526 0.63797456 0.047668073
		 0.68846077 0.10350999 0.75411397 0.17607547 0.84532118 0.27696314 0.6437723 0.053979903
		 0.70171732 0.11807977 0.77436686 0.19839939 0.87767237 0.31269318 0.65585583 0.067243867
		 0.7274527 0.1464076 0.80956614 0.23720416 0.92002892 0.35925925 0.67797047 0.091524318
		 0.76748943 0.19034247 0.86918926 0.30261466 0.95663601 0.39834693 0.70430446 0.11983643
		 0.81062251 0.23655918 0.9055723 0.33981422 0.97057486 0.40942645 0.71540087 0.13015021
		 0.82564878 0.24928626 0.91572058 0.34581006 0.97448635 0.4077276 0.71784234 0.13048634
		 0.82918042 0.24816285 0.91819912 0.34174374 0.97637337 0.40207255 0.71900213 0.12698533
		 0.83269089 0.23942667 0.92141926 0.331963 0.97778749 0.39408055 0.9873333 0.32905835
		 0.96562451 0.19407661 0.9344117 0 0.7728864 0 0.9151448 0.64553201 0.83173507 0.73793834
		 0.7507199 0.82769191 0.67217058 0.91471356;
	setAttr ".uvst[0].uvsp[500:749]" 0.88825291 0.67532414 0.8065933 0.76580983
		 0.73260432 0.84776348 0.6626516 0.92519927 0.89712071 0.66553825 0.81157488 0.76032567
		 0.73626578 0.84373051 0.66490901 0.92274612 0.93068022 0.62875223 0.83919448 0.72984457
		 0.75375879 0.82442075 0.67350358 0.91327512 0.95251667 0.60552245 0.87502795 0.69065452
		 0.78085399 0.794644 0.68714374 0.89827281 0.96258718 0.59584576 0.89665294 0.66779536
		 0.80500209 0.7685495 0.70141196 0.88277221 0.9688769 0.59140271 0.90753114 0.6576879
		 0.81846958 0.75496846 0.71094006 0.87298143 0.97277915 0.59129554 0.91347319 0.65452027
		 0.82489514 0.75024158 0.71546751 0.86924499 0.97495395 0.59499735 0.91658765 0.65633118
		 0.82804608 0.75059837 0.7175923 0.86899221 0.97597349 0.59986269 0.91797417 0.6602093
		 0.82937688 0.75320131 0.71842921 0.87024635 0.97641146 0.60316932 0.91852176 0.66313034
		 0.82983786 0.75538808 0.71862179 0.87141144 0.97656471 0.60467559 0.91867542 0.6645388
		 0.82989532 0.7564981 0.71849644 0.87202746 0.97653294 0.60484481 0.91861862 0.66480368
		 0.82978404 0.75675273 0.71829349 0.8721807 0.9763124 0.60368317 0.91832852 0.66400617
		 0.82942516 0.75626028 0.7178517 0.8719458 0.97581953 0.601165 0.91771895 0.66220969
		 0.82875216 0.7551012 0.7171033 0.87138438 0.97491258 0.59752107 0.91674519 0.65968978
		 0.82785594 0.75352693 0.71627313 0.87064976 0.97387034 0.59375936 0.91610885 0.6567086
		 0.82771683 0.75132996 0.71643889 0.86943096 0.97543538 0.58791536 0.9194001 0.64995456
		 0.83116102 0.74558127 0.71877104 0.86611122 0.98288894 0.57663423 0.9322136 0.6335907
		 0.84351242 0.73065627 0.72620809 0.85747325 0.99061692 0.56592125 0.95046639 0.61202425
		 0.86412358 0.70729625 0.73925775 0.84305811 0.99455136 0.5602808 0.96241432 0.59803015
		 0.88065439 0.68882203 0.75120533 0.83004677 0.99533373 0.55899817 0.96484917 0.59507114
		 0.88407481 0.68496406 0.75428545 0.82673305 0.99345791 0.56127232 0.9598487 0.60073787
		 0.87633622 0.69353974 0.74881876 0.83281034 0.99046612 0.5651083 0.95035809 0.61173153
		 0.86405295 0.70735264 0.73996967 0.84267682 0.98585904 0.57165372 0.93792081 0.6264475
		 0.8498928 0.72360325 0.73027027 0.85356742 0.97909844 0.58187097 0.92513967 0.64242095
		 0.8367579 0.73910201 0.72231096 0.86282974 0.9749375 0.59033525 0.91812825 0.65304446
		 0.83014715 0.74812031 0.71867818 0.86783403 0.97547054 0.59466147 0.91777939 0.65726376
		 0.82938886 0.7517665 0.71818483 0.8697719 0.97670251 0.59993041 0.91868109 0.6609447
		 0.8300153 0.75505203 0.71820414 0.8717472 0.97682106 0.6054852 0.92244059 0.6742754
		 0.83416814 0.76895326 0.72046494 0.88045079 0.74811935 0.95195687 0.88712293 0.90829015
		 1 0.87283087 1 0.69597739 0.32783416 0.91470921 0.24928463 0.82768941 0.16826741
		 0.73793578 0.084856391 0.64553022 0.33758786 0.92545289 0.26762995 0.84801364 0.19303313
		 0.76539916 0.11239087 0.67602146 0.33592522 0.92366922 0.26394665 0.84396821 0.18675226
		 0.75851613 0.10493996 0.66792876 0.3266592 0.91344899 0.24533325 0.82344186 0.16091156
		 0.73004812 0.070186891 0.62973297 0.31201774 0.89735436 0.21814923 0.79361415 0.12685308
		 0.69273609 0.047921307 0.60599864 0.29848948 0.88265175 0.19592725 0.76958817 0.1037367
		 0.66820717 0.037507128 0.59596425 0.28917688 0.87304634 0.18188848 0.75528598 0.092676044
		 0.6580255 0.031174539 0.59149379 0.28461698 0.86931938 0.17527322 0.7504375 0.086558439
		 0.65460038 0.027223829 0.59130538 0.2824268 0.86902678 0.17200688 0.75067681 0.083429143
		 0.65634078 0.025052337 0.59499967 0.28157496 0.87027198 0.17063877 0.75322443 0.082032539
		 0.66017938 0.024030581 0.59985411 0.28138074 0.87142795 0.17016608 0.7553916 0.081482701
		 0.66311002 0.023587916 0.60316193 0.28150344 0.87203437 0.17010742 0.75649822 0.08132527
		 0.66452062 0.02343394 0.60466641 0.28170133 0.87218857 0.17021303 0.75675493 0.081379071
		 0.6647886 0.023467472 0.60484034 0.28214467 0.87195784 0.17057174 0.75626886 0.081674829
		 0.66399682 0.023686904 0.60367966 0.28288227 0.87140059 0.17123355 0.75510871 0.082285553
		 0.66219133 0.024178587 0.60115594 0.28370857 0.87065166 0.17209078 0.75347072 0.083238222
		 0.65963554 0.025073742 0.59749675 0.28353381 0.86940336 0.17203541 0.751046 0.083712339
		 0.6565088 0.026043 0.59366673 0.28113067 0.86598641 0.16819321 0.74485642 0.080320902
		 0.64967042 0.024585046 0.58794671 0.27344903 0.85706103 0.15578073 0.7298485 0.068125382
		 0.63399976 0.017200943 0.57675999 0.26036337 0.84256756 0.13617043 0.70755672 0.049802415
		 0.61241007 0.0092844609 0.56584138 0.24874617 0.82990998 0.12020367 0.68970019 0.037087351
		 0.59759128 0.0054631033 0.56031752 0.24580587 0.82677066 0.11611613 0.68513018 0.034950547
		 0.59490579 0.0046836771 0.55906504 0.25138402 0.83298612 0.12346509 0.69328535 0.040446829
		 0.60105908 0.0064445487 0.56116617 0.26043394 0.84308428 0.13590564 0.70725334 0.04954968
		 0.61161387 0.0095454454 0.56511682 0.27020463 0.8540628 0.1506902 0.72410297 0.061653588
		 0.62602979 0.014125231 0.57163119 0.27783987 0.86299568 0.16384529 0.73967969 0.075067185
		 0.64260405 0.020813121 0.58178622 0.28131032 0.86787343 0.17015868 0.7485404 0.082145691
		 0.65321112 0.025163151 0.59040856 0.2818476 0.86974281 0.17068878 0.75183392 0.082246788
		 0.65731913 0.024551569 0.59467995 0.28199151 0.87136024 0.17021173 0.75455981 0.081194773
		 0.66118473 0.02328012 0.59995717 0.27984193 0.87991446 0.16861203 0.7634089 0.080723271
		 0.66773033 0.02284733 0.60609889 0.012654419 0.67144114 0.03436305 0.80619812 0.065583512
		 1 0.22710451 1 0 0 1 0 1 1 0 1 0 0 1 0;
	setAttr ".uvst[0].uvsp[750:999]" 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".uvst[0].uvsp[1000:1103]" 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0
		 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1
		 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0
		 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0
		 0 1 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 817 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -0.31870207 -0.24776635 -0.30953336 
		-0.31870207 -0.24776635 -0.30953336 -0.31870207 -0.24776635 -0.30953336 -0.31870207 
		-0.24776635 -0.30953336 -0.31870207 -0.24776635 -0.30953336 -0.31870207 -0.24776635 
		-0.30953336 -0.31870207 -0.24776635 -0.31626227 -0.31870207 -0.24776635 -0.31636927 
		-0.31870207 -0.24776635 -0.31636402 -0.31870207 -0.24776635 -0.31634885 -0.31870207 
		-0.24776635 -0.31632516 -0.31870207 -0.24776635 -0.31629536 -0.31870207 -0.24776635 
		-0.32259887 -0.31870207 -0.24776635 -0.3222909 -0.31870207 -0.24776635 -0.32230595 
		-0.31870207 -0.24776635 -0.3223497 -0.31870207 -0.24776635 -0.32241786 -0.31870207 
		-0.24776635 -0.32250372 -0.31870207 -0.24776635 -0.32866618 -0.31870207 -0.24776635 
		-0.32798252 -0.31870207 -0.24776635 -0.32801595 -0.31870207 -0.24776635 -0.32811308 
		-0.31870207 -0.24776635 -0.32826433 -0.31870207 -0.24776635 -0.32845491 -0.31870207 
		-0.24776635 -0.33452883 -0.31870207 -0.24776635 -0.33352977 -0.31870207 -0.24776635 
		-0.33357868 -0.31870207 -0.24776635 -0.33372056 -0.31870207 -0.24776635 -0.33394158 
		-0.31870207 -0.24776635 -0.33422011 -0.31870207 -0.24776635 -0.34019914 -0.31870207 
		-0.24776635 -0.33890048 -0.31870207 -0.24776635 -0.33896402 -0.31870207 -0.24776635 
		-0.33914849 -0.31870207 -0.24776635 -0.33943579 -0.31870207 -0.24776635 -0.33979782 
		-0.31870207 -0.24776635 -0.34558889 -0.31870207 -0.24776635 -0.34390935 -0.31870207 
		-0.24776635 -0.34399155 -0.31870207 -0.24776635 -0.34423012 -0.31870207 -0.24776635 
		-0.34460166 -0.31870207 -0.24776635 -0.34506989 -0.31870207 -0.24776635 -0.35061097 
		-0.31870207 -0.24776635 -0.34848392 -0.31870207 -0.24776635 -0.34858802 -0.31870207 
		-0.24776635 -0.34889016 -0.31870207 -0.24776635 -0.34936073 -0.31870207 -0.24776635 
		-0.34995368 -0.31870207 -0.24776635 -0.3551859 -0.31870207 -0.24776635 -0.35260212 
		-0.31870207 -0.24776635 -0.35272861 -0.31870207 -0.24776635 -0.35309559 -0.31870207 
		-0.24776635 -0.3536672 -0.31870207 -0.24776635 -0.35438749 -0.31870207 -0.24776635 
		-0.35934868 -0.31870207 -0.24776635 -0.35642716 -0.31870207 -0.24776635 -0.35657015 
		-0.31870207 -0.24776635 -0.35698512 -0.31870207 -0.24776635 -0.35763147 -0.31870207 
		-0.24776635 -0.35844588 -0.31870207 -0.24776635 -0.36320233 -0.31870207 -0.24776635 
		-0.36009175 -0.31870207 -0.24776635 -0.36024398 -0.31870207 -0.24776635 -0.36068583 
		-0.31870207 -0.24776635 -0.36137396 -0.31870207 -0.24776635 -0.36224112 -0.31870207 
		-0.24776635 -0.36681393 -0.31870207 -0.24776635 -0.36361071 -0.31870207 -0.24776635 
		-0.3637675 -0.31870207 -0.24776635 -0.3642225 -0.31870207 -0.24776635 -0.36493114 
		-0.31870207 -0.24776635 -0.3658241 -0.31870207 -0.24776635 -0.37025926 -0.31870207 
		-0.24776635 -0.36703488 -0.31870207 -0.24776635 -0.36719272 -0.31870207 -0.24776635 
		-0.36765069 -0.31870207 -0.24776635 -0.36836401 -0.31870207 -0.24776635 -0.36926284 
		-0.31870207 -0.24776635 -0.37365705 -0.31870207 -0.24776635 -0.37047327 -0.31870207 
		-0.24776635 -0.3706291 -0.31870207 -0.24776635 -0.37108132 -0.31870207 -0.24776635 
		-0.37178567 -0.31870207 -0.24776635 -0.37267321 -0.31870207 -0.24776635 -0.37715486 
		-0.31870207 -0.24776635 -0.37408587 -0.31870207 -0.24776635 -0.37423608 -0.31870207 
		-0.24776635 -0.374672 -0.31870207 -0.24776635 -0.37535095 -0.31870207 -0.24776635 
		-0.37620649 -0.31870207 -0.24776635 -0.38089335 -0.31870207 -0.24776635 -0.37805867 
		-0.31870207 -0.24776635 -0.37819743 -0.31870207 -0.24776635 -0.37860006 -0.31870207 
		-0.24776635 -0.37922716 -0.31870207 -0.24776635 -0.3800174 -0.31870207 -0.24776635 
		-0.38494441 -0.31870207 -0.24776635 -0.38250002 -0.31870207 -0.24776635 -0.38261965 
		-0.31870207 -0.24776635 -0.38296688 -0.31870207 -0.24776635 -0.38350764 -0.31870207 
		-0.24776635 -0.38418904 -0.31870207 -0.24776635 -0.38919133 -0.31870207 -0.24776635 
		-0.387187 -0.31870207 -0.24776635 -0.38728511 -0.31870207 -0.24776635 -0.38756979 
		-0.31870207 -0.24776635 -0.38801324 -0.31870207 -0.24776635 -0.38857198 -0.31870207 
		-0.24776635 -0.39348221 -0.31870207 -0.24776635 -0.39192915 -0.31870207 -0.24776635 
		-0.39200518 -0.31870207 -0.24776635 -0.39222574 -0.31870207 -0.24776635 -0.39256936 
		-0.31870207 -0.24776635 -0.3930023 -0.31870207 -0.24776635 -0.39766964 -0.31870207 
		-0.24776635 -0.39658427 -0.31870207 -0.24776635 -0.39663741 -0.31870207 -0.24776635 
		-0.39679158 -0.31870207 -0.24776635 -0.39703166 -0.31870207 -0.24776635 -0.39733425 
		-0.31870207 -0.24776635 -0.40166515 -0.31870207 -0.24776635 -0.40106562 -0.31870207 
		-0.24776635 -0.40109497 -0.31870207 -0.24776635 -0.40118012 -0.31870207 -0.24776635 
		-0.40131277 -0.31870207 -0.24776635 -0.4014799 -0.31870207 -0.24776635 -0.4054929 
		-0.31870207 -0.24776635 -0.40534666 -0.31870207 -0.24776635 -0.40535381 -0.31870207 
		-0.24776635 -0.40537459 -0.31870207 -0.24776635 -0.40540695 -0.31870207 -0.24776635 
		-0.40544769 -0.31870207 -0.24776635 -0.40918875 -0.31870207 -0.24776635 -0.4094148 
		-0.31870207 -0.24776635 -0.40940374 -0.31870207 -0.24776635 -0.40937161 -0.31870207 
		-0.24776635 -0.40932161 -0.31870207 -0.24776635 -0.4092586 -0.31870207 -0.24776635 
		-0.41278997 -0.31870207 -0.24776635 -0.4132866 -0.31870207 -0.24776635 -0.41326231 
		-0.31870207 -0.24776635 -0.41319177 -0.31870207 -0.24776635 -0.41308188 -0.31870207 
		-0.24776635 -0.41294345 -0.31870207 -0.24776635 -0.41639769 -0.31870207 -0.24776635 
		-0.4172346 -0.31870207 -0.24776635 -0.41719365 -0.31870207 -0.24776635 -0.41707477 
		-0.31870207 -0.24776635 -0.41688961 -0.31870207 -0.24776635 -0.41665635 -0.31870207 
		-0.24776635 -0.42015794 -0.31870207 -0.24776635 -0.42151546 -0.31870207 -0.24776635 
		-0.42144901 -0.31870207 -0.24776635 -0.42125618 -0.31870207 -0.24776635 -0.42095587 
		-0.31870207 -0.24776635 -0.42057744 -0.31870207 -0.24776635 -0.4241876 -0.31870207 
		-0.24776635 -0.42610124 -0.31870207 -0.24776635 -0.42600757 -0.31870207 -0.24776635 
		-0.42573574 -0.31870207 -0.24776635 -0.4253124 -0.31870207 -0.24776635 -0.42477894 
		-0.31870207 -0.24776635 -0.42853987 -0.31870207 -0.24776635 -0.4309426 -0.31870207 
		-0.24776635 -0.430825 -0.31870207 -0.24776635 -0.43048373;
	setAttr ".pt[166:331]" -0.31870207 -0.24776635 -0.42995214 -0.31870207 -0.24776635 
		-0.4292824 -0.31870207 -0.24776635 -0.43284315 -0.31870207 -0.24776635 -0.43577272 
		-0.31870207 -0.24776635 -0.43562937 -0.31870207 -0.24776635 -0.43521324 -0.31870207 
		-0.24776635 -0.43456513 -0.31870207 -0.24776635 -0.43374848 -0.31870207 -0.24776635 
		-0.43645644 -0.31870207 -0.24776635 -0.43987948 -0.31870207 -0.24776635 -0.43971193 
		-0.31870207 -0.24776635 -0.43922573 -0.31870207 -0.24776635 -0.43846846 -0.31870207 
		-0.24776635 -0.43751419 -0.31870207 -0.24776635 -0.43873084 -0.31870207 -0.24776635 
		-0.44241303 -0.31870207 -0.24776635 -0.44223279 -0.31870207 -0.24776635 -0.44170979 
		-0.31870207 -0.24776635 -0.4408952 -0.31870207 -0.24776635 -0.43986869 -0.31870207 
		-0.24776635 -0.30953336 -0.31870207 -0.24776635 -0.30953336 -0.31870207 -0.24776635 
		-0.30953336 -0.31870207 -0.24776635 -0.30953336 -0.31870207 -0.24776635 -0.30953336 
		-0.31870207 -0.24776635 -0.30953336 -0.31870207 -0.24776635 -0.31626254 -0.31870207 
		-0.24776635 -0.31636927 -0.31870207 -0.24776635 -0.31636405 -0.31870207 -0.24776635 
		-0.31634888 -0.31870207 -0.24776635 -0.31632528 -0.31870207 -0.24776635 -0.31629553 
		-0.31870207 -0.24776635 -0.32259849 -0.31870207 -0.24776635 -0.3222909 -0.31870207 
		-0.24776635 -0.32230595 -0.31870207 -0.24776635 -0.32234964 -0.31870207 -0.24776635 
		-0.32241771 -0.31870207 -0.24776635 -0.32250345 -0.31870207 -0.24776635 -0.32866594 
		-0.31870207 -0.24776635 -0.32798252 -0.31870207 -0.24776635 -0.32801595 -0.31870207 
		-0.24776635 -0.32811302 -0.31870207 -0.24776635 -0.32826421 -0.31870207 -0.24776635 
		-0.32845473 -0.31870207 -0.24776635 -0.33452958 -0.31870207 -0.24776635 -0.33352977 
		-0.31870207 -0.24776635 -0.33357871 -0.31870207 -0.24776635 -0.33372071 -0.31870207 
		-0.24776635 -0.33394191 -0.31870207 -0.24776635 -0.33422062 -0.31870207 -0.24776635 
		-0.34020045 -0.31870207 -0.24776635 -0.33890048 -0.31870207 -0.24776635 -0.3389641 
		-0.31870207 -0.24776635 -0.33914876 -0.31870207 -0.24776635 -0.33943635 -0.31870207 
		-0.24776635 -0.33979875 -0.31870207 -0.24776635 -0.34559092 -0.31870207 -0.24776635 
		-0.34390935 -0.31870207 -0.24776635 -0.34399164 -0.31870207 -0.24776635 -0.3442305 
		-0.31870207 -0.24776635 -0.3446025 -0.31870207 -0.24776635 -0.34507129 -0.31870207 
		-0.24776635 -0.35061404 -0.31870207 -0.24776635 -0.34848392 -0.31870207 -0.24776635 
		-0.3485882 -0.31870207 -0.24776635 -0.34889075 -0.31870207 -0.24776635 -0.34936199 
		-0.31870207 -0.24776635 -0.3499558 -0.31870207 -0.24776635 -0.35519037 -0.31870207 
		-0.24776635 -0.35260212 -0.31870207 -0.24776635 -0.35272881 -0.31870207 -0.24776635 
		-0.35309646 -0.31870207 -0.24776635 -0.35366905 -0.31870207 -0.24776635 -0.35439053 
		-0.31870207 -0.24776635 -0.35935509 -0.31870207 -0.24776635 -0.35642716 -0.31870207 
		-0.24776635 -0.35657045 -0.31870207 -0.24776635 -0.35698634 -0.31870207 -0.24776635 
		-0.3576341 -0.31870207 -0.24776635 -0.35845029 -0.31870207 -0.24776635 -0.36320725 
		-0.31870207 -0.24776635 -0.36009175 -0.31870207 -0.24776635 -0.36024421 -0.31870207 
		-0.24776635 -0.36068675 -0.31870207 -0.24776635 -0.36137602 -0.31870207 -0.24776635 
		-0.36224452 -0.31870207 -0.24776635 -0.36681563 -0.31870207 -0.24776635 -0.36361071 
		-0.31870207 -0.24776635 -0.36376759 -0.31870207 -0.24776635 -0.36422282 -0.31870207 
		-0.24776635 -0.36493182 -0.31870207 -0.24776635 -0.36582527 -0.31870207 -0.24776635 
		-0.3702544 -0.31870207 -0.24776635 -0.36703488 -0.31870207 -0.24776635 -0.36719248 
		-0.31870207 -0.24776635 -0.36764976 -0.31870207 -0.24776635 -0.36836201 -0.31870207 
		-0.24776635 -0.36925951 -0.31870207 -0.24776635 -0.37364435 -0.31870207 -0.24776635 
		-0.37047327 -0.31870207 -0.24776635 -0.37062848 -0.31870207 -0.24776635 -0.37107888 
		-0.31870207 -0.24776635 -0.37178043 -0.31870207 -0.24776635 -0.37266445 -0.31870207 
		-0.24776635 -0.37713173 -0.31870207 -0.24776635 -0.37408587 -0.31870207 -0.24776635 
		-0.37423494 -0.31870207 -0.24776635 -0.37466758 -0.31870207 -0.24776635 -0.37534142 
		-0.31870207 -0.24776635 -0.37619051 -0.31870207 -0.24776635 -0.38086286 -0.31870207 
		-0.24776635 -0.37805867 -0.31870207 -0.24776635 -0.37819594 -0.31870207 -0.24776635 
		-0.37859425 -0.31870207 -0.24776635 -0.37921461 -0.31870207 -0.24776635 -0.37999636 
		-0.31870207 -0.24776635 -0.38492018 -0.31870207 -0.24776635 -0.38250002 -0.31870207 
		-0.24776635 -0.38261846 -0.31870207 -0.24776635 -0.38296223 -0.31870207 -0.24776635 
		-0.38349766 -0.31870207 -0.24776635 -0.38417232 -0.31870207 -0.24776635 -0.38917509 
		-0.31870207 -0.24776635 -0.387187 -0.31870207 -0.24776635 -0.38728431 -0.31870207 
		-0.24776635 -0.38756669 -0.31870207 -0.24776635 -0.38800654 -0.31870207 -0.24776635 
		-0.38856074 -0.31870207 -0.24776635 -0.39347193 -0.31870207 -0.24776635 -0.39192915 
		-0.31870207 -0.24776635 -0.3920047 -0.31870207 -0.24776635 -0.39222381 -0.31870207 
		-0.24776635 -0.39256513 -0.31870207 -0.24776635 -0.39299518 -0.31870207 -0.24776635 
		-0.39766383 -0.31870207 -0.24776635 -0.39658427 -0.31870207 -0.24776635 -0.39663711 
		-0.31870207 -0.24776635 -0.39679047 -0.31870207 -0.24776635 -0.39702928 -0.31870207 
		-0.24776635 -0.39733022 -0.31870207 -0.24776635 -0.40166301 -0.31870207 -0.24776635 
		-0.40106562 -0.31870207 -0.24776635 -0.40109485 -0.31870207 -0.24776635 -0.4011797 
		-0.31870207 -0.24776635 -0.40131187 -0.31870207 -0.24776635 -0.40147841 -0.31870207 
		-0.24776635 -0.40549263 -0.31870207 -0.24776635 -0.40534666 -0.31870207 -0.24776635 
		-0.40535381 -0.31870207 -0.24776635 -0.40537456 -0.31870207 -0.24776635 -0.40540683 
		-0.31870207 -0.24776635 -0.40544751 -0.31870207 -0.24776635 -0.40918896 -0.31870207 
		-0.24776635 -0.4094148 -0.31870207 -0.24776635 -0.40940374 -0.31870207 -0.24776635 
		-0.40937164 -0.31870207 -0.24776635 -0.4093217 -0.31870207 -0.24776635 -0.40925872 
		-0.31870207 -0.24776635 -0.41279033 -0.31870207 -0.24776635 -0.4132866 -0.31870207 
		-0.24776635 -0.41326231 -0.31870207 -0.24776635 -0.41319183 -0.31870207 -0.24776635 
		-0.41308203 -0.31870207 -0.24776635 -0.41294372 -0.31870207 -0.24776635 -0.41639912 
		-0.31870207 -0.24776635 -0.4172346;
	setAttr ".pt[332:497]" -0.31870207 -0.24776635 -0.41719371 -0.31870207 -0.24776635 
		-0.41707504 -0.31870207 -0.24776635 -0.41689017 -0.31870207 -0.24776635 -0.4166573 
		-0.31870207 -0.24776635 -0.4201577 -0.31870207 -0.24776635 -0.42151546 -0.31870207 
		-0.24776635 -0.42144901 -0.31870207 -0.24776635 -0.42125615 -0.31870207 -0.24776635 
		-0.42095578 -0.31870207 -0.24776635 -0.42057729 -0.31870207 -0.24776635 -0.42418456 
		-0.31870207 -0.24776635 -0.42610124 -0.31870207 -0.24776635 -0.42600742 -0.31870207 
		-0.24776635 -0.42573518 -0.31870207 -0.24776635 -0.42531115 -0.31870207 -0.24776635 
		-0.42477682 -0.31870207 -0.24776635 -0.42853689 -0.31870207 -0.24776635 -0.4309426 
		-0.31870207 -0.24776635 -0.43082488 -0.31870207 -0.24776635 -0.43048316 -0.31870207 
		-0.24776635 -0.42995092 -0.31870207 -0.24776635 -0.42928028 -0.31870207 -0.24776635 
		-0.43284619 -0.31870207 -0.24776635 -0.43577272 -0.31870207 -0.24776635 -0.43562949 
		-0.31870207 -0.24776635 -0.4352138 -0.31870207 -0.24776635 -0.43456638 -0.31870207 
		-0.24776635 -0.43375054 -0.31870207 -0.24776635 -0.43647301 -0.31870207 -0.24776635 
		-0.43987948 -0.31870207 -0.24776635 -0.43971273 -0.31870207 -0.24776635 -0.43922889 
		-0.31870207 -0.24776635 -0.43847525 -0.31870207 -0.24776635 -0.43752563 -0.31870207 
		-0.24776635 -0.43873084 -0.31870207 -0.24776635 -0.43986869 -0.31870207 -0.24776635 
		-0.4408952 -0.31870207 -0.24776635 -0.44170979 -0.31870207 -0.24776635 -0.44223279 
		-0.31870207 -0.24776635 -0.44241303 -0.31870207 -0.24776635 -0.30953336 -0.31870207 
		-0.24776635 -0.30953336 -0.31870207 -0.24776635 -0.30953336 -0.31870207 -0.24776635 
		-0.30953336 -0.31870207 -0.24776635 -0.30953336 -0.31870207 -0.24776635 -0.30953336 
		-0.31870207 -0.24776635 -0.3161315 -0.31870207 -0.24776635 -0.31623819 -0.31870207 
		-0.24776635 -0.31620523 -0.31870207 -0.24776635 -0.31617549 -0.31870207 -0.24776635 
		-0.31615186 -0.31870207 -0.24776635 -0.31613672 -0.31870207 -0.24776635 -0.32297695 
		-0.31870207 -0.24776635 -0.32266951 -0.31870207 -0.24776635 -0.32276452 -0.31870207 
		-0.24776635 -0.32285023 -0.31870207 -0.24776635 -0.32291824 -0.31870207 -0.24776635 
		-0.3229619 -0.31870207 -0.24776635 -0.32951081 -0.31870207 -0.24776635 -0.32882723 
		-0.31870207 -0.24776635 -0.32903847 -0.31870207 -0.24776635 -0.32922903 -0.31870207 
		-0.24776635 -0.32938024 -0.31870207 -0.24776635 -0.32947734 -0.31870207 -0.24776635 
		-0.33577204 -0.31870207 -0.24776635 -0.33477202 -0.31870207 -0.24776635 -0.33508107 
		-0.31870207 -0.24776635 -0.33535981 -0.31870207 -0.24776635 -0.33558106 -0.31870207 
		-0.24776635 -0.3357231 -0.31870207 -0.24776635 -0.34182727 -0.31870207 -0.24776635 
		-0.34052694 -0.31870207 -0.24776635 -0.34092876 -0.31870207 -0.24776635 -0.34129128 
		-0.31870207 -0.24776635 -0.34157893 -0.31870207 -0.24776635 -0.34176365 -0.31870207 
		-0.24776635 -0.34772068 -0.31870207 -0.24776635 -0.34603912 -0.31870207 -0.24776635 
		-0.34655875 -0.31870207 -0.24776635 -0.34702751 -0.31870207 -0.24776635 -0.3473995 
		-0.31870207 -0.24776635 -0.34763837 -0.31870207 -0.24776635 -0.35336351 -0.31870207 
		-0.24776635 -0.35123286 -0.31870207 -0.24776635 -0.35189128 -0.31870207 -0.24776635 
		-0.35248521 -0.31870207 -0.24776635 -0.35295656 -0.31870207 -0.24776635 -0.35325921 
		-0.31870207 -0.24776635 -0.35862303 -0.31870207 -0.24776635 -0.35603172 -0.31870207 
		-0.24776635 -0.35683247 -0.31870207 -0.24776635 -0.35755485 -0.31870207 -0.24776635 
		-0.3581281 -0.31870207 -0.24776635 -0.35849619 -0.31870207 -0.24776635 -0.36333013 
		-0.31870207 -0.24776635 -0.36039925 -0.31870207 -0.24776635 -0.36130494 -0.31870207 
		-0.24776635 -0.36212197 -0.31870207 -0.24776635 -0.36277035 -0.31870207 -0.24776635 
		-0.36318666 -0.31870207 -0.24776635 -0.36749494 -0.31870207 -0.24776635 -0.36437815 
		-0.31870207 -0.24776635 -0.36534131 -0.31870207 -0.24776635 -0.36621019 -0.31870207 
		-0.24776635 -0.3668997 -0.31870207 -0.24776635 -0.36734241 -0.31870207 -0.24776635 
		-0.37125194 -0.31870207 -0.24776635 -0.36804661 -0.31870207 -0.24776635 -0.36903709 
		-0.31870207 -0.24776635 -0.36993065 -0.31870207 -0.24776635 -0.37063977 -0.31870207 
		-0.24776635 -0.37109506 -0.31870207 -0.24776635 -0.3747094 -0.31870207 -0.24776635 
		-0.37148982 -0.31870207 -0.24776635 -0.37248471 -0.31870207 -0.24776635 -0.37338224 
		-0.31870207 -0.24776635 -0.37409452 -0.31870207 -0.24776635 -0.37455183 -0.31870207 
		-0.24776635 -0.37800288 -0.31870207 -0.24776635 -0.37483123 -0.31870207 -0.24776635 
		-0.37581134 -0.31870207 -0.24776635 -0.37669548 -0.31870207 -0.24776635 -0.37739715 
		-0.31870207 -0.24776635 -0.37784764 -0.31870207 -0.24776635 -0.38126099 -0.31870207 
		-0.24776635 -0.37821287 -0.31870207 -0.24776635 -0.3791548 -0.31870207 -0.24776635 
		-0.38000453 -0.31870207 -0.24776635 -0.38067889 -0.31870207 -0.24776635 -0.38111183 
		-0.31870207 -0.24776635 -0.38458675 -0.31870207 -0.24776635 -0.38177755 -0.31870207 
		-0.24776635 -0.38264564 -0.31870207 -0.24776635 -0.38342875 -0.31870207 -0.24776635 
		-0.38405025 -0.31870207 -0.24776635 -0.38444924 -0.31870207 -0.24776635 -0.38806209 
		-0.31870207 -0.24776635 -0.38563648 -0.31870207 -0.24776635 -0.38638604 -0.31870207 
		-0.24776635 -0.38706219 -0.31870207 -0.24776635 -0.38759884 -0.31870207 -0.24776635 
		-0.38794336 -0.31870207 -0.24776635 -0.39170569 -0.31870207 -0.24776635 -0.38971388 
		-0.31870207 -0.24776635 -0.39032936 -0.31870207 -0.24776635 -0.39088464 -0.31870207 
		-0.24776635 -0.39132529 -0.31870207 -0.24776635 -0.39160821 -0.31870207 -0.24776635 
		-0.39540532 -0.31870207 -0.24776635 -0.39386034 -0.31870207 -0.24776635 -0.39433777 
		-0.31870207 -0.24776635 -0.39476848 -0.31870207 -0.24776635 -0.39511025 -0.31870207 
		-0.24776635 -0.39532971 -0.31870207 -0.24776635 -0.39900148 -0.31870207 -0.24776635 
		-0.39792067 -0.31870207 -0.24776635 -0.39825466 -0.31870207 -0.24776635 -0.39855596 
		-0.31870207 -0.24776635 -0.39879507 -0.31870207 -0.24776635 -0.39894858 -0.31870207 
		-0.24776635 -0.40239841 -0.31870207 -0.24776635 -0.40180054 -0.31870207 -0.24776635 
		-0.40198529 -0.31870207 -0.24776635 -0.40215194 -0.31870207 -0.24776635 -0.40228423 
		-0.31870207 -0.24776635 -0.40236914;
	setAttr ".pt[498:663]" -0.31870207 -0.24776635 -0.40567195 -0.31870207 -0.24776635 
		-0.40552595 -0.31870207 -0.24776635 -0.40557107 -0.31870207 -0.24776635 -0.40561175 
		-0.31870207 -0.24776635 -0.40564406 -0.31870207 -0.24776635 -0.4056648 -0.31870207 
		-0.24776635 -0.40891096 -0.31870207 -0.24776635 -0.4091368 -0.31870207 -0.24776635 
		-0.409067 -0.31870207 -0.24776635 -0.40900406 -0.31870207 -0.24776635 -0.40895408 
		-0.31870207 -0.24776635 -0.40892202 -0.31870207 -0.24776635 -0.41217837 -0.31870207 
		-0.24776635 -0.41267458 -0.31870207 -0.24776635 -0.41252124 -0.31870207 -0.24776635 
		-0.4123829 -0.31870207 -0.24776635 -0.41227314 -0.31870207 -0.24776635 -0.41220266 
		-0.31870207 -0.24776635 -0.41536444 -0.31870207 -0.24776635 -0.4162004 -0.31870207 
		-0.24776635 -0.41594207 -0.31870207 -0.24776635 -0.41570905 -0.31870207 -0.24776635 
		-0.41552413 -0.31870207 -0.24776635 -0.41540539 -0.31870207 -0.24776635 -0.41845822 
		-0.31870207 -0.24776635 -0.4198153 -0.31870207 -0.24776635 -0.41939592 -0.31870207 
		-0.24776635 -0.41901764 -0.31870207 -0.24776635 -0.41871738 -0.31870207 -0.24776635 
		-0.41852465 -0.31870207 -0.24776635 -0.42173702 -0.31870207 -0.24776635 -0.42365146 
		-0.31870207 -0.24776635 -0.42305985 -0.31870207 -0.24776635 -0.42252618 -0.31870207 
		-0.24776635 -0.42210266 -0.31870207 -0.24776635 -0.42183071 -0.31870207 -0.24776635 
		-0.42539248 -0.31870207 -0.24776635 -0.42779636 -0.31870207 -0.24776635 -0.42705351 
		-0.31870207 -0.24776635 -0.42638338 -0.31870207 -0.24776635 -0.42585158 -0.31870207 
		-0.24776635 -0.42551014 -0.31870207 -0.24776635 -0.42890155 -0.31870207 -0.24776635 
		-0.43182635 -0.31870207 -0.24776635 -0.43092251 -0.31870207 -0.24776635 -0.43010718 
		-0.31870207 -0.24776635 -0.42946014 -0.31870207 -0.24776635 -0.42904469 -0.31870207 
		-0.24776635 -0.43170673 -0.31870207 -0.24776635 -0.43511087 -0.31870207 -0.24776635 
		-0.43405896 -0.31870207 -0.24776635 -0.43311 -0.31870207 -0.24776635 -0.43235683 
		-0.31870207 -0.24776635 -0.43187335 -0.31870207 -0.24776635 -0.43338403 -0.31870207 
		-0.24776635 -0.43356395 -0.31870207 -0.24776635 -0.43408608 -0.31870207 -0.24776635 
		-0.43489927 -0.31870207 -0.24776635 -0.43592399 -0.31870207 -0.24776635 -0.43705988 
		-0.31870207 -0.24776635 -0.30953336 -0.31870207 -0.24776635 -0.30953336 -0.31870207 
		-0.24776635 -0.30953336 -0.31870207 -0.24776635 -0.30953336 -0.31870207 -0.24776635 
		-0.30953336 -0.31870207 -0.24776635 -0.30953336 -0.31870207 -0.24776635 -0.31623819 
		-0.31870207 -0.24776635 -0.3161315 -0.31870207 -0.24776635 -0.31613672 -0.31870207 
		-0.24776635 -0.31615186 -0.31870207 -0.24776635 -0.31617549 -0.31870207 -0.24776635 
		-0.31620523 -0.31870207 -0.24776635 -0.32266951 -0.31870207 -0.24776635 -0.32297695 
		-0.31870207 -0.24776635 -0.3229619 -0.31870207 -0.24776635 -0.32291824 -0.31870207 
		-0.24776635 -0.32285023 -0.31870207 -0.24776635 -0.32276452 -0.31870207 -0.24776635 
		-0.32882723 -0.31870207 -0.24776635 -0.32951081 -0.31870207 -0.24776635 -0.32947734 
		-0.31870207 -0.24776635 -0.32938024 -0.31870207 -0.24776635 -0.32922903 -0.31870207 
		-0.24776635 -0.32903847 -0.31870207 -0.24776635 -0.33477202 -0.31870207 -0.24776635 
		-0.33577204 -0.31870207 -0.24776635 -0.3357231 -0.31870207 -0.24776635 -0.33558106 
		-0.31870207 -0.24776635 -0.33535981 -0.31870207 -0.24776635 -0.33508107 -0.31870207 
		-0.24776635 -0.34052694 -0.31870207 -0.24776635 -0.34182727 -0.31870207 -0.24776635 
		-0.34176365 -0.31870207 -0.24776635 -0.34157893 -0.31870207 -0.24776635 -0.34129128 
		-0.31870207 -0.24776635 -0.34092876 -0.31870207 -0.24776635 -0.34603912 -0.31870207 
		-0.24776635 -0.34772068 -0.31870207 -0.24776635 -0.34763837 -0.31870207 -0.24776635 
		-0.3473995 -0.31870207 -0.24776635 -0.34702751 -0.31870207 -0.24776635 -0.34655875 
		-0.31870207 -0.24776635 -0.35123286 -0.31870207 -0.24776635 -0.35336351 -0.31870207 
		-0.24776635 -0.35325921 -0.31870207 -0.24776635 -0.35295656 -0.31870207 -0.24776635 
		-0.35248521 -0.31870207 -0.24776635 -0.35189128 -0.31870207 -0.24776635 -0.35603172 
		-0.31870207 -0.24776635 -0.35862303 -0.31870207 -0.24776635 -0.35849619 -0.31870207 
		-0.24776635 -0.3581281 -0.31870207 -0.24776635 -0.35755485 -0.31870207 -0.24776635 
		-0.35683247 -0.31870207 -0.24776635 -0.36039925 -0.31870207 -0.24776635 -0.36333013 
		-0.31870207 -0.24776635 -0.36318666 -0.31870207 -0.24776635 -0.36277035 -0.31870207 
		-0.24776635 -0.36212197 -0.31870207 -0.24776635 -0.36130494 -0.31870207 -0.24776635 
		-0.36437815 -0.31870207 -0.24776635 -0.36749494 -0.31870207 -0.24776635 -0.36734241 
		-0.31870207 -0.24776635 -0.3668997 -0.31870207 -0.24776635 -0.36621019 -0.31870207 
		-0.24776635 -0.36534131 -0.31870207 -0.24776635 -0.36804661 -0.31870207 -0.24776635 
		-0.37125194 -0.31870207 -0.24776635 -0.37109506 -0.31870207 -0.24776635 -0.37063977 
		-0.31870207 -0.24776635 -0.36993065 -0.31870207 -0.24776635 -0.36903709 -0.31870207 
		-0.24776635 -0.37148982 -0.31870207 -0.24776635 -0.3747094 -0.31870207 -0.24776635 
		-0.37455183 -0.31870207 -0.24776635 -0.37409452 -0.31870207 -0.24776635 -0.37338224 
		-0.31870207 -0.24776635 -0.37248471 -0.31870207 -0.24776635 -0.37483123 -0.31870207 
		-0.24776635 -0.37800288 -0.31870207 -0.24776635 -0.37784764 -0.31870207 -0.24776635 
		-0.37739715 -0.31870207 -0.24776635 -0.37669548 -0.31870207 -0.24776635 -0.37581134 
		-0.31870207 -0.24776635 -0.37821287 -0.31870207 -0.24776635 -0.38126099 -0.31870207 
		-0.24776635 -0.38111183 -0.31870207 -0.24776635 -0.38067889 -0.31870207 -0.24776635 
		-0.38000453 -0.31870207 -0.24776635 -0.3791548 -0.31870207 -0.24776635 -0.38177755 
		-0.31870207 -0.24776635 -0.38458675 -0.31870207 -0.24776635 -0.38444924 -0.31870207 
		-0.24776635 -0.38405025 -0.31870207 -0.24776635 -0.38342875 -0.31870207 -0.24776635 
		-0.38264564 -0.31870207 -0.24776635 -0.38563648 -0.31870207 -0.24776635 -0.38806209 
		-0.31870207 -0.24776635 -0.38794336 -0.31870207 -0.24776635 -0.38759884 -0.31870207 
		-0.24776635 -0.38706219 -0.31870207 -0.24776635 -0.38638604 -0.31870207 -0.24776635 
		-0.38971388 -0.31870207 -0.24776635 -0.39170569 -0.31870207 -0.24776635 -0.39160821 
		-0.31870207 -0.24776635 -0.39132529;
	setAttr ".pt[664:816]" -0.31870207 -0.24776635 -0.39088464 -0.31870207 -0.24776635 
		-0.39032936 -0.31870207 -0.24776635 -0.39386034 -0.31870207 -0.24776635 -0.39540532 
		-0.31870207 -0.24776635 -0.39532971 -0.31870207 -0.24776635 -0.39511025 -0.31870207 
		-0.24776635 -0.39476848 -0.31870207 -0.24776635 -0.39433777 -0.31870207 -0.24776635 
		-0.39792067 -0.31870207 -0.24776635 -0.39900148 -0.31870207 -0.24776635 -0.39894858 
		-0.31870207 -0.24776635 -0.39879507 -0.31870207 -0.24776635 -0.39855596 -0.31870207 
		-0.24776635 -0.39825466 -0.31870207 -0.24776635 -0.40180054 -0.31870207 -0.24776635 
		-0.40239841 -0.31870207 -0.24776635 -0.40236914 -0.31870207 -0.24776635 -0.40228423 
		-0.31870207 -0.24776635 -0.40215194 -0.31870207 -0.24776635 -0.40198529 -0.31870207 
		-0.24776635 -0.40552595 -0.31870207 -0.24776635 -0.40567195 -0.31870207 -0.24776635 
		-0.4056648 -0.31870207 -0.24776635 -0.40564406 -0.31870207 -0.24776635 -0.40561175 
		-0.31870207 -0.24776635 -0.40557107 -0.31870207 -0.24776635 -0.4091368 -0.31870207 
		-0.24776635 -0.40891096 -0.31870207 -0.24776635 -0.40892202 -0.31870207 -0.24776635 
		-0.40895408 -0.31870207 -0.24776635 -0.40900406 -0.31870207 -0.24776635 -0.409067 
		-0.31870207 -0.24776635 -0.41267458 -0.31870207 -0.24776635 -0.41217837 -0.31870207 
		-0.24776635 -0.41220266 -0.31870207 -0.24776635 -0.41227314 -0.31870207 -0.24776635 
		-0.4123829 -0.31870207 -0.24776635 -0.41252124 -0.31870207 -0.24776635 -0.4162004 
		-0.31870207 -0.24776635 -0.41536444 -0.31870207 -0.24776635 -0.41540539 -0.31870207 
		-0.24776635 -0.41552413 -0.31870207 -0.24776635 -0.41570905 -0.31870207 -0.24776635 
		-0.41594207 -0.31870207 -0.24776635 -0.4198153 -0.31870207 -0.24776635 -0.41845822 
		-0.31870207 -0.24776635 -0.41852465 -0.31870207 -0.24776635 -0.41871738 -0.31870207 
		-0.24776635 -0.41901764 -0.31870207 -0.24776635 -0.41939592 -0.31870207 -0.24776635 
		-0.42365146 -0.31870207 -0.24776635 -0.42173702 -0.31870207 -0.24776635 -0.42183071 
		-0.31870207 -0.24776635 -0.42210266 -0.31870207 -0.24776635 -0.42252618 -0.31870207 
		-0.24776635 -0.42305985 -0.31870207 -0.24776635 -0.42779636 -0.31870207 -0.24776635 
		-0.42539248 -0.31870207 -0.24776635 -0.42551014 -0.31870207 -0.24776635 -0.42585158 
		-0.31870207 -0.24776635 -0.42638338 -0.31870207 -0.24776635 -0.42705351 -0.31870207 
		-0.24776635 -0.43182635 -0.31870207 -0.24776635 -0.42890155 -0.31870207 -0.24776635 
		-0.42904469 -0.31870207 -0.24776635 -0.42946014 -0.31870207 -0.24776635 -0.43010718 
		-0.31870207 -0.24776635 -0.43092251 -0.31870207 -0.24776635 -0.43511087 -0.31870207 
		-0.24776635 -0.43170673 -0.31870207 -0.24776635 -0.43187335 -0.31870207 -0.24776635 
		-0.43235683 -0.31870207 -0.24776635 -0.43311 -0.31870207 -0.24776635 -0.43405896 
		-0.31870207 -0.24776635 -0.43705988 -0.31870207 -0.24776635 -0.43592399 -0.31870207 
		-0.24776635 -0.43489927 -0.31870207 -0.24776635 -0.43408608 -0.31870207 -0.24776635 
		-0.43356395 -0.31870207 -0.24776635 -0.43338403 -0.31870207 -0.24776635 -0.30778977 
		-0.31870207 -0.24776635 -0.30779713 -0.31870207 -0.24776635 -0.30868977 -0.31870207 
		-0.24776635 -0.3086296 -0.31870207 -0.24776635 -0.3086707 -0.31870207 -0.24776635 
		-0.30860218 -0.31870207 -0.24776635 -0.30635291 -0.31870207 -0.24776635 -0.3066389 
		-0.31870207 -0.24776635 -0.30787638 -0.31870207 -0.24776635 -0.30819514 -0.31870207 
		-0.24776635 -0.30842251 -0.31870207 -0.24776635 -0.30861288 -0.31870207 -0.24776635 
		-0.30864501 -0.31870207 -0.24776635 -0.3083894 -0.31870207 -0.24776635 -0.30815861 
		-0.31870207 -0.24776635 -0.30776581 -0.31870207 -0.24776635 -0.30676293 -0.31870207 
		-0.24776635 -0.30727038 -0.31870207 -0.24776635 -0.30794603 -0.31870207 -0.24776635 
		-0.30845192 -0.31870207 -0.24776635 -0.30837777 -0.31870207 -0.24776635 -0.30792096 
		-0.31870207 -0.24776635 -0.30713198 -0.31870207 -0.24776635 -0.30644017 -0.31870207 
		-0.24776635 -0.43892759 -0.31870207 -0.24776635 -0.43686146 -0.31870207 -0.24776635 
		-0.44491273 -0.31870207 -0.24776635 -0.44491261 -0.31870207 -0.24776635 -0.43892765 
		-0.31870207 -0.24776635 -0.4368614 -0.31870207 -0.24776635 -0.43085837 -0.31870207 
		-0.24776635 -0.43085837 -0.31870207 -0.24776635 -0.44459552 -0.31870207 -0.24776635 
		-0.4437198 -0.31870207 -0.24776635 -0.4423556 -0.31870207 -0.24776635 -0.44063649 
		-0.31870207 -0.24776635 -0.44063661 -0.31870207 -0.24776635 -0.44235557 -0.31870207 
		-0.24776635 -0.44371963 -0.31870207 -0.24776635 -0.44459534 -0.31870207 -0.24776635 
		-0.43117687 -0.31870207 -0.24776635 -0.43205589 -0.31870207 -0.24776635 -0.43342489 
		-0.31870207 -0.24776635 -0.43514919 -0.31870207 -0.24776635 -0.43514919 -0.31870207 
		-0.24776635 -0.43342483 -0.31870207 -0.24776635 -0.43205589 -0.31870207 -0.24776635 
		-0.43117687 -0.31870207 -0.24776635 -0.43968201 -0.31870207 -0.24776635 -0.43759692 
		-0.31870207 -0.24776635 -0.44581538 -0.31870207 -0.24776635 -0.4458155 -0.31870207 
		-0.24776635 -0.43968168 -0.31870207 -0.24776635 -0.43759668 -0.31870207 -0.24776635 
		-0.43164265 -0.31870207 -0.24776635 -0.43164265 -0.31870207 -0.24776635 -0.44548559 
		-0.31870207 -0.24776635 -0.44458193 -0.31870207 -0.24776635 -0.44318265 -0.31870207 
		-0.24776635 -0.44142914 -0.31870207 -0.24776635 -0.4414292 -0.31870207 -0.24776635 
		-0.4431833 -0.31870207 -0.24776635 -0.4445827 -0.31870207 -0.24776635 -0.44548613 
		-0.31870207 -0.24776635 -0.43195617 -0.31870207 -0.24776635 -0.43282416 -0.31870207 
		-0.24776635 -0.43418032 -0.31870207 -0.24776635 -0.43589288 -0.31870207 -0.24776635 
		-0.43589294 -0.31870207 -0.24776635 -0.43418035 -0.31870207 -0.24776635 -0.43282422 
		-0.31870207 -0.24776635 -0.4319562 -0.31870207 -0.24776635 -0.43872768;
	setAttr -s 817 ".vt";
	setAttr ".vt[0:165]"  -2.066881895 2.86569309 -1.98525906 -2.062076092 2.87512708 -1.98525906
		 -2.054591179 2.88261366 -1.98525906 -2.045160055 2.88742113 -1.98525906 -2.034704924 2.88907719 -1.98525906
		 -2.068537474 2.85523558 -1.98525906 -2.068537474 2.85372806 -1.92478418 -2.03474617 2.88767099 -1.92382264
		 -2.045188427 2.88600945 -1.92386973 -2.054608345 2.88118839 -1.92400622 -2.062084198 2.8736794 -1.92421901
		 -2.066883802 2.86421728 -1.92448699 -2.068537474 2.85762906 -1.86783528 -2.034725666 2.8914125 -1.87060332
		 -2.045174122 2.88975906 -1.8704679 -2.054599762 2.88496113 -1.87007463 -2.062079906 2.87748718 -1.86946225
		 -2.066882849 2.86806941 -1.86869061 -2.068537474 2.86596918 -1.81330657 -2.034704924 2.89926696 -1.81945109
		 -2.045160055 2.89763713 -1.81915033 -2.054591179 2.89290762 -1.8182776 -2.062076092 2.88554144 -1.81691825
		 -2.066881895 2.87625861 -1.81520534 -2.068537474 2.87794113 -1.76061714 -2.034704924 2.91057062 -1.7695961
		 -2.045160055 2.90897417 -1.76915669 -2.054591179 2.90433908 -1.76788127 -2.062076092 2.89712048 -1.76589489
		 -2.066881895 2.88802361 -1.76339173 -2.068537474 2.89335704 -1.70965648 -2.034704924 2.92513847 -1.72132802
		 -2.045160055 2.92358255 -1.72075677 -2.054591179 2.91906905 -1.71909893 -2.062076092 2.91203809 -1.71651685
		 -2.066881895 2.90317845 -1.71326315 -2.068537474 2.91328454 -1.66121709 -2.034704924 2.94361663 -1.67631173
		 -2.045160055 2.94213247 -1.67557299 -2.054591179 2.93782377 -1.67342889 -2.062076092 2.93111324 -1.67008948
		 -2.066881895 2.92265773 -1.66588163 -2.068537474 2.93887186 -1.61608219 -2.034704924 2.96687317 -1.63519859
		 -2.045160055 2.96550298 -1.63426292 -2.054591179 2.96152568 -1.63154769 -2.062076092 2.95533037 -1.6273185
		 -2.066881895 2.94752455 -1.62198949 -2.068537474 2.97115588 -1.57496583 -2.034676075 2.99583387 -1.59818697
		 -2.04513979 2.99462605 -1.59705043 -2.054579496 2.99112082 -1.59375215 -2.06207037 2.98566103 -1.58861482
		 -2.066880465 2.97878122 -1.58214152 -2.068537474 3.0093131065 -1.53755355 -2.034667969 3.030712366 -1.56381035
		 -2.045134544 3.02966547 -1.56252527 -2.054576159 3.026625395 -1.55879569 -2.062068939 3.021891594 -1.55298686
		 -2.066879988 3.0159266 -1.54566729 -2.068537474 3.050867796 -1.50291979 -2.034677982 3.070055246 -1.53087568
		 -2.04514122 3.069115639 -1.5295074 -2.054580212 3.066390276 -1.52553654 -2.062070847 3.062146425 -1.51935184
		 -2.066880465 3.056796789 -1.51155865 -2.068537474 3.093260527 -1.47046137 -2.034704924 3.11128879 -1.49924946
		 -2.045160055 3.11040616 -1.49784052 -2.054591179 3.10784602 -1.49375141 -2.062076092 3.10385776 -1.48738253
		 -2.066881895 3.098831415 -1.47935736 -2.068537474 3.1339941 -1.43949711 -2.034730434 3.15189791 -1.46847558
		 -2.04517746 3.15102196 -1.46705723 -2.054601669 3.14847875 -1.46294117 -2.06208086 3.14451814 -1.45653021
		 -2.066882849 3.13952637 -1.448452 -2.068537474 3.17169499 -1.40895998 -2.034772873 3.19041896 -1.43757367
		 -2.045206785 3.18950272 -1.4361732 -2.054619074 3.18684292 -1.432109 -2.062088966 3.18270063 -1.42577875
		 -2.066885233 3.17748094 -1.4178021 -2.068537474 3.20556021 -1.37752426 -2.034833431 3.22609162 -1.40510607
		 -2.045248508 3.22508669 -1.40375614 -2.054644108 3.22217107 -1.39983845 -2.062100649 3.21762896 -1.39373648
		 -2.066888094 3.21190548 -1.38604748 -2.068537474 3.23481488 -1.34392536 -2.034888744 3.25815082 -1.36940122
		 -2.045286655 3.25700951 -1.36815429 -2.054666758 3.2536943 -1.36453581 -2.062111139 3.24853158 -1.35889971
		 -2.066890478 3.24202657 -1.35179782 -2.068537474 3.25891399 -1.30751729 -2.034874201 3.28549099 -1.32948565
		 -2.04527688 3.28419042 -1.32841039 -2.054661274 3.28041553 -1.32529008 -2.062108278 3.27453542 -1.32042992
		 -2.066890001 3.26712656 -1.3143059 -2.068537474 3.27776861 -1.26934886 -2.034842968 3.30702209 -1.28736234
		 -2.045255423 3.30559087 -1.28648067 -2.054648399 3.30143476 -1.28392208 -2.062102556 3.29496288 -1.27993691
		 -2.066888571 3.28680849 -1.27491534 -2.068537474 3.29157567 -1.23078537 -2.034817934 3.32284474 -1.24474311
		 -2.045238018 3.32131481 -1.24405992 -2.054637909 3.31687284 -1.24207747 -2.062097788 3.30995536 -1.23898947
		 -2.06688714 3.30123878 -1.2350986 -2.068537474 3.30057788 -1.19315171 -2.034796238 3.33329535 -1.20290613
		 -2.045222998 3.33169436 -1.2024287 -2.054629087 3.32704687 -1.20104325 -2.062093735 3.31980872 -1.1988852
		 -2.066886187 3.31068826 -1.19616604 -2.068537474 3.30523825 -1.15724289 -2.034765482 3.33883142 -1.16263103
		 -2.045201778 3.33718753 -1.16236734 -2.054616213 3.3324163 -1.16160202 -2.062087536 3.32498384 -1.16040993
		 -2.066884756 3.31561923 -1.15890789 -2.068537474 3.30637503 -1.12284195 -2.034734726 3.34027076 -1.124156
		 -2.045180321 3.33861184 -1.12409163 -2.054603577 3.33379745 -1.12390506 -2.062081814 3.32629848 -1.12361431
		 -2.066883326 3.31684923 -1.12324798 -2.068537474 3.30482316 -1.089626074 -2.034704924 3.33862996 -1.087594509
		 -2.045160055 3.33697534 -1.08769393 -2.054591179 3.33217335 -1.087982535 -2.062076092 3.32469511 -1.088431954
		 -2.066881895 3.31527066 -1.088998318 -2.068537474 3.30136514 -1.057260871 -2.034704924 3.33493996 -1.052797318
		 -2.045160055 3.33329654 -1.053015828 -2.054591179 3.32852793 -1.053649783 -2.062076092 3.32109976 -1.054637313
		 -2.066881895 3.3117404 -1.0558815 -2.068537474 3.29541802 -1.024836898 -2.034704924 3.32849598 -1.017315626
		 -2.045160055 3.32687736 -1.017683744 -2.054591179 3.32217836 -1.018752098 -2.062076092 3.31486106 -1.020416021
		 -2.066881895 3.30563951 -1.022512674 -2.068537474 3.28510928 -0.99104267 -2.034704924 3.31675339 -0.97884226
		 -2.045160055 3.3152051 -0.97943938 -2.054591179 3.31071043 -0.98117232 -2.062076092 3.30370975 -0.98387146
		 -2.066881895 3.29488778 -0.98727256 -2.068537474 3.26826215 -0.95482683 -2.034677982 3.29747963 -0.93762851
		 -2.04514122 3.29604959 -0.93847024 -2.054580212 3.29189897 -0.94091308 -2.062070847 3.28543544 -0.94471788
		 -2.066880465 3.27729082 -0.94951224 -2.068537474 3.24258041 -0.91571152 -2.034683704 3.2687912 -0.89411759
		 -2.045145273 3.26750827 -0.8951745 -2.054582596 3.26378536 -0.89824164;
	setAttr ".vt[166:331]" -2.062072277 3.25798678 -0.90301895 -2.066880703 3.25068069 -0.90903854
		 -2.068537474 3.20516014 -0.87703669 -2.034722328 3.22683835 -0.85070777 -2.045171976 3.22577763 -0.85199642
		 -2.054598331 3.22269773 -0.85573614 -2.06207943 3.21790242 -0.86156094 -2.066882372 3.21185851 -0.86890054
		 -2.068537474 3.15267372 -0.84456325 -2.034787178 3.16775107 -0.81379938 -2.045216799 3.16701388 -0.81530499
		 -2.054625273 3.16487193 -0.81967473 -2.062092066 3.16153598 -0.82648063 -2.06688571 3.15733266 -0.83505666
		 -2.068537474 3.082090855 -0.82412243 -2.034704924 3.089453936 -0.79102945 -2.045160055 3.08909297 -0.79264915
		 -2.054591179 3.088047743 -0.79734969 -2.062076092 3.086418152 -0.80467081 -2.066881895 3.084366083 -0.81389618
		 -2.0083405972 2.88742113 -1.98525906 -1.99890912 2.88261366 -1.98525906 -1.9914242 2.87512708 -1.98525906
		 -1.98661876 2.86569309 -1.98525906 -1.98496282 2.85523558 -1.98525906 -2.018795252 2.88907719 -1.98525906
		 -1.98496282 2.85381031 -1.9247818 -2.018836498 2.88767099 -1.92382264 -2.008368969 2.88601351 -1.92386961
		 -1.99892616 2.88120461 -1.92400587 -1.99143219 2.87371302 -1.92421806 -1.98662066 2.86427426 -1.92448545
		 -1.98496282 2.85767055 -1.86783862 -2.018816233 2.8914125 -1.87060332 -2.0083549023 2.88976169 -1.87046802
		 -1.99891758 2.88496828 -1.87007535 -1.99142802 2.87750387 -1.86946368 -1.98661971 2.86809731 -1.86869299
		 -1.98496282 2.86598158 -1.81330884 -2.018795252 2.89926696 -1.81945109 -2.0083405972 2.89763832 -1.81915045
		 -1.99890912 2.89291 -1.81827807 -1.9914242 2.88554597 -1.81691921 -1.98661876 2.87626696 -1.81520689
		 -1.98496282 2.87791634 -1.76061046 -2.018795252 2.91057062 -1.7695961 -2.0083405972 2.90897274 -1.76915634
		 -1.99890912 2.90433478 -1.76787996 -1.9914242 2.8971107 -1.76589203 -1.98661876 2.88800693 -1.7633872
		 -1.98496282 2.89332485 -1.70964444 -2.018795252 2.92513847 -1.72132802 -2.0083405972 2.92358088 -1.72075617
		 -1.99890912 2.91906238 -1.71909666 -1.9914242 2.91202402 -1.71651185 -1.98661876 2.90315509 -1.71325481
		 -1.98496282 2.91324854 -1.66119885 -2.018795252 2.94361663 -1.67631173 -2.0083405972 2.94213009 -1.67557204
		 -1.99890912 2.93781686 -1.67342544 -1.9914242 2.93109798 -1.67008197 -1.98661876 2.92263269 -1.665869
		 -1.98496282 2.93883157 -1.61605465 -2.018795252 2.96687317 -1.63519859 -2.0083405972 2.96550035 -1.63426161
		 -1.99890912 2.96151757 -1.63154244 -1.9914242 2.95531368 -1.62730718 -1.98661876 2.94749665 -1.62197042
		 -1.98496282 2.97111273 -1.5749259 -2.018766403 2.99583387 -1.59818697 -2.0083203316 2.99462366 -1.59704852
		 -1.99889684 2.99111247 -1.59374452 -1.99141848 2.98564339 -1.58859837 -1.98661733 2.9787519 -1.58211398
		 -1.98496282 3.0092663765 -1.53749621 -2.018758535 3.030712366 -1.56381035 -2.0083150864 3.029662848 -1.56252241
		 -1.99889398 3.02661705 -1.55878484 -1.99141681 3.021872282 -1.55296326 -1.98661685 3.015893459 -1.54562771
		 -1.98496282 3.050838232 -1.50287545 -2.018768787 3.070055246 -1.53087568 -2.0083222389 3.069114208 -1.52950525
		 -1.99889827 3.066384792 -1.52552807 -1.99141896 3.062133074 -1.5193336 -1.98661733 3.056776047 -1.51152802
		 -1.98496282 3.093251705 -1.47044599 -2.018795252 3.11128879 -1.49924946 -2.0083405972 3.11040592 -1.49783969
		 -1.99890912 3.10784364 -1.49374843 -1.9914242 3.1038537 -1.48737621 -1.98661876 3.098825693 -1.47934675
		 -1.98496282 3.13402081 -1.43954074 -2.018820763 3.15189791 -1.46847558 -2.0083582401 3.15102315 -1.46705937
		 -1.99891949 3.14848328 -1.46294951 -1.99142897 3.1445291 -1.45654821 -1.98661971 3.13954568 -1.44848216
		 -1.98496282 3.17176986 -1.40907431 -2.018862963 3.19041896 -1.43757367 -2.0083873272 3.18950677 -1.4361788
		 -1.99893701 3.18685722 -1.43213081 -1.99143696 3.18273115 -1.42582583 -1.9866221 3.1775322 -1.41788113
		 -1.98496282 3.20571542 -1.37773204 -2.018923044 3.22609162 -1.40510607 -2.0084285736 3.2250948 -1.40376627
		 -1.99896157 3.22220039 -1.39987814 -1.99144876 3.2176919 -1.39382207 -1.98662496 3.21201229 -1.38619113
		 -1.98496282 3.23506618 -1.34419918 -2.018977404 3.25815082 -1.36940122 -2.0084660053 3.25702095 -1.36816776
		 -1.99898422 3.25374269 -1.36458802 -1.99145913 3.24863482 -1.3590126 -1.98662734 3.24220014 -1.351987
		 -1.98496282 3.25917768 -1.30773509 -2.018963099 3.28549099 -1.32948565 -2.0084564686 3.28420281 -1.32842112
		 -1.99897814 3.28046584 -1.32533169 -1.99145639 3.2746439 -1.3205198 -1.98662686 3.26730847 -1.31445634
		 -1.98496282 3.2780056 -1.26949477 -2.018932343 3.30702209 -1.28736234 -2.0084352493 3.30560184 -1.28648782
		 -1.99896538 3.30148029 -1.28394997 -1.99145019 3.29506135 -1.27999711 -1.98662543 3.28697228 -1.27501619
		 -1.98496282 3.29178381 -1.230878 -2.018907785 3.32284474 -1.24474311 -2.0084183216 3.32132459 -1.24406445
		 -1.99895513 3.31691289 -1.24209511 -1.9914459 3.31004143 -1.23902774 -1.986624 3.30138183 -1.2351625
		 -1.98496282 3.30075312 -1.19320405 -2.018886089 3.33329535 -1.20290613 -2.0084035397 3.33170271 -1.20243132
		 -1.99894643 3.32708025 -1.20105314 -1.99144173 3.31988096 -1.19890678 -1.98662305 3.31080914 -1.19620216
		 -1.98496282 3.30535746 -1.15726209 -2.01885581 3.33883142 -1.16263103 -2.0083823204 3.33719301 -1.1623683
		 -1.99893415 3.33243847 -1.16160572 -1.991436 3.32503366 -1.16041791 -1.98662162 3.31570148 -1.15892124
		 -1.98496282 3.30643463 -1.12284422 -2.018825054 3.34027076 -1.124156 -2.0083611012 3.3386147 -1.12409174
		 -1.99892139 3.33380866 -1.12390542 -1.99142992 3.32632351 -1.12361526 -1.98662019 3.31689072 -1.12324953
		 -1.98496282 3.30485511 -1.089624286 -2.018795252 3.33862996 -1.087594509 -2.0083405972 3.33697677 -1.08769381
		 -1.99890912 3.33218002 -1.087982178 -1.9914242 3.32470775 -1.088431239 -1.98661876 3.31529164 -1.088997006
		 -1.98496282 3.30139136 -1.057257414 -2.018795252 3.33493996 -1.052797318 -2.0083405972 3.33329797 -1.05301559
		 -1.99890912 3.32853341 -1.053649068 -1.9914242 3.32111073 -1.054635882 -1.98661876 3.31175852 -1.055879116
		 -1.98496282 3.29547358 -1.024824381 -2.018795252 3.32849598 -1.017315626;
	setAttr ".vt[332:497]" -2.0083405972 3.32688022 -1.017683148 -1.99890912 3.32218957 -1.018749714
		 -1.9914242 3.31488347 -1.020410895 -1.98661876 3.30567813 -1.022504091 -1.98496282 3.28510404 -0.9910447
		 -2.018795252 3.31675339 -0.97884226 -2.0083405972 3.31520414 -0.9794395 -1.99890912 3.310709 -0.9811728
		 -1.9914242 3.30370688 -0.98387229 -1.98661876 3.29488492 -0.98727393 -1.98496282 3.26821494 -0.95485425
		 -2.018768311 3.29747963 -0.93762851 -2.0083217621 3.29604697 -0.93847156 -1.99889779 3.29189062 -0.94091833
		 -1.99141896 3.28541613 -0.94472921 -1.98661733 3.27725792 -0.9495312 -1.98496282 3.24254727 -0.91573858
		 -2.018774033 3.2687912 -0.89411759 -2.0083260536 3.26750684 -0.89517581 -1.99889994 3.26377964 -0.89824677
		 -1.99142039 3.25797296 -0.90303016 -1.9866178 3.25065708 -0.90905738 -1.98496282 3.20518231 -0.87700951
		 -2.018813133 3.22683835 -0.85070777 -2.0083525181 3.22577786 -0.85199499 -1.99891615 3.22270274 -0.85573101
		 -1.99142754 3.21791101 -0.86154974 -1.98661971 3.21187472 -0.86888182 -1.98496282 3.15274739 -0.84441423
		 -2.018877506 3.16775107 -0.81379938 -2.0083973408 3.16701674 -0.81529784 -1.99894261 3.16488576 -0.81964636
		 -1.99143982 3.1615665 -0.82641935 -1.98662257 3.15738392 -0.83495378 -1.98496282 3.082090855 -0.82412243
		 -1.98661876 3.084366083 -0.81389618 -1.9914242 3.086418152 -0.80467081 -1.99890912 3.088047743 -0.79734969
		 -2.0083405972 3.08909297 -0.79264915 -2.018795252 3.089453936 -0.79102945 -1.98661876 2.8370018 -1.98525906
		 -1.9914242 2.82756758 -1.98525906 -1.99890912 2.820081 -1.98525906 -2.0083405972 2.81527352 -1.98525906
		 -2.018795252 2.81361747 -1.98525906 -1.98496282 2.84745908 -1.98525906 -2.018831253 2.81223512 -1.92595959
		 -1.98496282 2.84609032 -1.92500055 -1.98662019 2.83562875 -1.9252969 -1.99143124 2.82619071 -1.92556429
		 -1.99892378 2.81870103 -1.92577648 -2.0083651543 2.81389236 -1.92591262 -2.018795252 2.81615806 -1.86443734
		 -1.98496282 2.84988403 -1.86720061 -1.98661876 2.83946157 -1.86634672 -1.9914242 2.83006072 -1.86557639
		 -1.99890912 2.82259917 -1.86496508 -2.0083405972 2.81780863 -1.86457264 -2.018795252 2.82483268 -1.8057158
		 -1.98496282 2.85812569 -1.81185925 -1.98661876 2.84783697 -1.80996084 -1.9914242 2.83855653 -1.80824816
		 -1.99890912 2.83119082 -1.80688906 -2.0083405972 2.82646251 -1.80601645 -2.018795252 2.83733773 -1.74944401
		 -1.98496282 2.86999774 -1.75843143 -1.98661876 2.85990548 -1.75565422 -1.9914242 2.85080051 -1.75314879
		 -1.99890912 2.84357476 -1.7511605 -2.0083405972 2.83893561 -1.74988389 -2.018795252 2.853513 -1.69502378
		 -1.98496282 2.88533473 -1.70671034 -1.98661876 2.87550187 -1.70309901 -1.9914242 2.86663032 -1.69984114
		 -1.99890912 2.85959053 -1.69725573 -2.0083405972 2.85507059 -1.69559574 -2.018775463 2.87478566 -1.64205813
		 -1.98496282 2.90515399 -1.65717077 -1.9866178 2.8957696 -1.65250075 -1.99142039 2.88730454 -1.64828777
		 -1.99890065 2.88058567 -1.64494443 -2.0083265305 2.87627244 -1.64279783 -2.01876545 2.902637 -1.59134436
		 -1.98496282 2.93068576 -1.61049306 -1.98661733 2.92201781 -1.60457575 -1.99141848 2.91419935 -1.59923768
		 -1.99889684 2.90799403 -1.59500146 -2.0083198547 2.90401006 -1.59228158 -2.018748522 2.93832636 -1.54407549
		 -1.98496282 2.96307659 -1.56736434 -1.98661637 2.95542884 -1.56016767 -1.99141526 2.94852948 -1.55367553
		 -1.99888968 2.94305325 -1.54852331 -2.0083081722 2.93953824 -1.54521537 -2.018748045 2.98015141 -1.50177145
		 -1.98496282 3.0016183853 -1.52811205 -1.98661637 2.99498439 -1.51997232 -1.99141526 2.98899984 -1.51262939
		 -1.99888968 2.98425055 -1.50680208 -2.0083079338 2.98120213 -1.5030607 -2.018764973 3.024390459 -1.46434069
		 -1.98496282 3.04361558 -1.49235225 -1.98661733 3.037674189 -1.48369622 -1.99141848 3.032315493 -1.47588742
		 -1.99889636 3.028062105 -1.46969044 -2.0083193779 3.025331497 -1.46571171 -2.018795252 3.068282843 -1.43057561
		 -1.98496282 3.0863235 -1.45938301 -1.98661876 3.080748558 -1.45048106 -1.9914242 3.075719357 -1.4424504
		 -1.99890912 3.07172823 -1.43607736 -2.0083405972 3.069165707 -1.4319855 -2.018821716 3.1092844 -1.39950228
		 -1.98496282 3.1271615 -1.42843771 -1.98661971 3.12163687 -1.41949618 -1.99142945 3.11665392 -1.41142988
		 -1.99891996 3.11269903 -1.40502846 -2.008358717 3.11015916 -1.40091848 -2.018867254 3.14613581 -1.36990285
		 -1.98496282 3.16478968 -1.39840734 -1.9866221 3.15902472 -1.38959897 -1.99143791 3.15382481 -1.38165283
		 -1.99893844 3.14969897 -1.37534678 -2.0083901882 3.14704871 -1.37129796 -2.018936634 3.17809033 -1.34062099
		 -1.98496282 3.19848204 -1.36801553 -1.98662543 3.19218063 -1.35955012 -1.99145114 3.18649578 -1.35191345
		 -1.99896729 3.18198442 -1.34585285 -2.0084381104 3.17908835 -1.34196174 -2.019003868 3.2044096 -1.31073165
		 -1.98496282 3.22753644 -1.33597863 -1.98662877 3.22039008 -1.32817686 -1.9914639 3.21394324 -1.32113886
		 -1.99899518 3.2088263 -1.31555343 -2.0084848404 3.20554185 -1.31196737 -2.018981218 3.22501707 -1.27949786
		 -1.98496282 3.25138879 -1.30129731 -1.98662782 3.24323988 -1.29456091 -1.99145961 3.235888 -1.28848386
		 -1.99898565 3.23005342 -1.28366113 -2.0084691048 3.22630787 -1.28056479 -2.018945694 3.24107003 -1.24675155
		 -1.98496282 3.27014184 -1.26465249 -1.98662591 3.26115751 -1.25912082 -1.99145305 3.25305414 -1.2541306
		 -1.99897099 3.24662256 -1.25017035 -2.0084445477 3.24249291 -1.24762774 -2.018921614 3.25285602 -1.21350169
		 -1.98496282 3.28396273 -1.22738719 -1.98662496 3.27435088 -1.22309637 -1.99144828 3.26567864 -1.21922553
		 -1.99896109 3.25879741 -1.21615362 -2.0084276199 3.2543788 -1.2141813 -2.018900633 3.26042986 -1.18118215
		 -1.98496282 3.29301095 -1.19089568 -1.986624 3.2829423 -1.18789399 -1.99144411 3.27386045 -1.18518615
		 -1.99895263 3.26665187 -1.18303728 -2.0084135532 3.26202393 -1.18165755 -2.018866777 3.26415062 -1.15065289
		 -1.98496282 3.29765034 -1.15602601 -1.9866221 3.28729844 -1.15436566 -1.99143791 3.27796006 -1.15286779
		 -1.99893844 3.27054858 -1.15167904 -2.0083899498 3.26579094 -1.15091586;
	setAttr ".vt[498:663]" -2.018831253 3.26485825 -1.12123251 -1.98496282 3.29870415 -1.12254465
		 -1.98662019 3.2882452 -1.12213922 -1.99143124 3.27880979 -1.12177336 -1.99892378 3.27132177 -1.12148309
		 -2.0083651543 3.2665143 -1.12129676 -2.018795252 3.26328158 -1.092122555 -1.98496282 3.29705381 -1.090093017
		 -1.98661876 3.28661823 -1.090720177 -1.9914242 3.27720356 -1.091285944 -1.99890912 3.26973224 -1.091735005
		 -2.0083405972 3.26493454 -1.092023253 -2.018795252 3.26001906 -1.062757492 -1.98496282 3.29356384 -1.058297873
		 -1.98661876 3.28319788 -1.059675932 -1.9914242 3.27384686 -1.060919166 -1.99890912 3.26642561 -1.061905742
		 -2.0083405972 3.26166105 -1.06253922 -2.018826008 3.25457859 -1.034123182 -1.98496282 3.28762054 -1.026610017
		 -1.98662019 3.27741027 -1.028931737 -1.99142992 3.26819944 -1.031026125 -1.99892187 3.26088929 -1.03268826
		 -2.0083618164 3.25619602 -1.033755422 -2.018820763 3.24548864 -1.0063185692 -1.98496282 3.27712297 -0.99412197
		 -1.98661971 3.26734734 -0.99789095 -1.99142897 3.25852942 -1.0012909174 -1.99891949 3.25153017 -1.0039892197
		 -2.0083582401 3.24703693 -1.0057215691 -2.018795252 3.23084593 -0.97685099 -1.98496282 3.26007581 -0.95964539
		 -1.98661876 3.25104308 -0.96496224 -1.9914242 3.24289465 -0.96975851 -1.99890912 3.23642802 -0.97356498
		 -2.0083405972 3.23227692 -0.97600889 -2.018812895 3.20824623 -0.94399834 -1.98496282 3.23446918 -0.9223938
		 -1.98661971 3.22636628 -0.92907 -1.99142754 3.21905613 -0.93509269 -1.99891615 3.21325445 -0.93987226
		 -2.0083525181 3.20952892 -0.94294095 -2.018888474 3.17599273 -0.91246128 -1.98496282 3.19763613 -0.88617516
		 -1.98662305 3.19094777 -0.89429808 -1.99144173 3.18491483 -0.90162575 -1.99894738 3.18012667 -0.90744114
		 -2.0084049702 3.17705202 -0.91117477 -2.018967867 3.13175249 -0.88725019 -1.98496282 3.14674759 -0.85665607
		 -1.98662686 3.14211369 -0.86611009 -1.99145734 3.13793397 -0.8746388 -1.99898005 3.13461614 -0.88140726
		 -2.0084598064 3.13248658 -0.8857528 -2.018795252 3.071397781 -0.87217569 -2.0083405972 3.07175827 -0.87055874
		 -1.99890912 3.072802305 -0.86586642 -1.9914242 3.074428082 -0.8585577 -1.98661876 3.076477051 -0.84934831
		 -1.98496282 3.078748465 -0.8391397 -2.045160055 2.81527352 -1.98525906 -2.054591179 2.820081 -1.98525906
		 -2.062076092 2.82756758 -1.98525906 -2.066881895 2.8370018 -1.98525906 -2.068537474 2.84745908 -1.98525906
		 -2.034704924 2.81361747 -1.98525906 -2.068537474 2.84609032 -1.92500055 -2.034669399 2.81223512 -1.92595959
		 -2.045135021 2.81389236 -1.92591262 -2.054576635 2.81870103 -1.92577648 -2.062069416 2.82619071 -1.92556429
		 -2.066879988 2.83562875 -1.9252969 -2.068537474 2.84988403 -1.86720061 -2.034704924 2.81615806 -1.86443734
		 -2.045160055 2.81780863 -1.86457264 -2.054591179 2.82259917 -1.86496508 -2.062076092 2.83006072 -1.86557639
		 -2.066881895 2.83946157 -1.86634672 -2.068537474 2.85812569 -1.81185925 -2.034704924 2.82483268 -1.8057158
		 -2.045160055 2.82646251 -1.80601645 -2.054591179 2.83119082 -1.80688906 -2.062076092 2.83855653 -1.80824816
		 -2.066881895 2.84783697 -1.80996084 -2.068537474 2.86999774 -1.75843143 -2.034704924 2.83733773 -1.74944401
		 -2.045160055 2.83893561 -1.74988389 -2.054591179 2.84357476 -1.7511605 -2.062076092 2.85080051 -1.75314879
		 -2.066881895 2.85990548 -1.75565422 -2.068537474 2.88533473 -1.70671034 -2.034704924 2.853513 -1.69502378
		 -2.045160055 2.85507059 -1.69559574 -2.054591179 2.85959053 -1.69725573 -2.062076092 2.86663032 -1.69984114
		 -2.066881895 2.87550187 -1.70309901 -2.068537474 2.90515399 -1.65717077 -2.034725189 2.87478566 -1.64205813
		 -2.045173883 2.87627244 -1.64279783 -2.054599762 2.88058567 -1.64494443 -2.062079906 2.88730454 -1.64828777
		 -2.066882849 2.8957696 -1.65250075 -2.068537474 2.93068576 -1.61049306 -2.034735203 2.902637 -1.59134436
		 -2.045180798 2.90401006 -1.59228158 -2.054603577 2.90799403 -1.59500146 -2.062081814 2.91419935 -1.59923768
		 -2.066883326 2.92201781 -1.60457575 -2.068537474 2.96307659 -1.56736434 -2.034752131 2.93832636 -1.54407549
		 -2.045192242 2.93953824 -1.54521537 -2.054610729 2.94305325 -1.54852331 -2.062085152 2.94852948 -1.55367553
		 -2.066883802 2.95542884 -1.56016767 -2.068537474 3.0016183853 -1.52811205 -2.034752131 2.98015141 -1.50177145
		 -2.045192719 2.98120213 -1.5030607 -2.054610968 2.98425055 -1.50680208 -2.062085152 2.98899984 -1.51262939
		 -2.066883802 2.99498439 -1.51997232 -2.068537474 3.04361558 -1.49235225 -2.03473568 3.024390459 -1.46434069
		 -2.045180798 3.025331497 -1.46571171 -2.054604053 3.028062105 -1.46969044 -2.062081814 3.032315493 -1.47588742
		 -2.066883326 3.037674189 -1.48369622 -2.068537474 3.0863235 -1.45938301 -2.034704924 3.068282843 -1.43057561
		 -2.045160055 3.069165707 -1.4319855 -2.054591179 3.07172823 -1.43607736 -2.062076092 3.075719357 -1.4424504
		 -2.066881895 3.080748558 -1.45048106 -2.068537474 3.1271615 -1.42843771 -2.034678936 3.1092844 -1.39950228
		 -2.045141697 3.11015916 -1.40091848 -2.054580688 3.11269903 -1.40502846 -2.062071323 3.11665392 -1.41142988
		 -2.066880465 3.12163687 -1.41949618 -2.068537474 3.16478968 -1.39840734 -2.034633398 3.14613581 -1.36990285
		 -2.045110464 3.14704871 -1.37129796 -2.054561853 3.14969897 -1.37534678 -2.062062502 3.15382481 -1.38165283
		 -2.066878319 3.15902472 -1.38959897 -2.068537474 3.19848204 -1.36801553 -2.034563541 3.17809033 -1.34062099
		 -2.045062304 3.17908835 -1.34196174 -2.054533005 3.18198442 -1.34585285 -2.06204915 3.18649578 -1.35191345
		 -2.066874981 3.19218063 -1.35955012 -2.068537474 3.22753644 -1.33597863 -2.034496546 3.2044096 -1.31073165
		 -2.045015812 3.20554185 -1.31196737 -2.05450511 3.2088263 -1.31555343 -2.062036514 3.21394324 -1.32113886
		 -2.066871643 3.22039008 -1.32817686 -2.068537474 3.25138879 -1.30129731 -2.034519196 3.22501707 -1.27949786
		 -2.045031548 3.22630787 -1.28056479 -2.054514647 3.23005342 -1.28366113 -2.062040567 3.235888 -1.28848386
		 -2.066872597 3.24323988 -1.29456091 -2.068537474 3.27014184 -1.26465249 -2.03455472 3.24107003 -1.24675155
		 -2.045056105 3.24249291 -1.24762774 -2.05452919 3.24662256 -1.25017035;
	setAttr ".vt[664:816]" -2.062047243 3.25305414 -1.2541306 -2.066874504 3.26115751 -1.25912082
		 -2.068537474 3.28396273 -1.22738719 -2.034579039 3.25285602 -1.21350169 -2.045072556 3.2543788 -1.2141813
		 -2.054539204 3.25879741 -1.21615362 -2.062052011 3.26567864 -1.21922553 -2.066875458 3.27435088 -1.22309637
		 -2.068537474 3.29301095 -1.19089568 -2.034599543 3.26042986 -1.18118215 -2.045086861 3.26202393 -1.18165755
		 -2.054547787 3.26665187 -1.18303728 -2.062055826 3.27386045 -1.18518615 -2.066876411 3.2829423 -1.18789399
		 -2.068537474 3.29765034 -1.15602601 -2.034633875 3.26415062 -1.15065289 -2.045110464 3.26579094 -1.15091586
		 -2.054561853 3.27054858 -1.15167904 -2.06206274 3.27796006 -1.15286779 -2.066878319 3.28729844 -1.15436566
		 -2.068537474 3.29870415 -1.12254465 -2.034669399 3.26485825 -1.12123251 -2.045135021 3.2665143 -1.12129676
		 -2.054576635 3.27132177 -1.12148309 -2.062069416 3.27880979 -1.12177336 -2.066879988 3.2882452 -1.12213922
		 -2.068537474 3.29705381 -1.090093017 -2.034704924 3.26328158 -1.092122555 -2.045160055 3.26493454 -1.092023253
		 -2.054591179 3.26973224 -1.091735005 -2.062076092 3.27720356 -1.091285944 -2.066881895 3.28661823 -1.090720177
		 -2.068537474 3.29356384 -1.058297873 -2.034704924 3.26001906 -1.062757492 -2.045160055 3.26166105 -1.06253922
		 -2.054591179 3.26642561 -1.061905742 -2.062076092 3.27384686 -1.060919166 -2.066881895 3.28319788 -1.059675932
		 -2.068537474 3.28762054 -1.026610017 -2.034674168 3.25457859 -1.034123182 -2.045138836 3.25619602 -1.033755422
		 -2.054578543 3.26088929 -1.03268826 -2.06207037 3.26819944 -1.031026125 -2.066880226 3.27741027 -1.028931737
		 -2.068537474 3.27712297 -0.99412197 -2.034679413 3.24548864 -1.0063185692 -2.045142174 3.24703693 -1.0057215691
		 -2.054580927 3.25153017 -1.0039892197 -2.062071323 3.25852942 -1.0012909174 -2.066880465 3.26734734 -0.99789095
		 -2.068537474 3.26007581 -0.95964539 -2.034704924 3.23084593 -0.97685099 -2.045160055 3.23227692 -0.97600889
		 -2.054591179 3.23642802 -0.97356498 -2.062076092 3.24289465 -0.96975851 -2.066881895 3.25104308 -0.96496224
		 -2.068537474 3.23446918 -0.9223938 -2.034687519 3.20824623 -0.94399834 -2.045147657 3.20952892 -0.94294095
		 -2.054584026 3.21325445 -0.93987226 -2.062072754 3.21905613 -0.93509269 -2.066880941 3.22636628 -0.92907
		 -2.068537474 3.19763613 -0.88617516 -2.034612179 3.17599273 -0.91246128 -2.045095682 3.17705202 -0.91117477
		 -2.054553032 3.18012667 -0.90744114 -2.06205821 3.18491483 -0.90162575 -2.066877365 3.19094777 -0.89429808
		 -2.068537474 3.14674759 -0.85665607 -2.034532785 3.13175249 -0.88725019 -2.045040846 3.13248658 -0.8857528
		 -2.054520369 3.13461614 -0.88140726 -2.062043428 3.13793397 -0.8746388 -2.066873074 3.14211369 -0.86611009
		 -2.068537474 3.078748465 -0.8391397 -2.066881895 3.076477051 -0.84934831 -2.062076092 3.074428082 -0.8585577
		 -2.054591179 3.072802305 -0.86586642 -2.045160055 3.07175827 -0.87055874 -2.034704924 3.071397781 -0.87217569
		 -2.035448313 2.88779426 -2.00092935562 -2.018700123 2.88774323 -2.00086307526 -2.069235086 2.85629249 -1.99284053
		 -2.069364309 2.84796953 -1.9933815 -1.98388505 2.85565686 -1.99301207 -1.98380506 2.84729862 -1.99362779
		 -2.033354521 2.8180995 -2.013842583 -2.020164967 2.81843829 -2.01127243 -2.047003508 2.88556743 -2.00015068054
		 -2.056315422 2.88136077 -1.99728596 -2.063658714 2.87558532 -1.9952426 -2.068253279 2.86667347 -1.9935317
		 -1.98576152 2.86624336 -1.99324298 -1.99188864 2.87709618 -1.99554026 -1.99731696 2.881814 -1.9976145
		 -2.008648634 2.88665605 -2.0011446476 -2.010513306 2.81902575 -2.010157585 -1.99908555 2.82185769 -2.0055971146
		 -1.99261975 2.82793951 -1.99952483 -1.98713136 2.8378315 -1.99497807 -2.067945242 2.83790445 -1.99564457
		 -2.062247038 2.82839346 -1.99975002 -2.053895712 2.82130861 -2.0068409443 -2.045732021 2.81848478 -2.013058424
		 -2.09193325 3.082602978 -0.82235426 -2.091933012 3.078291178 -0.84092331 -2.036546469 3.095985174 -0.76856399
		 -2.016953707 3.095987797 -0.76856476 -1.96156716 3.082600832 -0.82235342 -1.96156728 3.078290939 -0.84092367
		 -2.036546469 3.065730333 -0.89487445 -2.016953707 3.065730333 -0.89487445 -2.052345276 3.095261812 -0.77141446
		 -2.068257809 3.093291283 -0.77928537 -2.080886364 3.090224981 -0.79154551 -2.088994741 3.086365938 -0.80699575
		 -1.96450579 3.086361647 -0.80699468 -1.97261369 3.090224028 -0.79154563 -1.98524272 3.093296528 -0.77928668
		 -2.0011556149 3.095268488 -0.77141619 -2.0011556149 3.066398859 -0.89201218 -1.98524308 3.068227291 -0.88411206
		 -1.97261441 3.071082115 -0.87180877 -1.96450627 3.074704409 -0.85631186 -2.088994265 3.074704409 -0.8563118
		 -2.080885887 3.071081638 -0.87180901 -2.06825757 3.068227053 -0.88411194 -2.052345276 3.066398859 -0.89201212
		 -2.092068672 3.054280043 -0.81557399 -2.091892481 3.049926996 -0.83431345 -2.036633968 3.068013668 -0.76045161
		 -2.016857624 3.068017006 -0.76045007 -1.96143425 3.054276943 -0.81557691 -1.96160865 3.049926281 -0.83431548
		 -2.036506414 3.037471771 -0.88782603 -2.016993761 3.037471771 -0.88782614 -2.052654743 3.06725955 -0.7634151
		 -2.068749666 3.06522131 -0.77153683 -2.081379175 3.062069893 -0.78411257 -2.089333296 3.058128834 -0.79987192
		 -1.96417189 3.058124542 -0.79987127 -1.97212672 3.062070608 -0.78410661 -1.98475313 3.065228939 -0.77152991
		 -2.00084114075 3.067268133 -0.76341057 -2.0013000965 3.038129568 -0.88500845 -1.98548138 3.039934158 -0.87720746
		 -1.97285628 3.042761087 -0.86501914 -1.96467268 3.04635787 -0.84962785 -2.088828087 3.046358109 -0.84962738
		 -2.080643892 3.042760849 -0.86501908 -2.068018675 3.03993392 -0.87720704 -2.052200317 3.038129568 -0.88500798
		 -2.026749849 3.052086592 -0.82415074;
	setAttr -s 1632 ".ed";
	setAttr ".ed[0:165]"  4 191 1 5 562 1 6 564 1 7 193 1 12 570 1 13 199 1 18 576 1
		 19 205 1 24 582 1 25 211 1 30 588 1 31 217 1 36 594 1 37 223 1 42 600 1 43 229 1
		 48 606 1 49 235 1 54 612 1 55 241 1 60 618 1 61 247 1 66 624 1 67 253 1 72 630 1
		 73 259 1 78 636 1 79 265 1 84 642 1 85 271 1 90 648 1 91 277 1 96 654 1 97 283 1
		 102 660 1 103 289 1 108 666 1 109 295 1 114 672 1 115 301 1 120 678 1 121 307 1 126 684 1
		 127 313 1 132 690 1 133 319 1 138 696 1 139 325 1 144 702 1 145 331 1 150 708 1 151 337 1
		 156 714 1 157 343 1 162 720 1 163 349 1 168 726 1 169 355 1 174 732 1 175 361 1 180 738 0
		 181 371 0 190 377 1 192 379 1 198 385 1 204 391 1 210 397 1 216 403 1 222 409 1 228 415 1
		 234 421 1 240 427 1 246 433 1 252 439 1 258 445 1 264 451 1 270 457 1 276 463 1 282 469 1
		 288 475 1 294 481 1 300 487 1 306 493 1 312 499 1 318 505 1 324 511 1 330 517 1 336 523 1
		 342 529 1 348 535 1 354 541 1 360 547 1 366 557 0 563 376 1 565 378 1 571 384 1 577 390 1
		 583 396 1 589 402 1 595 408 1 601 414 1 607 420 1 613 426 1 619 432 1 625 438 1 631 444 1
		 637 450 1 643 456 1 649 462 1 655 468 1 661 474 1 667 480 1 673 486 1 679 492 1 685 498 1
		 691 504 1 697 510 1 703 516 1 709 522 1 715 528 1 721 534 1 727 540 1 733 546 1 743 552 0
		 4 7 1 7 13 1 6 5 1 13 19 1 12 6 1 19 25 1 18 12 1 25 31 1 24 18 1 31 37 1 30 24 1
		 37 43 1 36 30 1 43 49 1 42 36 1 49 55 1 48 42 1 55 61 1 54 48 1 61 67 1 60 54 1 67 73 1
		 66 60 1 73 79 1 72 66 1 79 85 1 78 72 1 85 91 1 84 78 1 91 97 1 90 84 1 97 103 1
		 96 90 1 103 109 1 102 96 1 109 115 1 108 102 1 115 121 1 114 108 1 121 127 1 120 114 1
		 127 133 1;
	setAttr ".ed[166:331]" 126 120 1 133 139 1 132 126 1 139 145 1 138 132 1 145 151 1
		 144 138 1 151 157 1 150 144 1 157 163 1 156 150 1 163 169 1 162 156 1 169 175 1 168 162 1
		 175 181 1 174 168 1 180 174 1 190 192 1 193 191 1 192 198 1 199 193 1 198 204 1 205 199 1
		 204 210 1 211 205 1 210 216 1 217 211 1 216 222 1 223 217 1 222 228 1 229 223 1 228 234 1
		 235 229 1 234 240 1 241 235 1 240 246 1 247 241 1 246 252 1 253 247 1 252 258 1 259 253 1
		 258 264 1 265 259 1 264 270 1 271 265 1 270 276 1 277 271 1 276 282 1 283 277 1 282 288 1
		 289 283 1 288 294 1 295 289 1 294 300 1 301 295 1 300 306 1 307 301 1 306 312 1 313 307 1
		 312 318 1 319 313 1 318 324 1 325 319 1 324 330 1 331 325 1 330 336 1 337 331 1 336 342 1
		 343 337 1 342 348 1 349 343 1 348 354 1 355 349 1 354 360 1 361 355 1 360 366 1 371 361 1
		 376 378 1 379 377 1 378 384 1 385 379 1 384 390 1 391 385 1 390 396 1 397 391 1 396 402 1
		 403 397 1 402 408 1 409 403 1 408 414 1 415 409 1 414 420 1 421 415 1 420 426 1 427 421 1
		 426 432 1 433 427 1 432 438 1 439 433 1 438 444 1 445 439 1 444 450 1 451 445 1 450 456 1
		 457 451 1 456 462 1 463 457 1 462 468 1 469 463 1 468 474 1 475 469 1 474 480 1 481 475 1
		 480 486 1 487 481 1 486 492 1 493 487 1 492 498 1 499 493 1 498 504 1 505 499 1 504 510 1
		 511 505 1 510 516 1 517 511 1 516 522 1 523 517 1 522 528 1 529 523 1 528 534 1 535 529 1
		 534 540 1 541 535 1 540 546 1 547 541 1 546 552 1 557 547 1 562 564 1 565 563 1 564 570 1
		 571 565 1 570 576 1 577 571 1 576 582 1 583 577 1 582 588 1 589 583 1 588 594 1 595 589 1
		 594 600 1 601 595 1 600 606 1 607 601 1 606 612 1 613 607 1 612 618 1 619 613 1 618 624 1
		 625 619 1 624 630 1 631 625 1 630 636 1 637 631 1 636 642 1 643 637 1;
	setAttr ".ed[332:497]" 642 648 1 649 643 1 648 654 1 655 649 1 654 660 1 661 655 1
		 660 666 1 667 661 1 666 672 1 673 667 1 672 678 1 679 673 1 678 684 1 685 679 1 684 690 1
		 691 685 1 690 696 1 697 691 1 696 702 1 703 697 1 702 708 1 709 703 1 708 714 1 715 709 1
		 714 720 1 721 715 1 720 726 1 727 721 1 726 732 1 733 727 1 732 738 1 743 733 1 4 3 1
		 3 8 1 8 7 1 3 2 1 2 9 1 9 8 1 2 1 1 1 10 1 10 9 1 1 0 1 0 11 1 11 10 1 0 5 1 6 11 1
		 14 13 1 15 14 1 16 15 1 17 16 1 12 17 1 20 19 1 21 20 1 22 21 1 23 22 1 18 23 1 26 25 1
		 27 26 1 28 27 1 29 28 1 24 29 1 32 31 1 33 32 1 34 33 1 35 34 1 30 35 1 38 37 1 39 38 1
		 40 39 1 41 40 1 36 41 1 44 43 1 45 44 1 46 45 1 47 46 1 42 47 1 50 49 1 51 50 1 52 51 1
		 53 52 1 48 53 1 56 55 1 57 56 1 58 57 1 59 58 1 54 59 1 62 61 1 63 62 1 64 63 1 65 64 1
		 60 65 1 68 67 1 69 68 1 70 69 1 71 70 1 66 71 1 74 73 1 75 74 1 76 75 1 77 76 1 72 77 1
		 80 79 1 81 80 1 82 81 1 83 82 1 78 83 1 86 85 1 87 86 1 88 87 1 89 88 1 84 89 1 92 91 1
		 93 92 1 94 93 1 95 94 1 90 95 1 98 97 1 99 98 1 100 99 1 101 100 1 96 101 1 104 103 1
		 105 104 1 106 105 1 107 106 1 102 107 1 110 109 1 111 110 1 112 111 1 113 112 1 108 113 1
		 116 115 1 117 116 1 118 117 1 119 118 1 114 119 1 122 121 1 123 122 1 124 123 1 125 124 1
		 120 125 1 128 127 1 129 128 1 130 129 1 131 130 1 126 131 1 134 133 1 135 134 1 136 135 1
		 137 136 1 132 137 1 140 139 1 141 140 1 142 141 1 143 142 1 138 143 1 146 145 1 147 146 1
		 148 147 1 149 148 1 144 149 1 152 151 1 153 152 1 154 153 1 155 154 1 150 155 1;
	setAttr ".ed[498:663]" 158 157 1 159 158 1 160 159 1 161 160 1 156 161 1 164 163 1
		 165 164 1 166 165 1 167 166 1 162 167 1 170 169 1 171 170 1 172 171 1 173 172 1 168 173 1
		 176 175 1 177 176 1 178 177 1 179 178 1 174 179 1 182 181 0 183 182 0 184 183 0 185 184 0
		 180 185 0 190 189 1 189 188 1 188 187 1 187 186 1 186 191 1 192 197 1 197 196 1 196 195 1
		 195 194 1 194 193 1 198 203 1 203 202 1 202 201 1 201 200 1 200 199 1 204 209 1 209 208 1
		 208 207 1 207 206 1 206 205 1 210 215 1 215 214 1 214 213 1 213 212 1 212 211 1 216 221 1
		 221 220 1 220 219 1 219 218 1 218 217 1 222 227 1 227 226 1 226 225 1 225 224 1 224 223 1
		 228 233 1 233 232 1 232 231 1 231 230 1 230 229 1 234 239 1 239 238 1 238 237 1 237 236 1
		 236 235 1 240 245 1 245 244 1 244 243 1 243 242 1 242 241 1 246 251 1 251 250 1 250 249 1
		 249 248 1 248 247 1 252 257 1 257 256 1 256 255 1 255 254 1 254 253 1 258 263 1 263 262 1
		 262 261 1 261 260 1 260 259 1 264 269 1 269 268 1 268 267 1 267 266 1 266 265 1 270 275 1
		 275 274 1 274 273 1 273 272 1 272 271 1 276 281 1 281 280 1 280 279 1 279 278 1 278 277 1
		 282 287 1 287 286 1 286 285 1 285 284 1 284 283 1 288 293 1 293 292 1 292 291 1 291 290 1
		 290 289 1 294 299 1 299 298 1 298 297 1 297 296 1 296 295 1 300 305 1 305 304 1 304 303 1
		 303 302 1 302 301 1 306 311 1 311 310 1 310 309 1 309 308 1 308 307 1 312 317 1 317 316 1
		 316 315 1 315 314 1 314 313 1 318 323 1 323 322 1 322 321 1 321 320 1 320 319 1 324 329 1
		 329 328 1 328 327 1 327 326 1 326 325 1 330 335 1 335 334 1 334 333 1 333 332 1 332 331 1
		 336 341 1 341 340 1 340 339 1 339 338 1 338 337 1 342 347 1 347 346 1 346 345 1 345 344 1
		 344 343 1 348 353 1 353 352 1 352 351 1 351 350 1 350 349 1 354 359 1;
	setAttr ".ed[664:829]" 359 358 1 358 357 1 357 356 1 356 355 1 360 365 1 365 367 1
		 367 366 0 365 364 1 364 368 1 368 367 0 364 363 1 363 369 1 369 368 0 363 362 1 362 370 1
		 370 369 0 362 361 1 371 370 0 376 375 1 375 374 1 374 373 1 373 372 1 372 377 1 378 383 1
		 383 382 1 382 381 1 381 380 1 380 379 1 384 389 1 389 388 1 388 387 1 387 386 1 386 385 1
		 390 395 1 395 394 1 394 393 1 393 392 1 392 391 1 396 401 1 401 400 1 400 399 1 399 398 1
		 398 397 1 402 407 1 407 406 1 406 405 1 405 404 1 404 403 1 408 413 1 413 412 1 412 411 1
		 411 410 1 410 409 1 414 419 1 419 418 1 418 417 1 417 416 1 416 415 1 420 425 1 425 424 1
		 424 423 1 423 422 1 422 421 1 426 431 1 431 430 1 430 429 1 429 428 1 428 427 1 432 437 1
		 437 436 1 436 435 1 435 434 1 434 433 1 438 443 1 443 442 1 442 441 1 441 440 1 440 439 1
		 444 449 1 449 448 1 448 447 1 447 446 1 446 445 1 450 455 1 455 454 1 454 453 1 453 452 1
		 452 451 1 456 461 1 461 460 1 460 459 1 459 458 1 458 457 1 462 467 1 467 466 1 466 465 1
		 465 464 1 464 463 1 468 473 1 473 472 1 472 471 1 471 470 1 470 469 1 474 479 1 479 478 1
		 478 477 1 477 476 1 476 475 1 480 485 1 485 484 1 484 483 1 483 482 1 482 481 1 486 491 1
		 491 490 1 490 489 1 489 488 1 488 487 1 492 497 1 497 496 1 496 495 1 495 494 1 494 493 1
		 498 503 1 503 502 1 502 501 1 501 500 1 500 499 1 504 509 1 509 508 1 508 507 1 507 506 1
		 506 505 1 510 515 1 515 514 1 514 513 1 513 512 1 512 511 1 516 521 1 521 520 1 520 519 1
		 519 518 1 518 517 1 522 527 1 527 526 1 526 525 1 525 524 1 524 523 1 528 533 1 533 532 1
		 532 531 1 531 530 1 530 529 1 534 539 1 539 538 1 538 537 1 537 536 1 536 535 1 540 545 1
		 545 544 1 544 543 1 543 542 1 542 541 1 546 551 1 551 553 1 553 552 0;
	setAttr ".ed[830:995]" 551 550 1 550 554 1 554 553 0 550 549 1 549 555 1 555 554 0
		 549 548 1 548 556 1 556 555 0 548 547 1 557 556 0 562 561 1 561 560 1 560 559 1 559 558 1
		 558 563 1 564 569 1 569 568 1 568 567 1 567 566 1 566 565 1 570 575 1 575 574 1 574 573 1
		 573 572 1 572 571 1 576 581 1 581 580 1 580 579 1 579 578 1 578 577 1 582 587 1 587 586 1
		 586 585 1 585 584 1 584 583 1 588 593 1 593 592 1 592 591 1 591 590 1 590 589 1 594 599 1
		 599 598 1 598 597 1 597 596 1 596 595 1 600 605 1 605 604 1 604 603 1 603 602 1 602 601 1
		 606 611 1 611 610 1 610 609 1 609 608 1 608 607 1 612 617 1 617 616 1 616 615 1 615 614 1
		 614 613 1 618 623 1 623 622 1 622 621 1 621 620 1 620 619 1 624 629 1 629 628 1 628 627 1
		 627 626 1 626 625 1 630 635 1 635 634 1 634 633 1 633 632 1 632 631 1 636 641 1 641 640 1
		 640 639 1 639 638 1 638 637 1 642 647 1 647 646 1 646 645 1 645 644 1 644 643 1 648 653 1
		 653 652 1 652 651 1 651 650 1 650 649 1 654 659 1 659 658 1 658 657 1 657 656 1 656 655 1
		 660 665 1 665 664 1 664 663 1 663 662 1 662 661 1 666 671 1 671 670 1 670 669 1 669 668 1
		 668 667 1 672 677 1 677 676 1 676 675 1 675 674 1 674 673 1 678 683 1 683 682 1 682 681 1
		 681 680 1 680 679 1 684 689 1 689 688 1 688 687 1 687 686 1 686 685 1 690 695 1 695 694 1
		 694 693 1 693 692 1 692 691 1 696 701 1 701 700 1 700 699 1 699 698 1 698 697 1 702 707 1
		 707 706 1 706 705 1 705 704 1 704 703 1 708 713 1 713 712 1 712 711 1 711 710 1 710 709 1
		 714 719 1 719 718 1 718 717 1 717 716 1 716 715 1 720 725 1 725 724 1 724 723 1 723 722 1
		 722 721 1 726 731 1 731 730 1 730 729 1 729 728 1 728 727 1 732 737 1 737 739 1 739 738 0
		 737 736 1 736 740 1 740 739 0 736 735 1 735 741 1 741 740 0 735 734 1;
	setAttr ".ed[996:1161]" 734 742 1 742 741 0 734 733 1 743 742 0 11 17 1 10 16 1
		 9 15 1 8 14 1 17 23 1 16 22 1 15 21 1 14 20 1 23 29 1 22 28 1 21 27 1 20 26 1 29 35 1
		 28 34 1 27 33 1 26 32 1 35 41 1 34 40 1 33 39 1 32 38 1 41 47 1 40 46 1 39 45 1 38 44 1
		 47 53 1 46 52 1 45 51 1 44 50 1 53 59 1 52 58 1 51 57 1 50 56 1 59 65 1 58 64 1 57 63 1
		 56 62 1 65 71 1 64 70 1 63 69 1 62 68 1 71 77 1 70 76 1 69 75 1 68 74 1 77 83 1 76 82 1
		 75 81 1 74 80 1 83 89 1 82 88 1 81 87 1 80 86 1 89 95 1 88 94 1 87 93 1 86 92 1 95 101 1
		 94 100 1 93 99 1 92 98 1 101 107 1 100 106 1 99 105 1 98 104 1 107 113 1 106 112 1
		 105 111 1 104 110 1 113 119 1 112 118 1 111 117 1 110 116 1 119 125 1 118 124 1 117 123 1
		 116 122 1 125 131 1 124 130 1 123 129 1 122 128 1 131 137 1 130 136 1 129 135 1 128 134 1
		 137 143 1 136 142 1 135 141 1 134 140 1 143 149 1 142 148 1 141 147 1 140 146 1 149 155 1
		 148 154 1 147 153 1 146 152 1 155 161 1 154 160 1 153 159 1 152 158 1 161 167 1 160 166 1
		 159 165 1 158 164 1 167 173 1 166 172 1 165 171 1 164 170 1 173 179 1 172 178 1 171 177 1
		 170 176 1 179 185 1 178 184 1 177 183 1 176 182 1 189 197 1 188 196 1 187 195 1 186 194 1
		 197 203 1 196 202 1 195 201 1 194 200 1 203 209 1 202 208 1 201 207 1 200 206 1 209 215 1
		 208 214 1 207 213 1 206 212 1 215 221 1 214 220 1 213 219 1 212 218 1 221 227 1 220 226 1
		 219 225 1 218 224 1 227 233 1 226 232 1 225 231 1 224 230 1 233 239 1 232 238 1 231 237 1
		 230 236 1 239 245 1 238 244 1 237 243 1 236 242 1 245 251 1 244 250 1 243 249 1 242 248 1
		 251 257 1 250 256 1 249 255 1 248 254 1 257 263 1 256 262 1;
	setAttr ".ed[1162:1327]" 255 261 1 254 260 1 263 269 1 262 268 1 261 267 1 260 266 1
		 269 275 1 268 274 1 267 273 1 266 272 1 275 281 1 274 280 1 273 279 1 272 278 1 281 287 1
		 280 286 1 279 285 1 278 284 1 287 293 1 286 292 1 285 291 1 284 290 1 293 299 1 292 298 1
		 291 297 1 290 296 1 299 305 1 298 304 1 297 303 1 296 302 1 305 311 1 304 310 1 303 309 1
		 302 308 1 311 317 1 310 316 1 309 315 1 308 314 1 317 323 1 316 322 1 315 321 1 314 320 1
		 323 329 1 322 328 1 321 327 1 320 326 1 329 335 1 328 334 1 327 333 1 326 332 1 335 341 1
		 334 340 1 333 339 1 332 338 1 341 347 1 340 346 1 339 345 1 338 344 1 347 353 1 346 352 1
		 345 351 1 344 350 1 353 359 1 352 358 1 351 357 1 350 356 1 359 365 1 358 364 1 357 363 1
		 356 362 1 375 383 1 374 382 1 373 381 1 372 380 1 383 389 1 382 388 1 381 387 1 380 386 1
		 389 395 1 388 394 1 387 393 1 386 392 1 395 401 1 394 400 1 393 399 1 392 398 1 401 407 1
		 400 406 1 399 405 1 398 404 1 407 413 1 406 412 1 405 411 1 404 410 1 413 419 1 412 418 1
		 411 417 1 410 416 1 419 425 1 418 424 1 417 423 1 416 422 1 425 431 1 424 430 1 423 429 1
		 422 428 1 431 437 1 430 436 1 429 435 1 428 434 1 437 443 1 436 442 1 435 441 1 434 440 1
		 443 449 1 442 448 1 441 447 1 440 446 1 449 455 1 448 454 1 447 453 1 446 452 1 455 461 1
		 454 460 1 453 459 1 452 458 1 461 467 1 460 466 1 459 465 1 458 464 1 467 473 1 466 472 1
		 465 471 1 464 470 1 473 479 1 472 478 1 471 477 1 470 476 1 479 485 1 478 484 1 477 483 1
		 476 482 1 485 491 1 484 490 1 483 489 1 482 488 1 491 497 1 490 496 1 489 495 1 488 494 1
		 497 503 1 496 502 1 495 501 1 494 500 1 503 509 1 502 508 1 501 507 1 500 506 1 509 515 1
		 508 514 1 507 513 1 506 512 1 515 521 1 514 520 1 513 519 1 512 518 1;
	setAttr ".ed[1328:1493]" 521 527 1 520 526 1 519 525 1 518 524 1 527 533 1 526 532 1
		 525 531 1 524 530 1 533 539 1 532 538 1 531 537 1 530 536 1 539 545 1 538 544 1 537 543 1
		 536 542 1 545 551 1 544 550 1 543 549 1 542 548 1 561 569 1 560 568 1 559 567 1 558 566 1
		 569 575 1 568 574 1 567 573 1 566 572 1 575 581 1 574 580 1 573 579 1 572 578 1 581 587 1
		 580 586 1 579 585 1 578 584 1 587 593 1 586 592 1 585 591 1 584 590 1 593 599 1 592 598 1
		 591 597 1 590 596 1 599 605 1 598 604 1 597 603 1 596 602 1 605 611 1 604 610 1 603 609 1
		 602 608 1 611 617 1 610 616 1 609 615 1 608 614 1 617 623 1 616 622 1 615 621 1 614 620 1
		 623 629 1 622 628 1 621 627 1 620 626 1 629 635 1 628 634 1 627 633 1 626 632 1 635 641 1
		 634 640 1 633 639 1 632 638 1 641 647 1 640 646 1 639 645 1 638 644 1 647 653 1 646 652 1
		 645 651 1 644 650 1 653 659 1 652 658 1 651 657 1 650 656 1 659 665 1 658 664 1 657 663 1
		 656 662 1 665 671 1 664 670 1 663 669 1 662 668 1 671 677 1 670 676 1 669 675 1 668 674 1
		 677 683 1 676 682 1 675 681 1 674 680 1 683 689 1 682 688 1 681 687 1 680 686 1 689 695 1
		 688 694 1 687 693 1 686 692 1 695 701 1 694 700 1 693 699 1 692 698 1 701 707 1 700 706 1
		 699 705 1 698 704 1 707 713 1 706 712 1 705 711 1 704 710 1 713 719 1 712 718 1 711 717 1
		 710 716 1 719 725 1 718 724 1 717 723 1 716 722 1 725 731 1 724 730 1 723 729 1 722 728 1
		 731 737 1 730 736 1 729 735 1 728 734 1 4 744 1 191 745 1 744 745 0 5 746 1 562 747 1
		 746 747 0 190 748 1 377 749 1 748 749 0 563 750 1 376 751 1 750 751 0 3 752 1 744 752 0
		 2 753 1 752 753 0 1 754 1 753 754 0 0 755 1 754 755 0 755 746 0 189 756 1 748 756 0
		 188 757 1 756 757 0 187 758 1 757 758 0 186 759 1 758 759 0 759 745 0;
	setAttr ".ed[1494:1631]" 375 760 1 751 760 0 374 761 1 760 761 0 373 762 1 761 762 0
		 372 763 1 762 763 0 763 749 0 561 764 1 747 764 0 560 765 1 764 765 0 559 766 1 765 766 0
		 558 767 1 766 767 0 767 750 0 180 768 1 738 769 1 768 769 0 181 770 1 371 771 1 770 771 0
		 366 772 1 557 773 1 772 773 0 743 774 1 552 775 1 774 775 0 182 776 1 776 770 0 183 777 1
		 777 776 0 184 778 1 778 777 0 185 779 1 779 778 0 768 779 0 367 780 1 780 772 0 368 781 1
		 781 780 0 369 782 1 782 781 0 370 783 1 783 782 0 771 783 0 553 784 1 784 775 0 554 785 1
		 785 784 0 555 786 1 786 785 0 556 787 1 787 786 0 773 787 0 739 788 1 788 769 0 740 789 1
		 789 788 0 741 790 1 790 789 0 742 791 1 791 790 0 774 791 0 768 792 1 769 793 1 792 793 0
		 770 794 1 771 795 1 794 795 0 772 796 1 773 797 1 796 797 0 774 798 1 775 799 1 798 799 0
		 776 800 1 800 794 0 777 801 1 801 800 0 778 802 1 802 801 0 779 803 1 803 802 0 792 803 0
		 780 804 1 804 796 0 781 805 1 805 804 0 782 806 1 806 805 0 783 807 1 807 806 0 795 807 0
		 784 808 1 808 799 0 785 809 1 809 808 0 786 810 1 810 809 0 787 811 1 811 810 0 797 811 0
		 788 812 1 812 793 0 789 813 1 813 812 0 790 814 1 814 813 0 791 815 1 815 814 0 798 815 0
		 792 816 1 793 816 1 794 816 1 795 816 1 796 816 1 797 816 1 798 816 1 799 816 1 800 816 1
		 801 816 1 802 816 1 803 816 1 804 816 1 805 816 1 806 816 1 807 816 1 808 816 1 809 816 1
		 810 816 1 811 816 1 812 816 1 813 816 1 814 816 1 815 816 1;
	setAttr -s 816 -ch 3240 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 124 3 185 -1
		mu 0 4 0 17 75 9
		f 4 125 5 187 -4
		mu 0 4 17 19 77 75
		f 4 127 7 189 -6
		mu 0 4 19 21 79 77
		f 4 129 9 191 -8
		mu 0 4 21 23 81 79
		f 4 131 11 193 -10
		mu 0 4 23 25 83 81
		f 4 133 13 195 -12
		mu 0 4 25 27 85 83
		f 4 135 15 197 -14
		mu 0 4 27 29 87 85
		f 4 137 17 199 -16
		mu 0 4 29 31 89 87
		f 4 139 19 201 -18
		mu 0 4 31 33 91 89
		f 4 141 21 203 -20
		mu 0 4 33 35 93 91
		f 4 143 23 205 -22
		mu 0 4 35 37 95 93
		f 4 145 25 207 -24
		mu 0 4 37 39 97 95
		f 4 147 27 209 -26
		mu 0 4 39 41 99 97
		f 4 149 29 211 -28
		mu 0 4 41 43 101 99
		f 4 151 31 213 -30
		mu 0 4 43 45 103 101
		f 4 153 33 215 -32
		mu 0 4 45 47 105 103
		f 4 155 35 217 -34
		mu 0 4 47 49 107 105
		f 4 157 37 219 -36
		mu 0 4 49 51 109 107
		f 4 159 39 221 -38
		mu 0 4 51 53 111 109
		f 4 161 41 223 -40
		mu 0 4 53 55 113 111
		f 4 163 43 225 -42
		mu 0 4 55 57 115 113
		f 4 165 45 227 -44
		mu 0 4 57 59 117 115
		f 4 167 47 229 -46
		mu 0 4 59 61 119 117
		f 4 169 49 231 -48
		mu 0 4 61 63 121 119
		f 4 171 51 233 -50
		mu 0 4 63 65 123 121
		f 4 173 53 235 -52
		mu 0 4 65 67 125 123
		f 4 175 55 237 -54
		mu 0 4 67 69 127 125
		f 4 177 57 239 -56
		mu 0 4 69 71 129 127
		f 4 179 59 241 -58
		mu 0 4 71 73 131 129
		f 4 181 61 243 -60
		mu 0 4 73 14 3 131
		f 4 184 63 245 -63
		mu 0 4 74 76 133 10
		f 4 186 64 247 -64
		mu 0 4 76 78 135 133
		f 4 188 65 249 -65
		mu 0 4 78 80 137 135
		f 4 190 66 251 -66
		mu 0 4 80 82 139 137
		f 4 192 67 253 -67
		mu 0 4 82 84 141 139
		f 4 194 68 255 -68
		mu 0 4 84 86 143 141
		f 4 196 69 257 -69
		mu 0 4 86 88 145 143
		f 4 198 70 259 -70
		mu 0 4 88 90 147 145
		f 4 200 71 261 -71
		mu 0 4 90 92 149 147
		f 4 202 72 263 -72
		mu 0 4 92 94 151 149
		f 4 204 73 265 -73
		mu 0 4 94 96 153 151
		f 4 206 74 267 -74
		mu 0 4 96 98 155 153
		f 4 208 75 269 -75
		mu 0 4 98 100 157 155
		f 4 210 76 271 -76
		mu 0 4 100 102 159 157
		f 4 212 77 273 -77
		mu 0 4 102 104 161 159
		f 4 214 78 275 -78
		mu 0 4 104 106 163 161
		f 4 216 79 277 -79
		mu 0 4 106 108 165 163
		f 4 218 80 279 -80
		mu 0 4 108 110 167 165
		f 4 220 81 281 -81
		mu 0 4 110 112 169 167
		f 4 222 82 283 -82
		mu 0 4 112 114 171 169
		f 4 224 83 285 -83
		mu 0 4 114 116 173 171
		f 4 226 84 287 -84
		mu 0 4 116 118 175 173
		f 4 228 85 289 -85
		mu 0 4 118 120 177 175
		f 4 230 86 291 -86
		mu 0 4 120 122 179 177
		f 4 232 87 293 -87
		mu 0 4 122 124 181 179
		f 4 234 88 295 -88
		mu 0 4 124 126 183 181
		f 4 236 89 297 -89
		mu 0 4 126 128 185 183
		f 4 238 90 299 -90
		mu 0 4 128 130 187 185
		f 4 240 91 301 -91
		mu 0 4 130 2 189 187
		f 4 242 92 303 -92
		mu 0 4 2 13 5 189
		f 4 244 -95 305 93
		mu 0 4 132 134 191 11
		f 4 246 -96 307 94
		mu 0 4 134 136 193 191
		f 4 248 -97 309 95
		mu 0 4 136 138 195 193
		f 4 250 -98 311 96
		mu 0 4 138 140 197 195
		f 4 252 -99 313 97
		mu 0 4 140 142 199 197
		f 4 254 -100 315 98
		mu 0 4 142 144 201 199
		f 4 256 -101 317 99
		mu 0 4 144 146 203 201
		f 4 258 -102 319 100
		mu 0 4 146 148 205 203
		f 4 260 -103 321 101
		mu 0 4 148 150 207 205
		f 4 262 -104 323 102
		mu 0 4 150 152 209 207
		f 4 264 -105 325 103
		mu 0 4 152 154 211 209
		f 4 266 -106 327 104
		mu 0 4 154 156 213 211
		f 4 268 -107 329 105
		mu 0 4 156 158 215 213
		f 4 270 -108 331 106
		mu 0 4 158 160 217 215
		f 4 272 -109 333 107
		mu 0 4 160 162 219 217
		f 4 274 -110 335 108
		mu 0 4 162 164 221 219
		f 4 276 -111 337 109
		mu 0 4 164 166 223 221
		f 4 278 -112 339 110
		mu 0 4 166 168 225 223
		f 4 280 -113 341 111
		mu 0 4 168 170 227 225
		f 4 282 -114 343 112
		mu 0 4 170 172 229 227
		f 4 284 -115 345 113
		mu 0 4 172 174 231 229
		f 4 286 -116 347 114
		mu 0 4 174 176 233 231
		f 4 288 -117 349 115
		mu 0 4 176 178 235 233
		f 4 290 -118 351 116
		mu 0 4 178 180 237 235
		f 4 292 -119 353 117
		mu 0 4 180 182 239 237
		f 4 294 -120 355 118
		mu 0 4 182 184 241 239
		f 4 296 -121 357 119
		mu 0 4 184 186 243 241
		f 4 298 -122 359 120
		mu 0 4 186 188 245 243
		f 4 300 -123 361 121
		mu 0 4 188 4 247 245
		f 4 302 -124 363 122
		mu 0 4 4 12 7 247
		f 4 304 -3 126 1
		mu 0 4 190 192 1 8
		f 4 306 -5 128 2
		mu 0 4 192 194 16 1
		f 4 308 -7 130 4
		mu 0 4 194 196 18 16
		f 4 310 -9 132 6
		mu 0 4 196 198 20 18
		f 4 312 -11 134 8
		mu 0 4 198 200 22 20
		f 4 314 -13 136 10
		mu 0 4 200 202 24 22
		f 4 316 -15 138 12
		mu 0 4 202 204 26 24
		f 4 318 -17 140 14
		mu 0 4 204 206 28 26
		f 4 320 -19 142 16
		mu 0 4 206 208 30 28
		f 4 322 -21 144 18
		mu 0 4 208 210 32 30
		f 4 324 -23 146 20
		mu 0 4 210 212 34 32
		f 4 326 -25 148 22
		mu 0 4 212 214 36 34
		f 4 328 -27 150 24
		mu 0 4 214 216 38 36
		f 4 330 -29 152 26
		mu 0 4 216 218 40 38
		f 4 332 -31 154 28
		mu 0 4 218 220 42 40
		f 4 334 -33 156 30
		mu 0 4 220 222 44 42
		f 4 336 -35 158 32
		mu 0 4 222 224 46 44
		f 4 338 -37 160 34
		mu 0 4 224 226 48 46
		f 4 340 -39 162 36
		mu 0 4 226 228 50 48
		f 4 342 -41 164 38
		mu 0 4 228 230 52 50
		f 4 344 -43 166 40
		mu 0 4 230 232 54 52
		f 4 346 -45 168 42
		mu 0 4 232 234 56 54
		f 4 348 -47 170 44
		mu 0 4 234 236 58 56
		f 4 350 -49 172 46
		mu 0 4 236 238 60 58
		f 4 352 -51 174 48
		mu 0 4 238 240 62 60
		f 4 354 -53 176 50
		mu 0 4 240 242 64 62
		f 4 356 -55 178 52
		mu 0 4 242 244 66 64
		f 4 358 -57 180 54
		mu 0 4 244 246 68 66
		f 4 360 -59 182 56
		mu 0 4 246 6 70 68
		f 4 362 -61 183 58
		mu 0 4 6 15 72 70
		f 4 364 365 366 -125
		mu 0 4 0 251 252 17
		f 4 367 368 369 -366
		mu 0 4 251 250 253 252
		f 4 370 371 372 -369
		mu 0 4 250 249 254 253
		f 4 373 374 375 -372
		mu 0 4 249 248 255 254
		f 4 376 -127 377 -375
		mu 0 4 248 8 1 255
		f 4 668 669 670 -243
		mu 0 4 2 491 492 13
		f 4 671 672 673 -670
		mu 0 4 491 490 493 492
		f 4 674 675 676 -673
		mu 0 4 490 489 494 493
		f 4 677 678 679 -676
		mu 0 4 489 488 495 494
		f 4 680 -244 681 -679
		mu 0 4 488 131 3 495
		f 4 827 828 829 -303
		mu 0 4 4 615 616 12
		f 4 830 831 832 -829
		mu 0 4 615 614 617 616
		f 4 833 834 835 -832
		mu 0 4 614 613 618 617
		f 4 836 837 838 -835
		mu 0 4 613 612 619 618
		f 4 839 -304 840 -838
		mu 0 4 612 189 5 619
		f 4 986 987 988 -363
		mu 0 4 6 739 740 15
		f 4 989 990 991 -988
		mu 0 4 739 738 741 740
		f 4 992 993 994 -991
		mu 0 4 738 737 742 741
		f 4 995 996 997 -994
		mu 0 4 737 736 743 742
		f 4 998 -364 999 -997
		mu 0 4 736 247 7 743
		f 4 -378 -129 382 -1001
		mu 0 4 255 1 16 259
		f 4 -376 1000 381 -1002
		mu 0 4 254 255 259 258
		f 4 -373 1001 380 -1003
		mu 0 4 253 254 258 257
		f 4 -367 1003 378 -126
		mu 0 4 17 252 256 19
		f 4 -370 1002 379 -1004
		mu 0 4 252 253 257 256
		f 4 -383 -131 387 -1005
		mu 0 4 259 16 18 263
		f 4 -382 1004 386 -1006
		mu 0 4 258 259 263 262
		f 4 -381 1005 385 -1007
		mu 0 4 257 258 262 261
		f 4 -379 1007 383 -128
		mu 0 4 19 256 260 21
		f 4 -380 1006 384 -1008
		mu 0 4 256 257 261 260
		f 4 -388 -133 392 -1009
		mu 0 4 263 18 20 267
		f 4 -387 1008 391 -1010
		mu 0 4 262 263 267 266
		f 4 -386 1009 390 -1011
		mu 0 4 261 262 266 265
		f 4 -384 1011 388 -130
		mu 0 4 21 260 264 23
		f 4 -385 1010 389 -1012
		mu 0 4 260 261 265 264
		f 4 -393 -135 397 -1013
		mu 0 4 267 20 22 271
		f 4 -392 1012 396 -1014
		mu 0 4 266 267 271 270
		f 4 -391 1013 395 -1015
		mu 0 4 265 266 270 269
		f 4 -389 1015 393 -132
		mu 0 4 23 264 268 25
		f 4 -390 1014 394 -1016
		mu 0 4 264 265 269 268
		f 4 -398 -137 402 -1017
		mu 0 4 271 22 24 275
		f 4 -397 1016 401 -1018
		mu 0 4 270 271 275 274
		f 4 -396 1017 400 -1019
		mu 0 4 269 270 274 273
		f 4 -394 1019 398 -134
		mu 0 4 25 268 272 27
		f 4 -395 1018 399 -1020
		mu 0 4 268 269 273 272
		f 4 -403 -139 407 -1021
		mu 0 4 275 24 26 279
		f 4 -402 1020 406 -1022
		mu 0 4 274 275 279 278
		f 4 -401 1021 405 -1023
		mu 0 4 273 274 278 277
		f 4 -399 1023 403 -136
		mu 0 4 27 272 276 29
		f 4 -400 1022 404 -1024
		mu 0 4 272 273 277 276
		f 4 -408 -141 412 -1025
		mu 0 4 279 26 28 283
		f 4 -407 1024 411 -1026
		mu 0 4 278 279 283 282
		f 4 -406 1025 410 -1027
		mu 0 4 277 278 282 281
		f 4 -404 1027 408 -138
		mu 0 4 29 276 280 31
		f 4 -405 1026 409 -1028
		mu 0 4 276 277 281 280
		f 4 -413 -143 417 -1029
		mu 0 4 283 28 30 287
		f 4 -412 1028 416 -1030
		mu 0 4 282 283 287 286
		f 4 -411 1029 415 -1031
		mu 0 4 281 282 286 285
		f 4 -409 1031 413 -140
		mu 0 4 31 280 284 33
		f 4 -410 1030 414 -1032
		mu 0 4 280 281 285 284
		f 4 -418 -145 422 -1033
		mu 0 4 287 30 32 291
		f 4 -417 1032 421 -1034
		mu 0 4 286 287 291 290
		f 4 -416 1033 420 -1035
		mu 0 4 285 286 290 289
		f 4 -414 1035 418 -142
		mu 0 4 33 284 288 35
		f 4 -415 1034 419 -1036
		mu 0 4 284 285 289 288
		f 4 -423 -147 427 -1037
		mu 0 4 291 32 34 295
		f 4 -422 1036 426 -1038
		mu 0 4 290 291 295 294
		f 4 -421 1037 425 -1039
		mu 0 4 289 290 294 293
		f 4 -419 1039 423 -144
		mu 0 4 35 288 292 37
		f 4 -420 1038 424 -1040
		mu 0 4 288 289 293 292
		f 4 -428 -149 432 -1041
		mu 0 4 295 34 36 299
		f 4 -427 1040 431 -1042
		mu 0 4 294 295 299 298
		f 4 -426 1041 430 -1043
		mu 0 4 293 294 298 297
		f 4 -424 1043 428 -146
		mu 0 4 37 292 296 39
		f 4 -425 1042 429 -1044
		mu 0 4 292 293 297 296
		f 4 -433 -151 437 -1045
		mu 0 4 299 36 38 303
		f 4 -432 1044 436 -1046
		mu 0 4 298 299 303 302
		f 4 -431 1045 435 -1047
		mu 0 4 297 298 302 301
		f 4 -429 1047 433 -148
		mu 0 4 39 296 300 41
		f 4 -430 1046 434 -1048
		mu 0 4 296 297 301 300
		f 4 -438 -153 442 -1049
		mu 0 4 303 38 40 307
		f 4 -437 1048 441 -1050
		mu 0 4 302 303 307 306
		f 4 -436 1049 440 -1051
		mu 0 4 301 302 306 305
		f 4 -434 1051 438 -150
		mu 0 4 41 300 304 43
		f 4 -435 1050 439 -1052
		mu 0 4 300 301 305 304
		f 4 -443 -155 447 -1053
		mu 0 4 307 40 42 311
		f 4 -442 1052 446 -1054
		mu 0 4 306 307 311 310
		f 4 -441 1053 445 -1055
		mu 0 4 305 306 310 309
		f 4 -439 1055 443 -152
		mu 0 4 43 304 308 45
		f 4 -440 1054 444 -1056
		mu 0 4 304 305 309 308
		f 4 -448 -157 452 -1057
		mu 0 4 311 42 44 315
		f 4 -447 1056 451 -1058
		mu 0 4 310 311 315 314
		f 4 -446 1057 450 -1059
		mu 0 4 309 310 314 313
		f 4 -444 1059 448 -154
		mu 0 4 45 308 312 47
		f 4 -445 1058 449 -1060
		mu 0 4 308 309 313 312
		f 4 -453 -159 457 -1061
		mu 0 4 315 44 46 319
		f 4 -452 1060 456 -1062
		mu 0 4 314 315 319 318
		f 4 -451 1061 455 -1063
		mu 0 4 313 314 318 317
		f 4 -449 1063 453 -156
		mu 0 4 47 312 316 49
		f 4 -450 1062 454 -1064
		mu 0 4 312 313 317 316
		f 4 -458 -161 462 -1065
		mu 0 4 319 46 48 323
		f 4 -457 1064 461 -1066
		mu 0 4 318 319 323 322
		f 4 -456 1065 460 -1067
		mu 0 4 317 318 322 321
		f 4 -454 1067 458 -158
		mu 0 4 49 316 320 51
		f 4 -455 1066 459 -1068
		mu 0 4 316 317 321 320
		f 4 -463 -163 467 -1069
		mu 0 4 323 48 50 327
		f 4 -462 1068 466 -1070
		mu 0 4 322 323 327 326
		f 4 -461 1069 465 -1071
		mu 0 4 321 322 326 325
		f 4 -459 1071 463 -160
		mu 0 4 51 320 324 53
		f 4 -460 1070 464 -1072
		mu 0 4 320 321 325 324
		f 4 -468 -165 472 -1073
		mu 0 4 327 50 52 331
		f 4 -467 1072 471 -1074
		mu 0 4 326 327 331 330
		f 4 -466 1073 470 -1075
		mu 0 4 325 326 330 329
		f 4 -464 1075 468 -162
		mu 0 4 53 324 328 55
		f 4 -465 1074 469 -1076
		mu 0 4 324 325 329 328
		f 4 -473 -167 477 -1077
		mu 0 4 331 52 54 335
		f 4 -472 1076 476 -1078
		mu 0 4 330 331 335 334
		f 4 -471 1077 475 -1079
		mu 0 4 329 330 334 333
		f 4 -469 1079 473 -164
		mu 0 4 55 328 332 57
		f 4 -470 1078 474 -1080
		mu 0 4 328 329 333 332
		f 4 -478 -169 482 -1081
		mu 0 4 335 54 56 339
		f 4 -477 1080 481 -1082
		mu 0 4 334 335 339 338
		f 4 -476 1081 480 -1083
		mu 0 4 333 334 338 337
		f 4 -474 1083 478 -166
		mu 0 4 57 332 336 59
		f 4 -475 1082 479 -1084
		mu 0 4 332 333 337 336
		f 4 -483 -171 487 -1085
		mu 0 4 339 56 58 343
		f 4 -482 1084 486 -1086
		mu 0 4 338 339 343 342
		f 4 -481 1085 485 -1087
		mu 0 4 337 338 342 341
		f 4 -479 1087 483 -168
		mu 0 4 59 336 340 61
		f 4 -480 1086 484 -1088
		mu 0 4 336 337 341 340
		f 4 -488 -173 492 -1089
		mu 0 4 343 58 60 347
		f 4 -487 1088 491 -1090
		mu 0 4 342 343 347 346
		f 4 -486 1089 490 -1091
		mu 0 4 341 342 346 345
		f 4 -484 1091 488 -170
		mu 0 4 61 340 344 63
		f 4 -485 1090 489 -1092
		mu 0 4 340 341 345 344
		f 4 -493 -175 497 -1093
		mu 0 4 347 60 62 351
		f 4 -492 1092 496 -1094
		mu 0 4 346 347 351 350
		f 4 -491 1093 495 -1095
		mu 0 4 345 346 350 349
		f 4 -489 1095 493 -172
		mu 0 4 63 344 348 65
		f 4 -490 1094 494 -1096
		mu 0 4 344 345 349 348
		f 4 -498 -177 502 -1097
		mu 0 4 351 62 64 355
		f 4 -497 1096 501 -1098
		mu 0 4 350 351 355 354
		f 4 -496 1097 500 -1099
		mu 0 4 349 350 354 353
		f 4 -494 1099 498 -174
		mu 0 4 65 348 352 67
		f 4 -495 1098 499 -1100
		mu 0 4 348 349 353 352
		f 4 -503 -179 507 -1101
		mu 0 4 355 64 66 359
		f 4 -502 1100 506 -1102
		mu 0 4 354 355 359 358
		f 4 -501 1101 505 -1103
		mu 0 4 353 354 358 357
		f 4 -499 1103 503 -176
		mu 0 4 67 352 356 69
		f 4 -500 1102 504 -1104
		mu 0 4 352 353 357 356
		f 4 -508 -181 512 -1105
		mu 0 4 359 66 68 363
		f 4 -507 1104 511 -1106
		mu 0 4 358 359 363 362
		f 4 -506 1105 510 -1107
		mu 0 4 357 358 362 361
		f 4 -504 1107 508 -178
		mu 0 4 69 356 360 71
		f 4 -505 1106 509 -1108
		mu 0 4 356 357 361 360
		f 4 -513 -183 517 -1109
		mu 0 4 363 68 70 367
		f 4 -512 1108 516 -1110
		mu 0 4 362 363 367 366
		f 4 -511 1109 515 -1111
		mu 0 4 361 362 366 365
		f 4 -509 1111 513 -180
		mu 0 4 71 360 364 73
		f 4 -510 1110 514 -1112
		mu 0 4 360 361 365 364
		f 4 -518 -184 522 -1113
		mu 0 4 367 70 72 371
		f 4 -517 1112 521 -1114
		mu 0 4 366 367 371 370
		f 4 -516 1113 520 -1115
		mu 0 4 365 366 370 369
		f 4 -514 1115 518 -182
		mu 0 4 73 364 368 14
		f 4 -515 1114 519 -1116
		mu 0 4 364 365 369 368
		f 4 523 1116 -529 -185
		mu 0 4 74 375 379 76
		f 4 524 1117 -530 -1117
		mu 0 4 375 374 378 379
		f 4 525 1118 -531 -1118
		mu 0 4 374 373 377 378
		f 4 526 1119 -532 -1119
		mu 0 4 373 372 376 377
		f 4 527 -186 -533 -1120
		mu 0 4 372 9 75 376
		f 4 528 1120 -534 -187
		mu 0 4 76 379 383 78
		f 4 529 1121 -535 -1121
		mu 0 4 379 378 382 383
		f 4 530 1122 -536 -1122
		mu 0 4 378 377 381 382
		f 4 531 1123 -537 -1123
		mu 0 4 377 376 380 381
		f 4 532 -188 -538 -1124
		mu 0 4 376 75 77 380
		f 4 533 1124 -539 -189
		mu 0 4 78 383 387 80
		f 4 534 1125 -540 -1125
		mu 0 4 383 382 386 387
		f 4 535 1126 -541 -1126
		mu 0 4 382 381 385 386
		f 4 536 1127 -542 -1127
		mu 0 4 381 380 384 385
		f 4 537 -190 -543 -1128
		mu 0 4 380 77 79 384
		f 4 538 1128 -544 -191
		mu 0 4 80 387 391 82
		f 4 539 1129 -545 -1129
		mu 0 4 387 386 390 391
		f 4 540 1130 -546 -1130
		mu 0 4 386 385 389 390
		f 4 541 1131 -547 -1131
		mu 0 4 385 384 388 389
		f 4 542 -192 -548 -1132
		mu 0 4 384 79 81 388
		f 4 543 1132 -549 -193
		mu 0 4 82 391 395 84
		f 4 544 1133 -550 -1133
		mu 0 4 391 390 394 395
		f 4 545 1134 -551 -1134
		mu 0 4 390 389 393 394
		f 4 546 1135 -552 -1135
		mu 0 4 389 388 392 393
		f 4 547 -194 -553 -1136
		mu 0 4 388 81 83 392
		f 4 548 1136 -554 -195
		mu 0 4 84 395 399 86
		f 4 549 1137 -555 -1137
		mu 0 4 395 394 398 399
		f 4 550 1138 -556 -1138
		mu 0 4 394 393 397 398
		f 4 551 1139 -557 -1139
		mu 0 4 393 392 396 397
		f 4 552 -196 -558 -1140
		mu 0 4 392 83 85 396
		f 4 553 1140 -559 -197
		mu 0 4 86 399 403 88
		f 4 554 1141 -560 -1141
		mu 0 4 399 398 402 403
		f 4 555 1142 -561 -1142
		mu 0 4 398 397 401 402
		f 4 556 1143 -562 -1143
		mu 0 4 397 396 400 401
		f 4 557 -198 -563 -1144
		mu 0 4 396 85 87 400
		f 4 558 1144 -564 -199
		mu 0 4 88 403 407 90
		f 4 559 1145 -565 -1145
		mu 0 4 403 402 406 407
		f 4 560 1146 -566 -1146
		mu 0 4 402 401 405 406
		f 4 561 1147 -567 -1147
		mu 0 4 401 400 404 405
		f 4 562 -200 -568 -1148
		mu 0 4 400 87 89 404
		f 4 563 1148 -569 -201
		mu 0 4 90 407 411 92
		f 4 564 1149 -570 -1149
		mu 0 4 407 406 410 411
		f 4 565 1150 -571 -1150
		mu 0 4 406 405 409 410
		f 4 566 1151 -572 -1151
		mu 0 4 405 404 408 409
		f 4 567 -202 -573 -1152
		mu 0 4 404 89 91 408
		f 4 568 1152 -574 -203
		mu 0 4 92 411 415 94
		f 4 569 1153 -575 -1153
		mu 0 4 411 410 414 415
		f 4 570 1154 -576 -1154
		mu 0 4 410 409 413 414
		f 4 571 1155 -577 -1155
		mu 0 4 409 408 412 413
		f 4 572 -204 -578 -1156
		mu 0 4 408 91 93 412
		f 4 573 1156 -579 -205
		mu 0 4 94 415 419 96
		f 4 574 1157 -580 -1157
		mu 0 4 415 414 418 419
		f 4 575 1158 -581 -1158
		mu 0 4 414 413 417 418
		f 4 576 1159 -582 -1159
		mu 0 4 413 412 416 417
		f 4 577 -206 -583 -1160
		mu 0 4 412 93 95 416
		f 4 578 1160 -584 -207
		mu 0 4 96 419 423 98
		f 4 579 1161 -585 -1161
		mu 0 4 419 418 422 423
		f 4 580 1162 -586 -1162
		mu 0 4 418 417 421 422
		f 4 581 1163 -587 -1163
		mu 0 4 417 416 420 421
		f 4 582 -208 -588 -1164
		mu 0 4 416 95 97 420
		f 4 583 1164 -589 -209
		mu 0 4 98 423 427 100
		f 4 584 1165 -590 -1165
		mu 0 4 423 422 426 427
		f 4 585 1166 -591 -1166
		mu 0 4 422 421 425 426
		f 4 586 1167 -592 -1167
		mu 0 4 421 420 424 425
		f 4 587 -210 -593 -1168
		mu 0 4 420 97 99 424
		f 4 588 1168 -594 -211
		mu 0 4 100 427 431 102
		f 4 589 1169 -595 -1169
		mu 0 4 427 426 430 431
		f 4 590 1170 -596 -1170
		mu 0 4 426 425 429 430
		f 4 591 1171 -597 -1171
		mu 0 4 425 424 428 429
		f 4 592 -212 -598 -1172
		mu 0 4 424 99 101 428
		f 4 593 1172 -599 -213
		mu 0 4 102 431 435 104
		f 4 594 1173 -600 -1173
		mu 0 4 431 430 434 435
		f 4 595 1174 -601 -1174
		mu 0 4 430 429 433 434
		f 4 596 1175 -602 -1175
		mu 0 4 429 428 432 433
		f 4 597 -214 -603 -1176
		mu 0 4 428 101 103 432
		f 4 598 1176 -604 -215
		mu 0 4 104 435 439 106
		f 4 599 1177 -605 -1177
		mu 0 4 435 434 438 439
		f 4 600 1178 -606 -1178
		mu 0 4 434 433 437 438
		f 4 601 1179 -607 -1179
		mu 0 4 433 432 436 437
		f 4 602 -216 -608 -1180
		mu 0 4 432 103 105 436
		f 4 603 1180 -609 -217
		mu 0 4 106 439 443 108
		f 4 604 1181 -610 -1181
		mu 0 4 439 438 442 443
		f 4 605 1182 -611 -1182
		mu 0 4 438 437 441 442
		f 4 606 1183 -612 -1183
		mu 0 4 437 436 440 441
		f 4 607 -218 -613 -1184
		mu 0 4 436 105 107 440
		f 4 608 1184 -614 -219
		mu 0 4 108 443 447 110
		f 4 609 1185 -615 -1185
		mu 0 4 443 442 446 447
		f 4 610 1186 -616 -1186
		mu 0 4 442 441 445 446
		f 4 611 1187 -617 -1187
		mu 0 4 441 440 444 445
		f 4 612 -220 -618 -1188
		mu 0 4 440 107 109 444
		f 4 613 1188 -619 -221
		mu 0 4 110 447 451 112
		f 4 614 1189 -620 -1189
		mu 0 4 447 446 450 451
		f 4 615 1190 -621 -1190
		mu 0 4 446 445 449 450
		f 4 616 1191 -622 -1191
		mu 0 4 445 444 448 449
		f 4 617 -222 -623 -1192
		mu 0 4 444 109 111 448
		f 4 618 1192 -624 -223
		mu 0 4 112 451 455 114
		f 4 619 1193 -625 -1193
		mu 0 4 451 450 454 455
		f 4 620 1194 -626 -1194
		mu 0 4 450 449 453 454
		f 4 621 1195 -627 -1195
		mu 0 4 449 448 452 453
		f 4 622 -224 -628 -1196
		mu 0 4 448 111 113 452
		f 4 623 1196 -629 -225
		mu 0 4 114 455 459 116
		f 4 624 1197 -630 -1197
		mu 0 4 455 454 458 459
		f 4 625 1198 -631 -1198
		mu 0 4 454 453 457 458
		f 4 626 1199 -632 -1199
		mu 0 4 453 452 456 457
		f 4 627 -226 -633 -1200
		mu 0 4 452 113 115 456
		f 4 628 1200 -634 -227
		mu 0 4 116 459 463 118
		f 4 629 1201 -635 -1201
		mu 0 4 459 458 462 463
		f 4 630 1202 -636 -1202
		mu 0 4 458 457 461 462
		f 4 631 1203 -637 -1203
		mu 0 4 457 456 460 461
		f 4 632 -228 -638 -1204
		mu 0 4 456 115 117 460
		f 4 633 1204 -639 -229
		mu 0 4 118 463 467 120
		f 4 634 1205 -640 -1205
		mu 0 4 463 462 466 467
		f 4 635 1206 -641 -1206
		mu 0 4 462 461 465 466
		f 4 636 1207 -642 -1207
		mu 0 4 461 460 464 465
		f 4 637 -230 -643 -1208
		mu 0 4 460 117 119 464
		f 4 638 1208 -644 -231
		mu 0 4 120 467 471 122
		f 4 639 1209 -645 -1209
		mu 0 4 467 466 470 471
		f 4 640 1210 -646 -1210
		mu 0 4 466 465 469 470
		f 4 641 1211 -647 -1211
		mu 0 4 465 464 468 469
		f 4 642 -232 -648 -1212
		mu 0 4 464 119 121 468
		f 4 643 1212 -649 -233
		mu 0 4 122 471 475 124
		f 4 644 1213 -650 -1213
		mu 0 4 471 470 474 475
		f 4 645 1214 -651 -1214
		mu 0 4 470 469 473 474
		f 4 646 1215 -652 -1215
		mu 0 4 469 468 472 473
		f 4 647 -234 -653 -1216
		mu 0 4 468 121 123 472
		f 4 648 1216 -654 -235
		mu 0 4 124 475 479 126
		f 4 649 1217 -655 -1217
		mu 0 4 475 474 478 479
		f 4 650 1218 -656 -1218
		mu 0 4 474 473 477 478
		f 4 651 1219 -657 -1219
		mu 0 4 473 472 476 477
		f 4 652 -236 -658 -1220
		mu 0 4 472 123 125 476
		f 4 653 1220 -659 -237
		mu 0 4 126 479 483 128
		f 4 654 1221 -660 -1221
		mu 0 4 479 478 482 483
		f 4 655 1222 -661 -1222
		mu 0 4 478 477 481 482
		f 4 656 1223 -662 -1223
		mu 0 4 477 476 480 481
		f 4 657 -238 -663 -1224
		mu 0 4 476 125 127 480
		f 4 658 1224 -664 -239
		mu 0 4 128 483 487 130
		f 4 659 1225 -665 -1225
		mu 0 4 483 482 486 487
		f 4 660 1226 -666 -1226
		mu 0 4 482 481 485 486
		f 4 661 1227 -667 -1227
		mu 0 4 481 480 484 485
		f 4 662 -240 -668 -1228
		mu 0 4 480 127 129 484
		f 4 663 1228 -669 -241
		mu 0 4 130 487 491 2
		f 4 664 1229 -672 -1229
		mu 0 4 487 486 490 491
		f 4 665 1230 -675 -1230
		mu 0 4 486 485 489 490
		f 4 666 1231 -678 -1231
		mu 0 4 485 484 488 489
		f 4 667 -242 -681 -1232
		mu 0 4 484 129 131 488
		f 4 682 1232 -688 -245
		mu 0 4 132 499 503 134
		f 4 683 1233 -689 -1233
		mu 0 4 499 498 502 503
		f 4 684 1234 -690 -1234
		mu 0 4 498 497 501 502
		f 4 685 1235 -691 -1235
		mu 0 4 497 496 500 501
		f 4 686 -246 -692 -1236
		mu 0 4 496 10 133 500
		f 4 687 1236 -693 -247
		mu 0 4 134 503 507 136
		f 4 688 1237 -694 -1237
		mu 0 4 503 502 506 507
		f 4 689 1238 -695 -1238
		mu 0 4 502 501 505 506
		f 4 690 1239 -696 -1239
		mu 0 4 501 500 504 505
		f 4 691 -248 -697 -1240
		mu 0 4 500 133 135 504
		f 4 692 1240 -698 -249
		mu 0 4 136 507 511 138
		f 4 693 1241 -699 -1241
		mu 0 4 507 506 510 511
		f 4 694 1242 -700 -1242
		mu 0 4 506 505 509 510
		f 4 695 1243 -701 -1243
		mu 0 4 505 504 508 509
		f 4 696 -250 -702 -1244
		mu 0 4 504 135 137 508
		f 4 697 1244 -703 -251
		mu 0 4 138 511 515 140
		f 4 698 1245 -704 -1245
		mu 0 4 511 510 514 515
		f 4 699 1246 -705 -1246
		mu 0 4 510 509 513 514
		f 4 700 1247 -706 -1247
		mu 0 4 509 508 512 513
		f 4 701 -252 -707 -1248
		mu 0 4 508 137 139 512
		f 4 702 1248 -708 -253
		mu 0 4 140 515 519 142
		f 4 703 1249 -709 -1249
		mu 0 4 515 514 518 519
		f 4 704 1250 -710 -1250
		mu 0 4 514 513 517 518
		f 4 705 1251 -711 -1251
		mu 0 4 513 512 516 517
		f 4 706 -254 -712 -1252
		mu 0 4 512 139 141 516
		f 4 707 1252 -713 -255
		mu 0 4 142 519 523 144
		f 4 708 1253 -714 -1253
		mu 0 4 519 518 522 523
		f 4 709 1254 -715 -1254
		mu 0 4 518 517 521 522
		f 4 710 1255 -716 -1255
		mu 0 4 517 516 520 521
		f 4 711 -256 -717 -1256
		mu 0 4 516 141 143 520
		f 4 712 1256 -718 -257
		mu 0 4 144 523 527 146
		f 4 713 1257 -719 -1257
		mu 0 4 523 522 526 527
		f 4 714 1258 -720 -1258
		mu 0 4 522 521 525 526
		f 4 715 1259 -721 -1259
		mu 0 4 521 520 524 525
		f 4 716 -258 -722 -1260
		mu 0 4 520 143 145 524
		f 4 717 1260 -723 -259
		mu 0 4 146 527 531 148
		f 4 718 1261 -724 -1261
		mu 0 4 527 526 530 531
		f 4 719 1262 -725 -1262
		mu 0 4 526 525 529 530
		f 4 720 1263 -726 -1263
		mu 0 4 525 524 528 529
		f 4 721 -260 -727 -1264
		mu 0 4 524 145 147 528
		f 4 722 1264 -728 -261
		mu 0 4 148 531 535 150
		f 4 723 1265 -729 -1265
		mu 0 4 531 530 534 535
		f 4 724 1266 -730 -1266
		mu 0 4 530 529 533 534
		f 4 725 1267 -731 -1267
		mu 0 4 529 528 532 533
		f 4 726 -262 -732 -1268
		mu 0 4 528 147 149 532
		f 4 727 1268 -733 -263
		mu 0 4 150 535 539 152
		f 4 728 1269 -734 -1269
		mu 0 4 535 534 538 539
		f 4 729 1270 -735 -1270
		mu 0 4 534 533 537 538
		f 4 730 1271 -736 -1271
		mu 0 4 533 532 536 537
		f 4 731 -264 -737 -1272
		mu 0 4 532 149 151 536
		f 4 732 1272 -738 -265
		mu 0 4 152 539 543 154
		f 4 733 1273 -739 -1273
		mu 0 4 539 538 542 543
		f 4 734 1274 -740 -1274
		mu 0 4 538 537 541 542
		f 4 735 1275 -741 -1275
		mu 0 4 537 536 540 541
		f 4 736 -266 -742 -1276
		mu 0 4 536 151 153 540
		f 4 737 1276 -743 -267
		mu 0 4 154 543 547 156
		f 4 738 1277 -744 -1277
		mu 0 4 543 542 546 547
		f 4 739 1278 -745 -1278
		mu 0 4 542 541 545 546
		f 4 740 1279 -746 -1279
		mu 0 4 541 540 544 545
		f 4 741 -268 -747 -1280
		mu 0 4 540 153 155 544
		f 4 742 1280 -748 -269
		mu 0 4 156 547 551 158
		f 4 743 1281 -749 -1281
		mu 0 4 547 546 550 551
		f 4 744 1282 -750 -1282
		mu 0 4 546 545 549 550
		f 4 745 1283 -751 -1283
		mu 0 4 545 544 548 549
		f 4 746 -270 -752 -1284
		mu 0 4 544 155 157 548
		f 4 747 1284 -753 -271
		mu 0 4 158 551 555 160
		f 4 748 1285 -754 -1285
		mu 0 4 551 550 554 555
		f 4 749 1286 -755 -1286
		mu 0 4 550 549 553 554
		f 4 750 1287 -756 -1287
		mu 0 4 549 548 552 553
		f 4 751 -272 -757 -1288
		mu 0 4 548 157 159 552;
	setAttr ".fc[500:815]"
		f 4 752 1288 -758 -273
		mu 0 4 160 555 559 162
		f 4 753 1289 -759 -1289
		mu 0 4 555 554 558 559
		f 4 754 1290 -760 -1290
		mu 0 4 554 553 557 558
		f 4 755 1291 -761 -1291
		mu 0 4 553 552 556 557
		f 4 756 -274 -762 -1292
		mu 0 4 552 159 161 556
		f 4 757 1292 -763 -275
		mu 0 4 162 559 563 164
		f 4 758 1293 -764 -1293
		mu 0 4 559 558 562 563
		f 4 759 1294 -765 -1294
		mu 0 4 558 557 561 562
		f 4 760 1295 -766 -1295
		mu 0 4 557 556 560 561
		f 4 761 -276 -767 -1296
		mu 0 4 556 161 163 560
		f 4 762 1296 -768 -277
		mu 0 4 164 563 567 166
		f 4 763 1297 -769 -1297
		mu 0 4 563 562 566 567
		f 4 764 1298 -770 -1298
		mu 0 4 562 561 565 566
		f 4 765 1299 -771 -1299
		mu 0 4 561 560 564 565
		f 4 766 -278 -772 -1300
		mu 0 4 560 163 165 564
		f 4 767 1300 -773 -279
		mu 0 4 166 567 571 168
		f 4 768 1301 -774 -1301
		mu 0 4 567 566 570 571
		f 4 769 1302 -775 -1302
		mu 0 4 566 565 569 570
		f 4 770 1303 -776 -1303
		mu 0 4 565 564 568 569
		f 4 771 -280 -777 -1304
		mu 0 4 564 165 167 568
		f 4 772 1304 -778 -281
		mu 0 4 168 571 575 170
		f 4 773 1305 -779 -1305
		mu 0 4 571 570 574 575
		f 4 774 1306 -780 -1306
		mu 0 4 570 569 573 574
		f 4 775 1307 -781 -1307
		mu 0 4 569 568 572 573
		f 4 776 -282 -782 -1308
		mu 0 4 568 167 169 572
		f 4 777 1308 -783 -283
		mu 0 4 170 575 579 172
		f 4 778 1309 -784 -1309
		mu 0 4 575 574 578 579
		f 4 779 1310 -785 -1310
		mu 0 4 574 573 577 578
		f 4 780 1311 -786 -1311
		mu 0 4 573 572 576 577
		f 4 781 -284 -787 -1312
		mu 0 4 572 169 171 576
		f 4 782 1312 -788 -285
		mu 0 4 172 579 583 174
		f 4 783 1313 -789 -1313
		mu 0 4 579 578 582 583
		f 4 784 1314 -790 -1314
		mu 0 4 578 577 581 582
		f 4 785 1315 -791 -1315
		mu 0 4 577 576 580 581
		f 4 786 -286 -792 -1316
		mu 0 4 576 171 173 580
		f 4 787 1316 -793 -287
		mu 0 4 174 583 587 176
		f 4 788 1317 -794 -1317
		mu 0 4 583 582 586 587
		f 4 789 1318 -795 -1318
		mu 0 4 582 581 585 586
		f 4 790 1319 -796 -1319
		mu 0 4 581 580 584 585
		f 4 791 -288 -797 -1320
		mu 0 4 580 173 175 584
		f 4 792 1320 -798 -289
		mu 0 4 176 587 591 178
		f 4 793 1321 -799 -1321
		mu 0 4 587 586 590 591
		f 4 794 1322 -800 -1322
		mu 0 4 586 585 589 590
		f 4 795 1323 -801 -1323
		mu 0 4 585 584 588 589
		f 4 796 -290 -802 -1324
		mu 0 4 584 175 177 588
		f 4 797 1324 -803 -291
		mu 0 4 178 591 595 180
		f 4 798 1325 -804 -1325
		mu 0 4 591 590 594 595
		f 4 799 1326 -805 -1326
		mu 0 4 590 589 593 594
		f 4 800 1327 -806 -1327
		mu 0 4 589 588 592 593
		f 4 801 -292 -807 -1328
		mu 0 4 588 177 179 592
		f 4 802 1328 -808 -293
		mu 0 4 180 595 599 182
		f 4 803 1329 -809 -1329
		mu 0 4 595 594 598 599
		f 4 804 1330 -810 -1330
		mu 0 4 594 593 597 598
		f 4 805 1331 -811 -1331
		mu 0 4 593 592 596 597
		f 4 806 -294 -812 -1332
		mu 0 4 592 179 181 596
		f 4 807 1332 -813 -295
		mu 0 4 182 599 603 184
		f 4 808 1333 -814 -1333
		mu 0 4 599 598 602 603
		f 4 809 1334 -815 -1334
		mu 0 4 598 597 601 602
		f 4 810 1335 -816 -1335
		mu 0 4 597 596 600 601
		f 4 811 -296 -817 -1336
		mu 0 4 596 181 183 600
		f 4 812 1336 -818 -297
		mu 0 4 184 603 607 186
		f 4 813 1337 -819 -1337
		mu 0 4 603 602 606 607
		f 4 814 1338 -820 -1338
		mu 0 4 602 601 605 606
		f 4 815 1339 -821 -1339
		mu 0 4 601 600 604 605
		f 4 816 -298 -822 -1340
		mu 0 4 600 183 185 604
		f 4 817 1340 -823 -299
		mu 0 4 186 607 611 188
		f 4 818 1341 -824 -1341
		mu 0 4 607 606 610 611
		f 4 819 1342 -825 -1342
		mu 0 4 606 605 609 610
		f 4 820 1343 -826 -1343
		mu 0 4 605 604 608 609
		f 4 821 -300 -827 -1344
		mu 0 4 604 185 187 608
		f 4 822 1344 -828 -301
		mu 0 4 188 611 615 4
		f 4 823 1345 -831 -1345
		mu 0 4 611 610 614 615
		f 4 824 1346 -834 -1346
		mu 0 4 610 609 613 614
		f 4 825 1347 -837 -1347
		mu 0 4 609 608 612 613
		f 4 826 -302 -840 -1348
		mu 0 4 608 187 189 612
		f 4 841 1348 -847 -305
		mu 0 4 190 623 627 192
		f 4 842 1349 -848 -1349
		mu 0 4 623 622 626 627
		f 4 843 1350 -849 -1350
		mu 0 4 622 621 625 626
		f 4 844 1351 -850 -1351
		mu 0 4 621 620 624 625
		f 4 845 -306 -851 -1352
		mu 0 4 620 11 191 624
		f 4 846 1352 -852 -307
		mu 0 4 192 627 631 194
		f 4 847 1353 -853 -1353
		mu 0 4 627 626 630 631
		f 4 848 1354 -854 -1354
		mu 0 4 626 625 629 630
		f 4 849 1355 -855 -1355
		mu 0 4 625 624 628 629
		f 4 850 -308 -856 -1356
		mu 0 4 624 191 193 628
		f 4 851 1356 -857 -309
		mu 0 4 194 631 635 196
		f 4 852 1357 -858 -1357
		mu 0 4 631 630 634 635
		f 4 853 1358 -859 -1358
		mu 0 4 630 629 633 634
		f 4 854 1359 -860 -1359
		mu 0 4 629 628 632 633
		f 4 855 -310 -861 -1360
		mu 0 4 628 193 195 632
		f 4 856 1360 -862 -311
		mu 0 4 196 635 639 198
		f 4 857 1361 -863 -1361
		mu 0 4 635 634 638 639
		f 4 858 1362 -864 -1362
		mu 0 4 634 633 637 638
		f 4 859 1363 -865 -1363
		mu 0 4 633 632 636 637
		f 4 860 -312 -866 -1364
		mu 0 4 632 195 197 636
		f 4 861 1364 -867 -313
		mu 0 4 198 639 643 200
		f 4 862 1365 -868 -1365
		mu 0 4 639 638 642 643
		f 4 863 1366 -869 -1366
		mu 0 4 638 637 641 642
		f 4 864 1367 -870 -1367
		mu 0 4 637 636 640 641
		f 4 865 -314 -871 -1368
		mu 0 4 636 197 199 640
		f 4 866 1368 -872 -315
		mu 0 4 200 643 647 202
		f 4 867 1369 -873 -1369
		mu 0 4 643 642 646 647
		f 4 868 1370 -874 -1370
		mu 0 4 642 641 645 646
		f 4 869 1371 -875 -1371
		mu 0 4 641 640 644 645
		f 4 870 -316 -876 -1372
		mu 0 4 640 199 201 644
		f 4 871 1372 -877 -317
		mu 0 4 202 647 651 204
		f 4 872 1373 -878 -1373
		mu 0 4 647 646 650 651
		f 4 873 1374 -879 -1374
		mu 0 4 646 645 649 650
		f 4 874 1375 -880 -1375
		mu 0 4 645 644 648 649
		f 4 875 -318 -881 -1376
		mu 0 4 644 201 203 648
		f 4 876 1376 -882 -319
		mu 0 4 204 651 655 206
		f 4 877 1377 -883 -1377
		mu 0 4 651 650 654 655
		f 4 878 1378 -884 -1378
		mu 0 4 650 649 653 654
		f 4 879 1379 -885 -1379
		mu 0 4 649 648 652 653
		f 4 880 -320 -886 -1380
		mu 0 4 648 203 205 652
		f 4 881 1380 -887 -321
		mu 0 4 206 655 659 208
		f 4 882 1381 -888 -1381
		mu 0 4 655 654 658 659
		f 4 883 1382 -889 -1382
		mu 0 4 654 653 657 658
		f 4 884 1383 -890 -1383
		mu 0 4 653 652 656 657
		f 4 885 -322 -891 -1384
		mu 0 4 652 205 207 656
		f 4 886 1384 -892 -323
		mu 0 4 208 659 663 210
		f 4 887 1385 -893 -1385
		mu 0 4 659 658 662 663
		f 4 888 1386 -894 -1386
		mu 0 4 658 657 661 662
		f 4 889 1387 -895 -1387
		mu 0 4 657 656 660 661
		f 4 890 -324 -896 -1388
		mu 0 4 656 207 209 660
		f 4 891 1388 -897 -325
		mu 0 4 210 663 667 212
		f 4 892 1389 -898 -1389
		mu 0 4 663 662 666 667
		f 4 893 1390 -899 -1390
		mu 0 4 662 661 665 666
		f 4 894 1391 -900 -1391
		mu 0 4 661 660 664 665
		f 4 895 -326 -901 -1392
		mu 0 4 660 209 211 664
		f 4 896 1392 -902 -327
		mu 0 4 212 667 671 214
		f 4 897 1393 -903 -1393
		mu 0 4 667 666 670 671
		f 4 898 1394 -904 -1394
		mu 0 4 666 665 669 670
		f 4 899 1395 -905 -1395
		mu 0 4 665 664 668 669
		f 4 900 -328 -906 -1396
		mu 0 4 664 211 213 668
		f 4 901 1396 -907 -329
		mu 0 4 214 671 675 216
		f 4 902 1397 -908 -1397
		mu 0 4 671 670 674 675
		f 4 903 1398 -909 -1398
		mu 0 4 670 669 673 674
		f 4 904 1399 -910 -1399
		mu 0 4 669 668 672 673
		f 4 905 -330 -911 -1400
		mu 0 4 668 213 215 672
		f 4 906 1400 -912 -331
		mu 0 4 216 675 679 218
		f 4 907 1401 -913 -1401
		mu 0 4 675 674 678 679
		f 4 908 1402 -914 -1402
		mu 0 4 674 673 677 678
		f 4 909 1403 -915 -1403
		mu 0 4 673 672 676 677
		f 4 910 -332 -916 -1404
		mu 0 4 672 215 217 676
		f 4 911 1404 -917 -333
		mu 0 4 218 679 683 220
		f 4 912 1405 -918 -1405
		mu 0 4 679 678 682 683
		f 4 913 1406 -919 -1406
		mu 0 4 678 677 681 682
		f 4 914 1407 -920 -1407
		mu 0 4 677 676 680 681
		f 4 915 -334 -921 -1408
		mu 0 4 676 217 219 680
		f 4 916 1408 -922 -335
		mu 0 4 220 683 687 222
		f 4 917 1409 -923 -1409
		mu 0 4 683 682 686 687
		f 4 918 1410 -924 -1410
		mu 0 4 682 681 685 686
		f 4 919 1411 -925 -1411
		mu 0 4 681 680 684 685
		f 4 920 -336 -926 -1412
		mu 0 4 680 219 221 684
		f 4 921 1412 -927 -337
		mu 0 4 222 687 691 224
		f 4 922 1413 -928 -1413
		mu 0 4 687 686 690 691
		f 4 923 1414 -929 -1414
		mu 0 4 686 685 689 690
		f 4 924 1415 -930 -1415
		mu 0 4 685 684 688 689
		f 4 925 -338 -931 -1416
		mu 0 4 684 221 223 688
		f 4 926 1416 -932 -339
		mu 0 4 224 691 695 226
		f 4 927 1417 -933 -1417
		mu 0 4 691 690 694 695
		f 4 928 1418 -934 -1418
		mu 0 4 690 689 693 694
		f 4 929 1419 -935 -1419
		mu 0 4 689 688 692 693
		f 4 930 -340 -936 -1420
		mu 0 4 688 223 225 692
		f 4 931 1420 -937 -341
		mu 0 4 226 695 699 228
		f 4 932 1421 -938 -1421
		mu 0 4 695 694 698 699
		f 4 933 1422 -939 -1422
		mu 0 4 694 693 697 698
		f 4 934 1423 -940 -1423
		mu 0 4 693 692 696 697
		f 4 935 -342 -941 -1424
		mu 0 4 692 225 227 696
		f 4 936 1424 -942 -343
		mu 0 4 228 699 703 230
		f 4 937 1425 -943 -1425
		mu 0 4 699 698 702 703
		f 4 938 1426 -944 -1426
		mu 0 4 698 697 701 702
		f 4 939 1427 -945 -1427
		mu 0 4 697 696 700 701
		f 4 940 -344 -946 -1428
		mu 0 4 696 227 229 700
		f 4 941 1428 -947 -345
		mu 0 4 230 703 707 232
		f 4 942 1429 -948 -1429
		mu 0 4 703 702 706 707
		f 4 943 1430 -949 -1430
		mu 0 4 702 701 705 706
		f 4 944 1431 -950 -1431
		mu 0 4 701 700 704 705
		f 4 945 -346 -951 -1432
		mu 0 4 700 229 231 704
		f 4 946 1432 -952 -347
		mu 0 4 232 707 711 234
		f 4 947 1433 -953 -1433
		mu 0 4 707 706 710 711
		f 4 948 1434 -954 -1434
		mu 0 4 706 705 709 710
		f 4 949 1435 -955 -1435
		mu 0 4 705 704 708 709
		f 4 950 -348 -956 -1436
		mu 0 4 704 231 233 708
		f 4 951 1436 -957 -349
		mu 0 4 234 711 715 236
		f 4 952 1437 -958 -1437
		mu 0 4 711 710 714 715
		f 4 953 1438 -959 -1438
		mu 0 4 710 709 713 714
		f 4 954 1439 -960 -1439
		mu 0 4 709 708 712 713
		f 4 955 -350 -961 -1440
		mu 0 4 708 233 235 712
		f 4 956 1440 -962 -351
		mu 0 4 236 715 719 238
		f 4 957 1441 -963 -1441
		mu 0 4 715 714 718 719
		f 4 958 1442 -964 -1442
		mu 0 4 714 713 717 718
		f 4 959 1443 -965 -1443
		mu 0 4 713 712 716 717
		f 4 960 -352 -966 -1444
		mu 0 4 712 235 237 716
		f 4 961 1444 -967 -353
		mu 0 4 238 719 723 240
		f 4 962 1445 -968 -1445
		mu 0 4 719 718 722 723
		f 4 963 1446 -969 -1446
		mu 0 4 718 717 721 722
		f 4 964 1447 -970 -1447
		mu 0 4 717 716 720 721
		f 4 965 -354 -971 -1448
		mu 0 4 716 237 239 720
		f 4 966 1448 -972 -355
		mu 0 4 240 723 727 242
		f 4 967 1449 -973 -1449
		mu 0 4 723 722 726 727
		f 4 968 1450 -974 -1450
		mu 0 4 722 721 725 726
		f 4 969 1451 -975 -1451
		mu 0 4 721 720 724 725
		f 4 970 -356 -976 -1452
		mu 0 4 720 239 241 724
		f 4 971 1452 -977 -357
		mu 0 4 242 727 731 244
		f 4 972 1453 -978 -1453
		mu 0 4 727 726 730 731
		f 4 973 1454 -979 -1454
		mu 0 4 726 725 729 730
		f 4 974 1455 -980 -1455
		mu 0 4 725 724 728 729
		f 4 975 -358 -981 -1456
		mu 0 4 724 241 243 728
		f 4 976 1456 -982 -359
		mu 0 4 244 731 735 246
		f 4 977 1457 -983 -1457
		mu 0 4 731 730 734 735
		f 4 978 1458 -984 -1458
		mu 0 4 730 729 733 734
		f 4 979 1459 -985 -1459
		mu 0 4 729 728 732 733
		f 4 980 -360 -986 -1460
		mu 0 4 728 243 245 732
		f 4 981 1460 -987 -361
		mu 0 4 246 735 739 6
		f 4 982 1461 -990 -1461
		mu 0 4 735 734 738 739
		f 4 983 1462 -993 -1462
		mu 0 4 734 733 737 738
		f 4 984 1463 -996 -1463
		mu 0 4 733 732 736 737
		f 4 985 -362 -999 -1464
		mu 0 4 732 245 247 736
		f 4 0 1465 -1467 -1465
		mu 0 4 744 745 746 747
		f 4 -2 1467 1469 -1469
		mu 0 4 748 749 750 751
		f 4 62 1471 -1473 -1471
		mu 0 4 752 753 754 755
		f 4 -94 1473 1475 -1475
		mu 0 4 756 757 758 759
		f 4 -365 1464 1477 -1477
		mu 0 4 760 761 762 763
		f 4 -368 1476 1479 -1479
		mu 0 4 764 765 766 767
		f 4 -371 1478 1481 -1481
		mu 0 4 768 769 770 771
		f 4 -374 1480 1483 -1483
		mu 0 4 772 773 774 775
		f 4 -377 1482 1484 -1468
		mu 0 4 776 777 778 779
		f 4 -524 1470 1486 -1486
		mu 0 4 780 781 782 783
		f 4 -525 1485 1488 -1488
		mu 0 4 784 785 786 787
		f 4 -526 1487 1490 -1490
		mu 0 4 788 789 790 791
		f 4 -527 1489 1492 -1492
		mu 0 4 792 793 794 795
		f 4 -528 1491 1493 -1466
		mu 0 4 796 797 798 799
		f 4 -683 1474 1495 -1495
		mu 0 4 800 801 802 803
		f 4 -684 1494 1497 -1497
		mu 0 4 804 805 806 807
		f 4 -685 1496 1499 -1499
		mu 0 4 808 809 810 811
		f 4 -686 1498 1501 -1501
		mu 0 4 812 813 814 815
		f 4 -687 1500 1502 -1472
		mu 0 4 816 817 818 819
		f 4 -842 1468 1504 -1504
		mu 0 4 820 821 822 823
		f 4 -843 1503 1506 -1506
		mu 0 4 824 825 826 827
		f 4 -844 1505 1508 -1508
		mu 0 4 828 829 830 831
		f 4 -845 1507 1510 -1510
		mu 0 4 832 833 834 835
		f 4 -846 1509 1511 -1474
		mu 0 4 836 837 838 839
		f 4 60 1513 -1515 -1513
		mu 0 4 840 841 842 843
		f 4 -62 1515 1517 -1517
		mu 0 4 844 845 846 847
		f 4 -93 1518 1520 -1520
		mu 0 4 848 849 850 851
		f 4 123 1522 -1524 -1522
		mu 0 4 852 853 854 855
		f 4 -519 1524 1525 -1516
		mu 0 4 856 857 858 859
		f 4 -520 1526 1527 -1525
		mu 0 4 860 861 862 863
		f 4 -521 1528 1529 -1527
		mu 0 4 864 865 866 867
		f 4 -522 1530 1531 -1529
		mu 0 4 868 869 870 871
		f 4 -523 1512 1532 -1531
		mu 0 4 872 873 874 875
		f 4 -671 1533 1534 -1519
		mu 0 4 876 877 878 879
		f 4 -674 1535 1536 -1534
		mu 0 4 880 881 882 883
		f 4 -677 1537 1538 -1536
		mu 0 4 884 885 886 887
		f 4 -680 1539 1540 -1538
		mu 0 4 888 889 890 891
		f 4 -682 1516 1541 -1540
		mu 0 4 892 893 894 895
		f 4 -830 1542 1543 -1523
		mu 0 4 896 897 898 899
		f 4 -833 1544 1545 -1543
		mu 0 4 900 901 902 903
		f 4 -836 1546 1547 -1545
		mu 0 4 904 905 906 907
		f 4 -839 1548 1549 -1547
		mu 0 4 908 909 910 911
		f 4 -841 1519 1550 -1549
		mu 0 4 912 913 914 915
		f 4 -989 1551 1552 -1514
		mu 0 4 916 917 918 919
		f 4 -992 1553 1554 -1552
		mu 0 4 920 921 922 923
		f 4 -995 1555 1556 -1554
		mu 0 4 924 925 926 927
		f 4 -998 1557 1558 -1556
		mu 0 4 928 929 930 931
		f 4 -1000 1521 1559 -1558
		mu 0 4 932 933 934 935
		f 4 1514 1561 -1563 -1561
		mu 0 4 936 937 938 939
		f 4 -1518 1563 1565 -1565
		mu 0 4 940 941 942 943
		f 4 -1521 1566 1568 -1568
		mu 0 4 944 945 946 947
		f 4 1523 1570 -1572 -1570
		mu 0 4 948 949 950 951
		f 4 -1526 1572 1573 -1564
		mu 0 4 952 953 954 955
		f 4 -1528 1574 1575 -1573
		mu 0 4 956 957 958 959
		f 4 -1530 1576 1577 -1575
		mu 0 4 960 961 962 963
		f 4 -1532 1578 1579 -1577
		mu 0 4 964 965 966 967
		f 4 -1533 1560 1580 -1579
		mu 0 4 968 969 970 971
		f 4 -1535 1581 1582 -1567
		mu 0 4 972 973 974 975
		f 4 -1537 1583 1584 -1582
		mu 0 4 976 977 978 979
		f 4 -1539 1585 1586 -1584
		mu 0 4 980 981 982 983
		f 4 -1541 1587 1588 -1586
		mu 0 4 984 985 986 987
		f 4 -1542 1564 1589 -1588
		mu 0 4 988 989 990 991
		f 4 -1544 1590 1591 -1571
		mu 0 4 992 993 994 995
		f 4 -1546 1592 1593 -1591
		mu 0 4 996 997 998 999
		f 4 -1548 1594 1595 -1593
		mu 0 4 1000 1001 1002 1003
		f 4 -1550 1596 1597 -1595
		mu 0 4 1004 1005 1006 1007
		f 4 -1551 1567 1598 -1597
		mu 0 4 1008 1009 1010 1011
		f 4 -1553 1599 1600 -1562
		mu 0 4 1012 1013 1014 1015
		f 4 -1555 1601 1602 -1600
		mu 0 4 1016 1017 1018 1019
		f 4 -1557 1603 1604 -1602
		mu 0 4 1020 1021 1022 1023
		f 4 -1559 1605 1606 -1604
		mu 0 4 1024 1025 1026 1027
		f 4 -1560 1569 1607 -1606
		mu 0 4 1028 1029 1030 1031
		f 3 1562 1609 -1609
		mu 0 3 1032 1033 1034
		f 3 -1566 1610 -1612
		mu 0 3 1035 1036 1037
		f 3 -1569 1612 -1614
		mu 0 3 1038 1039 1040
		f 3 1571 1615 -1615
		mu 0 3 1041 1042 1043
		f 3 -1574 1616 -1611
		mu 0 3 1044 1045 1046
		f 3 -1576 1617 -1617
		mu 0 3 1047 1048 1049
		f 3 -1578 1618 -1618
		mu 0 3 1050 1051 1052
		f 3 -1580 1619 -1619
		mu 0 3 1053 1054 1055
		f 3 -1581 1608 -1620
		mu 0 3 1056 1057 1058
		f 3 -1583 1620 -1613
		mu 0 3 1059 1060 1061
		f 3 -1585 1621 -1621
		mu 0 3 1062 1063 1064
		f 3 -1587 1622 -1622
		mu 0 3 1065 1066 1067
		f 3 -1589 1623 -1623
		mu 0 3 1068 1069 1070
		f 3 -1590 1611 -1624
		mu 0 3 1071 1072 1073
		f 3 -1592 1624 -1616
		mu 0 3 1074 1075 1076
		f 3 -1594 1625 -1625
		mu 0 3 1077 1078 1079
		f 3 -1596 1626 -1626
		mu 0 3 1080 1081 1082
		f 3 -1598 1627 -1627
		mu 0 3 1083 1084 1085
		f 3 -1599 1613 -1628
		mu 0 3 1086 1087 1088
		f 3 -1601 1628 -1610
		mu 0 3 1089 1090 1091
		f 3 -1603 1629 -1629
		mu 0 3 1092 1093 1094
		f 3 -1605 1630 -1630
		mu 0 3 1095 1096 1097
		f 3 -1607 1631 -1631
		mu 0 3 1098 1099 1100
		f 3 -1608 1614 -1632
		mu 0 3 1101 1102 1103;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Rug";
	rename -uid "C050BB4B-4740-C77B-27F4-65A72C6EEBD2";
	setAttr ".rp" -type "double3" 0 0.062374711036682129 0.32905324334639285 ;
	setAttr ".sp" -type "double3" 0 0.062374711036682129 0.32905324334639285 ;
createNode transform -n "OutterRug" -p "Rug";
	rename -uid "CBF200A5-4BCB-41C3-1CA1-579C7468CE11";
	setAttr ".rp" -type "double3" 0 0.062374711036682129 0.32905324334639285 ;
	setAttr ".sp" -type "double3" 0 0.062374711036682129 0.32905324334639285 ;
createNode mesh -n "OutterRugShape" -p "OutterRug";
	rename -uid "17547628-42F2-8B76-0B6A-41B633593D7F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 48 ".uvst[0].uvsp[0:47]" -type "float2" 0 0 1 1 0 0 1 1 0
		 0 1 1 0 0 1 1 0.010410982 0.071029291 1 0 1 0 0 0.047202945 1 0 0.010410728 0.071028531
		 0 1 1 0.92935932 0.99449825 0.95230567 0 1 1 0.92935938 0 1 0 0.047202528 1 0 0 1
		 0.99449825 0.95230567 1 0.052905083 0.01041109 0.95230567 0.99449831 0.071028829
		 0 0.91939878 0.99449819 0.071029127 0 0.91939873 1 0.052905023 0.010411066 0.95230567
		 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  -0.16345568 -0.24791911 -0.18544707 
		0.16345568 -0.24791911 -0.18544707 -0.16345568 -0.24791911 -0.69362497 0.16345568 
		-0.24791911 -0.69362497 0.086378686 -0.24791911 -0.30526191 -0.086378686 -0.24791911 
		-0.30526191 -0.086378686 -0.24791911 -0.57381016 0.086378686 -0.24791911 -0.57381016 
		-0.09185341 -0.24030258 -0.29954743 -0.086378686 -0.24411047 -0.30526191 0.086378686 
		-0.24411047 -0.30526191 0.09185341 -0.24030258 -0.29954743 -0.16345568 -0.24411047 
		-0.18544707 -0.15798096 -0.24030258 -0.19116157 0.15798096 -0.24030258 -0.19116157 
		0.16345568 -0.24411047 -0.18544707 -0.09185341 -0.24030258 -0.57952464 -0.086378686 
		-0.24411047 -0.57381016 -0.16345568 -0.24411047 -0.69362497 -0.15798096 -0.24030258 
		-0.6879105 0.086378686 -0.24411047 -0.57381016 0.09185341 -0.24030258 -0.57952464 
		0.15798096 -0.24030258 -0.6879105 0.16345568 -0.24411047 -0.69362497;
	setAttr -s 24 ".vt[0:23]"  -0.95527214 0.31029382 2.19123888 0.95527214 0.31029382 2.19123888
		 -0.95527214 0.31029382 -0.6540603 0.95527214 0.31029382 -0.6540603 0.50481665 0.31029382 1.52039301
		 -0.50481665 0.31029382 1.52039301 -0.50481665 0.31029382 0.016785502 0.50481665 0.31029382 0.016785502
		 -0.53681219 0.37429124 1.55238855 -0.50481665 0.34229574 1.52039301 0.50481665 0.34229574 1.52039301
		 0.53681219 0.37429124 1.55238855 -0.95527214 0.34229574 2.19123888 -0.9232766 0.37429124 2.15924335
		 0.9232766 0.37429124 2.15924335 0.95527214 0.34229574 2.19123888 -0.53681219 0.37429124 -0.015210006
		 -0.50481665 0.34229574 0.016785502 -0.95527214 0.34229574 -0.6540603 -0.9232766 0.37429124 -0.62206477
		 0.50481665 0.34229574 0.016785502 0.53681219 0.37429124 -0.015210006 0.9232766 0.37429124 -0.62206477
		 0.95527214 0.34229574 -0.6540603;
	setAttr -s 48 ".ed[0:47]"  5 0 1 4 1 1 0 1 0 6 2 1 0 2 0 7 3 1 1 3 0
		 2 3 0 5 4 0 5 6 0 4 7 0 6 7 0 8 9 0 9 17 0 17 16 0 16 8 0 8 11 0 11 10 0 10 9 0 11 21 0
		 21 20 0 20 10 0 12 13 0 13 19 0 19 18 0 18 12 0 12 15 0 15 14 0 14 13 0 15 23 0 23 22 0
		 22 14 0 17 20 0 21 16 0 19 22 0 23 18 0 8 13 1 14 11 1 16 19 1 22 21 1 5 9 0 10 4 0
		 1 15 0 12 0 0 6 17 0 18 2 0 20 7 0 3 23 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 1 -3 -1 8
		mu 0 4 0 34 1 32
		f 4 0 4 -4 -10
		mu 0 4 2 38 3 36
		f 4 5 -7 -2 10
		mu 0 4 4 42 5 40
		f 4 3 7 -6 -12
		mu 0 4 6 46 7 44
		f 4 12 13 14 15
		mu 0 4 8 37 9 26
		f 4 -13 16 17 18
		mu 0 4 10 24 11 33
		f 4 -18 19 20 21
		mu 0 4 12 28 13 41
		f 4 22 23 24 25
		mu 0 4 14 27 15 39
		f 4 -23 26 27 28
		mu 0 4 16 35 17 25
		f 4 -28 29 30 31
		mu 0 4 18 43 19 29
		f 4 -15 32 -21 33
		mu 0 4 20 45 21 30
		f 4 -25 34 -31 35
		mu 0 4 22 31 23 47
		f 4 -17 36 -29 37
		mu 0 4 11 24 16 25
		f 4 -16 38 -24 -37
		mu 0 4 8 26 15 27
		f 4 -20 -38 -32 39
		mu 0 4 13 28 18 29
		f 4 -34 -40 -35 -39
		mu 0 4 20 30 23 31
		f 4 -9 40 -19 41
		mu 0 4 0 32 10 33
		f 4 2 42 -27 43
		mu 0 4 1 34 17 35
		f 4 9 44 -14 -41
		mu 0 4 2 36 9 37
		f 4 -5 -44 -26 45
		mu 0 4 3 38 14 39
		f 4 -11 -42 -22 46
		mu 0 4 4 40 12 41
		f 4 6 47 -30 -43
		mu 0 4 5 42 19 43
		f 4 11 -47 -33 -45
		mu 0 4 6 44 21 45
		f 4 -8 -46 -36 -48
		mu 0 4 7 46 22 47;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "MidRug" -p "Rug";
	rename -uid "1F776714-4C6F-5210-BC39-DA89BDB9AFC1";
	setAttr ".rp" -type "double3" 0 0.062374711036682129 0.32905320822129736 ;
	setAttr ".sp" -type "double3" 0 0.062374711036682129 0.32905320822129736 ;
createNode mesh -n "MidRugShape" -p "MidRug";
	rename -uid "618CADAA-44D0-B8A7-4F41-C08A30505E70";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[5]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[6]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[5:7]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0 0 1 1 0.98633015
		 0.96220142 0.031304941 0.037201419 0 0 1 1 0.038486302 0.96280217 1 1 0 0 0.98091424
		 0.037316918 5.2154064e-08 0.88607055 0.012112503 0.05557489 1 0 1 0 0 0.036870778
		 1 0 0.012112051 0.055574387 0 1 1 0.94471318 0.99479449 0.96268308 0 1 1 0.94471359
		 0 1 0 0.036870003 1 0 0 1 0.99479461 0.96268308 1 0.042302132 0.012112034 0.96268308
		 0.99479461 0.055574417 0 0.93312311 0.99479461 0.055573761 0 0.93312383 1 0.042302012
		 0.012112362 0.96268308 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1
		 1 0 0 1 0 0 0 1 0.90387255 0.99018365 1 0.96674198 0 1 0.003421545 0.014142692 1
		 0 0 0.02248168 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt[0:31]" -type "float3"  -0.086378686 -0.24791911 
		-0.30526191 0.086378701 -0.24791911 -0.30526191 0.037123073 -0.24791911 -0.38182887 
		-0.037123073 -0.24791911 -0.38182887 -0.086378686 -0.24603768 -0.57381016 -0.081562072 
		-0.24791911 -0.57096207 -0.086378686 -0.24791911 -0.57117403 -0.037123073 -0.24606836 
		-0.4972432 -0.037123073 -0.24791911 -0.49340475 -0.036631178 -0.24791911 -0.50009161 
		0.086378701 -0.24609101 -0.57381016 0.086378701 -0.24791911 -0.57001215 0.082155339 
		-0.24791911 -0.57091606 0.037123073 -0.24601518 -0.4972432 0.035663936 -0.24791911 
		-0.50010043 0.037123073 -0.24791911 -0.49464875 -0.039860435 -0.24030258 -0.37897164 
		-0.037123073 -0.24220653 -0.38182887 0.037123073 -0.24220653 -0.38182887 0.039860412 
		-0.24030258 -0.37897164 -0.086378686 -0.24220653 -0.30526191 -0.08364132 -0.24030258 
		-0.30811918 0.083641365 -0.24030258 -0.30811918 0.086378701 -0.24220653 -0.30526191 
		-0.039860435 -0.24030258 -0.50010043 -0.037123073 -0.24220653 -0.4972432 -0.086378686 
		-0.24220653 -0.57381016 -0.08364132 -0.24030258 -0.57095289 0.037123073 -0.24220653 
		-0.4972432 0.039860412 -0.24030258 -0.50010043 0.083641365 -0.24030258 -0.57095289 
		0.086378701 -0.24220653 -0.57381016;
	setAttr -s 32 ".vt[0:31]"  -0.50481665 0.31029382 1.52039301 0.50481677 0.31029382 1.52039301
		 0.21695566 0.31029382 1.091692924 -0.21695566 0.31029382 1.091692924 -0.50481665 0.32610252 0.016785502
		 -0.47666728 0.31029382 0.03273223 -0.50481665 0.31029382 0.031545408 -0.21695566 0.32584465 0.44548559
		 -0.21695566 0.31029382 0.46697715 -0.21408093 0.31029382 0.42953733 0.50481677 0.32565439 0.016785502
		 0.50481677 0.31029382 0.038050756 0.48013449 0.31029382 0.032989752 0.21695566 0.32629159 0.44548559
		 0.20842814 0.31029382 0.42948782 0.21695566 0.31029382 0.46001196 -0.23295343 0.37429124 1.10769069
		 -0.21695566 0.35829347 1.091692924 0.21695566 0.35829347 1.091692924 0.23295331 0.37429124 1.10769069
		 -0.50481665 0.35829347 1.52039301 -0.48881888 0.37429124 1.50439525 0.48881912 0.37429124 1.50439525
		 0.50481677 0.35829347 1.52039301 -0.23295343 0.37429124 0.42948782 -0.21695566 0.35829347 0.44548559
		 -0.50481665 0.35829347 0.016785502 -0.48881888 0.37429124 0.032783259 0.21695566 0.35829347 0.44548559
		 0.23295331 0.37429124 0.42948782 0.48881912 0.37429124 0.032783259 0.50481677 0.35829347 0.016785502;
	setAttr -s 64 ".ed[0:63]"  3 0 1 2 1 1 0 1 0 0 6 0 1 11 0 3 2 0 3 8 0
		 2 15 0 8 7 1 11 10 0 12 14 1 14 9 0 9 5 1 5 12 0 6 8 1 7 13 0 10 4 0 15 11 1 5 4 1
		 10 12 1 6 5 0 9 8 0 7 9 0 14 13 0 12 11 0 15 14 0 16 17 0 17 25 0 25 24 0 24 16 0
		 16 19 0 19 18 0 18 17 0 19 29 0 29 28 0 28 18 0 20 21 0 21 27 0 27 26 0 26 20 0 20 23 0
		 23 22 0 22 21 0 23 31 0 31 30 0 30 22 0 25 28 0 29 24 0 27 30 0 31 26 0 16 21 1 22 19 1
		 24 27 1 30 29 1 3 17 0 18 2 0 1 23 0 20 0 0 7 25 0 10 31 0 13 28 0 4 26 0 4 6 0 13 15 1;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 -3 -1 5
		mu 0 4 0 37 1 35
		f 4 0 3 14 -7
		mu 0 4 4 48 54 55
		f 4 17 -5 -2 7
		mu 0 4 59 57 5 51
		f 4 10 11 12 13
		mu 0 4 2 9 3 6
		f 4 18 -17 19 -14
		mu 0 4 6 45 7 2
		f 4 20 -13 21 -15
		mu 0 4 54 53 56 55
		f 4 22 -12 23 -16
		mu 0 4 8 3 9 43
		f 4 24 -18 25 -11
		mu 0 4 10 57 59 58
		f 4 26 27 28 29
		mu 0 4 11 40 12 29
		f 4 -27 30 31 32
		mu 0 4 13 27 14 36
		f 4 -32 33 34 35
		mu 0 4 15 31 16 52
		f 4 36 37 38 39
		mu 0 4 17 30 18 49
		f 4 -37 40 41 42
		mu 0 4 19 38 20 28
		f 4 -42 43 44 45
		mu 0 4 21 42 22 32
		f 4 -29 46 -35 47
		mu 0 4 23 44 24 33
		f 4 -39 48 -45 49
		mu 0 4 25 34 26 46
		f 4 -31 50 -43 51
		mu 0 4 14 27 19 28
		f 4 -30 52 -38 -51
		mu 0 4 11 29 18 30
		f 4 -34 -52 -46 53
		mu 0 4 16 31 21 32
		f 4 -48 -54 -49 -53
		mu 0 4 23 33 26 34
		f 4 -6 54 -33 55
		mu 0 4 0 35 13 36
		f 4 2 56 -41 57
		mu 0 4 1 37 20 38
		f 5 6 8 58 -28 -55
		mu 0 5 4 55 39 12 40
		f 5 4 9 59 -44 -57
		mu 0 5 5 57 41 22 42
		f 4 15 60 -47 -59
		mu 0 4 8 43 24 44
		f 4 16 61 -50 -60
		mu 0 4 7 45 25 46
		f 5 62 -4 -58 -40 -62
		mu 0 5 47 54 48 17 49
		f 5 63 -8 -56 -36 -61
		mu 0 5 50 59 51 15 52
		f 3 -19 -21 -63
		mu 0 3 47 53 54
		f 3 -9 -22 -23
		mu 0 3 39 55 56
		f 3 -10 -25 -20
		mu 0 3 41 57 10
		f 3 -24 -26 -64
		mu 0 3 50 58 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "CenterRug" -p "Rug";
	rename -uid "41DA21FD-4CA1-4FFF-8B5B-2481A7D0BC19";
	setAttr ".rp" -type "double3" 0 0.062374711036682129 0.32905320822129736 ;
	setAttr ".sp" -type "double3" 0 0.062374711036682129 0.32905320822129736 ;
createNode mesh -n "CenterRugShape" -p "CenterRug";
	rename -uid "81B90A91-447E-53CF-A018-BC86EFF1E0F8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.073737442 0.95048726
		 0.073737554 0.049512573 0.92626244 0.049512602 0.9262625 0.95048726 1 0 0 0 1 1 1
		 0 0 1 1 1 0 0 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.037123073 -0.24791911 
		-0.38182887 0.037123073 -0.24791911 -0.38182887 -0.037123073 -0.24791911 -0.4972432 
		0.037123073 -0.24791911 -0.4972432 -0.037123073 -0.24411047 -0.38182887 -0.031648345 
		-0.24030258 -0.38754338 0.031648345 -0.24030258 -0.38754338 0.037123073 -0.24411047 
		-0.38182887 0.031648345 -0.24030258 -0.49152872 0.037123073 -0.24411047 -0.4972432 
		-0.031648345 -0.24030258 -0.49152872 -0.037123073 -0.24411047 -0.4972432;
	setAttr -s 12 ".vt[0:11]"  -0.21695566 0.31029382 1.091692924 0.21695566 0.31029382 1.091692924
		 -0.21695566 0.31029382 0.44548559 0.21695566 0.31029382 0.44548559 -0.21695566 0.34229574 1.091692924
		 -0.18496013 0.37429124 1.05969739 0.18496013 0.37429124 1.05969739 0.21695566 0.34229574 1.091692924
		 0.18496013 0.37429124 0.4774811 0.21695566 0.34229574 0.44548559 -0.18496013 0.37429124 0.4774811
		 -0.21695566 0.34229574 0.44548559;
	setAttr -s 20 ".ed[0:19]"  0 1 0 0 2 0 1 3 0 2 3 0 4 5 0 5 10 0 10 11 0
		 11 4 0 4 7 0 7 6 0 6 5 0 7 9 0 9 8 0 8 6 0 9 11 0 10 8 0 1 7 0 4 0 0 3 9 0 2 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 10 8 6 4
		f 4 4 5 6 7
		mu 0 4 5 1 0 11
		f 4 -5 8 9 10
		mu 0 4 1 5 7 2
		f 4 -10 11 12 13
		mu 0 4 2 7 9 3
		f 4 -13 14 -7 15
		mu 0 4 3 9 11 0
		f 4 -11 -14 -16 -6
		mu 0 4 1 2 3 0
		f 4 0 16 -9 17
		mu 0 4 10 4 7 5
		f 4 2 18 -12 -17
		mu 0 4 4 6 9 7
		f 4 -4 19 -15 -19
		mu 0 4 6 8 11 9
		f 4 -2 -18 -8 -20
		mu 0 4 8 10 5 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TV";
	rename -uid "A874872E-4567-3F83-EBAD-BE8C59823995";
	setAttr ".rp" -type "double3" 0.15103530348124306 0 -0.3777191278224471 ;
	setAttr ".sp" -type "double3" 0.15103530348124306 0 -0.3777191278224471 ;
createNode transform -n "TVBody" -p "TV";
	rename -uid "22F552A2-4817-7103-246B-5FA2DDC31C0F";
	setAttr ".rp" -type "double3" 0.82081075461608344 1.0301331905188733 -0.3777191278224471 ;
	setAttr ".sp" -type "double3" 0.82081075461608344 1.0301331905188733 -0.3777191278224471 ;
createNode transform -n "TVBox" -p "TVBody";
	rename -uid "F3D04FCC-459C-886D-D2AE-C9BAE0A494B7";
	setAttr ".rp" -type "double3" 1.957804477784147 1.139540426979647 0.3466170608165916 ;
	setAttr ".sp" -type "double3" 1.957804477784147 1.139540426979647 0.3466170608165916 ;
createNode mesh -n "TVBoxShape" -p "TVBox";
	rename -uid "7182D7D0-449D-66DE-846A-FCBF0DED9813";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 21 "f[13:14]" "f[16:17]" "f[67:68]" "f[70:71]" "f[73:74]" "f[97:98]" "f[100:101]" "f[103:104]" "f[106:107]" "f[111]" "f[129:132]" "f[141:144]" "f[157]" "f[160]" "f[211]" "f[214]" "f[217]" "f[241]" "f[244]" "f[247]" "f[250]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 21 "f[19:20]" "f[22:23]" "f[34:35]" "f[37:38]" "f[40:41]" "f[43:44]" "f[88:89]" "f[91:92]" "f[94:95]" "f[112]" "f[117:120]" "f[137:140]" "f[163]" "f[166]" "f[178]" "f[181]" "f[184]" "f[187]" "f[232]" "f[235]" "f[238]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 21 "f[1:2]" "f[4:5]" "f[25:26]" "f[28:29]" "f[31:32]" "f[55:56]" "f[58:59]" "f[61:62]" "f[64:65]" "f[109]" "f[113:116]" "f[125:128]" "f[145]" "f[148]" "f[169]" "f[172]" "f[175]" "f[199]" "f[202]" "f[205]" "f[208]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 37 "f[0]" "f[3]" "f[6]" "f[9]" "f[12]" "f[15]" "f[18]" "f[21]" "f[24]" "f[27]" "f[30]" "f[33]" "f[36]" "f[39]" "f[42]" "f[45]" "f[48]" "f[51]" "f[54]" "f[57]" "f[60]" "f[63]" "f[66]" "f[69]" "f[72]" "f[75]" "f[78]" "f[81]" "f[84]" "f[87]" "f[90]" "f[93]" "f[96]" "f[99]" "f[102]" "f[105]" "f[253:432]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 37 "f[108]" "f[146:147]" "f[149:150]" "f[152:153]" "f[155:156]" "f[158:159]" "f[161:162]" "f[164:165]" "f[167:168]" "f[170:171]" "f[173:174]" "f[176:177]" "f[179:180]" "f[182:183]" "f[185:186]" "f[188:189]" "f[191:192]" "f[194:195]" "f[197:198]" "f[200:201]" "f[203:204]" "f[206:207]" "f[209:210]" "f[212:213]" "f[215:216]" "f[218:219]" "f[221:222]" "f[224:225]" "f[227:228]" "f[230:231]" "f[233:234]" "f[236:237]" "f[239:240]" "f[242:243]" "f[245:246]" "f[248:249]" "f[251:252]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 21 "f[7:8]" "f[10:11]" "f[46:47]" "f[49:50]" "f[52:53]" "f[76:77]" "f[79:80]" "f[82:83]" "f[85:86]" "f[110]" "f[121:124]" "f[133:136]" "f[151]" "f[154]" "f[190]" "f[193]" "f[196]" "f[220]" "f[223]" "f[226]" "f[229]";
	setAttr ".pv" -type "double2" 0.38098011910915375 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 525 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.38098109 1 0.37869811 0.036081363
		 0.37669042 0.034922883 0.37871289 0.21392527 0.37670633 0.21508484 0.37792608 0.28746524
		 0.375 0.28749624 0.33750376 0.25 0.37792611 0.46253467 0.375 0.46250376 0.16249624
		 0.25 0.37780747 0.53744131 0.375 0.53749621 0.125 0.21250376 0.37780696 0.71255904
		 0.375 0.71250379 0.125 0.037496254 0.37792611 0.96253467 0.375 0.96250379 0.33750376
		 0 0.37792656 0.78746521 0.16249624 0 0.375 0.78749621 0.37779394 0.027517103 0.37502524
		 0.027204679 0.37626687 0.018258246 0.37422845 0.018048605 0.36211714 0.0091791442
		 0.35635749 0.009334445 0.37955379 0.99776304 0.29006535 0 0.20543371 0 0.37822515
		 0.99568069 0.37800431 0.99039489 0 0 0.375 0.99062598 0.3779656 0.98112988 0 0 0.375
		 0.9812519 0.37796977 0.97182006 0 0 0.375 0.97187781 0.37796924 0.2781755 0 0 0.375
		 0.27812219 0.3779605 0.2688612 0 0 0.375 0.26874813 0.37794438 0.25953084 0 0 0.375
		 0.25937405 0.37796238 0.25018325 0.375 0.25 0.37869954 0.2408393 0.37672991 0.24065141
		 0.37880665 0.23179916 0.37681809 0.23203716 0.3787894 0.22286674 0.37679353 0.2236252
		 0.37785432 0.52803296 0 0 0.375 0.52812213 0.37787268 0.51860219 0 0 0.375 0.5187481
		 0.37789372 0.50919437 0 0 0.375 0.50937408 0.37791833 0.49981746 0.125 0.25 0.375
		 0.5 0.37794125 0.49046695 0 0 0.375 0.49062595 0.37796041 0.48113579 0 0 0.375 0.48125187
		 0.37796935 0.4718205 0 0 0.375 0.47187781 0.37796926 0.77817547 0 0 0.375 0.77812219
		 0.37796038 0.76886117 0 0 0.375 0.7687481 0.37794188 0.75953072 0 0 0.375 0.75937402
		 0.37791815 0.75018144 0.125 0 0.375 0.75 0.37789422 0.7408064 0 0 0.375 0.74062598
		 0.37787166 0.73140049 0 0 0.375 0.7312519 0.37785405 0.72197068 0 0 0.375 0.72187787
		 0.066420794 0.0028463211 0.32519665 0.080730766 0.83926409 0.22969654 0.31110734
		 0.080430672 0.030887488 0.0013236173 0.028384328 0.0012163497 0.020818181 0.00089211867
		 0.0185869 0.00079650187 0.2514593 0.094655156 0.62949812 0.24380031 0.62938273 0.23596928
		 0.62942839 0.22831278 0.63015175 0.030079344 0.63043153 0.022655362 0.63103771 0.015261841
		 0.6320262 0.0080816355 0.633564 0.0014206751 0.21379466 0.0015600673 0.22469442 0
		 0.29279414 0 0.61133009 0 0.62469172 0 0.025151799 0 0.020607913 0 0.017831624 0
		 0.3809801 0.037496258 0.61786532 0.21250376 0.3809801 0.28749624 0.61786705 0.46250376
		 0.38098109 0.53749621 0.61786532 0.71250379 0.38098109 0.78749621 0.61786705 0.96250379
		 0.38098109 0.028122189 0.61786664 0.037496258 0.38098192 0.018748129 0.61786479 0.02812217
		 0.38098013 0.0093740607 0.61786485 0.018748108 0.38098013 0 0.61786491 0.0093740597
		 0.38098192 0.99062598 0.61786497 1 0.38098112 0.9812519 0.61786497 0.99062598 0.38098112
		 0.97187781 0.61786431 0.9812519 0.38098013 0.96250379 0.61786413 0.97187781 0.38098013
		 0.27812219 0.61786509 0.28749624 0.3809801 0.26874813 0.61786342 0.27812219 0.38098109
		 0.25937405 0.61786318 0.26874813 0.38098103 0.25 0.61786717 0.25937405 0.38098192
		 0.24062593 0.61786669 0.24999997 0.3809801 0.23125188 0.61786664 0.24062593 0.38098013
		 0.22187783 0.61786467 0.23125188 0.38098013 0.21250376 0.61786419 0.22187781 0.38098109
		 0.52812213 0.61786669 0.53749621 0.38098192 0.5187481 0.61786497 0.52812207 0.3809801
		 0.50937408 0.61786497 0.5187481 0.38098109 0.5 0.61786467 0.50937408 0.3809801 0.49062595
		 0.61786497 0.5 0.38098112 0.48125187 0.61786443 0.49062598 0.38098112 0.47187781
		 0.61786443 0.48125187 0.38098013 0.46250376 0.61786395 0.47187781 0.38098013 0.77812219
		 0.61786509 0.78749621 0.38098013 0.7687481 0.6178633 0.77812219 0.38098109 0.75937402
		 0.61786377 0.7687481 0.38098031 0.75 0.61786669 0.75937402 0.38098192 0.74062598
		 0.61786669 0.74999994 0.38098013 0.7312519 0.61786664 0.74062598 0.3809801 0.72187787
		 0.61786491 0.7312519 0.38098013 0.71250379 0.61786443 0.72187787 0.63009989 0.037859701
		 0.15122055 0.048934281 0.090232007 0.0038666998 0.61786461 0 0.047458973 0.0020337529
		 0.063611008 0.0027259137 0.62946427 0.22081088 0.62981474 0.2128811 0.23086117 0.061994795
		 0.83730441 0.24359134 0.29624167 0.011996721 0.86990368 0.037937373 0.62661052 0.037654109
		 0.62250644 0.037515972 0.62639862 0.21288802 0.62238824 0.21277744 0.39795542 0.14600147
		 0.66249621 0.25 0.625 0.28749624 0.83136576 0.24492978 0.83750379 0.25 0.62500006
		 0.46250376 0.44883856 0.099269301 0.875 0.21250376 0.625 0.53749621 0.8676632 0.037544139
		 0.875 0.037496254 0.625 0.71250379 0.35354003 0.0013907092 0.66249621 0 0.62500006
		 0.96250379 0.52085966 5.1138466e-07 0.625 0.78749621 0.83750379 0 0.62663162 0.029129608
		 0.62279552 0.028147811 0.62647039 0.021165747 0.62227416 0.019803284 0.62535238 0.013009887
		 0.62153953 0.010877636 0.60821575 0.0044782856 0.625 1 0.625 0 0.32495123 0.0009731942
		 0.625 0.99062598 0 0 0.11541975 0.00081874133 0.62500006 0.9812519 0 0 0.062329423
		 0.0010272911 0.62500006 0.97187781 0 0;
	setAttr ".uvst[0].uvsp[250:499]" 0.047114935 0.014313295 0.625 0.27812219 0
		 0 0.023048347 0.0057868711 0.625 0.26874813 0 0 0.15459575 0.058700413 0.625 0.25937405
		 0 0 0.58674091 0.23006831 0.625 0.24999997 0.6201359 0.23545365 0.61980778 0.23853545
		 0.62502122 0.22914253 0.6214143 0.2302576 0.6258598 0.22123931 0.62199593 0.22161767
		 0.089435816 0.015555155 0.625 0.52812213 0 0 0.19659394 0.049763598 0.625 0.5187481
		 0 0 0.39768186 0.10850449 0.625 0.50937408 0 0 0.50803638 0.14089832 0.625 0.5 0.875
		 0.25 0.07283742 0.017085167 0.625 0.49062595 0 0 0.035939727 0.0070724813 0.62500006
		 0.48125187 0 0 0.17729022 0.049505856 0.62500006 0.47187781 0 0 0.18813816 6.1673326e-08
		 0.625 0.77812219 0 0 0.2952024 1.0426901e-07 0.625 0.7687481 0 0 0.34521046 8.2906178e-07
		 0.625 0.75937402 0 0 0.40738884 6.8093082e-06 0.625 0.75 0.875 0 0.035218891 5.6674504e-05
		 0.625 0.74062598 0 0 0.023563009 0.00049901597 0.625 0.7312519 0 0 0.19613066 0.008067349
		 0.625 0.72187787 0 0 0.33750376 0 0.33750376 0 0 0 0 0 0 0 0 0 0 0 0 0 0.375 2.896005e-09
		 0.375 0 0.375 0.0093740653 0.375 0.0093740607 0.375 0.018748129 0.375 0.018748129
		 0.375 0.028122189 0.375 0.028122189 0.375 0.037496254 0.375 0.037496254 0.375 0.21250376
		 0.375 0.21250376 0.375 0.22187783 0.375 0.22187783 0.375 0.23125188 0.375 0.23125188
		 0.375 0.24062593 0.375 0.24062593 0.375 0.25 0.375 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0.33750376
		 0.25 0.33750376 0.25 0.16249624 0.25 0.16249624 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0.125
		 0.25 0.125 0.25 0 0 0 0 0 0 0 0 7.2407403e-08 1.2309476e-07 0 0 0.125 0.21250376
		 0.125 0.21250376 0.12499982 0.037496202 0.125 0.037496254 0 0 0 0 0 0 0 0 7.5345589e-08
		 0 0 0 0.12499987 0 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16249625 0 0.16249624 0 0.16876912
		 0 0.12785555 0 0 0 0.25524965 0 0 0 0.13263905 0 0.099280722 0 0 0 0.375 0.0013930396
		 0 0 0.375 0.0098170405 0.32198429 0.00012927011 0.375 0.017952096 0.375 0.0089398799
		 0.375 0.025806339 0.375 0.019375755 0.375 0.034004938 0.375 0.030068407 0.37500003
		 0.21599507 0.375 0.03964689 0.375 0.22419372 0.37500003 0.21004504 0.375 0.23204792
		 0.375 0.21993157 0.375 0.24018292 0.375 0.23062424 0.375 0.24860695 0.37499997 0.24106008
		 0.099279977 0.066186652 0.32198429 0.21452694 0 0 0 0 0 0 0 0 0.1687687 0.12501246
		 0.13263948 0.098250374 0.081256159 0.12501237 0.25827429 0.19306482 0 0 0.13088039
		 0.19306476 0 0 0.063861236 0.098250337 0.033093259 0.066186517 0 0 0.10642402 0.21284804
		 0 0 0 0 0.10560433 0.21120866 0 0 0.007378296 0.014756592 0 0 0 0 0.07844457 0.13335814
		 0.025952686 0.044120349 0.078444555 0.023531016 0.109783 0.18464787 0 0 0.10978282
		 0.036531422 0 0 0.025952173 0.0077848742 0 0 0 0 0.10642433 0 0.007378703 0 0.033093482
		 0 0.1056042 0 0 0 0 0 0 0 0 0 0.081256449 0 0.063861072 0 0.14916524 5.6000196e-12
		 0.13779539 3.6025527e-12 0.32062215 2.7885942e-09 0.30818078 -3.1384723e-10 0.046442624
		 4.4093639e-07 0.054338813 -6.2653776e-08 0.0061734505 6.1108326e-06 0.0016290806
		 -3.483789e-07 0.032005813 7.8225952e-05 0.014233761 9.9643958e-06 0.34127676 0.00089936558
		 0.34559408 0.00040669207 0.37272748 0.0095618023 0.37456319 0.0093117524 0.37481964
		 0.019043231 0.37497881 0.019046187 0.37498644 0.028586278 0.37499908 0.028870305
		 0.37499991 0.037957076 0.375 0.038309779 0.37499994 0.21198234 0.375 0.21157625 0.37499037
		 0.22139297 0.37499756 0.22111058 0.37485063 0.2308486 0.37494913 0.23090561 0.37265074
		 0.23886807 0.37391138 0.2399419 0.33997947 0.22572339 0.34502274 0.22958241 0.033357915
		 0.022192078 0.014812632 0.0098701734 0.006198931 0.0044151153 0.0025059767 0.0018278658
		 0.046496544 0.034465965 0.054299936 0.040246505 0.32114321 0.23824574 0.30919969
		 0.22966035 0.15587962 0.2382537 0.15116724 0.22967733 0.022470174 0.034448575 0.026265237
		 0.040303256 0.0025055367 0.0042261626 0.00073410966 0.0011865821 0.0097496966 0.019435443
		 0.0046138223 0.0092133125 0.10280969 0.20561175;
	setAttr ".uvst[0].uvsp[500:524]" 0.10989443 0.21978845 0.008805301 0.017578468
		 0.0060615288 0.012121033 0.0019234933 0.0034577649 0.00060706999 0.0010786474 0.014426052
		 0.02449186 0.013120209 0.022279343 0.12120321 0.20555815 0.11903316 0.20158337 0.12121388
		 0.03716632 0.11905368 0.037084762 0.014502131 0.0044305935 0.013122328 0.004000531
		 0.0019347373 0.00040827718 0.00090506743 0.00020332281 0.0092321392 2.8348219e-05
		 0.0060615712 4.0279838e-06 0.10180281 1.6482775e-06 0.10938612 8.0132168e-08 0.010404565
		 9.308058e-08 0.0048263902 1.8408242e-09 0.0036672009 5.46307e-09 0.002051184 5.8063609e-11
		 0.033292457 4.1858528e-10 0.051596235 1.7881892e-10;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 468 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0.73516858 1.0452902 -0.35162586 0.73516858 
		1.0452902 -0.29254758 0.73516858 1.0451736 -0.2900781 0.73516858 1.0448287 -0.28770357 
		0.73516858 1.0442681 -0.28551525 0.73516858 1.0435139 -0.28359708 0.73516858 1.0425948 
		-0.28202289 0.73516858 1.0415462 -0.28085321 0.73516858 1.0404085 -0.28013289 0.73516858 
		1.0392252 -0.27988973 0.73516858 1.0109174 -0.27988973 0.73516858 1.0097342 -0.28013289 
		0.73516858 1.0085964 -0.28085321 0.73516858 1.0075479 -0.28202289 0.73516858 1.0066288 
		-0.28359708 0.73516858 1.0058745 -0.28551525 0.73516858 1.005314 -0.28770357 0.73516858 
		1.0049689 -0.2900781 0.73516858 1.0048523 -0.29254758 0.73516858 1.0048523 -0.35162586 
		0.73516858 1.0049689 -0.35409531 0.73516858 1.005314 -0.35646981 0.73516858 1.0058745 
		-0.35865816 0.73516858 1.0066288 -0.36057633 0.73516858 1.0075479 -0.36215049 0.73516858 
		1.0085964 -0.36332017 0.73516858 1.0097342 -0.36404049 0.73516858 1.0109174 -0.36428371 
		0.73516858 1.0392252 -0.36428371 0.73516858 1.0404085 -0.36404049 0.73516858 1.0415462 
		-0.36332017 0.73516858 1.0425948 -0.36215049 0.73516858 1.0435139 -0.36057633 0.73516858 
		1.0442681 -0.35865816 0.73516858 1.0448287 -0.35646981 0.73516858 1.0451736 -0.35409531 
		0.73873264 1.0412285 -0.27391702 0.73997158 1.0412203 -0.27413768 0.74087864 1.0411979 
		-0.27474046 0.74121058 1.0411674 -0.27556393 0.73873264 1.008914 -0.27391702 0.73997158 
		1.0089222 -0.27413768 0.74087864 1.0089446 -0.27474046 0.74121058 1.0089753 -0.27556393 
		0.73873264 1.0019906 -0.2883665 0.73997158 1.0021234 -0.28837514 0.74087864 1.0024866 
		-0.28839874 0.74121058 1.0029826 -0.28843093 0.73873264 1.0019906 -0.35580692 0.73997158 
		1.0021234 -0.3557983 0.74087864 1.0024866 -0.3557747 0.74121058 1.0029826 -0.35574248 
		0.73873264 1.008914 -0.37025636 0.73997158 1.0089222 -0.37003574 0.74087864 1.0089446 
		-0.36943293 0.74121058 1.0089753 -0.36860949 0.73873264 1.0412285 -0.37025636 0.73997158 
		1.0412203 -0.37003574 0.74087864 1.0411979 -0.36943293 0.74121058 1.0411674 -0.36860949 
		0.73873264 1.0481521 -0.2883665 0.73997158 1.0480192 -0.28837514 0.74087864 1.0476561 
		-0.28839868 0.74121058 1.04716 -0.2884309 0.73873264 1.0481521 -0.35580692 0.73997158 
		1.0480192 -0.3557983 0.74087864 1.0476561 -0.3557747 0.74121058 1.04716 -0.35574251 
		0.73873264 1.0425793 -0.27419472 0.73997158 1.042547 -0.27441037 0.74087864 1.0424587 
		-0.27499965 0.74121058 1.042338 -0.27580458 0.73873264 1.0438781 -0.27501693 0.73997158 
		1.0438166 -0.27521411 0.74087864 1.0436484 -0.27575287 0.74121058 1.0434188 -0.27648875 
		0.73873264 1.0450751 -0.27635223 0.73997158 1.0449893 -0.27652243 0.74087864 1.0447552 
		-0.27698743 0.74121058 1.0444351 -0.27762264 0.73873264 1.0461242 -0.27814919 0.73997158 
		1.0460199 -0.27828753 0.74087864 1.0457349 -0.27866554 0.74121058 1.0453455 -0.27918184 
		0.73873264 1.0469853 -0.28033879 0.73997158 1.0468675 -0.2804431 0.74087864 1.046546 
		-0.28072798 0.74121058 1.0461066 -0.28111714 0.73873264 1.0476251 -0.28283691 0.73997158 
		1.0474985 -0.28290647 0.74087864 1.0471525 -0.28309637 0.74121058 1.04668 -0.2833558 
		0.73873264 1.0480191 -0.28554758 0.73997158 1.0478873 -0.2855823 0.74087864 1.0475277 
		-0.28567708 0.74121058 1.0470362 -0.28580666 0.73873264 1.0021236 -0.28554758 0.73997158 
		1.0022552 -0.2855823 0.74087864 1.002615 -0.28567708 0.74121058 1.0031065 -0.2858066 
		0.73873264 1.0025175 -0.28283691 0.73997158 1.0026442 -0.28290647 0.74087864 1.0029901 
		-0.28309637 0.74121058 1.0034627 -0.28335577 0.73873264 1.0031573 -0.28033879 0.73997158 
		1.003275 -0.2804431 0.74087864 1.0035968 -0.28072798 0.74121058 1.0040359 -0.28111714 
		0.73873264 1.0040184 -0.27814919 0.73997158 1.0041227 -0.27828753 0.74087864 1.0044076 
		-0.27866554 0.74121058 1.004797 -0.27918184 0.73873264 1.0050675 -0.27635223 0.73997158 
		1.0051532 -0.27652243 0.74087864 1.0053875 -0.27698743 0.74121058 1.0057074 -0.27762261 
		0.73873264 1.0062646 -0.27501693 0.73997158 1.0063261 -0.27521411 0.74087864 1.0064942 
		-0.27575287 0.74121058 1.0067239 -0.27648875 0.73873264 1.0075634 -0.27419472 0.73997158 
		1.0075957 -0.27441037 0.74087864 1.0076839 -0.27499965 0.74121058 1.0078045 -0.27580458 
		0.73873264 1.0075634 -0.36997873 0.73997158 1.0075957 -0.36976302 0.74087864 1.0076839 
		-0.36917377 0.74121058 1.0078045 -0.36836883 0.73873264 1.0062646 -0.36915645 0.73997158 
		1.0063261 -0.36895928 0.74087864 1.0064942 -0.36842057 0.74121058 1.0067239 -0.36768469 
		0.73873264 1.0050675 -0.36782119 0.73997158 1.0051532 -0.36765096 0.74087864 1.0053875 
		-0.36718598 0.74121058 1.0057074 -0.36655074 0.73873264 1.0040184 -0.36602423 0.73997158 
		1.0041227 -0.36588585 0.74087864 1.0044076 -0.3655079 0.74121058 1.004797 -0.36499155 
		0.73873264 1.0031573 -0.36383459 0.73997158 1.003275 -0.36373031 0.74087864 1.0035968 
		-0.36344543 0.74121058 1.0040359 -0.36305624 0.73873264 1.0025175 -0.36133647 0.73997158 
		1.0026442 -0.36126697 0.74087864 1.0029901 -0.36107701 0.74121058 1.0034627 -0.36081758 
		0.73873264 1.0021236 -0.35862586 0.73997158 1.0022552 -0.35859114 0.74087864 1.002615 
		-0.35849631 0.74121058 1.0031065 -0.35836676 0.73873264 1.0480191 -0.35862586 0.73997158 
		1.0478873 -0.35859114 0.74087864 1.0475277 -0.35849631 0.74121058 1.0470362 -0.35836676 
		0.73873264 1.0476251 -0.36133647 0.73997158 1.0474985 -0.36126694 0.74087864 1.0471525 
		-0.36107701 0.74121058 1.04668 -0.36081761 0.73873264 1.0469853 -0.36383459 0.73997158 
		1.0468675 -0.36373031 0.74087864 1.046546 -0.36344543 0.74121058 1.0461066 -0.36305624 
		0.73873264 1.0461242 -0.36602423 0.73997158 1.0460199 -0.36588585;
	setAttr ".pt[166:331]" 0.74087864 1.0457349 -0.3655079 0.74121058 1.0453455 
		-0.36499158 0.73873264 1.0450751 -0.36782119 0.73997158 1.0449893 -0.36765096 0.74087864 
		1.0447552 -0.36718598 0.74121058 1.0444351 -0.36655074 0.73873264 1.0438781 -0.36915645 
		0.73997158 1.0438166 -0.36895928 0.74087864 1.0436484 -0.36842057 0.74121058 1.0434188 
		-0.36768469 0.73873264 1.0425793 -0.36997873 0.73997158 1.042547 -0.36976302 0.74087864 
		1.0424587 -0.36917377 0.74121058 1.042338 -0.36836883 0.63761729 1.0411614 -0.27588233 
		0.6380133 1.041195 -0.27489969 0.63909537 1.0412196 -0.27418035 0.64057344 1.0412285 
		-0.27391702 0.63761729 1.0089955 -0.27588099 0.63801336 1.0089548 -0.27489901 0.63909549 
		1.008925 -0.27418014 0.64057368 1.008914 -0.27391702 0.63761729 1.0031747 -0.28841978 
		0.63801336 1.0025826 -0.28839311 0.63909554 1.0021491 -0.28837365 0.6405738 1.0019906 
		-0.2883665 0.63761729 1.0031738 -0.35573009 0.63801324 1.0025822 -0.3557685 0.63909513 
		1.0021491 -0.35579661 0.64057302 1.0019906 -0.35580692 0.63761729 1.0089812 -0.36829108 
		0.6380133 1.0089476 -0.36927372 0.63909537 1.0089231 -0.36999306 0.64057344 1.008914 
		-0.37025636 0.63761729 1.0411471 -0.36829245 0.63801336 1.0411879 -0.36927441 0.63909549 
		1.0412177 -0.36999324 0.64057368 1.0412285 -0.37025636 0.63761729 1.0469687 -0.28844333 
		0.63801324 1.0475605 -0.28840488 0.63909513 1.0479935 -0.28837681 0.64057302 1.0481521 
		-0.2883665 0.63761729 1.046968 -0.35575363 0.63801336 1.04756 -0.35578027 0.63909554 
		1.0479934 -0.35579976 0.6405738 1.0481521 -0.35580692 0.63761729 1.0422972 -0.27611789 
		0.63801336 1.0424383 -0.27515629 0.63909554 1.0425415 -0.27445233 0.64057392 1.0425793 
		-0.27419472 0.63761729 1.0433357 -0.27677783 0.63801336 1.0436069 -0.27589738 0.63909554 
		1.0438055 -0.27525285 0.64057392 1.0438781 -0.27501693 0.63761729 1.044317 -0.27787554 
		0.63801336 1.0446961 -0.27711388 0.6390956 1.0449735 -0.27655631 0.64057392 1.0450751 
		-0.27635223 0.63761729 1.0452001 -0.27939165 0.63801336 1.0456622 -0.27877045 0.6390956 
		1.0460004 -0.27831566 0.64057398 1.0461242 -0.27814919 0.63761729 1.0459411 -0.28128082 
		0.63801336 1.0464633 -0.28080982 0.63909566 1.0468454 -0.28046498 0.64057404 1.0469853 
		-0.28033879 0.63761729 1.0465007 -0.2834723 0.63801342 1.0470628 -0.28315461 0.63909572 
		1.0474744 -0.28292206 0.6405741 1.0476251 -0.28283691 0.63761729 1.0468482 -0.28587583 
		0.63801342 1.0474336 -0.28571171 0.63909578 1.0478622 -0.28559148 0.64057422 1.0480191 
		-0.28554758 0.63761729 1.0032986 -0.28583384 0.63801348 1.0027111 -0.28569067 0.6390959 
		1.0022811 -0.28558588 0.64057446 1.0021236 -0.28554758 0.63761729 1.0036498 -0.28343368 
		0.63801348 1.0030837 -0.28313529 0.6390959 1.0026692 -0.28291687 0.64057457 1.0025175 
		-0.28283691 0.63761729 1.004213 -0.28124583 0.63801324 1.0036852 -0.28079236 0.63909519 
		1.0032988 -0.28046036 0.64057314 1.0031573 -0.28033879 0.63761729 1.0049577 -0.27936104 
		0.63801324 1.004488 -0.27875507 0.63909519 1.0041442 -0.27831152 0.64057314 1.0040184 
		-0.27814919 0.63761729 1.0058445 -0.2778503 0.6380133 1.0054561 -0.27710128 0.63909519 
		1.0051717 -0.27655292 0.64057314 1.0050675 -0.27635223 0.63761729 1.0068185 -0.27676797 
		0.63801336 1.0065415 -0.27589244 0.6390956 1.0063387 -0.27525157 0.64057398 1.0062646 
		-0.27501693 0.63761729 1.0078585 -0.27611265 0.63801342 1.0077109 -0.27515364 0.63909572 
		1.0076029 -0.27445164 0.64057416 1.0075634 -0.27419472 0.63761729 1.0078454 -0.36805552 
		0.63801336 1.0077044 -0.36901712 0.63909554 1.0076011 -0.36972106 0.64057392 1.0075634 
		-0.36997873 0.63761729 1.0068069 -0.36739558 0.63801336 1.0065358 -0.368276 0.63909554 
		1.0063373 -0.36892053 0.64057392 1.0062646 -0.36915645 0.63761729 1.0058255 -0.36629787 
		0.63801336 1.0054466 -0.36705953 0.6390956 1.005169 -0.3676171 0.64057392 1.0050675 
		-0.36782119 0.63761729 1.0049424 -0.36478174 0.63801336 1.0044804 -0.365403 0.6390956 
		1.0041422 -0.36585775 0.64057398 1.0040184 -0.36602423 0.63761729 1.0042015 -0.36289257 
		0.63801336 1.0036794 -0.36336359 0.63909566 1.0032972 -0.36370838 0.64057404 1.0031573 
		-0.36383459 0.63761729 1.003642 -0.36070108 0.63801342 1.0030798 -0.36101878 0.63909572 
		1.0026683 -0.36125132 0.6405741 1.0025175 -0.36133647 0.63761729 1.0032946 -0.35829759 
		0.63801342 1.002709 -0.35846171 0.63909578 1.0022805 -0.35858187 0.64057422 1.0021236 
		-0.35862586 0.63761729 1.046844 -0.35833961 0.63801348 1.0474316 -0.35848272 0.6390959 
		1.0478617 -0.3585875 0.64057446 1.0480191 -0.35862586 0.63761729 1.0464927 -0.36073971 
		0.63801348 1.0470589 -0.36103809 0.6390959 1.0474733 -0.36125654 0.64057457 1.0476251 
		-0.36133647 0.63761729 1.0459297 -0.36292756 0.63801324 1.0464575 -0.36338109 0.63909519 
		1.0468439 -0.36371306 0.64057314 1.0469853 -0.36383459 0.63761729 1.045185 -0.36481237 
		0.63801324 1.0456545 -0.36541831 0.63909519 1.0459985 -0.36586186 0.64057314 1.0461242 
		-0.36602423 0.63761729 1.0442982 -0.36632305 0.6380133 1.0446867 -0.36707214 0.63909519 
		1.044971 -0.36762047 0.64057314 1.0450751 -0.36782119 0.63761729 1.0433242 -0.36740544 
		0.63801336 1.0436012 -0.36828095 0.6390956 1.0438038 -0.36892188 0.64057398 1.0438781 
		-0.36915645 0.63761729 1.0422841 -0.36806077 0.63801342 1.0424317 -0.36901975 0.63909572 
		1.0425397 -0.36972177 0.64057416 1.0425793 -0.36997873 0.73908317 1.0452902 -0.35162586 
		0.74014688 1.0454043 -0.35163325 0.74092555 1.045716 -0.35165352 0.74121058 1.046142 
		-0.35168117 0.73908317 1.0452902 -0.29254758 0.74014688 1.0454043 -0.29254013 0.74092555 
		1.045716 -0.29251993 0.74121058 1.046142 -0.29249224;
	setAttr ".pt[332:467]" 0.73908317 1.0451736 -0.2900781 0.74014688 1.0452868 
		-0.2900483 0.74092555 1.0455956 -0.28996694 0.74121058 1.0460175 -0.28985566 0.73908317 
		1.0448287 -0.28770357 0.74014688 1.0449373 -0.28764391 0.74092555 1.0452342 -0.28748083 
		0.74121058 1.04564 -0.28725815 0.73908317 1.0442681 -0.28551525 0.74014688 1.0443691 
		-0.28542569 0.74092555 1.0446453 -0.28518111 0.74121058 1.0450225 -0.28484702 0.73908317 
		1.0435139 -0.28359708 0.74014688 1.0436034 -0.28347829 0.74092555 1.043848 -0.2831538 
		0.74121058 1.0441824 -0.28271049 0.73908317 1.0425948 -0.28202289 0.74014688 1.0426683 
		-0.2818768 0.74092555 1.0428694 -0.28147757 0.74121058 1.0431441 -0.28093222 0.73908317 
		1.0415462 -0.28085321 0.74014688 1.041599 -0.28068393 0.74092555 1.0417434 -0.28022146 
		0.74121058 1.0419406 -0.27958959 0.73908317 1.0404085 -0.28013289 0.74014688 1.0404361 
		-0.2799477 0.74092555 1.040512 -0.27944186 0.74121058 1.0406156 -0.27875078 0.73908317 
		1.0392252 -0.27988973 0.74014688 1.0392323 -0.27970028 0.74092555 1.0392516 -0.27918276 
		0.74121058 1.0392778 -0.27847576 0.73908317 1.0109174 -0.27988973 0.74014688 1.0109104 
		-0.27970028 0.74092555 1.0108912 -0.27918276 0.74121058 1.010865 -0.27847576 0.73908317 
		1.0097342 -0.28013289 0.74014688 1.0097064 -0.2799477 0.74092555 1.0096307 -0.27944186 
		0.74121058 1.0095272 -0.27875078 0.73908317 1.0085964 -0.28085321 0.74014688 1.0085436 
		-0.28068393 0.74092555 1.0083992 -0.28022146 0.74121058 1.0082021 -0.27958959 0.73908317 
		1.0075479 -0.28202289 0.74014688 1.0074743 -0.2818768 0.74092555 1.0072732 -0.28147757 
		0.74121058 1.0069985 -0.28093222 0.73908317 1.0066288 -0.28359708 0.74014688 1.0065392 
		-0.28347829 0.74092555 1.0062945 -0.2831538 0.74121058 1.0059602 -0.28271049 0.73908317 
		1.0058745 -0.28551525 0.74014688 1.0057734 -0.28542569 0.74092555 1.0054973 -0.28518111 
		0.74121058 1.0051202 -0.28484696 0.73908317 1.005314 -0.28770357 0.74014688 1.0052053 
		-0.28764391 0.74092555 1.0049083 -0.28748083 0.74121058 1.0045027 -0.28725809 0.73908317 
		1.0049689 -0.2900781 0.74014688 1.0048559 -0.2900483 0.74092555 1.0045469 -0.28996694 
		0.74121058 1.0041251 -0.28985566 0.73908317 1.0048523 -0.29254758 0.74014688 1.0047382 
		-0.29254013 0.74092555 1.0044265 -0.29251993 0.74121058 1.0040007 -0.29249227 0.73908317 
		1.0048523 -0.35162586 0.74014688 1.0047382 -0.35163325 0.74092555 1.0044265 -0.35165352 
		0.74121058 1.0040007 -0.35168117 0.73908317 1.0049689 -0.35409531 0.74014688 1.0048559 
		-0.35412508 0.74092555 1.0045469 -0.3542065 0.74121058 1.0041251 -0.35431772 0.73908317 
		1.005314 -0.35646981 0.74014688 1.0052053 -0.3565295 0.74092555 1.0049083 -0.35669255 
		0.74121058 1.0045027 -0.3569153 0.73908317 1.0058745 -0.35865816 0.74014688 1.0057734 
		-0.35874772 0.74092555 1.0054973 -0.35899228 0.74121058 1.0051202 -0.35932642 0.73908317 
		1.0066288 -0.36057633 0.74014688 1.0065392 -0.36069509 0.74092555 1.0062945 -0.36101958 
		0.74121058 1.0059602 -0.36146286 0.73908317 1.0075479 -0.36215049 0.74014688 1.0074743 
		-0.36229658 0.74092555 1.0072732 -0.36269581 0.74121058 1.0069985 -0.36324117 0.73908317 
		1.0085964 -0.36332017 0.74014688 1.0085436 -0.36348948 0.74092555 1.0083992 -0.36395198 
		0.74121058 1.0082021 -0.36458376 0.73908317 1.0097342 -0.36404049 0.74014688 1.0097064 
		-0.36422566 0.74092555 1.0096307 -0.36473155 0.74121058 1.0095272 -0.36542264 0.73908317 
		1.0109174 -0.36428371 0.74014688 1.0109104 -0.36447313 0.74092555 1.0108912 -0.36499065 
		0.74121058 1.010865 -0.36569762 0.73908317 1.0392252 -0.36428371 0.74014688 1.0392323 
		-0.36447313 0.74092555 1.0392516 -0.36499065 0.74121058 1.0392778 -0.36569762 0.73908317 
		1.0404085 -0.36404049 0.74014688 1.0404361 -0.36422566 0.74092555 1.040512 -0.36473155 
		0.74121058 1.0406156 -0.36542264 0.73908317 1.0415462 -0.36332017 0.74014688 1.041599 
		-0.36348948 0.74092555 1.0417434 -0.36395198 0.74121058 1.0419406 -0.36458376 0.73908317 
		1.0425948 -0.36215049 0.74014688 1.0426683 -0.36229658 0.74092555 1.0428694 -0.36269581 
		0.74121058 1.0431441 -0.36324117 0.73908317 1.0435139 -0.36057633 0.74014688 1.0436034 
		-0.36069509 0.74092555 1.043848 -0.36101958 0.74121058 1.0441824 -0.36146286 0.73908317 
		1.0442681 -0.35865816 0.74014688 1.0443691 -0.35874772 0.74092555 1.0446453 -0.35899228 
		0.74121058 1.0450225 -0.35932642 0.73908317 1.0448287 -0.35646981 0.74014688 1.0449373 
		-0.3565295 0.74092555 1.0452342 -0.35669255 0.74121058 1.04564 -0.35691527 0.73908317 
		1.0451736 -0.35409531 0.74014688 1.0452868 -0.35412508 0.74092555 1.0455956 -0.3542065 
		0.74121058 1.0460175 -0.35431772;
	setAttr -s 468 ".vt";
	setAttr ".vt[0:165]"  0.82671499 -0.34276152 0.31364191 0.82671499 -0.34276152 1.023765564
		 0.82671499 -0.3401261 1.0534482 0.82671499 -0.33232117 1.081990004 0.82671499 -0.3196466 1.10829425
		 0.82671499 -0.30258977 1.13135028 0.82671499 -0.28180552 1.15027177 0.82671499 -0.25809312 1.16433167
		 0.82671499 -0.23236391 1.17298985 0.82671499 -0.20560619 1.17591321 0.82671499 0.43454424 1.17591321
		 0.82671499 0.46130204 1.17298985 0.82671499 0.48703128 1.16433167 0.82671499 0.51074374 1.15027177
		 0.82671499 0.53152806 1.13135028 0.82671499 0.54858482 1.10829425 0.82671499 0.56125927 1.081990004
		 0.82671499 0.5690645 1.0534482 0.82671499 0.57169974 1.023765564 0.82671499 0.57169974 0.31364191
		 0.82671499 0.5690645 0.28395933 0.82671499 0.56125927 0.2554175 0.82671499 0.54858482 0.22911322
		 0.82671499 0.53152806 0.20605725 0.82671499 0.51074374 0.18713573 0.82671499 0.48703128 0.17307582
		 0.82671499 0.46130204 0.16441768 0.82671499 0.43454424 0.16149428 0.82671499 -0.20560619 0.16149428
		 0.82671499 -0.23236391 0.16441768 0.82671499 -0.25809312 0.17307582 0.82671499 -0.28180552 0.18713573
		 0.82671499 -0.30258977 0.20605725 0.82671499 -0.3196466 0.22911322 0.82671499 -0.33232117 0.2554175
		 0.82671499 -0.3401261 0.28395933 0.79231095 -0.25091013 1.24770474 0.78035074 -0.25072479 1.24505258
		 0.77159524 -0.2502183 1.23780692 0.76839054 -0.24952647 1.22790909 0.79231095 0.47984838 1.24770474
		 0.78035074 0.47966295 1.24505258 0.77159524 0.47915637 1.23780692 0.76839054 0.47846472 1.22790909
		 0.79231095 0.63641703 1.074021816 0.78035074 0.63341141 1.073918104 0.77159524 0.62519974 1.073634624
		 0.76839054 0.61398238 1.073247552 0.79231095 0.63641703 0.26338568 0.78035074 0.63341141 0.26348943
		 0.77159524 0.62519974 0.26377279 0.76839054 0.61398238 0.26415995 0.79231095 0.47984838 0.089702785
		 0.78035074 0.47966295 0.092354894 0.77159524 0.47915637 0.099600613 0.76839054 0.47846472 0.10949838
		 0.79231095 -0.25091013 0.089702785 0.78035074 -0.25072479 0.092354894 0.77159524 -0.2502183 0.099600613
		 0.76839054 -0.24952647 0.10949838 0.79231095 -0.40747881 1.074021816 0.78035074 -0.40447342 1.073918104
		 0.77159524 -0.39626154 1.073634744 0.76839054 -0.38504434 1.073247671 0.79231095 -0.40747881 0.26338568
		 0.78035074 -0.40447342 0.26348943 0.77159524 -0.39626154 0.26377276 0.76839054 -0.38504434 0.26415986
		 0.79231095 -0.28145513 1.24436748 0.78035074 -0.28072441 1.24177492 0.77159524 -0.27872792 1.2346921
		 0.76839054 -0.27600077 1.22501659 0.79231095 -0.31082639 1.23448384 0.78035074 -0.30943477 1.23211384
		 0.77159524 -0.30563286 1.22563839 0.76839054 -0.30043921 1.21679294 0.79231095 -0.33789504 1.21843386
		 0.78035074 -0.33595666 1.21638799 0.77159524 -0.3306604 1.2107985 0.76839054 -0.32342583 1.20316327
		 0.79231095 -0.3616209 1.19683421 0.78035074 -0.35926199 1.19517124 0.77159524 -0.35281664 1.19062793
		 0.76839054 -0.34401229 1.18442178 0.79231095 -0.38109225 1.17051494 0.78035074 -0.37843019 1.16926146
		 0.77159524 -0.37115717 1.16583705 0.76839054 -0.36122215 1.16115928 0.79231095 -0.39556074 1.14048731
		 0.78035074 -0.39269733 1.13965178 0.77159524 -0.38487428 1.13736892 0.76839054 -0.37418789 1.13425052
		 0.79231095 -0.40447062 1.10790563 0.78035074 -0.40149271 1.10748851 0.77159524 -0.39335713 1.10634851
		 0.76839054 -0.38224375 1.1047914 0.79231095 0.63340867 1.10790563 0.78035074 0.63043076 1.10748851
		 0.77159524 0.62229526 1.10634863 0.76839054 0.61118168 1.10479152 0.79231095 0.6244992 1.14048731
		 0.78035074 0.62163579 1.13965178 0.77159524 0.6138128 1.13736892 0.76839054 0.60312629 1.13425064
		 0.79231095 0.61003059 1.17051494 0.78035074 0.60736853 1.16926146 0.77159524 0.60009575 1.16583705
		 0.76839054 0.59016055 1.16115928 0.79231095 0.59055901 1.19683421 0.78035074 0.58819997 1.19517124
		 0.77159524 0.58175474 1.19062793 0.76839054 0.57295048 1.18442178 0.79231095 0.56683326 1.21843386
		 0.78035074 0.56489468 1.21638799 0.77159524 0.55959845 1.2107985 0.76839054 0.55236399 1.20316339
		 0.79231095 0.53976476 1.23448384 0.78035074 0.53837311 1.23211384 0.77159524 0.53457117 1.22563839
		 0.76839054 0.52937758 1.21679294 0.79231095 0.51039344 1.24436748 0.78035074 0.50966275 1.24177492
		 0.77159524 0.50766617 1.2346921 0.76839054 0.50493914 1.22501659 0.79231095 0.51039344 0.093040079
		 0.78035074 0.50966275 0.095632583 0.77159524 0.50766617 0.10271546 0.76839054 0.50493914 0.11239085
		 0.79231095 0.53976476 0.10292366 0.78035074 0.53837311 0.10529375 0.77159524 0.53457117 0.11176911
		 0.76839054 0.52937758 0.12061459 0.79231095 0.56683326 0.11897364 0.78035074 0.56489468 0.12101954
		 0.77159524 0.55959845 0.12660897 0.76839054 0.55236399 0.13424417 0.79231095 0.59055901 0.14057335
		 0.78035074 0.58819997 0.14223632 0.77159524 0.58175474 0.14677957 0.76839054 0.57295048 0.15298578
		 0.79231095 0.61003059 0.16689262 0.78035074 0.60736853 0.16814604 0.77159524 0.60009575 0.17157048
		 0.76839054 0.59016055 0.17624828 0.79231095 0.6244992 0.19692019 0.78035074 0.62163579 0.19775575
		 0.77159524 0.6138128 0.20003861 0.76839054 0.60312629 0.20315695 0.79231095 0.63340867 0.22950184
		 0.78035074 0.63043076 0.22991905 0.77159524 0.62229526 0.23105893 0.76839054 0.61118168 0.23261601
		 0.79231095 -0.40447062 0.22950184 0.78035074 -0.40149271 0.22991905 0.77159524 -0.39335713 0.23105901
		 0.76839054 -0.38224375 0.2326161 0.79231095 -0.39556074 0.19692019 0.78035074 -0.39269733 0.19775581
		 0.77159524 -0.38487428 0.20003861 0.76839054 -0.37418789 0.20315698 0.79231095 -0.38109225 0.16689262
		 0.78035074 -0.37843019 0.16814604 0.77159524 -0.37115717 0.17157042 0.76839054 -0.36122215 0.17624822
		 0.79231095 -0.3616209 0.14057335 0.78035074 -0.35926199 0.14223632;
	setAttr ".vt[166:331]" 0.77159524 -0.35281664 0.14677957 0.76839054 -0.34401229 0.15298575
		 0.79231095 -0.33789504 0.11897364 0.78035074 -0.33595666 0.12101954 0.77159524 -0.3306604 0.12660897
		 0.76839054 -0.32342583 0.13424423 0.79231095 -0.31082639 0.10292366 0.78035074 -0.30943477 0.10529375
		 0.77159524 -0.30563286 0.11176911 0.76839054 -0.30043921 0.12061459 0.79231095 -0.28145513 0.093040079
		 0.78035074 -0.28072441 0.095632583 0.77159524 -0.27872792 0.10271546 0.76839054 -0.27600077 0.11239085
		 1.76839042 -0.24939251 1.22408199 1.76456738 -0.25015137 1.23589337 1.75412226 -0.25070691 1.24453998
		 1.73985386 -0.25091013 1.24770474 1.76839042 0.47800639 1.22409821 1.7645669 0.47892737 1.23590159
		 1.75412107 0.47960162 1.24454212 1.73985171 0.47984838 1.24770474 1.76839042 0.60963947 1.073381305
		 1.7645669 0.62302834 1.07370162 1.75412059 0.63282967 1.073935986 1.73985076 0.63641703 1.074021816
		 1.76839042 0.60965741 0.26430917 1.76456785 0.62303728 0.26384741 1.7541244 0.63283187 0.26350939
		 1.73985839 0.63641703 0.26338568 1.76839042 0.47833055 0.11332548 1.76456738 0.47908953 0.10151413
		 1.75412226 0.47964504 0.092867613 1.73985386 0.47984838 0.089702785 1.76839042 -0.24906828 0.11330926
		 1.7645669 -0.24998915 0.10150596 1.75412107 -0.25066343 0.092865437 1.73985171 -0.25091013 0.089702785
		 1.76839042 -0.38071942 1.073098421 1.76456785 -0.39409912 1.073560119 1.7541244 -0.40389377 1.073898077
		 1.73985839 -0.40747881 1.074021816 1.76839042 -0.3807013 0.26402611 1.7645669 -0.39409029 0.26370588
		 1.75412059 -0.40389153 0.26347151 1.73985076 -0.40747881 0.26338568 1.76839042 -0.27507734 1.22125077
		 1.76456666 -0.27826619 1.23280907 1.75412011 -0.28060067 1.24127042 1.73984957 -0.28145513 1.24436748
		 1.76839042 -0.29856008 1.21331811 1.76456666 -0.30469328 1.22390103 1.75412011 -0.309183 1.23164821
		 1.73984957 -0.31082639 1.23448384 1.76839042 -0.3207534 1.20012379 1.76456666 -0.32932416 1.20927882
		 1.75411987 -0.33559847 1.21598077 1.73984933 -0.33789504 1.21843386 1.76839042 -0.34072354 1.18189979
		 1.76456666 -0.35117221 1.18936694 1.75411963 -0.35882115 1.1948334 1.73984885 -0.3616209 1.19683421
		 1.76839042 -0.35748073 1.15919197 1.76456666 -0.36928642 1.16485345 1.7541194 -0.37792885 1.168998
		 1.73984838 -0.38109225 1.17051494 1.76839042 -0.37013221 1.13284981 1.76456642 -0.38284639 1.13666856
		 1.75411892 -0.39215398 1.13946402 1.73984766 -0.39556074 1.14048731 1.76839042 -0.37799039 1.10395992
		 1.76456642 -0.39123073 1.10593271 1.75411844 -0.40092301 1.10737705 1.73984671 -0.40447062 1.10790563
		 1.76839042 0.60683566 1.10446501 1.76456594 0.62012208 1.10618544 1.75411725 0.62984848 1.10744464
		 1.73984408 0.63340867 1.10790563 1.76839042 0.59889293 1.13331461 1.76456594 0.611696 1.1369009
		 1.75411677 0.6210686 1.13952637 1.73984313 0.6244992 1.14048731 1.76839042 0.58615887 1.15961242
		 1.76456785 0.59809458 1.16506362 1.75412393 0.60683233 1.16905427 1.7398572 0.61003059 1.17051494
		 1.76839042 0.56931853 1.18226802 1.76456785 0.57993877 1.18955112 1.75412369 0.58771342 1.19488263
		 1.7398572 0.59055901 1.19683421 1.76839042 0.54926431 1.20042646 1.76456761 0.55804878 1.20943022
		 1.75412369 0.56447947 1.2160213 1.73985696 0.56683326 1.21843386 1.76839042 0.52723813 1.2134366
		 1.76456666 0.53350145 1.22396028 1.75411987 0.53808641 1.23166406 1.73984909 0.53976476 1.23448384
		 1.76839042 0.50371945 1.22131371 1.76456642 0.50705653 1.23284066 1.75411892 0.50949931 1.24127889
		 1.73984718 0.51039344 1.24436748 1.76839042 0.50401556 0.11615682 1.76456666 0.50720447 0.10459849
		 1.75412011 0.50953889 0.096137106 1.73984957 0.51039344 0.093040079 1.76839042 0.52749836 0.12408945
		 1.76456666 0.53363162 0.11350653 1.75412011 0.5381211 0.10575929 1.73984957 0.53976476 0.10292366
		 1.76839042 0.5496915 0.13728371 1.76456666 0.55826235 0.12812871 1.75411987 0.56453669 0.12142676
		 1.73984933 0.56683326 0.11897364 1.76839042 0.56966174 0.15550774 1.76456666 0.58011025 0.14804056
		 1.75411963 0.5877592 0.14257416 1.73984885 0.59055901 0.14057335 1.76839042 0.58641899 0.17821568
		 1.76456666 0.59822476 0.17255417 1.7541194 0.60686731 0.16840959 1.73984838 0.61003059 0.16689262
		 1.76839042 0.59907049 0.20455754 1.76456642 0.61178488 0.20073894 1.75411892 0.62109238 0.19794348
		 1.73984766 0.6244992 0.19692019 1.76839042 0.60692841 0.23344758 1.76456642 0.62016851 0.2314747
		 1.75411844 0.62986082 0.23003048 1.73984671 0.63340867 0.22950184 1.76839042 -0.37789786 0.23294258
		 1.76456594 -0.39118418 0.23122215 1.75411725 -0.4009105 0.22996286 1.73984408 -0.40447062 0.22950184
		 1.76839042 -0.36995456 0.20409301 1.76456594 -0.38275778 0.2005066 1.75411677 -0.3921302 0.19788119
		 1.73984313 -0.39556074 0.19692019 1.76839042 -0.35722041 0.17779505 1.76456785 -0.3691563 0.17234379
		 1.75412393 -0.37789401 0.16835323 1.7398572 -0.38109225 0.16689262 1.76839042 -0.34038031 0.15513945
		 1.76456785 -0.35100061 0.14785638 1.75412369 -0.35877544 0.14252484 1.7398572 -0.3616209 0.14057335
		 1.76839042 -0.32032624 0.13698113 1.76456761 -0.32911062 0.1279774 1.75412369 -0.33554122 0.12138623
		 1.73985696 -0.33789504 0.11897364 1.76839042 -0.29829985 0.1239709 1.76456666 -0.30456311 0.11344728
		 1.75411987 -0.30914828 0.10574338 1.73984909 -0.31082639 0.10292366 1.76839042 -0.27478123 0.11609381
		 1.76456642 -0.27811822 0.1045669 1.75411892 -0.28056097 0.096128672 1.73984718 -0.28145513 0.093040079
		 0.78892714 -0.34276152 0.31364191 0.77865887 -0.3453421 0.31355286 0.77114189 -0.35239196 0.31330955
		 0.76839054 -0.36202249 0.31297716 0.78892714 -0.34276152 1.023765564 0.77865887 -0.3453421 1.023854733
		 0.77114189 -0.35239196 1.024097919 0.76839054 -0.36202249 1.024430394;
	setAttr ".vt[332:467]" 0.78892714 -0.3401261 1.0534482 0.77865887 -0.34268263 1.053806424
		 0.77114189 -0.34966731 1.054785013 0.76839054 -0.35920861 1.056121826 0.78892714 -0.33232117 1.081990004
		 0.77865887 -0.3347795 1.082707405 0.77114189 -0.34149581 1.084667325 0.76839054 -0.35067064 1.087344527
		 0.78892714 -0.3196466 1.10829425 0.77865887 -0.32193211 1.10937047 0.77114189 -0.32817623 1.11231041
		 0.76839054 -0.3367058 1.11632645 0.78892714 -0.30258977 1.13135028 0.77865887 -0.30461523 1.13277793
		 0.77114189 -0.31014863 1.13667846 0.76839054 -0.31770748 1.14200675 0.78892714 -0.28180552 1.15027177
		 0.77865887 -0.28346986 1.1520282 0.77114189 -0.28801674 1.15682697 0.76839054 -0.29422787 1.16338205
		 0.78892714 -0.25809312 1.16433167 0.77865887 -0.25928783 1.16636658 0.77114189 -0.26255202 1.1719259
		 0.76839054 -0.26701096 1.17952001 0.78892714 -0.23236391 1.17298985 0.77865887 -0.23299141 1.1752156
		 0.77114189 -0.23470542 1.18129659 0.76839054 -0.23704679 1.18960321 0.78892714 -0.20560619 1.17591321
		 0.77865887 -0.20576535 1.17819023 0.77114189 -0.20620015 1.18441081 0.76839054 -0.20679411 1.19290853
		 0.78892714 0.43454424 1.17591321 0.77865887 0.43470341 1.17819023 0.77114189 0.43513823 1.18441081
		 0.76839054 0.43573219 1.19290853 0.78892714 0.46130204 1.17298985 0.77865887 0.46192932 1.1752156
		 0.77114189 0.4636434 1.18129659 0.76839054 0.46598476 1.18960321 0.78892714 0.48703128 1.16433167
		 0.77865887 0.48822606 1.16636658 0.77114189 0.49149019 1.1719259 0.76839054 0.49594909 1.17952001
		 0.78892714 0.51074374 1.15027177 0.77865887 0.51240802 1.1520282 0.77114189 0.5169549 1.15682697
		 0.76839054 0.52316594 1.16338205 0.78892714 0.53152806 1.13135028 0.77865887 0.53355348 1.13277793
		 0.77114189 0.53908694 1.13667846 0.76839054 0.54664576 1.14200675 0.78892714 0.54858482 1.10829425
		 0.77865887 0.55087036 1.10937047 0.77114189 0.55711448 1.11231041 0.76839054 0.56564409 1.11632633
		 0.78892714 0.56125927 1.081990004 0.77865887 0.5637176 1.082707405 0.77114189 0.57043386 1.084667325
		 0.76839054 0.57960862 1.087344646 0.78892714 0.5690645 1.0534482 0.77865887 0.57162118 1.053806424
		 0.77114189 0.57860577 1.054785013 0.76839054 0.58814698 1.056121826 0.78892714 0.57169974 1.023765564
		 0.77865887 0.57428014 1.023854733 0.77114189 0.58133006 1.024097919 0.76839054 0.59096062 1.024430275
		 0.78892714 0.57169974 0.31364191 0.77865887 0.57428014 0.31355286 0.77114189 0.58133006 0.31330955
		 0.76839054 0.59096062 0.31297722 0.78892714 0.5690645 0.28395933 0.77865887 0.57162118 0.28360114
		 0.77114189 0.57860577 0.28262252 0.76839054 0.58814698 0.28128567 0.78892714 0.56125927 0.2554175
		 0.77865887 0.5637176 0.25470015 0.77114189 0.57043386 0.25274017 0.76839054 0.57960862 0.25006294
		 0.78892714 0.54858482 0.22911322 0.77865887 0.55087036 0.22803706 0.77114189 0.55711448 0.22509712
		 0.76839054 0.56564409 0.22108114 0.78892714 0.53152806 0.20605725 0.77865887 0.53355348 0.20462957
		 0.77114189 0.53908694 0.20072904 0.76839054 0.54664576 0.19540077 0.78892714 0.51074374 0.18713573
		 0.77865887 0.51240802 0.18537927 0.77114189 0.5169549 0.18058056 0.76839054 0.52316594 0.17402542
		 0.78892714 0.48703128 0.17307582 0.77865887 0.48822606 0.17104095 0.77114189 0.49149019 0.16548166
		 0.76839054 0.49594909 0.15788752 0.78892714 0.46130204 0.16441768 0.77865887 0.46192932 0.16219196
		 0.77114189 0.4636434 0.156111 0.76839054 0.46598476 0.14780432 0.78892714 0.43454424 0.16149428
		 0.77865887 0.43470341 0.15921736 0.77114189 0.43513823 0.15299666 0.76839054 0.43573219 0.14449906
		 0.78892714 -0.20560619 0.16149428 0.77865887 -0.20576535 0.15921736 0.77114189 -0.20620015 0.15299666
		 0.76839054 -0.20679411 0.14449906 0.78892714 -0.23236391 0.16441768 0.77865887 -0.23299141 0.16219196
		 0.77114189 -0.23470542 0.156111 0.76839054 -0.23704679 0.14780432 0.78892714 -0.25809312 0.17307582
		 0.77865887 -0.25928783 0.17104095 0.77114189 -0.26255202 0.16548166 0.76839054 -0.26701096 0.15788752
		 0.78892714 -0.28180552 0.18713573 0.77865887 -0.28346986 0.18537927 0.77114189 -0.28801674 0.18058056
		 0.76839054 -0.29422787 0.17402542 0.78892714 -0.30258977 0.20605725 0.77865887 -0.30461523 0.20462957
		 0.77114189 -0.31014863 0.20072904 0.76839054 -0.31770748 0.19540077 0.78892714 -0.3196466 0.22911322
		 0.77865887 -0.32193211 0.22803706 0.77114189 -0.32817623 0.22509712 0.76839054 -0.3367058 0.22108108
		 0.78892714 -0.33232117 0.2554175 0.77865887 -0.3347795 0.25470015 0.77114189 -0.34149581 0.25274017
		 0.76839054 -0.35067064 0.250063 0.78892714 -0.3401261 0.28395933 0.77865887 -0.34268263 0.28360114
		 0.77114189 -0.34966731 0.28262252 0.76839054 -0.35920861 0.2812857;
	setAttr -s 900 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 1 0 3 2 0 4 3 0 5 4 0 6 5 0 7 6 0 8 7 0 9 8 0
		 9 10 0 11 10 0 12 11 0 13 12 0 14 13 0 15 14 0 16 15 0 17 16 0 18 17 0 18 19 0 20 19 0
		 21 20 0 22 21 0 23 22 0 24 23 0 25 24 0 26 25 0 27 26 0 27 28 0 29 28 0 30 29 0 31 30 0
		 32 31 0 33 32 0 34 33 0 35 34 0 0 35 0 69 68 1 68 36 1 70 69 1 39 71 1 71 70 1 39 38 1
		 43 39 1 38 37 1 37 36 1 36 40 1 43 42 1 123 43 1 42 41 1 41 40 1 40 120 1 97 96 1
		 96 44 1 98 97 1 47 99 1 99 98 1 47 46 1 51 47 1 46 45 1 45 44 1 44 48 1 51 50 1 151 51 1
		 50 49 1 49 48 1 48 148 1 125 124 1 124 52 1 126 125 1 55 127 1 127 126 1 55 54 1
		 59 55 1 54 53 1 53 52 1 52 56 1 59 58 1 179 59 1 58 57 1 57 56 1 56 176 1 65 64 1
		 64 60 1 66 65 1 63 67 1 67 66 1 63 62 1 95 63 1 62 61 1 61 60 1 60 92 1 153 152 1
		 152 64 1 154 153 1 67 155 1 155 154 1 73 72 1 72 68 1 74 73 1 71 75 1 75 74 1 77 76 1
		 76 72 1 78 77 1 75 79 1 79 78 1 81 80 1 80 76 1 82 81 1 79 83 1 83 82 1 85 84 1 84 80 1
		 86 85 1 83 87 1 87 86 1 89 88 1 88 84 1 90 89 1 87 91 1 91 90 1 93 92 1 92 88 1 94 93 1
		 91 95 1 95 94 1 101 100 1 100 96 1 102 101 1 99 103 1 103 102 1 105 104 1 104 100 1
		 106 105 1 103 107 1 107 106 1 109 108 1 108 104 1 110 109 1 107 111 1 111 110 1 113 112 1
		 112 108 1 114 113 1 111 115 1 115 114 1 117 116 1 116 112 1 118 117 1 115 119 1 119 118 1
		 121 120 1 120 116 1 122 121 1 119 123 1 123 122 1 129 128 1 128 124 1 130 129 1 127 131 1
		 131 130 1 133 132 1 132 128 1 134 133 1 131 135 1 135 134 1;
	setAttr ".ed[166:331]" 137 136 1 136 132 1 138 137 1 135 139 1 139 138 1 141 140 1
		 140 136 1 142 141 1 139 143 1 143 142 1 145 144 1 144 140 1 146 145 1 143 147 1 147 146 1
		 149 148 1 148 144 1 150 149 1 147 151 1 151 150 1 157 156 1 156 152 1 158 157 1 155 159 1
		 159 158 1 161 160 1 160 156 1 162 161 1 159 163 1 163 162 1 165 164 1 164 160 1 166 165 1
		 163 167 1 167 166 1 169 168 1 168 164 1 170 169 1 167 171 1 171 170 1 173 172 1 172 168 1
		 174 173 1 171 175 1 175 174 1 177 176 1 176 172 1 178 177 1 175 179 1 179 178 1 38 70 1
		 37 69 1 38 42 1 37 41 1 46 98 1 45 97 1 46 50 1 45 49 1 54 126 1 53 125 1 54 58 1
		 53 57 1 62 66 1 61 65 1 66 154 1 65 153 1 70 74 1 69 73 1 74 78 1 73 77 1 78 82 1
		 77 81 1 82 86 0 81 85 1 86 90 1 85 89 1 90 94 1 89 93 1 62 94 1 61 93 1 98 102 0
		 97 101 1 102 106 1 101 105 1 106 110 1 105 109 1 110 114 1 109 113 1 114 118 1 113 117 1
		 118 122 1 117 121 1 42 122 1 41 121 1 126 130 1 125 129 1 130 134 1 129 133 1 134 138 1
		 133 137 1 138 142 1 137 141 1 142 146 1 141 145 1 146 150 0 145 149 1 50 150 1 49 149 1
		 154 158 1 153 157 1 158 162 1 157 161 1 162 166 0 161 165 1 166 170 1 165 169 1 170 174 1
		 169 173 1 174 178 1 173 177 1 58 178 1 57 177 1 213 212 1 212 180 1 214 213 1 183 215 1
		 215 214 1 183 182 1 187 183 1 182 181 1 181 180 1 180 184 1 187 186 1 267 187 1 186 185 1
		 185 184 1 184 264 1 241 240 1 240 188 1 242 241 1 191 243 1 243 242 1 191 190 1 195 191 1
		 190 189 1 189 188 1 188 192 1 195 194 1 295 195 1 194 193 1 193 192 1 192 292 1 269 268 1
		 268 196 1 270 269 1 199 271 1 271 270 1 199 198 1 203 199 1 198 197 1 197 196 1 196 200 1
		 203 202 1 323 203 1 202 201 1 201 200 1;
	setAttr ".ed[332:497]" 200 320 1 209 208 1 208 204 1 210 209 1 207 211 1 211 210 1
		 207 206 1 239 207 1 206 205 1 205 204 1 204 236 1 297 296 1 296 208 1 298 297 1 211 299 1
		 299 298 1 217 216 1 216 212 1 218 217 1 215 219 1 219 218 1 221 220 1 220 216 1 222 221 1
		 219 223 1 223 222 1 225 224 1 224 220 1 226 225 1 223 227 1 227 226 1 229 228 1 228 224 1
		 230 229 1 227 231 1 231 230 1 233 232 1 232 228 1 234 233 1 231 235 1 235 234 1 237 236 1
		 236 232 1 238 237 1 235 239 1 239 238 1 245 244 1 244 240 1 246 245 1 243 247 1 247 246 1
		 249 248 1 248 244 1 250 249 1 247 251 1 251 250 1 253 252 1 252 248 1 254 253 1 251 255 1
		 255 254 1 257 256 1 256 252 1 258 257 1 255 259 1 259 258 1 261 260 1 260 256 1 262 261 1
		 259 263 1 263 262 1 265 264 1 264 260 1 266 265 1 263 267 1 267 266 1 273 272 1 272 268 1
		 274 273 1 271 275 1 275 274 1 277 276 1 276 272 1 278 277 1 275 279 1 279 278 1 281 280 1
		 280 276 1 282 281 1 279 283 1 283 282 1 285 284 1 284 280 1 286 285 1 283 287 1 287 286 1
		 289 288 1 288 284 1 290 289 1 287 291 1 291 290 1 293 292 1 292 288 1 294 293 1 291 295 1
		 295 294 1 301 300 1 300 296 1 302 301 1 299 303 1 303 302 1 305 304 1 304 300 1 306 305 1
		 303 307 1 307 306 1 309 308 1 308 304 1 310 309 1 307 311 1 311 310 1 313 312 1 312 308 1
		 314 313 1 311 315 1 315 314 1 317 316 1 316 312 1 318 317 1 315 319 1 319 318 1 321 320 1
		 320 316 1 322 321 1 319 323 1 323 322 1 36 183 1 187 40 1 44 191 1 195 48 1 52 199 1
		 203 56 1 64 211 1 207 60 1 68 215 1 72 219 1 76 223 1 80 227 1 84 231 1 88 235 1
		 92 239 1 96 243 1 100 247 1 104 251 1 108 255 1 112 259 1 116 263 1 120 267 1 124 271 1
		 128 275 1 132 279 1 136 283 1 140 287 1 144 291 1 148 295 1 152 299 1;
	setAttr ".ed[498:663]" 156 303 1 160 307 1 164 311 1 168 315 1 172 319 1 176 323 1
		 182 214 0 181 213 1 182 186 1 181 185 0 190 242 0 189 241 1 190 194 0 189 193 1 198 270 0
		 197 269 1 198 202 1 197 201 0 206 210 0 205 209 1 210 298 0 209 297 1 214 218 1 213 217 0
		 218 222 1 217 221 0 222 226 1 221 225 0 226 230 1 225 229 0 230 234 1 229 233 0 234 238 1
		 233 237 0 206 238 1 205 237 0 242 246 1 241 245 0 246 250 0 245 249 1 250 254 0 249 253 1
		 254 258 0 253 257 1 258 262 1 257 261 0 262 266 0 261 265 1 186 266 1 185 265 0 270 274 1
		 269 273 0 274 278 1 273 277 0 278 282 1 277 281 0 282 286 1 281 285 0 286 290 1 285 289 0
		 290 294 1 289 293 0 194 294 1 193 293 0 298 302 1 297 301 0 302 306 0 301 305 1 306 310 0
		 305 309 1 310 314 0 309 313 1 314 318 1 313 317 0 318 322 0 317 321 1 202 322 1 201 321 0
		 329 328 1 328 324 1 330 329 1 327 331 1 331 330 1 327 326 1 467 327 1 326 325 1 325 324 1
		 324 464 1 333 332 1 332 328 1 334 333 1 331 335 1 335 334 1 337 336 1 336 332 1 338 337 1
		 335 339 1 339 338 1 341 340 1 340 336 1 342 341 1 339 343 1 343 342 1 345 344 1 344 340 1
		 346 345 1 343 347 1 347 346 1 349 348 1 348 344 1 350 349 1 347 351 1 351 350 1 353 352 1
		 352 348 1 354 353 1 351 355 1 355 354 1 357 356 1 356 352 1 358 357 1 355 359 1 359 358 1
		 361 360 1 360 356 1 362 361 1 359 363 1 363 362 1 365 364 1 364 360 1 366 365 1 363 367 1
		 367 366 1 369 368 1 368 364 1 370 369 1 367 371 1 371 370 1 373 372 1 372 368 1 374 373 1
		 371 375 1 375 374 1 377 376 1 376 372 1 378 377 1 375 379 1 379 378 1 381 380 1 380 376 1
		 382 381 1 379 383 1 383 382 1 385 384 1 384 380 1 386 385 1 383 387 1 387 386 1 389 388 1
		 388 384 1 390 389 1 387 391 1 391 390 1 393 392 1 392 388 1 394 393 1;
	setAttr ".ed[664:829]" 391 395 1 395 394 1 397 396 1 396 392 1 398 397 1 395 399 1
		 399 398 1 401 400 1 400 396 1 402 401 1 399 403 1 403 402 1 405 404 1 404 400 1 406 405 1
		 403 407 1 407 406 1 409 408 1 408 404 1 410 409 1 407 411 1 411 410 1 413 412 1 412 408 1
		 414 413 1 411 415 1 415 414 1 417 416 1 416 412 1 418 417 1 415 419 1 419 418 1 421 420 1
		 420 416 1 422 421 1 419 423 1 423 422 1 425 424 1 424 420 1 426 425 1 423 427 1 427 426 1
		 429 428 1 428 424 1 430 429 1 427 431 1 431 430 1 433 432 1 432 428 1 434 433 1 431 435 1
		 435 434 1 437 436 1 436 432 1 438 437 1 435 439 1 439 438 1 441 440 1 440 436 1 442 441 1
		 439 443 1 443 442 1 445 444 1 444 440 1 446 445 1 443 447 1 447 446 1 449 448 1 448 444 1
		 450 449 1 447 451 1 451 450 1 453 452 1 452 448 1 454 453 1 451 455 1 455 454 1 457 456 1
		 456 452 1 458 457 1 455 459 1 459 458 1 461 460 1 460 456 1 462 461 1 459 463 1 463 462 1
		 465 464 1 464 460 1 466 465 1 463 467 1 467 466 1 328 1 1 0 324 1 332 2 1 336 3 1
		 340 4 1 344 5 1 348 6 1 352 7 1 356 8 1 360 9 1 364 10 1 368 11 1 372 12 1 376 13 1
		 380 14 1 384 15 1 388 16 1 392 17 1 396 18 1 400 19 1 404 20 1 408 21 1 412 22 1
		 416 23 1 420 24 1 424 25 1 428 26 1 432 27 1 436 28 1 440 29 1 444 30 1 448 31 1
		 452 32 1 456 33 1 460 34 1 464 35 1 63 331 1 327 67 1 95 335 1 91 339 1 87 343 1
		 83 347 1 79 351 1 75 355 1 71 359 1 39 363 1 43 367 1 123 371 1 119 375 1 115 379 1
		 111 383 1 107 387 1 103 391 1 99 395 1 47 399 1 51 403 1 151 407 1 147 411 1 143 415 1
		 139 419 1 135 423 1 131 427 1 127 431 1 55 435 1 59 439 1 179 443 1 175 447 1 171 451 1
		 167 455 1 163 459 1 159 463 1 155 467 1 326 330 1 325 329 1;
	setAttr ".ed[830:899]" 330 334 1 329 333 1 334 338 1 333 337 1 338 342 1 337 341 1
		 342 346 1 341 345 1 346 350 1 345 349 1 350 354 1 349 353 1 354 358 1 353 357 1 358 362 1
		 357 361 1 362 366 1 361 365 1 366 370 1 365 369 1 370 374 1 369 373 1 374 378 1 373 377 1
		 378 382 1 377 381 1 382 386 1 381 385 1 386 390 1 385 389 1 390 394 1 389 393 1 394 398 1
		 393 397 1 398 402 1 397 401 1 402 406 1 401 405 1 406 410 1 405 409 1 410 414 1 409 413 1
		 414 418 1 413 417 1 418 422 1 417 421 1 422 426 1 421 425 1 426 430 1 425 429 1 430 434 1
		 429 433 1 434 438 1 433 437 1 438 442 1 437 441 1 442 446 1 441 445 1 446 450 1 445 449 1
		 450 454 1 449 453 1 454 458 1 453 457 1 458 462 1 457 461 1 462 466 1 461 465 1 326 466 1
		 325 465 1;
	setAttr -s 433 -ch 1764 ".fc[0:432]" -type "polyFaces" 
		f 4 -42 39 40 -217
		mu 0 4 2 397 395 24
		f 4 -45 217 36 37
		mu 0 4 126 1 23 134
		f 4 -44 216 38 -218
		mu 0 4 1 2 24 23
		f 4 41 218 -47 42
		mu 0 4 397 2 4 399
		f 4 43 219 -49 -219
		mu 0 4 2 1 3 4
		f 4 44 45 -50 -220
		mu 0 4 1 126 164 3
		f 4 -57 54 55 -221
		mu 0 4 7 415 413 43
		f 4 -60 221 51 52
		mu 0 4 128 5 42 150
		f 4 -59 220 53 -222
		mu 0 4 5 6 44 42
		f 4 56 222 -62 57
		mu 0 4 415 7 10 417
		f 4 58 223 -64 -223
		mu 0 4 6 5 8 9
		f 4 59 60 -65 -224
		mu 0 4 5 128 180 8
		f 4 -72 69 70 -225
		mu 0 4 13 433 431 60
		f 4 -75 225 66 67
		mu 0 4 130 11 59 166
		f 4 -74 224 68 -226
		mu 0 4 11 12 61 59
		f 4 71 226 -77 72
		mu 0 4 433 13 16 435
		f 4 73 227 -79 -227
		mu 0 4 12 11 14 15
		f 4 74 75 -80 -228
		mu 0 4 11 130 196 14
		f 4 -87 84 85 -229
		mu 0 4 19 381 451 21
		f 4 -90 229 81 82
		mu 0 4 148 17 20 132
		f 4 -89 228 83 -230
		mu 0 4 17 18 22 20
		f 4 -86 94 95 -231
		mu 0 4 21 451 449 81
		f 4 -82 231 91 92
		mu 0 4 132 20 80 182
		f 4 -84 230 93 -232
		mu 0 4 20 22 82 80
		f 4 -41 99 100 -233
		mu 0 4 24 395 393 26
		f 4 -37 233 96 97
		mu 0 4 134 23 25 136
		f 4 -39 232 98 -234
		mu 0 4 23 24 26 25
		f 4 -101 104 105 -235
		mu 0 4 26 393 391 28
		f 4 -97 235 101 102
		mu 0 4 136 25 27 138
		f 4 -99 234 103 -236
		mu 0 4 25 26 28 27
		f 4 -106 109 110 -237
		mu 0 4 28 391 389 31
		f 4 -102 237 106 107
		mu 0 4 138 27 30 140
		f 4 -104 236 108 -238
		mu 0 4 27 28 31 30
		f 4 -111 114 115 -239
		mu 0 4 31 389 387 34
		f 4 -107 239 111 112
		mu 0 4 0 29 33 142
		f 4 -109 238 113 -240
		mu 0 4 29 32 35 33
		f 4 -116 119 120 -241
		mu 0 4 34 387 385 37
		f 4 -112 241 116 117
		mu 0 4 142 33 36 144
		f 4 -114 240 118 -242
		mu 0 4 33 35 38 36
		f 4 -121 124 125 -243
		mu 0 4 37 385 383 40
		f 4 -117 243 121 122
		mu 0 4 144 36 39 146
		f 4 -119 242 123 -244
		mu 0 4 36 38 41 39
		f 4 86 244 -126 87
		mu 0 4 381 19 40 383
		f 4 88 245 -124 -245
		mu 0 4 18 17 39 41
		f 4 89 90 -122 -246
		mu 0 4 17 148 146 39
		f 4 -56 129 130 -247
		mu 0 4 43 413 411 46
		f 4 -52 247 126 127
		mu 0 4 150 42 45 152
		f 4 -54 246 128 -248
		mu 0 4 42 44 47 45
		f 4 -131 134 135 -249
		mu 0 4 46 411 409 49
		f 4 -127 249 131 132
		mu 0 4 152 45 48 154
		f 4 -129 248 133 -250
		mu 0 4 45 47 50 48
		f 4 -136 139 140 -251
		mu 0 4 49 409 407 52
		f 4 -132 251 136 137
		mu 0 4 154 48 51 156
		f 4 -134 250 138 -252
		mu 0 4 48 50 52 51
		f 4 -141 144 145 -253
		mu 0 4 52 407 405 54
		f 4 -137 253 141 142
		mu 0 4 156 51 53 158
		f 4 -139 252 143 -254
		mu 0 4 51 52 54 53
		f 4 -146 149 150 -255
		mu 0 4 54 405 403 56
		f 4 -142 255 146 147
		mu 0 4 158 53 55 160
		f 4 -144 254 148 -256
		mu 0 4 53 54 56 55
		f 4 -151 154 155 -257
		mu 0 4 56 403 401 58
		f 4 -147 257 151 152
		mu 0 4 160 55 57 162
		f 4 -149 256 153 -258
		mu 0 4 55 56 58 57
		f 4 46 258 -156 47
		mu 0 4 399 4 58 401
		f 4 48 259 -154 -259
		mu 0 4 4 3 57 58
		f 4 49 50 -152 -260
		mu 0 4 3 164 162 57
		f 4 -71 159 160 -261
		mu 0 4 60 431 429 63
		f 4 -67 261 156 157
		mu 0 4 166 59 62 168
		f 4 -69 260 158 -262
		mu 0 4 59 61 64 62
		f 4 -161 164 165 -263
		mu 0 4 63 429 427 66
		f 4 -157 263 161 162
		mu 0 4 168 62 65 170
		f 4 -159 262 163 -264
		mu 0 4 62 64 67 65
		f 4 -166 169 170 -265
		mu 0 4 66 427 425 69
		f 4 -162 265 166 167
		mu 0 4 170 65 68 172
		f 4 -164 264 168 -266
		mu 0 4 65 67 70 68
		f 4 -171 174 175 -267
		mu 0 4 69 425 423 72
		f 4 -167 267 171 172
		mu 0 4 172 68 71 174
		f 4 -169 266 173 -268
		mu 0 4 68 70 73 71
		f 4 -176 179 180 -269
		mu 0 4 72 423 421 75
		f 4 -172 269 176 177
		mu 0 4 174 71 74 176
		f 4 -174 268 178 -270
		mu 0 4 71 73 76 74
		f 4 -181 184 185 -271
		mu 0 4 75 421 419 78
		f 4 -177 271 181 182
		mu 0 4 176 74 77 178
		f 4 -179 270 183 -272
		mu 0 4 74 76 79 77
		f 4 61 272 -186 62
		mu 0 4 417 10 78 419
		f 4 63 273 -184 -273
		mu 0 4 9 8 77 79
		f 4 64 65 -182 -274
		mu 0 4 8 180 178 77
		f 4 -96 189 190 -275
		mu 0 4 81 449 447 84
		f 4 -92 275 186 187
		mu 0 4 182 80 83 184
		f 4 -94 274 188 -276
		mu 0 4 80 82 85 83
		f 4 -191 194 195 -277
		mu 0 4 84 447 445 87
		f 4 -187 277 191 192
		mu 0 4 184 83 86 186
		f 4 -189 276 193 -278
		mu 0 4 83 85 88 86
		f 4 -196 199 200 -279
		mu 0 4 87 445 443 90
		f 4 -192 279 196 197
		mu 0 4 186 86 89 188
		f 4 -194 278 198 -280
		mu 0 4 86 88 91 89
		f 4 -201 204 205 -281
		mu 0 4 90 443 441 93
		f 4 -197 281 201 202
		mu 0 4 188 89 92 190
		f 4 -199 280 203 -282
		mu 0 4 89 91 94 92
		f 4 -206 209 210 -283
		mu 0 4 93 441 439 96
		f 4 -202 283 206 207
		mu 0 4 190 92 95 192
		f 4 -204 282 208 -284
		mu 0 4 92 94 97 95
		f 4 -211 214 215 -285
		mu 0 4 96 439 437 99
		f 4 -207 285 211 212
		mu 0 4 192 95 98 194
		f 4 -209 284 213 -286
		mu 0 4 95 97 100 98
		f 4 76 286 -216 77
		mu 0 4 435 16 99 437
		f 4 78 287 -214 -287
		mu 0 4 15 14 98 100
		f 4 79 80 -212 -288
		mu 0 4 14 196 194 98
		f 36 -320 -410 -415 -420 -425 -430 -435 -318 -313 -305 -380 -385 -390 -395 -400 -405
		 -303 -298 -290 -350 -355 -360 -365 -370 -375 -343 -335 -345 -440 -445 -450 -455 -460
		 -465 -333 -328
		mu 0 36 200 101 102 103 104 105 106 206 207 199 107 108 109 110 111 112 204 205 198 113
		 114 115 116 117 118 202 203 119 120 121 122 123 124 125 208 209
		f 4 468 -295 469 -46
		mu 0 4 126 135 127 164
		f 4 470 -310 471 -61
		mu 0 4 128 151 129 180
		f 4 472 -325 473 -76
		mu 0 4 130 167 131 196
		f 4 474 -337 475 -83
		mu 0 4 132 183 133 148
		f 4 -38 476 -292 -469
		mu 0 4 126 134 137 135
		f 4 -98 477 -352 -477
		mu 0 4 134 136 139 137
		f 4 -103 478 -357 -478
		mu 0 4 136 138 141 139
		f 4 -108 479 -362 -479
		mu 0 4 138 140 201 141
		f 4 -113 480 -367 -480
		mu 0 4 0 142 145 143
		f 4 -118 481 -372 -481
		mu 0 4 142 144 147 145
		f 4 -123 482 -377 -482
		mu 0 4 144 146 149 147
		f 4 -91 -476 -340 -483
		mu 0 4 146 148 133 149
		f 4 -53 483 -307 -471
		mu 0 4 128 150 153 151
		f 4 -128 484 -382 -484
		mu 0 4 150 152 155 153
		f 4 -133 485 -387 -485
		mu 0 4 152 154 157 155
		f 4 -138 486 -392 -486
		mu 0 4 154 156 159 157
		f 4 -143 487 -397 -487
		mu 0 4 156 158 161 159
		f 4 -148 488 -402 -488
		mu 0 4 158 160 163 161
		f 4 -153 489 -407 -489
		mu 0 4 160 162 165 163
		f 4 -51 -470 -300 -490
		mu 0 4 162 164 127 165
		f 4 -68 490 -322 -473
		mu 0 4 130 166 169 167
		f 4 -158 491 -412 -491
		mu 0 4 166 168 171 169
		f 4 -163 492 -417 -492
		mu 0 4 168 170 173 171
		f 4 -168 493 -422 -493
		mu 0 4 170 172 175 173
		f 4 -173 494 -427 -494
		mu 0 4 172 174 177 175
		f 4 -178 495 -432 -495
		mu 0 4 174 176 179 177
		f 4 -183 496 -437 -496
		mu 0 4 176 178 181 179
		f 4 -66 -472 -315 -497
		mu 0 4 178 180 129 181
		f 4 -93 497 -347 -475
		mu 0 4 132 182 185 183
		f 4 -188 498 -442 -498
		mu 0 4 182 184 187 185
		f 4 -193 499 -447 -499
		mu 0 4 184 186 189 187
		f 4 -198 500 -452 -500
		mu 0 4 186 188 191 189
		f 4 -203 501 -457 -501
		mu 0 4 188 190 193 191
		f 4 -208 502 -462 -502
		mu 0 4 190 192 195 193
		f 4 -213 503 -467 -503
		mu 0 4 192 194 197 195
		f 4 -81 -474 -330 -504
		mu 0 4 194 196 131 197
		f 4 -294 291 292 -505
		mu 0 4 211 135 137 233
		f 4 -297 505 288 289
		mu 0 4 198 210 232 113
		f 4 -296 504 290 -506
		mu 0 4 210 211 233 232
		f 4 293 506 -299 294
		mu 0 4 135 211 213 127
		f 4 295 507 -301 -507
		mu 0 4 211 210 212 213
		f 4 296 297 -302 -508
		mu 0 4 210 198 205 212
		f 4 -309 306 307 -509
		mu 0 4 216 151 153 251
		f 4 -312 509 303 304
		mu 0 4 199 214 250 107
		f 4 -311 508 305 -510
		mu 0 4 214 215 252 250
		f 4 308 510 -314 309
		mu 0 4 151 216 219 129
		f 4 310 511 -316 -511
		mu 0 4 215 214 217 218
		f 4 311 312 -317 -512
		mu 0 4 214 199 207 217
		f 4 -324 321 322 -513
		mu 0 4 222 167 169 268
		f 4 -327 513 318 319
		mu 0 4 200 220 267 101
		f 4 -326 512 320 -514
		mu 0 4 220 221 269 267
		f 4 323 514 -329 324
		mu 0 4 167 222 225 131
		f 4 325 515 -331 -515
		mu 0 4 221 220 223 224
		f 4 326 327 -332 -516
		mu 0 4 220 200 209 223
		f 4 -339 336 337 -517
		mu 0 4 228 133 183 230
		f 4 -342 517 333 334
		mu 0 4 203 226 229 119
		f 4 -341 516 335 -518
		mu 0 4 226 227 231 229
		f 4 -338 346 347 -519
		mu 0 4 230 183 185 289
		f 4 -334 519 343 344
		mu 0 4 119 229 288 120
		f 4 -336 518 345 -520
		mu 0 4 229 231 290 288
		f 4 -293 351 352 -521
		mu 0 4 233 137 139 235
		f 4 -289 521 348 349
		mu 0 4 113 232 234 114
		f 4 -291 520 350 -522
		mu 0 4 232 233 235 234
		f 4 -353 356 357 -523
		mu 0 4 235 139 141 237
		f 4 -349 523 353 354
		mu 0 4 114 234 236 115
		f 4 -351 522 355 -524
		mu 0 4 234 235 237 236
		f 4 -358 361 362 -525
		mu 0 4 237 141 201 240
		f 4 -354 525 358 359
		mu 0 4 115 236 238 116
		f 4 -356 524 360 -526
		mu 0 4 236 237 240 238
		f 4 -363 366 367 -527
		mu 0 4 239 143 145 242
		f 4 -359 527 363 364
		mu 0 4 116 238 241 117
		f 4 -361 526 365 -528
		mu 0 4 238 240 243 241
		f 4 -368 371 372 -529
		mu 0 4 242 145 147 245
		f 4 -364 529 368 369
		mu 0 4 117 241 244 118
		f 4 -366 528 370 -530
		mu 0 4 241 243 246 244
		f 4 -373 376 377 -531
		mu 0 4 245 147 149 248
		f 4 -369 531 373 374
		mu 0 4 118 244 247 202
		f 4 -371 530 375 -532
		mu 0 4 244 246 249 247
		f 4 338 532 -378 339
		mu 0 4 133 228 248 149
		f 4 340 533 -376 -533
		mu 0 4 227 226 247 249
		f 4 341 342 -374 -534
		mu 0 4 226 203 202 247
		f 4 -308 381 382 -535
		mu 0 4 251 153 155 254
		f 4 -304 535 378 379
		mu 0 4 107 250 253 108
		f 4 -306 534 380 -536
		mu 0 4 250 252 255 253
		f 4 -383 386 387 -537
		mu 0 4 254 155 157 257
		f 4 -379 537 383 384
		mu 0 4 108 253 256 109
		f 4 -381 536 385 -538
		mu 0 4 253 255 258 256
		f 4 -388 391 392 -539
		mu 0 4 257 157 159 260
		f 4 -384 539 388 389
		mu 0 4 109 256 259 110
		f 4 -386 538 390 -540
		mu 0 4 256 258 260 259
		f 4 -393 396 397 -541
		mu 0 4 260 159 161 262
		f 4 -389 541 393 394
		mu 0 4 110 259 261 111
		f 4 -391 540 395 -542
		mu 0 4 259 260 262 261
		f 4 -398 401 402 -543
		mu 0 4 262 161 163 264
		f 4 -394 543 398 399
		mu 0 4 111 261 263 112
		f 4 -396 542 400 -544
		mu 0 4 261 262 264 263
		f 4 -403 406 407 -545
		mu 0 4 264 163 165 266
		f 4 -399 545 403 404
		mu 0 4 112 263 265 204
		f 4 -401 544 405 -546
		mu 0 4 263 264 266 265
		f 4 298 546 -408 299
		mu 0 4 127 213 266 165
		f 4 300 547 -406 -547
		mu 0 4 213 212 265 266
		f 4 301 302 -404 -548
		mu 0 4 212 205 204 265
		f 4 -323 411 412 -549
		mu 0 4 268 169 171 271
		f 4 -319 549 408 409
		mu 0 4 101 267 270 102
		f 4 -321 548 410 -550
		mu 0 4 267 269 272 270
		f 4 -413 416 417 -551
		mu 0 4 271 171 173 274
		f 4 -409 551 413 414
		mu 0 4 102 270 273 103
		f 4 -411 550 415 -552
		mu 0 4 270 272 275 273
		f 4 -418 421 422 -553
		mu 0 4 274 173 175 277
		f 4 -414 553 418 419
		mu 0 4 103 273 276 104
		f 4 -416 552 420 -554
		mu 0 4 273 275 278 276
		f 4 -423 426 427 -555
		mu 0 4 277 175 177 280
		f 4 -419 555 423 424
		mu 0 4 104 276 279 105
		f 4 -421 554 425 -556
		mu 0 4 276 278 281 279
		f 4 -428 431 432 -557
		mu 0 4 280 177 179 283
		f 4 -424 557 428 429
		mu 0 4 105 279 282 106
		f 4 -426 556 430 -558
		mu 0 4 279 281 284 282
		f 4 -433 436 437 -559
		mu 0 4 283 179 181 286
		f 4 -429 559 433 434
		mu 0 4 106 282 285 206
		f 4 -431 558 435 -560
		mu 0 4 282 284 287 285
		f 4 313 560 -438 314
		mu 0 4 129 219 286 181
		f 4 315 561 -436 -561
		mu 0 4 218 217 285 287
		f 4 316 317 -434 -562
		mu 0 4 217 207 206 285
		f 4 -348 441 442 -563
		mu 0 4 289 185 187 292
		f 4 -344 563 438 439
		mu 0 4 120 288 291 121
		f 4 -346 562 440 -564
		mu 0 4 288 290 293 291
		f 4 -443 446 447 -565
		mu 0 4 292 187 189 295
		f 4 -439 565 443 444
		mu 0 4 121 291 294 122
		f 4 -441 564 445 -566
		mu 0 4 291 293 296 294
		f 4 -448 451 452 -567
		mu 0 4 295 189 191 298
		f 4 -444 567 448 449
		mu 0 4 122 294 297 123
		f 4 -446 566 450 -568
		mu 0 4 294 296 299 297
		f 4 -453 456 457 -569
		mu 0 4 298 191 193 301
		f 4 -449 569 453 454
		mu 0 4 123 297 300 124
		f 4 -451 568 455 -570
		mu 0 4 297 299 302 300
		f 4 -458 461 462 -571
		mu 0 4 301 193 195 304
		f 4 -454 571 458 459
		mu 0 4 124 300 303 125
		f 4 -456 570 460 -572
		mu 0 4 300 302 305 303
		f 4 -463 466 467 -573
		mu 0 4 304 195 197 307
		f 4 -459 573 463 464
		mu 0 4 125 303 306 208
		f 4 -461 572 465 -574
		mu 0 4 303 305 308 306
		f 4 328 574 -468 329
		mu 0 4 131 225 307 197
		f 4 330 575 -466 -575
		mu 0 4 224 223 306 308
		f 4 331 332 -464 -576
		mu 0 4 223 209 208 306
		f 4 -578 756 -1 757
		mu 0 4 379 309 310 380
		f 4 -588 758 1 -757
		mu 0 4 309 311 312 310
		f 4 -593 759 2 -759
		mu 0 4 311 313 314 312
		f 4 -598 760 3 -760
		mu 0 4 313 315 316 314
		f 4 -603 761 4 -761
		mu 0 4 315 317 318 316
		f 4 -608 762 5 -762
		mu 0 4 317 319 320 318
		f 4 -613 763 6 -763
		mu 0 4 319 321 322 320
		f 4 -618 764 7 -764
		mu 0 4 321 323 324 322
		f 4 -623 765 8 -765
		mu 0 4 323 325 326 324
		f 4 -628 766 -10 -766
		mu 0 4 325 327 328 326
		f 4 -633 767 10 -767
		mu 0 4 327 329 330 328
		f 4 -638 768 11 -768
		mu 0 4 329 331 332 330
		f 4 -643 769 12 -769
		mu 0 4 331 333 334 332
		f 4 -648 770 13 -770
		mu 0 4 333 335 336 334
		f 4 -653 771 14 -771
		mu 0 4 335 337 338 336
		f 4 -658 772 15 -772
		mu 0 4 337 339 340 338
		f 4 -663 773 16 -773
		mu 0 4 339 341 342 340
		f 4 -668 774 17 -774
		mu 0 4 341 343 344 342
		f 4 -673 775 -19 -775
		mu 0 4 343 345 346 344
		f 4 -678 776 19 -776
		mu 0 4 345 347 348 346
		f 4 -683 777 20 -777
		mu 0 4 347 349 350 348
		f 4 -688 778 21 -778
		mu 0 4 349 351 352 350
		f 4 -693 779 22 -779
		mu 0 4 351 353 354 352
		f 4 -698 780 23 -780
		mu 0 4 353 355 356 354
		f 4 -703 781 24 -781
		mu 0 4 355 357 358 356
		f 4 -708 782 25 -782
		mu 0 4 357 359 360 358
		f 4 -713 783 26 -783
		mu 0 4 359 361 362 360
		f 4 -718 784 -28 -784
		mu 0 4 361 363 364 362
		f 4 -723 785 28 -785
		mu 0 4 363 365 366 364
		f 4 -728 786 29 -786
		mu 0 4 365 367 368 366
		f 4 -733 787 30 -787
		mu 0 4 367 369 370 368
		f 4 -738 788 31 -788
		mu 0 4 369 371 372 370
		f 4 -743 789 32 -789
		mu 0 4 371 373 374 372
		f 4 -748 790 33 -790
		mu 0 4 373 375 376 374
		f 4 -753 791 34 -791
		mu 0 4 375 377 378 376
		f 4 -586 -758 35 -792
		mu 0 4 377 379 380 378
		f 4 -85 792 -580 793
		mu 0 4 451 381 384 382
		f 4 -88 794 -590 -793
		mu 0 4 381 383 386 384
		f 4 -125 795 -595 -795
		mu 0 4 383 385 388 386
		f 4 -120 796 -600 -796
		mu 0 4 385 387 390 388
		f 4 -115 797 -605 -797
		mu 0 4 387 389 392 390
		f 4 -110 798 -610 -798
		mu 0 4 389 391 394 392
		f 4 -105 799 -615 -799
		mu 0 4 391 393 396 394
		f 4 -100 800 -620 -800
		mu 0 4 393 395 398 396
		f 4 -40 801 -625 -801
		mu 0 4 395 397 400 398
		f 4 -43 802 -630 -802
		mu 0 4 397 399 402 400
		f 4 -48 803 -635 -803
		mu 0 4 399 401 404 402
		f 4 -155 804 -640 -804
		mu 0 4 401 403 406 404
		f 4 -150 805 -645 -805
		mu 0 4 403 405 408 406
		f 4 -145 806 -650 -806
		mu 0 4 405 407 410 408
		f 4 -140 807 -655 -807
		mu 0 4 407 409 412 410
		f 4 -135 808 -660 -808
		mu 0 4 409 411 414 412
		f 4 -130 809 -665 -809
		mu 0 4 411 413 416 414
		f 4 -55 810 -670 -810
		mu 0 4 413 415 418 416
		f 4 -58 811 -675 -811
		mu 0 4 415 417 420 418
		f 4 -63 812 -680 -812
		mu 0 4 417 419 422 420
		f 4 -185 813 -685 -813
		mu 0 4 419 421 424 422
		f 4 -180 814 -690 -814
		mu 0 4 421 423 426 424
		f 4 -175 815 -695 -815
		mu 0 4 423 425 428 426
		f 4 -170 816 -700 -816
		mu 0 4 425 427 430 428
		f 4 -165 817 -705 -817
		mu 0 4 427 429 432 430
		f 4 -160 818 -710 -818
		mu 0 4 429 431 434 432
		f 4 -70 819 -715 -819
		mu 0 4 431 433 436 434
		f 4 -73 820 -720 -820
		mu 0 4 433 435 438 436
		f 4 -78 821 -725 -821
		mu 0 4 435 437 440 438
		f 4 -215 822 -730 -822
		mu 0 4 437 439 442 440
		f 4 -210 823 -735 -823
		mu 0 4 439 441 444 442
		f 4 -205 824 -740 -824
		mu 0 4 441 443 446 444
		f 4 -200 825 -745 -825
		mu 0 4 443 445 448 446
		f 4 -195 826 -750 -826
		mu 0 4 445 447 450 448
		f 4 -190 827 -755 -827
		mu 0 4 447 449 452 450
		f 4 -95 -794 -583 -828
		mu 0 4 449 451 382 452
		f 4 -582 579 580 -829
		mu 0 4 454 382 384 456
		f 4 -585 829 576 577
		mu 0 4 379 453 455 309
		f 4 -584 828 578 -830
		mu 0 4 453 454 456 455
		f 4 -581 589 590 -831
		mu 0 4 456 384 386 458
		f 4 -577 831 586 587
		mu 0 4 309 455 457 311
		f 4 -579 830 588 -832
		mu 0 4 455 456 458 457
		f 4 -591 594 595 -833
		mu 0 4 458 386 388 460
		f 4 -587 833 591 592
		mu 0 4 311 457 459 313
		f 4 -589 832 593 -834
		mu 0 4 457 458 460 459
		f 4 -596 599 600 -835
		mu 0 4 460 388 390 462
		f 4 -592 835 596 597
		mu 0 4 313 459 461 315
		f 4 -594 834 598 -836
		mu 0 4 459 460 462 461
		f 4 -601 604 605 -837
		mu 0 4 462 390 392 464
		f 4 -597 837 601 602
		mu 0 4 315 461 463 317
		f 4 -599 836 603 -838
		mu 0 4 461 462 464 463
		f 4 -606 609 610 -839
		mu 0 4 464 392 394 466
		f 4 -602 839 606 607
		mu 0 4 317 463 465 319
		f 4 -604 838 608 -840
		mu 0 4 463 464 466 465
		f 4 -611 614 615 -841
		mu 0 4 466 394 396 468
		f 4 -607 841 611 612
		mu 0 4 319 465 467 321
		f 4 -609 840 613 -842
		mu 0 4 465 466 468 467
		f 4 -616 619 620 -843
		mu 0 4 468 396 398 470
		f 4 -612 843 616 617
		mu 0 4 321 467 469 323
		f 4 -614 842 618 -844
		mu 0 4 467 468 470 469
		f 4 -621 624 625 -845
		mu 0 4 470 398 400 472
		f 4 -617 845 621 622
		mu 0 4 323 469 471 325
		f 4 -619 844 623 -846
		mu 0 4 469 470 472 471
		f 4 -626 629 630 -847
		mu 0 4 472 400 402 474
		f 4 -622 847 626 627
		mu 0 4 325 471 473 327
		f 4 -624 846 628 -848
		mu 0 4 471 472 474 473
		f 4 -631 634 635 -849
		mu 0 4 474 402 404 476
		f 4 -627 849 631 632
		mu 0 4 327 473 475 329
		f 4 -629 848 633 -850
		mu 0 4 473 474 476 475
		f 4 -636 639 640 -851
		mu 0 4 476 404 406 478
		f 4 -632 851 636 637
		mu 0 4 329 475 477 331
		f 4 -634 850 638 -852
		mu 0 4 475 476 478 477
		f 4 -641 644 645 -853
		mu 0 4 478 406 408 480
		f 4 -637 853 641 642
		mu 0 4 331 477 479 333
		f 4 -639 852 643 -854
		mu 0 4 477 478 480 479
		f 4 -646 649 650 -855
		mu 0 4 480 408 410 482
		f 4 -642 855 646 647
		mu 0 4 333 479 481 335
		f 4 -644 854 648 -856
		mu 0 4 479 480 482 481
		f 4 -651 654 655 -857
		mu 0 4 482 410 412 484
		f 4 -647 857 651 652
		mu 0 4 335 481 483 337
		f 4 -649 856 653 -858
		mu 0 4 481 482 484 483
		f 4 -656 659 660 -859
		mu 0 4 484 412 414 486
		f 4 -652 859 656 657
		mu 0 4 337 483 485 339
		f 4 -654 858 658 -860
		mu 0 4 483 484 486 485
		f 4 -661 664 665 -861
		mu 0 4 486 414 416 488
		f 4 -657 861 661 662
		mu 0 4 339 485 487 341
		f 4 -659 860 663 -862
		mu 0 4 485 486 488 487
		f 4 -666 669 670 -863
		mu 0 4 488 416 418 490
		f 4 -662 863 666 667
		mu 0 4 341 487 489 343
		f 4 -664 862 668 -864
		mu 0 4 487 488 490 489
		f 4 -671 674 675 -865
		mu 0 4 490 418 420 492
		f 4 -667 865 671 672
		mu 0 4 343 489 491 345
		f 4 -669 864 673 -866
		mu 0 4 489 490 492 491
		f 4 -676 679 680 -867
		mu 0 4 492 420 422 494
		f 4 -672 867 676 677
		mu 0 4 345 491 493 347
		f 4 -674 866 678 -868
		mu 0 4 491 492 494 493
		f 4 -681 684 685 -869
		mu 0 4 494 422 424 496
		f 4 -677 869 681 682
		mu 0 4 347 493 495 349
		f 4 -679 868 683 -870
		mu 0 4 493 494 496 495
		f 4 -686 689 690 -871
		mu 0 4 496 424 426 498
		f 4 -682 871 686 687
		mu 0 4 349 495 497 351
		f 4 -684 870 688 -872
		mu 0 4 495 496 498 497
		f 4 -691 694 695 -873
		mu 0 4 498 426 428 500
		f 4 -687 873 691 692
		mu 0 4 351 497 499 353
		f 4 -689 872 693 -874
		mu 0 4 497 498 500 499
		f 4 -696 699 700 -875
		mu 0 4 500 428 430 502
		f 4 -692 875 696 697
		mu 0 4 353 499 501 355
		f 4 -694 874 698 -876
		mu 0 4 499 500 502 501
		f 4 -701 704 705 -877
		mu 0 4 502 430 432 504
		f 4 -697 877 701 702
		mu 0 4 355 501 503 357
		f 4 -699 876 703 -878
		mu 0 4 501 502 504 503
		f 4 -706 709 710 -879
		mu 0 4 504 432 434 506
		f 4 -702 879 706 707
		mu 0 4 357 503 505 359
		f 4 -704 878 708 -880
		mu 0 4 503 504 506 505
		f 4 -711 714 715 -881
		mu 0 4 506 434 436 508
		f 4 -707 881 711 712
		mu 0 4 359 505 507 361
		f 4 -709 880 713 -882
		mu 0 4 505 506 508 507
		f 4 -716 719 720 -883
		mu 0 4 508 436 438 510
		f 4 -712 883 716 717
		mu 0 4 361 507 509 363
		f 4 -714 882 718 -884
		mu 0 4 507 508 510 509
		f 4 -721 724 725 -885
		mu 0 4 510 438 440 512
		f 4 -717 885 721 722
		mu 0 4 363 509 511 365
		f 4 -719 884 723 -886
		mu 0 4 509 510 512 511
		f 4 -726 729 730 -887
		mu 0 4 512 440 442 514
		f 4 -722 887 726 727
		mu 0 4 365 511 513 367
		f 4 -724 886 728 -888
		mu 0 4 511 512 514 513
		f 4 -731 734 735 -889
		mu 0 4 514 442 444 516
		f 4 -727 889 731 732
		mu 0 4 367 513 515 369
		f 4 -729 888 733 -890
		mu 0 4 513 514 516 515
		f 4 -736 739 740 -891
		mu 0 4 516 444 446 518
		f 4 -732 891 736 737
		mu 0 4 369 515 517 371
		f 4 -734 890 738 -892
		mu 0 4 515 516 518 517
		f 4 -741 744 745 -893
		mu 0 4 518 446 448 520
		f 4 -737 893 741 742
		mu 0 4 371 517 519 373
		f 4 -739 892 743 -894
		mu 0 4 517 518 520 519
		f 4 -746 749 750 -895
		mu 0 4 520 448 450 522
		f 4 -742 895 746 747
		mu 0 4 373 519 521 375
		f 4 -744 894 748 -896
		mu 0 4 519 520 522 521
		f 4 -751 754 755 -897
		mu 0 4 522 450 452 524
		f 4 -747 897 751 752
		mu 0 4 375 521 523 377
		f 4 -749 896 753 -898
		mu 0 4 521 522 524 523
		f 4 581 898 -756 582
		mu 0 4 382 454 524 452
		f 4 583 899 -754 -899
		mu 0 4 454 453 523 524
		f 4 584 585 -752 -900
		mu 0 4 453 379 377 523;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TVScreen" -p "TVBody";
	rename -uid "D4B04307-45AF-7343-9ED8-41AD23F4C5F0";
	setAttr ".rp" -type "double3" 1.957804477784147 1.139540426979647 0.3466170608165916 ;
	setAttr ".sp" -type "double3" 1.957804477784147 1.139540426979647 0.3466170608165916 ;
createNode mesh -n "TVScreenShape" -p "TVScreen";
	rename -uid "68D38AFD-4486-80C5-524B-A08590A4BF89";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 36 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 112 ".uvst[0].uvsp[0:111]" -type "float2" 0 0 1 0 1 1 0 1 0
		 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1
		 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1
		 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0
		 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt[0:39]" -type "float3"  2.0035591 1.1402376 0.26835471 
		2.0035591 1.1402376 0.42487943 2.0035591 1.1388433 0.42487943 2.0035591 1.1388433 
		0.26835471 2.0035591 1.1405327 0.26863199 2.0035591 1.1405327 0.42460209 2.0035591 
		1.140527 0.43112159 2.0035591 1.1405101 0.43739045 2.0035591 1.1404827 0.44316781 
		2.0035591 1.1404456 0.44823182 2.0035591 1.1404005 0.45238775 2.0035591 1.140349 
		0.45547581 2.0035591 1.1402932 0.45737737 2.0035591 1.1402352 0.4580195 2.0035591 
		1.1388457 0.4580195 2.0035591 1.1387877 0.45737737 2.0035591 1.1387318 0.45547581 
		2.0035591 1.1386803 0.45238775 2.0035591 1.1386352 0.44823182 2.0035591 1.1385982 
		0.44316781 2.0035591 1.1385707 0.43739045 2.0035591 1.1385537 0.43112159 2.0035591 
		1.138548 0.42460209 2.0035591 1.138548 0.26863199 2.0035591 1.1385537 0.26211253 
		2.0035591 1.1385707 0.2558437 2.0035591 1.1385982 0.25006631 2.0035591 1.1386352 
		0.2450023 2.0035591 1.1386803 0.2408464 2.0035591 1.1387318 0.23775834 2.0035591 
		1.1387877 0.23585668 2.0035591 1.1388457 0.23521453 2.0035591 1.1402352 0.23521453 
		2.0035591 1.1402932 0.23585668 2.0035591 1.140349 0.23775834 2.0035591 1.1404005 
		0.2408464 2.0035591 1.1404456 0.2450023 2.0035591 1.1404827 0.25006631 2.0035591 
		1.1405101 0.2558437 2.0035591 1.140527 0.26211253;
	setAttr -s 40 ".vt[0:39]"  -0.4416756 -0.30770636 -0.30770627 -0.4416756 -0.30770636 0.30770627
		 -0.4416756 0.30770636 0.30770627 -0.4416756 0.30770636 -0.30770627 -0.44167554 -0.43800402 -0.30661595
		 -0.44167554 -0.43800402 0.30661595 -0.44167554 -0.43547946 0.33224851 -0.44167554 -0.42800272 0.35689601
		 -0.44167554 -0.41586113 0.37961125 -0.44167554 -0.39952141 0.39952135 -0.44167554 -0.37961119 0.41586113
		 -0.44167554 -0.35689598 0.42800269 -0.44167554 -0.33224851 0.43547943 -0.44167554 -0.30661607 0.43800399
		 -0.44167554 0.30661595 0.43800399 -0.44167554 0.33224857 0.43547943 -0.44167554 0.35689592 0.42800269
		 -0.44167554 0.37961125 0.41586113 -0.44167554 0.39952159 0.39952135 -0.44167554 0.41586113 0.37961125
		 -0.44167554 0.4280026 0.35689601 -0.44167554 0.43547964 0.33224851 -0.44167554 0.43800402 0.30661595
		 -0.44167554 0.43800402 -0.30661595 -0.44167554 0.43547964 -0.33224851 -0.44167554 0.4280026 -0.35689601
		 -0.44167554 0.41586113 -0.37961125 -0.44167554 0.39952159 -0.39952135 -0.44167554 0.37961125 -0.41586113
		 -0.44167554 0.35689592 -0.42800269 -0.44167554 0.33224857 -0.43547943 -0.44167554 0.30661595 -0.43800399
		 -0.44167554 -0.30661607 -0.43800399 -0.44167554 -0.33224851 -0.43547943 -0.44167554 -0.35689598 -0.42800269
		 -0.44167554 -0.37961119 -0.41586113 -0.44167554 -0.39952141 -0.39952135 -0.44167554 -0.41586113 -0.37961125
		 -0.44167554 -0.42800272 -0.35689601 -0.44167554 -0.43547946 -0.33224851;
	setAttr -s 76 ".ed[0:75]"  4 0 1 5 1 1 0 1 0 6 1 1 7 1 1 8 1 1 9 1 1
		 10 1 1 11 1 1 12 1 1 13 1 1 14 2 1 1 2 0 15 2 1 16 2 1 17 2 1 18 2 1 19 2 1 20 2 1
		 21 2 1 22 2 1 23 3 1 2 3 0 24 3 1 25 3 1 26 3 1 27 3 1 28 3 1 29 3 1 30 3 1 31 3 1
		 32 0 1 3 0 0 33 0 1 34 0 1 35 0 1 36 0 1 37 0 1 38 0 1 39 0 1 4 5 0 6 5 0 7 6 0 8 7 0
		 9 8 0 10 9 0 11 10 0 12 11 0 13 12 0 13 14 0 15 14 0 16 15 0 17 16 0 18 17 0 19 18 0
		 20 19 0 21 20 0 22 21 0 22 23 0 24 23 0 25 24 0 26 25 0 27 26 0 28 27 0 29 28 0 30 29 0
		 31 30 0 31 32 0 33 32 0 34 33 0 35 34 0 36 35 0 37 36 0 38 37 0 39 38 0 4 39 0;
	setAttr -s 37 -ch 116 ".fc[0:36]" -type "polyFaces" 
		f 4 40 1 -3 -1
		mu 0 4 0 1 2 3
		f 3 -42 3 -2
		mu 0 3 4 5 6
		f 3 -43 4 -4
		mu 0 3 7 8 9
		f 3 -44 5 -5
		mu 0 3 10 11 12
		f 3 -45 6 -6
		mu 0 3 13 14 15
		f 3 -46 7 -7
		mu 0 3 16 17 18
		f 3 -47 8 -8
		mu 0 3 19 20 21
		f 3 -48 9 -9
		mu 0 3 22 23 24
		f 3 -49 10 -10
		mu 0 3 25 26 27
		f 4 49 11 -13 -11
		mu 0 4 28 29 30 31
		f 3 -51 13 -12
		mu 0 3 32 33 34
		f 3 -52 14 -14
		mu 0 3 35 36 37
		f 3 -53 15 -15
		mu 0 3 38 39 40
		f 3 -54 16 -16
		mu 0 3 41 42 43
		f 3 -55 17 -17
		mu 0 3 44 45 46
		f 3 -56 18 -18
		mu 0 3 47 48 49
		f 3 -57 19 -19
		mu 0 3 50 51 52
		f 3 -58 20 -20
		mu 0 3 53 54 55
		f 4 58 21 -23 -21
		mu 0 4 56 57 58 59
		f 3 -60 23 -22
		mu 0 3 60 61 62
		f 3 -61 24 -24
		mu 0 3 63 64 65
		f 3 -62 25 -25
		mu 0 3 66 67 68
		f 3 -63 26 -26
		mu 0 3 69 70 71
		f 3 -64 27 -27
		mu 0 3 72 73 74
		f 3 -65 28 -28
		mu 0 3 75 76 77
		f 3 -66 29 -29
		mu 0 3 78 79 80
		f 3 -67 30 -30
		mu 0 3 81 82 83
		f 4 67 31 -33 -31
		mu 0 4 84 85 86 87
		f 3 -69 33 -32
		mu 0 3 88 89 90
		f 3 -70 34 -34
		mu 0 3 91 92 93
		f 3 -71 35 -35
		mu 0 3 94 95 96
		f 3 -72 36 -36
		mu 0 3 97 98 99
		f 3 -73 37 -37
		mu 0 3 100 101 102
		f 3 -74 38 -38
		mu 0 3 103 104 105
		f 3 -75 39 -39
		mu 0 3 106 107 108
		f 3 -76 0 -40
		mu 0 3 109 110 111
		f 4 12 22 32 2
		mu 0 4 31 59 87 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TVLegs" -p "TV";
	rename -uid "F84181C7-4FF5-AE42-07AE-09AC05718223";
	setAttr ".rp" -type "double3" 1.9774881223889482 0.34829318762335459 0.35214469061356091 ;
	setAttr ".sp" -type "double3" 1.9774881223889482 0.34829318762335459 0.35214469061356091 ;
createNode transform -n "TVLeg1" -p "TVLegs";
	rename -uid "9D57F858-4543-F42C-FCE7-C5B56FC260E9";
	setAttr ".rp" -type "double3" 1.6358319072202174 0.64067325082401616 -0.017998337893549765 ;
	setAttr ".sp" -type "double3" 1.6358319072202174 0.64067325082401616 -0.017998337893549765 ;
createNode mesh -n "TVLegShape1" -p "TVLeg1";
	rename -uid "8F2BABD7-46EC-2677-907F-5099B3724EE6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[25:49]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:24]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:24]" "vtx[50]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:24]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:49]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[25:49]" "vtx[51]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[25:49]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:24]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[50:74]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[25:49]";
	setAttr ".pv" -type "double2" 0.50061604380607605 0.15640416741371155 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 104 ".uvst[0].uvsp[0:103]" -type "float2" 0.65134108 0.11739215
		 0.6369229 0.08097595 0.61390132 0.049289495 0.58372289 0.024323747 0.54828387 0.00764741
		 0.50981098 0.00030833483 0.47072163 0.0027676225 0.43347198 0.014870793 0.40040249
		 0.035857335 0.37359107 0.064408585 0.35472244 0.098730564 0.34498209 0.13666672 0.34498209
		 0.17583334 0.35472244 0.2137695 0.37359113 0.24809146 0.40040252 0.27664271 0.43347201
		 0.29762924 0.47072169 0.30973238 0.50981104 0.31219167 0.54828393 0.30485258 0.58372295
		 0.28817624 0.61390138 0.26321048 0.6369229 0.23152399 0.65134114 0.19510779 0.65625
		 0.15625 0.375 0.3125 0.38499999 0.3125 0.39499998 0.3125 0.40499997 0.3125 0.41499996
		 0.3125 0.42499995 0.3125 0.43499994 0.3125 0.44499993 0.3125 0.45499992 0.3125 0.46499991
		 0.3125 0.4749999 0.3125 0.4849999 0.3125 0.49499989 0.3125 0.50499988 0.3125 0.51499987
		 0.3125 0.52499986 0.3125 0.53499985 0.3125 0.54499984 0.3125 0.55499983 0.3125 0.56499982
		 0.3125 0.57499981 0.3125 0.5849998 0.3125 0.59499979 0.3125 0.60499978 0.3125 0.61499977
		 0.3125 0.62499976 0.3125 0.375 0.6875 0.38499999 0.6875 0.39499998 0.6875 0.40499997
		 0.6875 0.41499996 0.6875 0.42499995 0.6875 0.43499994 0.6875 0.44499993 0.6875 0.45499992
		 0.6875 0.46499991 0.6875 0.4749999 0.6875 0.4849999 0.6875 0.49499989 0.6875 0.50499988
		 0.6875 0.51499987 0.6875 0.52499986 0.6875 0.53499985 0.6875 0.54499984 0.6875 0.55499983
		 0.6875 0.56499982 0.6875 0.57499981 0.6875 0.5849998 0.6875 0.59499979 0.6875 0.60499978
		 0.6875 0.61499977 0.6875 0.62499976 0.6875 0.65134108 0.80489218 0.6369229 0.76847595
		 0.61390132 0.73678946 0.58372289 0.71182376 0.54828387 0.6951474 0.50981098 0.68780833
		 0.47072163 0.69026762 0.43347198 0.70237076 0.40040249 0.72335732 0.37359107 0.7519086
		 0.35472244 0.78623056 0.34498209 0.82416672 0.34498209 0.86333334 0.35472244 0.9012695
		 0.37359113 0.93559146 0.40040252 0.96414268 0.43347201 0.98512924 0.47072169 0.99723238
		 0.50981104 0.99969167 0.54828393 0.9923526 0.58372295 0.97567624 0.61390138 0.95071048
		 0.6369229 0.91902399 0.65134114 0.88260782 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt[0:51]" -type "float3"  0.62268621 1.055913 0.14871648 
		0.71156096 1.055913 0.37318715 0.85346764 1.055913 0.56850421 1.0394878 1.055913 
		0.7223953 1.2579358 1.055913 0.82518888 1.4950842 1.055913 0.87042809 1.7360331 1.055913 
		0.85526741 1.9656415 1.055913 0.78066432 2.1694825 1.055913 0.65130198 2.3347495 
		1.055913 0.47531122 2.4510567 1.055913 0.26374874 2.5110965 1.055913 0.029907912 
		2.5110965 1.055913 -0.21151531 2.4510567 1.055913 -0.4453561 2.3347495 1.055913 -0.656919 
		2.1694829 1.055913 -0.83290976 1.965642 1.055913 -0.96227169 1.7360336 1.055913 -1.0368756 
		1.4950846 1.055913 -1.0520346 1.2579362 1.055913 -1.0067968 1.0394883 1.055913 -0.90400344 
		0.85346788 1.055913 -0.75011259 0.71156144 1.055913 -0.5547958 0.62268645 1.055913 
		-0.33032396 0.59242874 1.055913 -0.09080413 0.73463106 -0.35932675 0.21339029 0.82048792 
		-0.35932675 0.43024033 0.95757592 -0.35932675 0.61892593 1.1372813 -0.35932675 0.7675913 
		1.3483124 -0.35932675 0.86689502 1.5774094 -0.35932675 0.9105978 1.8101772 -0.35932675 
		0.8959533 2.0319905 -0.35932675 0.82388198 2.2289116 -0.35932675 0.6989122 2.3885672 
		-0.35932675 0.52889615 2.5009258 -0.35932675 0.3245168 2.5589273 -0.35932675 0.098615974 
		2.5589273 -0.35932675 -0.13461217 2.5009258 -0.35932675 -0.360513 2.3885674 -0.35932675 
		-0.56489241 2.2289119 -0.35932675 -0.7349084 2.0319908 -0.35932675 -0.8598783 1.8101777 
		-0.35932675 -0.93194979 1.5774099 -0.35932675 -0.94659436 1.3483129 -0.35932675 -0.90289181 
		1.1372818 -0.35932675 -0.80358803 0.95757627 -0.35932675 -0.65492284 0.82048821 -0.35932675 
		-0.4662374 0.7346313 -0.35932675 -0.24938735 0.70540005 -0.35932675 -0.017998338 
		1.5555562 1.055913 -0.09080413 1.6358321 -0.35932675 -0.017998338;
	setAttr -s 52 ".vt[0:51]"  0.96858341 -1 -0.24868947 0.87630701 -1 -0.48175335
		 0.72896898 -1 -0.68454689 0.53582716 -1 -0.84432781 0.30901736 -1 -0.95105654 0.062790856 -1 -0.99802685
		 -0.18738103 -1 -0.98228747 -0.42577907 -1 -0.90482736 -0.63742387 -1 -0.77051359
		 -0.80901694 -1 -0.5877856 -0.92977655 -1 -0.3681249 -0.99211484 -1 -0.12533355 -0.9921149 -1 0.12533298
		 -0.92977673 -1 0.36812437 -0.80901724 -1 0.58778512 -0.63742423 -1 0.77051318 -0.42577949 -1 0.90482706
		 -0.18738149 -1 0.98228729 0.062790364 -1 0.99802679 0.30901688 -1 0.9510566 0.53582668 -1 0.84432799
		 0.72896856 -1 0.68454719 0.87630665 -1 0.48175371 0.96858317 -1 0.2486899 1 -1 0
		 0.96858341 1 -0.24868947 0.87630701 1 -0.48175335 0.72896898 1 -0.68454689 0.53582716 1 -0.84432781
		 0.30901736 1 -0.95105654 0.062790856 1 -0.99802685 -0.18738103 1 -0.98228747 -0.42577907 1 -0.90482736
		 -0.63742387 1 -0.77051359 -0.80901694 1 -0.5877856 -0.92977655 1 -0.3681249 -0.99211484 1 -0.12533355
		 -0.9921149 1 0.12533298 -0.92977673 1 0.36812437 -0.80901724 1 0.58778512 -0.63742423 1 0.77051318
		 -0.42577949 1 0.90482706 -0.18738149 1 0.98228729 0.062790364 1 0.99802679 0.30901688 1 0.9510566
		 0.53582668 1 0.84432799 0.72896856 1 0.68454719 0.87630665 1 0.48175371 0.96858317 1 0.2486899
		 1 1 0 0 -1 0 0 1 0;
	setAttr -s 125 ".ed[0:124]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 0 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 25 0 0 25 1
		 1 26 1 2 27 1 3 28 1 4 29 1 5 30 1 6 31 1 7 32 1 8 33 1 9 34 1 10 35 1 11 36 1 12 37 1
		 13 38 1 14 39 1 15 40 1 16 41 1 17 42 1 18 43 1 19 44 1 20 45 1 21 46 1 22 47 1 23 48 1
		 24 49 1 50 0 1 50 1 1 50 2 1 50 3 1 50 4 1 50 5 1 50 6 1 50 7 1 50 8 1 50 9 1 50 10 1
		 50 11 1 50 12 1 50 13 1 50 14 1 50 15 1 50 16 1 50 17 1 50 18 1 50 19 1 50 20 1 50 21 1
		 50 22 1 50 23 1 50 24 1 25 51 1 26 51 1 27 51 1 28 51 1 29 51 1 30 51 1 31 51 1 32 51 1
		 33 51 1 34 51 1 35 51 1 36 51 1 37 51 1 38 51 1 39 51 1 40 51 1 41 51 1 42 51 1 43 51 1
		 44 51 1 45 51 1 46 51 1 47 51 1 48 51 1 49 51 1;
	setAttr -s 75 -ch 250 ".fc[0:74]" -type "polyFaces" 
		f 4 0 51 -26 -51
		mu 0 4 25 26 52 51
		f 4 1 52 -27 -52
		mu 0 4 26 27 53 52
		f 4 2 53 -28 -53
		mu 0 4 27 28 54 53
		f 4 3 54 -29 -54
		mu 0 4 28 29 55 54
		f 4 4 55 -30 -55
		mu 0 4 29 30 56 55
		f 4 5 56 -31 -56
		mu 0 4 30 31 57 56
		f 4 6 57 -32 -57
		mu 0 4 31 32 58 57
		f 4 7 58 -33 -58
		mu 0 4 32 33 59 58
		f 4 8 59 -34 -59
		mu 0 4 33 34 60 59
		f 4 9 60 -35 -60
		mu 0 4 34 35 61 60
		f 4 10 61 -36 -61
		mu 0 4 35 36 62 61
		f 4 11 62 -37 -62
		mu 0 4 36 37 63 62
		f 4 12 63 -38 -63
		mu 0 4 37 38 64 63
		f 4 13 64 -39 -64
		mu 0 4 38 39 65 64
		f 4 14 65 -40 -65
		mu 0 4 39 40 66 65
		f 4 15 66 -41 -66
		mu 0 4 40 41 67 66
		f 4 16 67 -42 -67
		mu 0 4 41 42 68 67
		f 4 17 68 -43 -68
		mu 0 4 42 43 69 68
		f 4 18 69 -44 -69
		mu 0 4 43 44 70 69
		f 4 19 70 -45 -70
		mu 0 4 44 45 71 70
		f 4 20 71 -46 -71
		mu 0 4 45 46 72 71
		f 4 21 72 -47 -72
		mu 0 4 46 47 73 72
		f 4 22 73 -48 -73
		mu 0 4 47 48 74 73
		f 4 23 74 -49 -74
		mu 0 4 48 49 75 74
		f 4 24 50 -50 -75
		mu 0 4 49 50 76 75
		f 3 -1 -76 76
		mu 0 3 1 0 102
		f 3 -2 -77 77
		mu 0 3 2 1 102
		f 3 -3 -78 78
		mu 0 3 3 2 102
		f 3 -4 -79 79
		mu 0 3 4 3 102
		f 3 -5 -80 80
		mu 0 3 5 4 102
		f 3 -6 -81 81
		mu 0 3 6 5 102
		f 3 -7 -82 82
		mu 0 3 7 6 102
		f 3 -8 -83 83
		mu 0 3 8 7 102
		f 3 -9 -84 84
		mu 0 3 9 8 102
		f 3 -10 -85 85
		mu 0 3 10 9 102
		f 3 -11 -86 86
		mu 0 3 11 10 102
		f 3 -12 -87 87
		mu 0 3 12 11 102
		f 3 -13 -88 88
		mu 0 3 13 12 102
		f 3 -14 -89 89
		mu 0 3 14 13 102
		f 3 -15 -90 90
		mu 0 3 15 14 102
		f 3 -16 -91 91
		mu 0 3 16 15 102
		f 3 -17 -92 92
		mu 0 3 17 16 102
		f 3 -18 -93 93
		mu 0 3 18 17 102
		f 3 -19 -94 94
		mu 0 3 19 18 102
		f 3 -20 -95 95
		mu 0 3 20 19 102
		f 3 -21 -96 96
		mu 0 3 21 20 102
		f 3 -22 -97 97
		mu 0 3 22 21 102
		f 3 -23 -98 98
		mu 0 3 23 22 102
		f 3 -24 -99 99
		mu 0 3 24 23 102
		f 3 -25 -100 75
		mu 0 3 0 24 102
		f 3 25 101 -101
		mu 0 3 100 99 103
		f 3 26 102 -102
		mu 0 3 99 98 103
		f 3 27 103 -103
		mu 0 3 98 97 103
		f 3 28 104 -104
		mu 0 3 97 96 103
		f 3 29 105 -105
		mu 0 3 96 95 103
		f 3 30 106 -106
		mu 0 3 95 94 103
		f 3 31 107 -107
		mu 0 3 94 93 103
		f 3 32 108 -108
		mu 0 3 93 92 103
		f 3 33 109 -109
		mu 0 3 92 91 103
		f 3 34 110 -110
		mu 0 3 91 90 103
		f 3 35 111 -111
		mu 0 3 90 89 103
		f 3 36 112 -112
		mu 0 3 89 88 103
		f 3 37 113 -113
		mu 0 3 88 87 103
		f 3 38 114 -114
		mu 0 3 87 86 103
		f 3 39 115 -115
		mu 0 3 86 85 103
		f 3 40 116 -116
		mu 0 3 85 84 103
		f 3 41 117 -117
		mu 0 3 84 83 103
		f 3 42 118 -118
		mu 0 3 83 82 103
		f 3 43 119 -119
		mu 0 3 82 81 103
		f 3 44 120 -120
		mu 0 3 81 80 103
		f 3 45 121 -121
		mu 0 3 80 79 103
		f 3 46 122 -122
		mu 0 3 79 78 103
		f 3 47 123 -123
		mu 0 3 78 77 103
		f 3 48 124 -124
		mu 0 3 77 101 103
		f 3 49 100 -125
		mu 0 3 101 100 103;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TVLeg2" -p "TVLegs";
	rename -uid "CC7E7E3A-4112-F617-9339-F1870F483147";
	setAttr ".rp" -type "double3" 1.6358319072202174 0.64067325082401616 0.70965571126098614 ;
	setAttr ".sp" -type "double3" 1.6358319072202174 0.64067325082401616 0.70965571126098614 ;
createNode mesh -n "TVLegShape2" -p "TVLeg2";
	rename -uid "3359F39F-4032-5337-5D07-2DB4C1A649A2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[25:49]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:24]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:24]" "vtx[50]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:24]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:49]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[25:49]" "vtx[51]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[25:49]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:24]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[50:74]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[25:49]";
	setAttr ".pv" -type "double2" 0.50061604380607605 0.15640416741371155 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 104 ".uvst[0].uvsp[0:103]" -type "float2" 0.65134108 0.11739215
		 0.6369229 0.08097595 0.61390132 0.049289495 0.58372289 0.024323747 0.54828387 0.00764741
		 0.50981098 0.00030833483 0.47072163 0.0027676225 0.43347198 0.014870793 0.40040249
		 0.035857335 0.37359107 0.064408585 0.35472244 0.098730564 0.34498209 0.13666672 0.34498209
		 0.17583334 0.35472244 0.2137695 0.37359113 0.24809146 0.40040252 0.27664271 0.43347201
		 0.29762924 0.47072169 0.30973238 0.50981104 0.31219167 0.54828393 0.30485258 0.58372295
		 0.28817624 0.61390138 0.26321048 0.6369229 0.23152399 0.65134114 0.19510779 0.65625
		 0.15625 0.375 0.3125 0.38499999 0.3125 0.39499998 0.3125 0.40499997 0.3125 0.41499996
		 0.3125 0.42499995 0.3125 0.43499994 0.3125 0.44499993 0.3125 0.45499992 0.3125 0.46499991
		 0.3125 0.4749999 0.3125 0.4849999 0.3125 0.49499989 0.3125 0.50499988 0.3125 0.51499987
		 0.3125 0.52499986 0.3125 0.53499985 0.3125 0.54499984 0.3125 0.55499983 0.3125 0.56499982
		 0.3125 0.57499981 0.3125 0.5849998 0.3125 0.59499979 0.3125 0.60499978 0.3125 0.61499977
		 0.3125 0.62499976 0.3125 0.375 0.6875 0.38499999 0.6875 0.39499998 0.6875 0.40499997
		 0.6875 0.41499996 0.6875 0.42499995 0.6875 0.43499994 0.6875 0.44499993 0.6875 0.45499992
		 0.6875 0.46499991 0.6875 0.4749999 0.6875 0.4849999 0.6875 0.49499989 0.6875 0.50499988
		 0.6875 0.51499987 0.6875 0.52499986 0.6875 0.53499985 0.6875 0.54499984 0.6875 0.55499983
		 0.6875 0.56499982 0.6875 0.57499981 0.6875 0.5849998 0.6875 0.59499979 0.6875 0.60499978
		 0.6875 0.61499977 0.6875 0.62499976 0.6875 0.65134108 0.80489218 0.6369229 0.76847595
		 0.61390132 0.73678946 0.58372289 0.71182376 0.54828387 0.6951474 0.50981098 0.68780833
		 0.47072163 0.69026762 0.43347198 0.70237076 0.40040249 0.72335732 0.37359107 0.7519086
		 0.35472244 0.78623056 0.34498209 0.82416672 0.34498209 0.86333334 0.35472244 0.9012695
		 0.37359113 0.93559146 0.40040252 0.96414268 0.43347201 0.98512924 0.47072169 0.99723238
		 0.50981104 0.99969167 0.54828393 0.9923526 0.58372295 0.97567624 0.61390138 0.95071048
		 0.6369229 0.91902399 0.65134114 0.88260782 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt[0:51]" -type "float3"  0.62268621 1.055913 1.0207664 
		0.71156096 1.055913 1.2452383 0.85346764 1.055913 1.4405551 1.0394878 1.055913 1.5944459 
		1.2579358 1.055913 1.6972395 1.4950842 1.055913 1.7424774 1.7360331 1.055913 1.7273185 
		1.9656415 1.055913 1.6527146 2.1694825 1.055913 1.5233529 2.3347495 1.055913 1.3473622 
		2.4510567 1.055913 1.1357996 2.5110965 1.055913 0.90195876 2.5110965 1.055913 0.66053522 
		2.4510567 1.055913 0.42669475 2.3347495 1.055913 0.215132 2.1694829 1.055913 0.039141119 
		1.965642 1.055913 -0.090221226 1.7360336 1.055913 -0.16482449 1.4950846 1.055913 
		-0.17998528 1.2579362 1.055913 -0.13474619 1.0394883 1.055913 -0.031952739 0.85346788 
		1.055913 0.12193841 0.71156144 1.055913 0.31725532 0.62268645 1.055913 0.54172581 
		0.59242874 1.055913 0.78124684 0.73463106 -0.35932675 0.94104445 0.82048792 -0.35932675 
		1.1578944 0.95757592 -0.35932675 1.3465799 1.1372813 -0.35932675 1.4952452 1.3483124 
		-0.35932675 1.5945489 1.5774094 -0.35932675 1.6382518 1.8101772 -0.35932675 1.6236074 
		2.0319905 -0.35932675 1.5515361 2.2289116 -0.35932675 1.4265661 2.3885672 -0.35932675 
		1.2565503 2.5009258 -0.35932675 1.0521709 2.5589273 -0.35932675 0.82627004 2.5589273 
		-0.35932675 0.59304196 2.5009258 -0.35932675 0.36714107 2.3885674 -0.35932675 0.16276163 
		2.2289119 -0.35932675 -0.0072543025 2.0319908 -0.35932675 -0.13222429 1.8101777 -0.35932675 
		-0.20429575 1.5774099 -0.35932675 -0.21894032 1.3483129 -0.35932675 -0.17523775 1.1372818 
		-0.35932675 -0.075934023 0.95757627 -0.35932675 0.072731137 0.82048821 -0.35932675 
		0.26141667 0.7346313 -0.35932675 0.47826672 0.70540005 -0.35932675 0.70965576 1.5555562 
		1.055913 0.78124684 1.6358321 -0.35932675 0.70965576;
	setAttr -s 52 ".vt[0:51]"  0.96858341 -1 -0.24868947 0.87630701 -1 -0.48175335
		 0.72896898 -1 -0.68454689 0.53582716 -1 -0.84432781 0.30901736 -1 -0.95105654 0.062790856 -1 -0.99802685
		 -0.18738103 -1 -0.98228747 -0.42577907 -1 -0.90482736 -0.63742387 -1 -0.77051359
		 -0.80901694 -1 -0.5877856 -0.92977655 -1 -0.3681249 -0.99211484 -1 -0.12533355 -0.9921149 -1 0.12533298
		 -0.92977673 -1 0.36812437 -0.80901724 -1 0.58778512 -0.63742423 -1 0.77051318 -0.42577949 -1 0.90482706
		 -0.18738149 -1 0.98228729 0.062790364 -1 0.99802679 0.30901688 -1 0.9510566 0.53582668 -1 0.84432799
		 0.72896856 -1 0.68454719 0.87630665 -1 0.48175371 0.96858317 -1 0.2486899 1 -1 0
		 0.96858341 1 -0.24868947 0.87630701 1 -0.48175335 0.72896898 1 -0.68454689 0.53582716 1 -0.84432781
		 0.30901736 1 -0.95105654 0.062790856 1 -0.99802685 -0.18738103 1 -0.98228747 -0.42577907 1 -0.90482736
		 -0.63742387 1 -0.77051359 -0.80901694 1 -0.5877856 -0.92977655 1 -0.3681249 -0.99211484 1 -0.12533355
		 -0.9921149 1 0.12533298 -0.92977673 1 0.36812437 -0.80901724 1 0.58778512 -0.63742423 1 0.77051318
		 -0.42577949 1 0.90482706 -0.18738149 1 0.98228729 0.062790364 1 0.99802679 0.30901688 1 0.9510566
		 0.53582668 1 0.84432799 0.72896856 1 0.68454719 0.87630665 1 0.48175371 0.96858317 1 0.2486899
		 1 1 0 0 -1 0 0 1 0;
	setAttr -s 125 ".ed[0:124]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 0 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 25 0 0 25 1
		 1 26 1 2 27 1 3 28 1 4 29 1 5 30 1 6 31 1 7 32 1 8 33 1 9 34 1 10 35 1 11 36 1 12 37 1
		 13 38 1 14 39 1 15 40 1 16 41 1 17 42 1 18 43 1 19 44 1 20 45 1 21 46 1 22 47 1 23 48 1
		 24 49 1 50 0 1 50 1 1 50 2 1 50 3 1 50 4 1 50 5 1 50 6 1 50 7 1 50 8 1 50 9 1 50 10 1
		 50 11 1 50 12 1 50 13 1 50 14 1 50 15 1 50 16 1 50 17 1 50 18 1 50 19 1 50 20 1 50 21 1
		 50 22 1 50 23 1 50 24 1 25 51 1 26 51 1 27 51 1 28 51 1 29 51 1 30 51 1 31 51 1 32 51 1
		 33 51 1 34 51 1 35 51 1 36 51 1 37 51 1 38 51 1 39 51 1 40 51 1 41 51 1 42 51 1 43 51 1
		 44 51 1 45 51 1 46 51 1 47 51 1 48 51 1 49 51 1;
	setAttr -s 75 -ch 250 ".fc[0:74]" -type "polyFaces" 
		f 4 0 51 -26 -51
		mu 0 4 25 26 52 51
		f 4 1 52 -27 -52
		mu 0 4 26 27 53 52
		f 4 2 53 -28 -53
		mu 0 4 27 28 54 53
		f 4 3 54 -29 -54
		mu 0 4 28 29 55 54
		f 4 4 55 -30 -55
		mu 0 4 29 30 56 55
		f 4 5 56 -31 -56
		mu 0 4 30 31 57 56
		f 4 6 57 -32 -57
		mu 0 4 31 32 58 57
		f 4 7 58 -33 -58
		mu 0 4 32 33 59 58
		f 4 8 59 -34 -59
		mu 0 4 33 34 60 59
		f 4 9 60 -35 -60
		mu 0 4 34 35 61 60
		f 4 10 61 -36 -61
		mu 0 4 35 36 62 61
		f 4 11 62 -37 -62
		mu 0 4 36 37 63 62
		f 4 12 63 -38 -63
		mu 0 4 37 38 64 63
		f 4 13 64 -39 -64
		mu 0 4 38 39 65 64
		f 4 14 65 -40 -65
		mu 0 4 39 40 66 65
		f 4 15 66 -41 -66
		mu 0 4 40 41 67 66
		f 4 16 67 -42 -67
		mu 0 4 41 42 68 67
		f 4 17 68 -43 -68
		mu 0 4 42 43 69 68
		f 4 18 69 -44 -69
		mu 0 4 43 44 70 69
		f 4 19 70 -45 -70
		mu 0 4 44 45 71 70
		f 4 20 71 -46 -71
		mu 0 4 45 46 72 71
		f 4 21 72 -47 -72
		mu 0 4 46 47 73 72
		f 4 22 73 -48 -73
		mu 0 4 47 48 74 73
		f 4 23 74 -49 -74
		mu 0 4 48 49 75 74
		f 4 24 50 -50 -75
		mu 0 4 49 50 76 75
		f 3 -1 -76 76
		mu 0 3 1 0 102
		f 3 -2 -77 77
		mu 0 3 2 1 102
		f 3 -3 -78 78
		mu 0 3 3 2 102
		f 3 -4 -79 79
		mu 0 3 4 3 102
		f 3 -5 -80 80
		mu 0 3 5 4 102
		f 3 -6 -81 81
		mu 0 3 6 5 102
		f 3 -7 -82 82
		mu 0 3 7 6 102
		f 3 -8 -83 83
		mu 0 3 8 7 102
		f 3 -9 -84 84
		mu 0 3 9 8 102
		f 3 -10 -85 85
		mu 0 3 10 9 102
		f 3 -11 -86 86
		mu 0 3 11 10 102
		f 3 -12 -87 87
		mu 0 3 12 11 102
		f 3 -13 -88 88
		mu 0 3 13 12 102
		f 3 -14 -89 89
		mu 0 3 14 13 102
		f 3 -15 -90 90
		mu 0 3 15 14 102
		f 3 -16 -91 91
		mu 0 3 16 15 102
		f 3 -17 -92 92
		mu 0 3 17 16 102
		f 3 -18 -93 93
		mu 0 3 18 17 102
		f 3 -19 -94 94
		mu 0 3 19 18 102
		f 3 -20 -95 95
		mu 0 3 20 19 102
		f 3 -21 -96 96
		mu 0 3 21 20 102
		f 3 -22 -97 97
		mu 0 3 22 21 102
		f 3 -23 -98 98
		mu 0 3 23 22 102
		f 3 -24 -99 99
		mu 0 3 24 23 102
		f 3 -25 -100 75
		mu 0 3 0 24 102
		f 3 25 101 -101
		mu 0 3 100 99 103
		f 3 26 102 -102
		mu 0 3 99 98 103
		f 3 27 103 -103
		mu 0 3 98 97 103
		f 3 28 104 -104
		mu 0 3 97 96 103
		f 3 29 105 -105
		mu 0 3 96 95 103
		f 3 30 106 -106
		mu 0 3 95 94 103
		f 3 31 107 -107
		mu 0 3 94 93 103
		f 3 32 108 -108
		mu 0 3 93 92 103
		f 3 33 109 -109
		mu 0 3 92 91 103
		f 3 34 110 -110
		mu 0 3 91 90 103
		f 3 35 111 -111
		mu 0 3 90 89 103
		f 3 36 112 -112
		mu 0 3 89 88 103
		f 3 37 113 -113
		mu 0 3 88 87 103
		f 3 38 114 -114
		mu 0 3 87 86 103
		f 3 39 115 -115
		mu 0 3 86 85 103
		f 3 40 116 -116
		mu 0 3 85 84 103
		f 3 41 117 -117
		mu 0 3 84 83 103
		f 3 42 118 -118
		mu 0 3 83 82 103
		f 3 43 119 -119
		mu 0 3 82 81 103
		f 3 44 120 -120
		mu 0 3 81 80 103
		f 3 45 121 -121
		mu 0 3 80 79 103
		f 3 46 122 -122
		mu 0 3 79 78 103
		f 3 47 123 -123
		mu 0 3 78 77 103
		f 3 48 124 -124
		mu 0 3 77 101 103
		f 3 49 100 -125
		mu 0 3 101 100 103;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TVLeg3" -p "TVLegs";
	rename -uid "F8A3EEF8-459C-2E7F-644C-EB9947351BA9";
	setAttr ".rp" -type "double3" 2.3060395840730799 0.64067325082401616 0.70965571126098614 ;
	setAttr ".sp" -type "double3" 2.3060395840730799 0.64067325082401616 0.70965571126098614 ;
createNode mesh -n "TVLegShape3" -p "TVLeg3";
	rename -uid "769C41AC-43E7-DC50-79BA-18A7528971B1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[25:49]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:24]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:24]" "vtx[50]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:24]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:49]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[25:49]" "vtx[51]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[25:49]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:24]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[50:74]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[25:49]";
	setAttr ".pv" -type "double2" 0.50061604380607605 0.15640416741371155 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 104 ".uvst[0].uvsp[0:103]" -type "float2" 0.65134108 0.11739215
		 0.6369229 0.08097595 0.61390132 0.049289495 0.58372289 0.024323747 0.54828387 0.00764741
		 0.50981098 0.00030833483 0.47072163 0.0027676225 0.43347198 0.014870793 0.40040249
		 0.035857335 0.37359107 0.064408585 0.35472244 0.098730564 0.34498209 0.13666672 0.34498209
		 0.17583334 0.35472244 0.2137695 0.37359113 0.24809146 0.40040252 0.27664271 0.43347201
		 0.29762924 0.47072169 0.30973238 0.50981104 0.31219167 0.54828393 0.30485258 0.58372295
		 0.28817624 0.61390138 0.26321048 0.6369229 0.23152399 0.65134114 0.19510779 0.65625
		 0.15625 0.375 0.3125 0.38499999 0.3125 0.39499998 0.3125 0.40499997 0.3125 0.41499996
		 0.3125 0.42499995 0.3125 0.43499994 0.3125 0.44499993 0.3125 0.45499992 0.3125 0.46499991
		 0.3125 0.4749999 0.3125 0.4849999 0.3125 0.49499989 0.3125 0.50499988 0.3125 0.51499987
		 0.3125 0.52499986 0.3125 0.53499985 0.3125 0.54499984 0.3125 0.55499983 0.3125 0.56499982
		 0.3125 0.57499981 0.3125 0.5849998 0.3125 0.59499979 0.3125 0.60499978 0.3125 0.61499977
		 0.3125 0.62499976 0.3125 0.375 0.6875 0.38499999 0.6875 0.39499998 0.6875 0.40499997
		 0.6875 0.41499996 0.6875 0.42499995 0.6875 0.43499994 0.6875 0.44499993 0.6875 0.45499992
		 0.6875 0.46499991 0.6875 0.4749999 0.6875 0.4849999 0.6875 0.49499989 0.6875 0.50499988
		 0.6875 0.51499987 0.6875 0.52499986 0.6875 0.53499985 0.6875 0.54499984 0.6875 0.55499983
		 0.6875 0.56499982 0.6875 0.57499981 0.6875 0.5849998 0.6875 0.59499979 0.6875 0.60499978
		 0.6875 0.61499977 0.6875 0.62499976 0.6875 0.65134108 0.80489218 0.6369229 0.76847595
		 0.61390132 0.73678946 0.58372289 0.71182376 0.54828387 0.6951474 0.50981098 0.68780833
		 0.47072163 0.69026762 0.43347198 0.70237076 0.40040249 0.72335732 0.37359107 0.7519086
		 0.35472244 0.78623056 0.34498209 0.82416672 0.34498209 0.86333334 0.35472244 0.9012695
		 0.37359113 0.93559146 0.40040252 0.96414268 0.43347201 0.98512924 0.47072169 0.99723238
		 0.50981104 0.99969167 0.54828393 0.9923526 0.58372295 0.97567624 0.61390138 0.95071048
		 0.6369229 0.91902399 0.65134114 0.88260782 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt[0:51]" -type "float3"  1.4244595 1.055913 1.0207664 
		1.5133339 1.055913 1.2452383 1.6552392 1.055913 1.4405551 1.8412608 1.055913 1.5944459 
		2.0597086 1.055913 1.6972395 2.2968559 1.055913 1.7424774 2.5378051 1.055913 1.7273185 
		2.7674136 1.055913 1.6527146 2.9712548 1.055913 1.5233529 3.1365225 1.055913 1.3473622 
		3.2528296 1.055913 1.1357996 3.3128693 1.055913 0.90195876 3.3128693 1.055913 0.66053522 
		3.2528298 1.055913 0.42669475 3.1365228 1.055913 0.215132 2.9712553 1.055913 0.039141119 
		2.7674139 1.055913 -0.090221226 2.5378056 1.055913 -0.16482449 2.2968564 1.055913 
		-0.17998528 2.0597091 1.055913 -0.13474619 1.8412611 1.055913 -0.031952739 1.6552397 
		1.055913 0.12193841 1.5133342 1.055913 0.31725532 1.4244597 1.055913 0.54172581 1.3942016 
		1.055913 0.78124684 1.4048388 -0.35932675 0.94104445 1.4906956 -0.35932675 1.1578944 
		1.6277837 -0.35932675 1.3465799 1.8074889 -0.35932675 1.4952452 2.0185201 -0.35932675 
		1.5945489 2.247617 -0.35932675 1.6382518 2.4803848 -0.35932675 1.6236074 2.702198 
		-0.35932675 1.5515361 2.8991191 -0.35932675 1.4265661 3.0587747 -0.35932675 1.2565503 
		3.1711335 -0.35932675 1.0521709 3.229135 -0.35932675 0.82627004 3.229135 -0.35932675 
		0.59304196 3.1711335 -0.35932675 0.36714107 3.0587749 -0.35932675 0.16276163 2.8991196 
		-0.35932675 -0.0072543025 2.7021985 -0.35932675 -0.13222429 2.4803853 -0.35932675 
		-0.20429575 2.2476175 -0.35932675 -0.21894032 2.0185206 -0.35932675 -0.17523775 1.8074894 
		-0.35932675 -0.075934023 1.627784 -0.35932675 0.072731137 1.4906958 -0.35932675 0.26141667 
		1.404839 -0.35932675 0.47826672 1.3756077 -0.35932675 0.70965576 2.3573279 1.055913 
		0.78124684 2.3060396 -0.35932675 0.70965576;
	setAttr -s 52 ".vt[0:51]"  0.96858341 -1 -0.24868947 0.87630701 -1 -0.48175335
		 0.72896898 -1 -0.68454689 0.53582716 -1 -0.84432781 0.30901736 -1 -0.95105654 0.062790856 -1 -0.99802685
		 -0.18738103 -1 -0.98228747 -0.42577907 -1 -0.90482736 -0.63742387 -1 -0.77051359
		 -0.80901694 -1 -0.5877856 -0.92977655 -1 -0.3681249 -0.99211484 -1 -0.12533355 -0.9921149 -1 0.12533298
		 -0.92977673 -1 0.36812437 -0.80901724 -1 0.58778512 -0.63742423 -1 0.77051318 -0.42577949 -1 0.90482706
		 -0.18738149 -1 0.98228729 0.062790364 -1 0.99802679 0.30901688 -1 0.9510566 0.53582668 -1 0.84432799
		 0.72896856 -1 0.68454719 0.87630665 -1 0.48175371 0.96858317 -1 0.2486899 1 -1 0
		 0.96858341 1 -0.24868947 0.87630701 1 -0.48175335 0.72896898 1 -0.68454689 0.53582716 1 -0.84432781
		 0.30901736 1 -0.95105654 0.062790856 1 -0.99802685 -0.18738103 1 -0.98228747 -0.42577907 1 -0.90482736
		 -0.63742387 1 -0.77051359 -0.80901694 1 -0.5877856 -0.92977655 1 -0.3681249 -0.99211484 1 -0.12533355
		 -0.9921149 1 0.12533298 -0.92977673 1 0.36812437 -0.80901724 1 0.58778512 -0.63742423 1 0.77051318
		 -0.42577949 1 0.90482706 -0.18738149 1 0.98228729 0.062790364 1 0.99802679 0.30901688 1 0.9510566
		 0.53582668 1 0.84432799 0.72896856 1 0.68454719 0.87630665 1 0.48175371 0.96858317 1 0.2486899
		 1 1 0 0 -1 0 0 1 0;
	setAttr -s 125 ".ed[0:124]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 0 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 25 0 0 25 1
		 1 26 1 2 27 1 3 28 1 4 29 1 5 30 1 6 31 1 7 32 1 8 33 1 9 34 1 10 35 1 11 36 1 12 37 1
		 13 38 1 14 39 1 15 40 1 16 41 1 17 42 1 18 43 1 19 44 1 20 45 1 21 46 1 22 47 1 23 48 1
		 24 49 1 50 0 1 50 1 1 50 2 1 50 3 1 50 4 1 50 5 1 50 6 1 50 7 1 50 8 1 50 9 1 50 10 1
		 50 11 1 50 12 1 50 13 1 50 14 1 50 15 1 50 16 1 50 17 1 50 18 1 50 19 1 50 20 1 50 21 1
		 50 22 1 50 23 1 50 24 1 25 51 1 26 51 1 27 51 1 28 51 1 29 51 1 30 51 1 31 51 1 32 51 1
		 33 51 1 34 51 1 35 51 1 36 51 1 37 51 1 38 51 1 39 51 1 40 51 1 41 51 1 42 51 1 43 51 1
		 44 51 1 45 51 1 46 51 1 47 51 1 48 51 1 49 51 1;
	setAttr -s 75 -ch 250 ".fc[0:74]" -type "polyFaces" 
		f 4 0 51 -26 -51
		mu 0 4 25 26 52 51
		f 4 1 52 -27 -52
		mu 0 4 26 27 53 52
		f 4 2 53 -28 -53
		mu 0 4 27 28 54 53
		f 4 3 54 -29 -54
		mu 0 4 28 29 55 54
		f 4 4 55 -30 -55
		mu 0 4 29 30 56 55
		f 4 5 56 -31 -56
		mu 0 4 30 31 57 56
		f 4 6 57 -32 -57
		mu 0 4 31 32 58 57
		f 4 7 58 -33 -58
		mu 0 4 32 33 59 58
		f 4 8 59 -34 -59
		mu 0 4 33 34 60 59
		f 4 9 60 -35 -60
		mu 0 4 34 35 61 60
		f 4 10 61 -36 -61
		mu 0 4 35 36 62 61
		f 4 11 62 -37 -62
		mu 0 4 36 37 63 62
		f 4 12 63 -38 -63
		mu 0 4 37 38 64 63
		f 4 13 64 -39 -64
		mu 0 4 38 39 65 64
		f 4 14 65 -40 -65
		mu 0 4 39 40 66 65
		f 4 15 66 -41 -66
		mu 0 4 40 41 67 66
		f 4 16 67 -42 -67
		mu 0 4 41 42 68 67
		f 4 17 68 -43 -68
		mu 0 4 42 43 69 68
		f 4 18 69 -44 -69
		mu 0 4 43 44 70 69
		f 4 19 70 -45 -70
		mu 0 4 44 45 71 70
		f 4 20 71 -46 -71
		mu 0 4 45 46 72 71
		f 4 21 72 -47 -72
		mu 0 4 46 47 73 72
		f 4 22 73 -48 -73
		mu 0 4 47 48 74 73
		f 4 23 74 -49 -74
		mu 0 4 48 49 75 74
		f 4 24 50 -50 -75
		mu 0 4 49 50 76 75
		f 3 -1 -76 76
		mu 0 3 1 0 102
		f 3 -2 -77 77
		mu 0 3 2 1 102
		f 3 -3 -78 78
		mu 0 3 3 2 102
		f 3 -4 -79 79
		mu 0 3 4 3 102
		f 3 -5 -80 80
		mu 0 3 5 4 102
		f 3 -6 -81 81
		mu 0 3 6 5 102
		f 3 -7 -82 82
		mu 0 3 7 6 102
		f 3 -8 -83 83
		mu 0 3 8 7 102
		f 3 -9 -84 84
		mu 0 3 9 8 102
		f 3 -10 -85 85
		mu 0 3 10 9 102
		f 3 -11 -86 86
		mu 0 3 11 10 102
		f 3 -12 -87 87
		mu 0 3 12 11 102
		f 3 -13 -88 88
		mu 0 3 13 12 102
		f 3 -14 -89 89
		mu 0 3 14 13 102
		f 3 -15 -90 90
		mu 0 3 15 14 102
		f 3 -16 -91 91
		mu 0 3 16 15 102
		f 3 -17 -92 92
		mu 0 3 17 16 102
		f 3 -18 -93 93
		mu 0 3 18 17 102
		f 3 -19 -94 94
		mu 0 3 19 18 102
		f 3 -20 -95 95
		mu 0 3 20 19 102
		f 3 -21 -96 96
		mu 0 3 21 20 102
		f 3 -22 -97 97
		mu 0 3 22 21 102
		f 3 -23 -98 98
		mu 0 3 23 22 102
		f 3 -24 -99 99
		mu 0 3 24 23 102
		f 3 -25 -100 75
		mu 0 3 0 24 102
		f 3 25 101 -101
		mu 0 3 100 99 103
		f 3 26 102 -102
		mu 0 3 99 98 103
		f 3 27 103 -103
		mu 0 3 98 97 103
		f 3 28 104 -104
		mu 0 3 97 96 103
		f 3 29 105 -105
		mu 0 3 96 95 103
		f 3 30 106 -106
		mu 0 3 95 94 103
		f 3 31 107 -107
		mu 0 3 94 93 103
		f 3 32 108 -108
		mu 0 3 93 92 103
		f 3 33 109 -109
		mu 0 3 92 91 103
		f 3 34 110 -110
		mu 0 3 91 90 103
		f 3 35 111 -111
		mu 0 3 90 89 103
		f 3 36 112 -112
		mu 0 3 89 88 103
		f 3 37 113 -113
		mu 0 3 88 87 103
		f 3 38 114 -114
		mu 0 3 87 86 103
		f 3 39 115 -115
		mu 0 3 86 85 103
		f 3 40 116 -116
		mu 0 3 85 84 103
		f 3 41 117 -117
		mu 0 3 84 83 103
		f 3 42 118 -118
		mu 0 3 83 82 103
		f 3 43 119 -119
		mu 0 3 82 81 103
		f 3 44 120 -120
		mu 0 3 81 80 103
		f 3 45 121 -121
		mu 0 3 80 79 103
		f 3 46 122 -122
		mu 0 3 79 78 103
		f 3 47 123 -123
		mu 0 3 78 77 103
		f 3 48 124 -124
		mu 0 3 77 101 103
		f 3 49 100 -125
		mu 0 3 101 100 103;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TVLeg4" -p "TVLegs";
	rename -uid "BA7BDA84-4BFF-B966-054C-54ABA1FF0092";
	setAttr ".rp" -type "double3" 2.3046718133039925 0.64067325082401616 -0.017998337893549765 ;
	setAttr ".sp" -type "double3" 2.3046718133039925 0.64067325082401616 -0.017998337893549765 ;
createNode mesh -n "TVLegShape4" -p "TVLeg4";
	rename -uid "CB52BE69-4C63-DAF2-EEA5-E8A123FAF139";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[25:49]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:24]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:24]" "vtx[50]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:24]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:49]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[25:49]" "vtx[51]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[25:49]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:24]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[50:74]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[25:49]";
	setAttr ".pv" -type "double2" 0.50061604380607605 0.15640416741371155 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 104 ".uvst[0].uvsp[0:103]" -type "float2" 0.65134108 0.11739215
		 0.6369229 0.08097595 0.61390132 0.049289495 0.58372289 0.024323747 0.54828387 0.00764741
		 0.50981098 0.00030833483 0.47072163 0.0027676225 0.43347198 0.014870793 0.40040249
		 0.035857335 0.37359107 0.064408585 0.35472244 0.098730564 0.34498209 0.13666672 0.34498209
		 0.17583334 0.35472244 0.2137695 0.37359113 0.24809146 0.40040252 0.27664271 0.43347201
		 0.29762924 0.47072169 0.30973238 0.50981104 0.31219167 0.54828393 0.30485258 0.58372295
		 0.28817624 0.61390138 0.26321048 0.6369229 0.23152399 0.65134114 0.19510779 0.65625
		 0.15625 0.375 0.3125 0.38499999 0.3125 0.39499998 0.3125 0.40499997 0.3125 0.41499996
		 0.3125 0.42499995 0.3125 0.43499994 0.3125 0.44499993 0.3125 0.45499992 0.3125 0.46499991
		 0.3125 0.4749999 0.3125 0.4849999 0.3125 0.49499989 0.3125 0.50499988 0.3125 0.51499987
		 0.3125 0.52499986 0.3125 0.53499985 0.3125 0.54499984 0.3125 0.55499983 0.3125 0.56499982
		 0.3125 0.57499981 0.3125 0.5849998 0.3125 0.59499979 0.3125 0.60499978 0.3125 0.61499977
		 0.3125 0.62499976 0.3125 0.375 0.6875 0.38499999 0.6875 0.39499998 0.6875 0.40499997
		 0.6875 0.41499996 0.6875 0.42499995 0.6875 0.43499994 0.6875 0.44499993 0.6875 0.45499992
		 0.6875 0.46499991 0.6875 0.4749999 0.6875 0.4849999 0.6875 0.49499989 0.6875 0.50499988
		 0.6875 0.51499987 0.6875 0.52499986 0.6875 0.53499985 0.6875 0.54499984 0.6875 0.55499983
		 0.6875 0.56499982 0.6875 0.57499981 0.6875 0.5849998 0.6875 0.59499979 0.6875 0.60499978
		 0.6875 0.61499977 0.6875 0.62499976 0.6875 0.65134108 0.80489218 0.6369229 0.76847595
		 0.61390132 0.73678946 0.58372289 0.71182376 0.54828387 0.6951474 0.50981098 0.68780833
		 0.47072163 0.69026762 0.43347198 0.70237076 0.40040249 0.72335732 0.37359107 0.7519086
		 0.35472244 0.78623056 0.34498209 0.82416672 0.34498209 0.86333334 0.35472244 0.9012695
		 0.37359113 0.93559146 0.40040252 0.96414268 0.43347201 0.98512924 0.47072169 0.99723238
		 0.50981104 0.99969167 0.54828393 0.9923526 0.58372295 0.97567624 0.61390138 0.95071048
		 0.6369229 0.91902399 0.65134114 0.88260782 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt[0:51]" -type "float3"  1.4230919 1.055913 0.14871648 
		1.5119655 1.055913 0.37318715 1.6538724 1.055913 0.56850421 1.839892 1.055913 0.7223953 
		2.0583401 1.055913 0.82518888 2.2954888 1.055913 0.87042809 2.5364375 1.055913 0.85526741 
		2.7660449 1.055913 0.78066432 2.969888 1.055913 0.65130198 3.1351542 1.055913 0.47531122 
		3.251461 1.055913 0.26374874 3.3115025 1.055913 0.029907912 3.3115025 1.055913 -0.21151531 
		3.2514613 1.055913 -0.4453561 3.1351545 1.055913 -0.656919 2.9698884 1.055913 -0.83290976 
		2.7660453 1.055913 -0.96227169 2.536438 1.055913 -1.0368756 2.2954893 1.055913 -1.0520346 
		2.0583408 1.055913 -1.0067968 1.8398925 1.055913 -0.90400344 1.6538728 1.055913 -0.75011259 
		1.5119658 1.055913 -0.5547958 1.4230921 1.055913 -0.33032396 1.392833 1.055913 -0.09080413 
		1.403471 -0.35932675 0.21339029 1.4893278 -0.35932675 0.43024033 1.6264158 -0.35932675 
		0.61892593 1.8061212 -0.35932675 0.7675913 2.0171523 -0.35932675 0.86689502 2.2462492 
		-0.35932675 0.9105978 2.4790173 -0.35932675 0.8959533 2.7008302 -0.35932675 0.82388198 
		2.8977516 -0.35932675 0.6989122 3.0574071 -0.35932675 0.52889615 3.1697657 -0.35932675 
		0.3245168 3.2277672 -0.35932675 0.098615974 3.2277672 -0.35932675 -0.13461217 3.1697657 
		-0.35932675 -0.360513 3.0574074 -0.35932675 -0.56489241 2.8977518 -0.35932675 -0.7349084 
		2.7008307 -0.35932675 -0.8598783 2.4790175 -0.35932675 -0.93194979 2.2462497 -0.35932675 
		-0.94659436 2.0171528 -0.35932675 -0.90289181 1.8061217 -0.35932675 -0.80358803 1.6264162 
		-0.35932675 -0.65492284 1.4893281 -0.35932675 -0.4662374 1.4034712 -0.35932675 -0.24938735 
		1.3742399 -0.35932675 -0.017998338 2.3559604 1.055913 -0.09080413 2.3046718 -0.35932675 
		-0.017998338;
	setAttr -s 52 ".vt[0:51]"  0.96858341 -1 -0.24868947 0.87630701 -1 -0.48175335
		 0.72896898 -1 -0.68454689 0.53582716 -1 -0.84432781 0.30901736 -1 -0.95105654 0.062790856 -1 -0.99802685
		 -0.18738103 -1 -0.98228747 -0.42577907 -1 -0.90482736 -0.63742387 -1 -0.77051359
		 -0.80901694 -1 -0.5877856 -0.92977655 -1 -0.3681249 -0.99211484 -1 -0.12533355 -0.9921149 -1 0.12533298
		 -0.92977673 -1 0.36812437 -0.80901724 -1 0.58778512 -0.63742423 -1 0.77051318 -0.42577949 -1 0.90482706
		 -0.18738149 -1 0.98228729 0.062790364 -1 0.99802679 0.30901688 -1 0.9510566 0.53582668 -1 0.84432799
		 0.72896856 -1 0.68454719 0.87630665 -1 0.48175371 0.96858317 -1 0.2486899 1 -1 0
		 0.96858341 1 -0.24868947 0.87630701 1 -0.48175335 0.72896898 1 -0.68454689 0.53582716 1 -0.84432781
		 0.30901736 1 -0.95105654 0.062790856 1 -0.99802685 -0.18738103 1 -0.98228747 -0.42577907 1 -0.90482736
		 -0.63742387 1 -0.77051359 -0.80901694 1 -0.5877856 -0.92977655 1 -0.3681249 -0.99211484 1 -0.12533355
		 -0.9921149 1 0.12533298 -0.92977673 1 0.36812437 -0.80901724 1 0.58778512 -0.63742423 1 0.77051318
		 -0.42577949 1 0.90482706 -0.18738149 1 0.98228729 0.062790364 1 0.99802679 0.30901688 1 0.9510566
		 0.53582668 1 0.84432799 0.72896856 1 0.68454719 0.87630665 1 0.48175371 0.96858317 1 0.2486899
		 1 1 0 0 -1 0 0 1 0;
	setAttr -s 125 ".ed[0:124]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 0 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 25 0 0 25 1
		 1 26 1 2 27 1 3 28 1 4 29 1 5 30 1 6 31 1 7 32 1 8 33 1 9 34 1 10 35 1 11 36 1 12 37 1
		 13 38 1 14 39 1 15 40 1 16 41 1 17 42 1 18 43 1 19 44 1 20 45 1 21 46 1 22 47 1 23 48 1
		 24 49 1 50 0 1 50 1 1 50 2 1 50 3 1 50 4 1 50 5 1 50 6 1 50 7 1 50 8 1 50 9 1 50 10 1
		 50 11 1 50 12 1 50 13 1 50 14 1 50 15 1 50 16 1 50 17 1 50 18 1 50 19 1 50 20 1 50 21 1
		 50 22 1 50 23 1 50 24 1 25 51 1 26 51 1 27 51 1 28 51 1 29 51 1 30 51 1 31 51 1 32 51 1
		 33 51 1 34 51 1 35 51 1 36 51 1 37 51 1 38 51 1 39 51 1 40 51 1 41 51 1 42 51 1 43 51 1
		 44 51 1 45 51 1 46 51 1 47 51 1 48 51 1 49 51 1;
	setAttr -s 75 -ch 250 ".fc[0:74]" -type "polyFaces" 
		f 4 0 51 -26 -51
		mu 0 4 25 26 52 51
		f 4 1 52 -27 -52
		mu 0 4 26 27 53 52
		f 4 2 53 -28 -53
		mu 0 4 27 28 54 53
		f 4 3 54 -29 -54
		mu 0 4 28 29 55 54
		f 4 4 55 -30 -55
		mu 0 4 29 30 56 55
		f 4 5 56 -31 -56
		mu 0 4 30 31 57 56
		f 4 6 57 -32 -57
		mu 0 4 31 32 58 57
		f 4 7 58 -33 -58
		mu 0 4 32 33 59 58
		f 4 8 59 -34 -59
		mu 0 4 33 34 60 59
		f 4 9 60 -35 -60
		mu 0 4 34 35 61 60
		f 4 10 61 -36 -61
		mu 0 4 35 36 62 61
		f 4 11 62 -37 -62
		mu 0 4 36 37 63 62
		f 4 12 63 -38 -63
		mu 0 4 37 38 64 63
		f 4 13 64 -39 -64
		mu 0 4 38 39 65 64
		f 4 14 65 -40 -65
		mu 0 4 39 40 66 65
		f 4 15 66 -41 -66
		mu 0 4 40 41 67 66
		f 4 16 67 -42 -67
		mu 0 4 41 42 68 67
		f 4 17 68 -43 -68
		mu 0 4 42 43 69 68
		f 4 18 69 -44 -69
		mu 0 4 43 44 70 69
		f 4 19 70 -45 -70
		mu 0 4 44 45 71 70
		f 4 20 71 -46 -71
		mu 0 4 45 46 72 71
		f 4 21 72 -47 -72
		mu 0 4 46 47 73 72
		f 4 22 73 -48 -73
		mu 0 4 47 48 74 73
		f 4 23 74 -49 -74
		mu 0 4 48 49 75 74
		f 4 24 50 -50 -75
		mu 0 4 49 50 76 75
		f 3 -1 -76 76
		mu 0 3 1 0 102
		f 3 -2 -77 77
		mu 0 3 2 1 102
		f 3 -3 -78 78
		mu 0 3 3 2 102
		f 3 -4 -79 79
		mu 0 3 4 3 102
		f 3 -5 -80 80
		mu 0 3 5 4 102
		f 3 -6 -81 81
		mu 0 3 6 5 102
		f 3 -7 -82 82
		mu 0 3 7 6 102
		f 3 -8 -83 83
		mu 0 3 8 7 102
		f 3 -9 -84 84
		mu 0 3 9 8 102
		f 3 -10 -85 85
		mu 0 3 10 9 102
		f 3 -11 -86 86
		mu 0 3 11 10 102
		f 3 -12 -87 87
		mu 0 3 12 11 102
		f 3 -13 -88 88
		mu 0 3 13 12 102
		f 3 -14 -89 89
		mu 0 3 14 13 102
		f 3 -15 -90 90
		mu 0 3 15 14 102
		f 3 -16 -91 91
		mu 0 3 16 15 102
		f 3 -17 -92 92
		mu 0 3 17 16 102
		f 3 -18 -93 93
		mu 0 3 18 17 102
		f 3 -19 -94 94
		mu 0 3 19 18 102
		f 3 -20 -95 95
		mu 0 3 20 19 102
		f 3 -21 -96 96
		mu 0 3 21 20 102
		f 3 -22 -97 97
		mu 0 3 22 21 102
		f 3 -23 -98 98
		mu 0 3 23 22 102
		f 3 -24 -99 99
		mu 0 3 24 23 102
		f 3 -25 -100 75
		mu 0 3 0 24 102
		f 3 25 101 -101
		mu 0 3 100 99 103
		f 3 26 102 -102
		mu 0 3 99 98 103
		f 3 27 103 -103
		mu 0 3 98 97 103
		f 3 28 104 -104
		mu 0 3 97 96 103
		f 3 29 105 -105
		mu 0 3 96 95 103
		f 3 30 106 -106
		mu 0 3 95 94 103
		f 3 31 107 -107
		mu 0 3 94 93 103
		f 3 32 108 -108
		mu 0 3 93 92 103
		f 3 33 109 -109
		mu 0 3 92 91 103
		f 3 34 110 -110
		mu 0 3 91 90 103
		f 3 35 111 -111
		mu 0 3 90 89 103
		f 3 36 112 -112
		mu 0 3 89 88 103
		f 3 37 113 -113
		mu 0 3 88 87 103
		f 3 38 114 -114
		mu 0 3 87 86 103
		f 3 39 115 -115
		mu 0 3 86 85 103
		f 3 40 116 -116
		mu 0 3 85 84 103
		f 3 41 117 -117
		mu 0 3 84 83 103
		f 3 42 118 -118
		mu 0 3 83 82 103
		f 3 43 119 -119
		mu 0 3 82 81 103
		f 3 44 120 -120
		mu 0 3 81 80 103
		f 3 45 121 -121
		mu 0 3 80 79 103
		f 3 46 122 -122
		mu 0 3 79 78 103
		f 3 47 123 -123
		mu 0 3 78 77 103
		f 3 48 124 -124
		mu 0 3 77 101 103
		f 3 49 100 -125
		mu 0 3 101 100 103;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Antenna" -p "TV";
	rename -uid "4C5A8AA7-4FEC-9697-3ADA-9A83171231B0";
	setAttr ".rp" -type "double3" 0.15103530348124306 0 -0.3777191278224471 ;
	setAttr ".sp" -type "double3" 0.15103530348124306 0 -0.3777191278224471 ;
createNode transform -n "Antenna2" -p "Antenna";
	rename -uid "F3AF32E2-4956-805F-38FC-11BADA4C9E09";
	setAttr ".rp" -type "double3" 1.9578406346306561 1.6384075428625069 0.34648022658699285 ;
	setAttr ".sp" -type "double3" 1.9578406346306561 1.6384075428625062 0.34648022658699218 ;
createNode mesh -n "AntennaShape2" -p "Antenna2";
	rename -uid "17E5E36B-46B0-31EF-4984-528D69C808B0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:5]" "vtx[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:5]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:5]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[12:29]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[6:11]";
	setAttr ".pv" -type "double2" 0.5 0.64578324556350708 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.6875 0.41666666 0.6875 0.45833331
		 0.6875 0.49999997 0.6875 0.54166663 0.6875 0.58333331 0.6875 0.625 0.6875 0.57812506
		 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649
		 0.65625 0.84375 0.5 0.15625 0.5 0.84375 0.578125 0.97906649 0.421875 0.97906649 0.34375
		 0.84375 0.42187503 0.70843351 0.57812506 0.70843351 0.65625 0.84375 0.578125 0.97906649
		 0.421875 0.97906649 0.34375 0.84375 0.42187503 0.70843351 0.57812506 0.70843351 0.65625
		 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  1.464355 2.7475498 1.269967 
		2.4513414 2.7475498 1.269967 2.9448721 2.7414188 0.41337645 2.4513414 2.7352877 -0.44320652 
		1.464355 2.7352877 -0.44320652 0.97086936 2.7414188 0.41337645 1.464355 1.3694823 
		1.6738552 2.4513414 1.3694823 1.6738552 2.9448721 1.3633511 0.81726474 2.4513414 
		1.3572201 -0.039318293 1.464355 1.3572201 -0.039318293 0.97086936 1.3633511 0.81726474 
		1.9578707 2.7414188 0.41337645 1.2247283 1.3724593 2.0897841 2.6909831 1.3724593 
		2.0897841 3.4241107 1.3633511 0.81726474 2.6909831 1.3542429 -0.45524716 1.2247283 
		1.3542429 -0.45524716 0.49160084 1.3633511 0.81726474 1.2247283 1.2849383 2.1154349 
		2.6909831 1.2849383 2.1154349 1.9578707 1.2758301 0.84291559 3.4241107 1.2758301 
		0.84291559 2.6909831 1.266722 -0.42959628 1.2247283 1.266722 -0.42959628 0.49160084 
		1.2758301 0.84291559;
	setAttr -s 26 ".vt[0:25]"  0.49998474 -1 -0.86603165 -0.5 -1 -0.86603165
		 -1.000030517578 -1 0 -0.5 -1 0.86602402 0.49998474 -1 0.86602402 0.99996948 -1 0
		 0.49998474 1.000000953674 -0.86603165 -0.5 1.000000953674 -0.86603165 -1.000030517578 1.000000953674 0
		 -0.5 1.000000953674 0.86602402 0.49998474 1.000000953674 0.86602402 0.99996948 1.000000953674 0
		 -3.0517578e-05 -1 0 0.74276733 1.000000953674 -1.2865448 -0.74279785 1.000000953674 -1.2865448
		 -1.48558044 1.000000953674 0 -0.74279785 1.000000953674 1.28653717 0.74276733 1.000000953674 1.28653717
		 1.48554993 1.000000953674 0 0.74276733 1.12702084 -1.2865448 -0.74279785 1.12702084 -1.2865448
		 -3.0517578e-05 1.12702084 0 -1.48558044 1.12702084 0 -0.74279785 1.12702084 1.28653717
		 0.74276733 1.12702084 1.28653717 1.48554993 1.12702084 0;
	setAttr -s 54 ".ed[0:53]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 14 1 13 14 0 8 15 1 14 15 0 9 16 1 15 16 0 10 17 1
		 16 17 0 11 18 1 17 18 0 18 13 0 13 19 1 14 20 1 19 20 0 20 21 1 19 21 1 15 22 1 20 22 0
		 22 21 1 16 23 1 22 23 0 23 21 1 17 24 1 23 24 0 24 21 1 18 25 1 24 25 0 25 21 1 25 19 0;
	setAttr -s 30 -ch 108 ".fc[0:29]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 38 39 -41
		mu 0 3 34 35 27
		f 3 42 43 -40
		mu 0 3 35 36 27
		f 3 45 46 -44
		mu 0 3 36 37 27
		f 3 48 49 -47
		mu 0 3 37 38 27
		f 3 51 52 -50
		mu 0 3 38 39 27
		f 3 53 40 -53
		mu 0 3 39 34 27
		f 4 6 25 -27 -25
		mu 0 4 24 23 29 28
		f 4 7 27 -29 -26
		mu 0 4 23 22 30 29
		f 4 8 29 -31 -28
		mu 0 4 22 21 31 30
		f 4 9 31 -33 -30
		mu 0 4 21 20 32 31
		f 4 10 33 -35 -32
		mu 0 4 20 25 33 32
		f 4 11 24 -36 -34
		mu 0 4 25 24 28 33
		f 4 26 37 -39 -37
		mu 0 4 28 29 35 34
		f 4 28 41 -43 -38
		mu 0 4 29 30 36 35
		f 4 30 44 -46 -42
		mu 0 4 30 31 37 36
		f 4 32 47 -49 -45
		mu 0 4 31 32 38 37
		f 4 34 50 -52 -48
		mu 0 4 32 33 39 38
		f 4 35 36 -54 -51
		mu 0 4 33 28 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Antenna1" -p "Antenna";
	rename -uid "7E83D441-4791-1E01-A9EF-4B87E7666DB9";
	setAttr ".rp" -type "double3" 1.9578406346306561 1.6384075428625069 0.34648022658699262 ;
	setAttr ".sp" -type "double3" 1.9578406346306561 1.6384075428625062 0.34648022658699307 ;
createNode mesh -n "AntennaShape1" -p "Antenna1";
	rename -uid "291B145A-4E05-CE0E-6A60-C58C69841778";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:5]" "vtx[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:5]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:5]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[12:29]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[6:11]";
	setAttr ".pv" -type "double2" 0.5 0.64578324556350708 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.6875 0.41666666 0.6875 0.45833331
		 0.6875 0.49999997 0.6875 0.54166663 0.6875 0.58333331 0.6875 0.625 0.6875 0.57812506
		 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649
		 0.65625 0.84375 0.5 0.15625 0.5 0.84375 0.578125 0.97906649 0.421875 0.97906649 0.34375
		 0.84375 0.42187503 0.70843351 0.57812506 0.70843351 0.65625 0.84375 0.578125 0.97906649
		 0.421875 0.97906649 0.34375 0.84375 0.42187503 0.70843351 0.57812506 0.70843351 0.65625
		 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  1.464355 2.7352877 1.1361746 
		2.4513414 2.7352877 1.1361746 2.9448721 2.7414188 0.27958399 2.4513414 2.7475498 
		-0.57699895 1.464355 2.7475498 -0.57699895 0.97086936 2.7414188 0.27958399 1.464355 
		1.3572199 0.73228633 2.4513414 1.3572199 0.73228633 2.9448721 1.3633511 -0.12430423 
		2.4513414 1.3694823 -0.98088717 1.464355 1.3694823 -0.98088717 0.97086936 1.3633511 
		-0.12430423 1.9578707 2.7414188 0.27958399 1.2247283 1.3542429 1.1482152 2.6909831 
		1.3542429 1.1482152 3.4241107 1.3633511 -0.12430423 2.6909831 1.3724592 -1.3968161 
		1.2247283 1.3724592 -1.3968161 0.49160084 1.3633511 -0.12430423 1.2247283 1.266722 
		1.1225643 2.6909831 1.266722 1.1225643 1.9578707 1.2758301 -0.14995515 3.4241107 
		1.2758301 -0.14995515 2.6909831 1.2849383 -1.422467 1.2247283 1.2849383 -1.422467 
		0.49160084 1.2758301 -0.14995515;
	setAttr -s 26 ".vt[0:25]"  0.49998474 -1 -0.86603165 -0.5 -1 -0.86603165
		 -1.000030517578 -1 0 -0.5 -1 0.86602402 0.49998474 -1 0.86602402 0.99996948 -1 0
		 0.49998474 1.000000953674 -0.86603165 -0.5 1.000000953674 -0.86603165 -1.000030517578 1.000000953674 0
		 -0.5 1.000000953674 0.86602402 0.49998474 1.000000953674 0.86602402 0.99996948 1.000000953674 0
		 -3.0517578e-05 -1 0 0.74276733 1.000000953674 -1.2865448 -0.74279785 1.000000953674 -1.2865448
		 -1.48558044 1.000000953674 0 -0.74279785 1.000000953674 1.28653717 0.74276733 1.000000953674 1.28653717
		 1.48554993 1.000000953674 0 0.74276733 1.12702084 -1.2865448 -0.74279785 1.12702084 -1.2865448
		 -3.0517578e-05 1.12702084 0 -1.48558044 1.12702084 0 -0.74279785 1.12702084 1.28653717
		 0.74276733 1.12702084 1.28653717 1.48554993 1.12702084 0;
	setAttr -s 54 ".ed[0:53]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 14 1 13 14 0 8 15 1 14 15 0 9 16 1 15 16 0 10 17 1
		 16 17 0 11 18 1 17 18 0 18 13 0 13 19 1 14 20 1 19 20 0 20 21 1 19 21 1 15 22 1 20 22 0
		 22 21 1 16 23 1 22 23 0 23 21 1 17 24 1 23 24 0 24 21 1 18 25 1 24 25 0 25 21 1 25 19 0;
	setAttr -s 30 -ch 108 ".fc[0:29]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 38 39 -41
		mu 0 3 34 35 27
		f 3 42 43 -40
		mu 0 3 35 36 27
		f 3 45 46 -44
		mu 0 3 36 37 27
		f 3 48 49 -47
		mu 0 3 37 38 27
		f 3 51 52 -50
		mu 0 3 38 39 27
		f 3 53 40 -53
		mu 0 3 39 34 27
		f 4 6 25 -27 -25
		mu 0 4 24 23 29 28
		f 4 7 27 -29 -26
		mu 0 4 23 22 30 29
		f 4 8 29 -31 -28
		mu 0 4 22 21 31 30
		f 4 9 31 -33 -30
		mu 0 4 21 20 32 31
		f 4 10 33 -35 -32
		mu 0 4 20 25 33 32
		f 4 11 24 -36 -34
		mu 0 4 25 24 28 33
		f 4 26 37 -39 -37
		mu 0 4 28 29 35 34
		f 4 28 41 -43 -38
		mu 0 4 29 30 36 35
		f 4 30 44 -46 -42
		mu 0 4 30 31 37 36
		f 4 32 47 -49 -45
		mu 0 4 31 32 38 37
		f 4 34 50 -52 -48
		mu 0 4 32 33 39 38
		f 4 35 36 -54 -51
		mu 0 4 33 28 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "AntennaBase" -p "Antenna";
	rename -uid "D676B56C-48C1-6A67-96DE-D9B7ECD1334C";
	setAttr ".rp" -type "double3" 1.9578405375030343 1.6384075428625062 0.34648021415426811 ;
	setAttr ".sp" -type "double3" 1.9578405375030343 1.6384075428625062 0.34648021415426811 ;
createNode mesh -n "AntennaBaseShape" -p "AntennaBase";
	rename -uid "5B40B764-4FDD-C972-6021-34A9FBC88E46";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.4750000536441803 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 230 ".uvst[0].uvsp[0:229]" -type "float2" 0 0.50000006 0.050000001
		 0.50000006 0.1 0.50000006 0.15000001 0.50000006 0.2 0.50000006 0.25 0.50000006 0.30000001
		 0.50000006 0.35000002 0.50000006 0.40000004 0.50000006 0.45000005 0.50000006 0.50000006
		 0.50000006 0.55000007 0.50000006 0.60000008 0.50000006 0.6500001 0.50000006 0.70000011
		 0.50000006 0.75000012 0.50000006 0.80000013 0.50000006 0.85000014 0.50000006 0.90000015
		 0.50000006 0.95000017 0.50000006 1.000000119209 0.50000006 0 0.55000007 0.050000001
		 0.55000007 0.1 0.55000007 0.15000001 0.55000007 0.2 0.55000007 0.25 0.55000007 0.30000001
		 0.55000007 0.35000002 0.55000007 0.40000004 0.55000007 0.45000005 0.55000007 0.50000006
		 0.55000007 0.55000007 0.55000007 0.60000008 0.55000007 0.6500001 0.55000007 0.70000011
		 0.55000007 0.75000012 0.55000007 0.80000013 0.55000007 0.85000014 0.55000007 0.90000015
		 0.55000007 0.95000017 0.55000007 1.000000119209 0.55000007 0 0.60000008 0.050000001
		 0.60000008 0.1 0.60000008 0.15000001 0.60000008 0.2 0.60000008 0.25 0.60000008 0.30000001
		 0.60000008 0.35000002 0.60000008 0.40000004 0.60000008 0.45000005 0.60000008 0.50000006
		 0.60000008 0.55000007 0.60000008 0.60000008 0.60000008 0.6500001 0.60000008 0.70000011
		 0.60000008 0.75000012 0.60000008 0.80000013 0.60000008 0.85000014 0.60000008 0.90000015
		 0.60000008 0.95000017 0.60000008 1.000000119209 0.60000008 0 0.6500001 0.050000001
		 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001 0.25 0.6500001 0.30000001
		 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005 0.6500001 0.50000006
		 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001 0.6500001 0.70000011
		 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014 0.6500001 0.90000015
		 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011 0.050000001
		 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011 0.30000001
		 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011 0.50000006
		 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011 0.70000011
		 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011 0.90000015
		 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012 0.050000001
		 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012 0.30000001
		 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012 0.50000006
		 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012 0.70000011
		 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012 0.90000015
		 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013 0.050000001
		 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013 0.30000001
		 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013 0.50000006
		 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013 0.70000011
		 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013 0.90000015
		 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014 0.050000001
		 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014 0.30000001
		 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014 0.50000006
		 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014 0.70000011
		 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014 0.90000015
		 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015 0.050000001
		 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015 0.30000001
		 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015 0.50000006
		 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015 0.70000011
		 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015 0.90000015
		 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017 0.050000001
		 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017 0.30000001
		 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017 0.50000006
		 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017 0.70000011
		 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017 0.90000015
		 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 1 0.075000003 1
		 0.125 1 0.17500001 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1
		 0.47500002 1 0.52499998 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998
		 1 0.82499999 1 0.875 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 201 ".pt";
	setAttr ".pt[0:165]" -type "float3"  1.1251025 1.6384076 0.61705315 1.2494713 
		1.6384076 0.86114049 1.4431802 1.6384076 1.0548494 1.6872677 1.6384076 1.1792181 
		1.9578407 1.6384076 1.2220726 2.2284133 1.6384076 1.1792181 2.4725008 1.6384076 1.0548493 
		2.6662097 1.6384076 0.86114037 2.7905781 1.6384076 0.61705303 2.8334327 1.6384076 
		0.34648022 2.7905781 1.6384076 0.075907379 2.6662095 1.6384076 -0.1681799 2.4725008 
		1.6384076 -0.36188868 2.2284133 1.6384076 -0.48625731 1.9578407 1.6384076 -0.52911186 
		1.6872678 1.6384076 -0.48625726 1.4431806 1.6384076 -0.36188862 1.2494718 1.6384076 
		-0.16817987 1.125103 1.6384076 0.075907439 1.0822487 1.6384076 0.34648022 1.135355 
		1.5014349 0.61372203 1.2581924 1.5014349 0.85480422 1.4495165 1.5014349 1.0461283 
		1.6905988 1.5014349 1.1689657 1.9578407 1.5014349 1.2112925 2.2250824 1.5014349 1.1689656 
		2.4661644 1.5014349 1.046128 2.6574883 1.5014349 0.8548041 2.7803259 1.5014349 0.61372191 
		2.8226528 1.5014349 0.34648022 2.7803259 1.5014349 0.079238564 2.6574883 1.5014349 
		-0.1618436 2.4661644 1.5014349 -0.35316747 2.2250822 1.5014349 -0.47600496 1.9578407 
		1.5014349 -0.51833183 1.690599 1.5014349 -0.47600496 1.4495169 1.5014349 -0.35316741 
		1.2581929 1.5014349 -0.16184354 1.1353555 1.5014349 0.079238623 1.0930285 1.5014349 
		0.34648022 1.1658596 1.3678348 0.60381031 1.2841414 1.3678348 0.83595127 1.4683694 
		1.3678348 1.0201793 1.7005104 1.3678348 1.1384611 1.9578407 1.3678348 1.1792181 2.2151706 
		1.3678348 1.1384609 2.4473116 1.3678348 1.0201793 2.6315396 1.3678348 0.83595115 
		2.7498212 1.3678348 0.60381031 2.7905781 1.3678348 0.34648022 2.7498212 1.3678348 
		0.089150101 2.6315396 1.3678348 -0.14299068 2.4473114 1.3678348 -0.32721865 2.2151706 
		1.3678348 -0.44550028 1.9578407 1.3678348 -0.48625731 1.7005105 1.3678348 -0.44550022 
		1.4683697 1.3678348 -0.32721859 1.2841418 1.3678348 -0.14299062 1.1658601 1.3678348 
		0.089150161 1.125103 1.3678348 0.34648022 1.2158656 1.2408971 0.58756244 1.326679 
		1.2408971 0.80504596 1.4992747 1.2408971 0.9776417 1.7167584 1.2408971 1.0884551 
		1.9578407 1.2408971 1.1266387 2.1989226 1.2408971 1.0884551 2.4164062 1.2408971 0.97764158 
		2.5890019 1.2408971 0.80504578 2.6998153 1.2408971 0.58756232 2.737999 1.2408971 
		0.34648022 2.6998153 1.2408971 0.10539806 2.5890019 1.2408971 -0.11208534 2.4164062 
		1.2408971 -0.28468108 2.1989226 1.2408971 -0.39549434 1.9578407 1.2408971 -0.43367803 
		1.7167585 1.2408971 -0.39549431 1.4992751 1.2408971 -0.28468102 1.3266793 1.2408971 
		-0.11208528 1.215866 1.2408971 0.10539812 1.1776824 1.2408971 0.34648022 1.2841414 
		1.1237476 0.56537837 1.3847578 1.1237476 0.76284915 1.5414716 1.1237476 0.91956294 
		1.7389424 1.1237476 1.0201793 1.9578407 1.1237476 1.0548493 2.1767385 1.1237476 1.0201793 
		2.3742094 1.1237476 0.91956282 2.5309229 1.1237476 0.76284903 2.6315396 1.1237476 
		0.56537825 2.6662095 1.1237476 0.34648022 2.6315396 1.1237476 0.12758219 2.5309229 
		1.1237476 -0.069888592 2.3742092 1.1237476 -0.22660224 2.1767385 1.1237476 -0.32721859 
		1.9578407 1.1237476 -0.36188868 1.7389426 1.1237476 -0.32721859 1.5414718 1.1237476 
		-0.22660218 1.3847582 1.1237476 -0.069888532 1.2841418 1.1237476 0.12758219 1.2494718 
		1.1237476 0.34648022 1.3690059 1.0192705 0.53780419 1.4569478 1.0192705 0.71039999 
		1.5939207 1.0192705 0.84737289 1.7665167 1.0192705 0.93531477 1.9578407 1.0192705 
		0.96561754 2.1491644 1.0192705 0.93531477 2.3217602 1.0192705 0.84737277 2.4587331 
		1.0192705 0.71039987 2.546675 1.0192705 0.53780413 2.5769777 1.0192705 0.34648022 
		2.546675 1.0192705 0.15515634 2.4587331 1.0192705 -0.017439455 2.3217602 1.0192705 
		-0.15441221 2.1491644 1.0192705 -0.24235411 1.9578407 1.0192705 -0.2726568 1.7665167 
		1.0192705 -0.24235411 1.5939209 1.0192705 -0.15441218 1.4569482 1.0192705 -0.017439425 
		1.3690063 1.0192705 0.15515634 1.3387035 1.0192705 0.34648022 1.4683694 0.93003881 
		0.50551903 1.5414716 0.93003881 0.64898992 1.6553308 0.93003881 0.76284915 1.7988018 
		0.93003881 0.83595127 1.9578407 0.93003881 0.86114049 2.1168792 0.93003881 0.83595115 
		2.2603502 0.93003881 0.76284903 2.3742092 0.93003881 0.6489898 2.4473114 0.93003881 
		0.50551891 2.4725008 0.93003881 0.34648022 2.4473114 0.93003881 0.1874415 2.3742092 
		0.93003881 0.043970555 2.2603502 0.93003881 -0.069888562 2.1168792 0.93003881 -0.14299062 
		1.9578407 0.93003881 -0.16817987 1.7988019 0.93003881 -0.14299062 1.655331 0.93003881 
		-0.069888532 1.5414718 0.93003881 0.043970615 1.4683697 0.93003881 0.18744156 1.4431806 
		0.93003881 0.34648022 1.5797853 0.85824943 0.46931773 1.6362476 0.85824943 0.58013117 
		1.7241895 0.85824943 0.66807318 1.835003 0.85824943 0.72453535 1.9578407 0.85824943 
		0.7439909 2.0806782 0.85824943 0.72453523 2.1914914 0.85824943 0.66807306 2.2794333 
		0.85824943 0.58013105 2.3358955 0.85824943 0.46931773 2.3553512 0.85824943 0.34648022 
		2.3358955 0.85824943 0.22364271 2.2794333 0.85824943 0.11282939 2.1914914 0.85824943 
		0.024887443 2.080678 0.85824943 -0.031574756 1.9578407 0.85824943 -0.051030278 1.835003 
		0.85824943 -0.031574726 1.7241898 0.85824943 0.024887472 1.6362478 0.85824943 0.11282945 
		1.5797856 0.85824943 0.22364271 1.56033 0.85824943 0.34648022 1.7005104 0.80567008 
		0.43009186 1.7389424 0.80567008 0.50551903 1.7988018 0.80567008 0.56537837 1.874229 
		0.80567008 0.60381031 1.9578407 0.80567008 0.61705315 2.0414522 0.80567008 0.60381031;
	setAttr ".pt[166:200]" 2.1168792 0.80567008 0.56537825 2.1767385 0.80567008 
		0.50551897 2.2151706 0.80567008 0.4300918 2.2284133 0.80567008 0.34648022 2.2151706 
		0.80567008 0.26286858 2.1767385 0.80567008 0.1874415 2.1168792 0.80567008 0.12758219 
		2.0414522 0.80567008 0.089150161 1.9578407 0.80567008 0.075907379 1.874229 0.80567008 
		0.089150161 1.7988019 0.80567008 0.12758219 1.7389425 0.80567008 0.1874415 1.7005105 
		0.80567008 0.26286864 1.6872678 0.80567008 0.34648022 1.8275716 0.77359557 0.38880718 
		1.8470272 0.77359557 0.42699087 1.8773299 0.77359557 0.45729357 1.9155136 0.77359557 
		0.47674915 1.9578407 0.77359557 0.48345304 2.0001674 0.77359557 0.47674915 2.0383513 
		0.77359557 0.45729354 2.0686541 0.77359557 0.42699081 2.0881095 0.77359557 0.38880712 
		2.0948133 0.77359557 0.34648022 2.0881095 0.77359557 0.30415329 2.0686541 0.77359557 
		0.2659696 2.0383513 0.77359557 0.2356669 2.0001674 0.77359557 0.21621138 1.9578407 
		0.77359557 0.20950741 1.9155136 0.77359557 0.21621138 1.8773299 0.77359557 0.2356669 
		1.8470272 0.77359557 0.26596966 1.8275716 0.77359557 0.30415329 1.8208678 0.77359557 
		0.34648022 1.9578407 0.76281559 0.34648022;
	setAttr -s 201 ".vt";
	setAttr ".vt[0:165]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748
		 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173
		 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706
		 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898
		 -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071 -1.3529972e-08 0.89100653 0.45399058
		 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609 0.36728606 0.89100653 0.26684895
		 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0 0.29389283 0.95105654 -0.095491566
		 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015 0.095491551 0.95105654 -0.2938928
		 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277;
	setAttr ".vt[166:200]" -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569
		 -0.29389271 0.95105654 -0.095491529 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529
		 -0.25000006 0.95105654 0.18163568 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268
		 -9.2094243e-09 0.95105654 0.30901703 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003
		 0.25 0.95105654 0.18163565 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0
		 0.14877813 0.98768836 -0.048340943 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823
		 0.048340935 0.98768836 -0.14877811 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781
		 -0.091949917 0.98768836 -0.1265582 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924
		 -0.15643452 0.98768836 0 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895
		 -0.091949895 0.98768836 0.12655817 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449
		 0.048340909 0.98768836 0.14877804 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888
		 0.14877804 0.98768836 0.048340913 0.15643448 0.98768836 0 0 1 0;
	setAttr -s 400 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1
		 11 31 1 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1
		 22 42 1 23 43 1 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1
		 33 53 1 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1
		 44 64 1 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1
		 55 75 1 56 76 1 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1
		 66 86 1 67 87 1 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1
		 77 97 1 78 98 1 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1
		 87 107 1 88 108 1 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1
		 96 116 1 97 117 1 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1
		 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1
		 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1
		 123 143 1 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1;
	setAttr ".ed[332:399]" 132 152 1 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1
		 138 158 1 139 159 1 140 160 1 141 161 1 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1
		 147 167 1 148 168 1 149 169 1 150 170 1 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1
		 156 176 1 157 177 1 158 178 1 159 179 1 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1
		 165 185 1 166 186 1 167 187 1 168 188 1 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1
		 174 194 1 175 195 1 176 196 1 177 197 1 178 198 1 179 199 1 180 200 1 181 200 1 182 200 1
		 183 200 1 184 200 1 185 200 1 186 200 1 187 200 1 188 200 1 189 200 1 190 200 1 191 200 1
		 192 200 1 193 200 1 194 200 1 195 200 1 196 200 1 197 200 1 198 200 1 199 200 1;
	setAttr -s 200 -ch 780 ".fc[0:199]" -type "polyFaces" 
		f 4 0 201 -21 -201
		mu 0 4 0 1 22 21
		f 4 1 202 -22 -202
		mu 0 4 1 2 23 22
		f 4 2 203 -23 -203
		mu 0 4 2 3 24 23
		f 4 3 204 -24 -204
		mu 0 4 3 4 25 24
		f 4 4 205 -25 -205
		mu 0 4 4 5 26 25
		f 4 5 206 -26 -206
		mu 0 4 5 6 27 26
		f 4 6 207 -27 -207
		mu 0 4 6 7 28 27
		f 4 7 208 -28 -208
		mu 0 4 7 8 29 28
		f 4 8 209 -29 -209
		mu 0 4 8 9 30 29
		f 4 9 210 -30 -210
		mu 0 4 9 10 31 30
		f 4 10 211 -31 -211
		mu 0 4 10 11 32 31
		f 4 11 212 -32 -212
		mu 0 4 11 12 33 32
		f 4 12 213 -33 -213
		mu 0 4 12 13 34 33
		f 4 13 214 -34 -214
		mu 0 4 13 14 35 34
		f 4 14 215 -35 -215
		mu 0 4 14 15 36 35
		f 4 15 216 -36 -216
		mu 0 4 15 16 37 36
		f 4 16 217 -37 -217
		mu 0 4 16 17 38 37
		f 4 17 218 -38 -218
		mu 0 4 17 18 39 38
		f 4 18 219 -39 -219
		mu 0 4 18 19 40 39
		f 4 19 200 -40 -220
		mu 0 4 19 20 41 40
		f 4 20 221 -41 -221
		mu 0 4 21 22 43 42
		f 4 21 222 -42 -222
		mu 0 4 22 23 44 43
		f 4 22 223 -43 -223
		mu 0 4 23 24 45 44
		f 4 23 224 -44 -224
		mu 0 4 24 25 46 45
		f 4 24 225 -45 -225
		mu 0 4 25 26 47 46
		f 4 25 226 -46 -226
		mu 0 4 26 27 48 47
		f 4 26 227 -47 -227
		mu 0 4 27 28 49 48
		f 4 27 228 -48 -228
		mu 0 4 28 29 50 49
		f 4 28 229 -49 -229
		mu 0 4 29 30 51 50
		f 4 29 230 -50 -230
		mu 0 4 30 31 52 51
		f 4 30 231 -51 -231
		mu 0 4 31 32 53 52
		f 4 31 232 -52 -232
		mu 0 4 32 33 54 53
		f 4 32 233 -53 -233
		mu 0 4 33 34 55 54
		f 4 33 234 -54 -234
		mu 0 4 34 35 56 55
		f 4 34 235 -55 -235
		mu 0 4 35 36 57 56
		f 4 35 236 -56 -236
		mu 0 4 36 37 58 57
		f 4 36 237 -57 -237
		mu 0 4 37 38 59 58
		f 4 37 238 -58 -238
		mu 0 4 38 39 60 59
		f 4 38 239 -59 -239
		mu 0 4 39 40 61 60
		f 4 39 220 -60 -240
		mu 0 4 40 41 62 61
		f 4 40 241 -61 -241
		mu 0 4 42 43 64 63
		f 4 41 242 -62 -242
		mu 0 4 43 44 65 64
		f 4 42 243 -63 -243
		mu 0 4 44 45 66 65
		f 4 43 244 -64 -244
		mu 0 4 45 46 67 66
		f 4 44 245 -65 -245
		mu 0 4 46 47 68 67
		f 4 45 246 -66 -246
		mu 0 4 47 48 69 68
		f 4 46 247 -67 -247
		mu 0 4 48 49 70 69
		f 4 47 248 -68 -248
		mu 0 4 49 50 71 70
		f 4 48 249 -69 -249
		mu 0 4 50 51 72 71
		f 4 49 250 -70 -250
		mu 0 4 51 52 73 72
		f 4 50 251 -71 -251
		mu 0 4 52 53 74 73
		f 4 51 252 -72 -252
		mu 0 4 53 54 75 74
		f 4 52 253 -73 -253
		mu 0 4 54 55 76 75
		f 4 53 254 -74 -254
		mu 0 4 55 56 77 76
		f 4 54 255 -75 -255
		mu 0 4 56 57 78 77
		f 4 55 256 -76 -256
		mu 0 4 57 58 79 78
		f 4 56 257 -77 -257
		mu 0 4 58 59 80 79
		f 4 57 258 -78 -258
		mu 0 4 59 60 81 80
		f 4 58 259 -79 -259
		mu 0 4 60 61 82 81
		f 4 59 240 -80 -260
		mu 0 4 61 62 83 82
		f 4 60 261 -81 -261
		mu 0 4 63 64 85 84
		f 4 61 262 -82 -262
		mu 0 4 64 65 86 85
		f 4 62 263 -83 -263
		mu 0 4 65 66 87 86
		f 4 63 264 -84 -264
		mu 0 4 66 67 88 87
		f 4 64 265 -85 -265
		mu 0 4 67 68 89 88
		f 4 65 266 -86 -266
		mu 0 4 68 69 90 89
		f 4 66 267 -87 -267
		mu 0 4 69 70 91 90
		f 4 67 268 -88 -268
		mu 0 4 70 71 92 91
		f 4 68 269 -89 -269
		mu 0 4 71 72 93 92
		f 4 69 270 -90 -270
		mu 0 4 72 73 94 93
		f 4 70 271 -91 -271
		mu 0 4 73 74 95 94
		f 4 71 272 -92 -272
		mu 0 4 74 75 96 95
		f 4 72 273 -93 -273
		mu 0 4 75 76 97 96
		f 4 73 274 -94 -274
		mu 0 4 76 77 98 97
		f 4 74 275 -95 -275
		mu 0 4 77 78 99 98
		f 4 75 276 -96 -276
		mu 0 4 78 79 100 99
		f 4 76 277 -97 -277
		mu 0 4 79 80 101 100
		f 4 77 278 -98 -278
		mu 0 4 80 81 102 101
		f 4 78 279 -99 -279
		mu 0 4 81 82 103 102
		f 4 79 260 -100 -280
		mu 0 4 82 83 104 103
		f 4 80 281 -101 -281
		mu 0 4 84 85 106 105
		f 4 81 282 -102 -282
		mu 0 4 85 86 107 106
		f 4 82 283 -103 -283
		mu 0 4 86 87 108 107
		f 4 83 284 -104 -284
		mu 0 4 87 88 109 108
		f 4 84 285 -105 -285
		mu 0 4 88 89 110 109
		f 4 85 286 -106 -286
		mu 0 4 89 90 111 110
		f 4 86 287 -107 -287
		mu 0 4 90 91 112 111
		f 4 87 288 -108 -288
		mu 0 4 91 92 113 112
		f 4 88 289 -109 -289
		mu 0 4 92 93 114 113
		f 4 89 290 -110 -290
		mu 0 4 93 94 115 114
		f 4 90 291 -111 -291
		mu 0 4 94 95 116 115
		f 4 91 292 -112 -292
		mu 0 4 95 96 117 116
		f 4 92 293 -113 -293
		mu 0 4 96 97 118 117
		f 4 93 294 -114 -294
		mu 0 4 97 98 119 118
		f 4 94 295 -115 -295
		mu 0 4 98 99 120 119
		f 4 95 296 -116 -296
		mu 0 4 99 100 121 120
		f 4 96 297 -117 -297
		mu 0 4 100 101 122 121
		f 4 97 298 -118 -298
		mu 0 4 101 102 123 122
		f 4 98 299 -119 -299
		mu 0 4 102 103 124 123
		f 4 99 280 -120 -300
		mu 0 4 103 104 125 124
		f 4 100 301 -121 -301
		mu 0 4 105 106 127 126
		f 4 101 302 -122 -302
		mu 0 4 106 107 128 127
		f 4 102 303 -123 -303
		mu 0 4 107 108 129 128
		f 4 103 304 -124 -304
		mu 0 4 108 109 130 129
		f 4 104 305 -125 -305
		mu 0 4 109 110 131 130
		f 4 105 306 -126 -306
		mu 0 4 110 111 132 131
		f 4 106 307 -127 -307
		mu 0 4 111 112 133 132
		f 4 107 308 -128 -308
		mu 0 4 112 113 134 133
		f 4 108 309 -129 -309
		mu 0 4 113 114 135 134
		f 4 109 310 -130 -310
		mu 0 4 114 115 136 135
		f 4 110 311 -131 -311
		mu 0 4 115 116 137 136
		f 4 111 312 -132 -312
		mu 0 4 116 117 138 137
		f 4 112 313 -133 -313
		mu 0 4 117 118 139 138
		f 4 113 314 -134 -314
		mu 0 4 118 119 140 139
		f 4 114 315 -135 -315
		mu 0 4 119 120 141 140
		f 4 115 316 -136 -316
		mu 0 4 120 121 142 141
		f 4 116 317 -137 -317
		mu 0 4 121 122 143 142
		f 4 117 318 -138 -318
		mu 0 4 122 123 144 143
		f 4 118 319 -139 -319
		mu 0 4 123 124 145 144
		f 4 119 300 -140 -320
		mu 0 4 124 125 146 145
		f 4 120 321 -141 -321
		mu 0 4 126 127 148 147
		f 4 121 322 -142 -322
		mu 0 4 127 128 149 148
		f 4 122 323 -143 -323
		mu 0 4 128 129 150 149
		f 4 123 324 -144 -324
		mu 0 4 129 130 151 150
		f 4 124 325 -145 -325
		mu 0 4 130 131 152 151
		f 4 125 326 -146 -326
		mu 0 4 131 132 153 152
		f 4 126 327 -147 -327
		mu 0 4 132 133 154 153
		f 4 127 328 -148 -328
		mu 0 4 133 134 155 154
		f 4 128 329 -149 -329
		mu 0 4 134 135 156 155
		f 4 129 330 -150 -330
		mu 0 4 135 136 157 156
		f 4 130 331 -151 -331
		mu 0 4 136 137 158 157
		f 4 131 332 -152 -332
		mu 0 4 137 138 159 158
		f 4 132 333 -153 -333
		mu 0 4 138 139 160 159
		f 4 133 334 -154 -334
		mu 0 4 139 140 161 160
		f 4 134 335 -155 -335
		mu 0 4 140 141 162 161
		f 4 135 336 -156 -336
		mu 0 4 141 142 163 162
		f 4 136 337 -157 -337
		mu 0 4 142 143 164 163
		f 4 137 338 -158 -338
		mu 0 4 143 144 165 164
		f 4 138 339 -159 -339
		mu 0 4 144 145 166 165
		f 4 139 320 -160 -340
		mu 0 4 145 146 167 166
		f 4 140 341 -161 -341
		mu 0 4 147 148 169 168
		f 4 141 342 -162 -342
		mu 0 4 148 149 170 169
		f 4 142 343 -163 -343
		mu 0 4 149 150 171 170
		f 4 143 344 -164 -344
		mu 0 4 150 151 172 171
		f 4 144 345 -165 -345
		mu 0 4 151 152 173 172
		f 4 145 346 -166 -346
		mu 0 4 152 153 174 173
		f 4 146 347 -167 -347
		mu 0 4 153 154 175 174
		f 4 147 348 -168 -348
		mu 0 4 154 155 176 175
		f 4 148 349 -169 -349
		mu 0 4 155 156 177 176
		f 4 149 350 -170 -350
		mu 0 4 156 157 178 177
		f 4 150 351 -171 -351
		mu 0 4 157 158 179 178
		f 4 151 352 -172 -352
		mu 0 4 158 159 180 179
		f 4 152 353 -173 -353
		mu 0 4 159 160 181 180
		f 4 153 354 -174 -354
		mu 0 4 160 161 182 181
		f 4 154 355 -175 -355
		mu 0 4 161 162 183 182
		f 4 155 356 -176 -356
		mu 0 4 162 163 184 183
		f 4 156 357 -177 -357
		mu 0 4 163 164 185 184
		f 4 157 358 -178 -358
		mu 0 4 164 165 186 185
		f 4 158 359 -179 -359
		mu 0 4 165 166 187 186
		f 4 159 340 -180 -360
		mu 0 4 166 167 188 187
		f 4 160 361 -181 -361
		mu 0 4 168 169 190 189
		f 4 161 362 -182 -362
		mu 0 4 169 170 191 190
		f 4 162 363 -183 -363
		mu 0 4 170 171 192 191
		f 4 163 364 -184 -364
		mu 0 4 171 172 193 192
		f 4 164 365 -185 -365
		mu 0 4 172 173 194 193
		f 4 165 366 -186 -366
		mu 0 4 173 174 195 194
		f 4 166 367 -187 -367
		mu 0 4 174 175 196 195
		f 4 167 368 -188 -368
		mu 0 4 175 176 197 196
		f 4 168 369 -189 -369
		mu 0 4 176 177 198 197
		f 4 169 370 -190 -370
		mu 0 4 177 178 199 198
		f 4 170 371 -191 -371
		mu 0 4 178 179 200 199
		f 4 171 372 -192 -372
		mu 0 4 179 180 201 200
		f 4 172 373 -193 -373
		mu 0 4 180 181 202 201
		f 4 173 374 -194 -374
		mu 0 4 181 182 203 202
		f 4 174 375 -195 -375
		mu 0 4 182 183 204 203
		f 4 175 376 -196 -376
		mu 0 4 183 184 205 204
		f 4 176 377 -197 -377
		mu 0 4 184 185 206 205
		f 4 177 378 -198 -378
		mu 0 4 185 186 207 206
		f 4 178 379 -199 -379
		mu 0 4 186 187 208 207
		f 4 179 360 -200 -380
		mu 0 4 187 188 209 208
		f 3 180 381 -381
		mu 0 3 189 190 210
		f 3 181 382 -382
		mu 0 3 190 191 211
		f 3 182 383 -383
		mu 0 3 191 192 212
		f 3 183 384 -384
		mu 0 3 192 193 213
		f 3 184 385 -385
		mu 0 3 193 194 214
		f 3 185 386 -386
		mu 0 3 194 195 215
		f 3 186 387 -387
		mu 0 3 195 196 216
		f 3 187 388 -388
		mu 0 3 196 197 217
		f 3 188 389 -389
		mu 0 3 197 198 218
		f 3 189 390 -390
		mu 0 3 198 199 219
		f 3 190 391 -391
		mu 0 3 199 200 220
		f 3 191 392 -392
		mu 0 3 200 201 221
		f 3 192 393 -393
		mu 0 3 201 202 222
		f 3 193 394 -394
		mu 0 3 202 203 223
		f 3 194 395 -395
		mu 0 3 203 204 224
		f 3 195 396 -396
		mu 0 3 204 205 225
		f 3 196 397 -397
		mu 0 3 205 206 226
		f 3 197 398 -398
		mu 0 3 206 207 227
		f 3 198 399 -399
		mu 0 3 207 208 228
		f 3 199 380 -400
		mu 0 3 208 209 229;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BaseBoard";
	rename -uid "93FFCA80-4485-ECD3-056F-82A18E28EDFF";
createNode transform -n "BaseBoard1" -p "BaseBoard";
	rename -uid "76CA42B6-4727-5F79-8805-E3B94C8914A5";
	setAttr ".rp" -type "double3" -2.9713248180572851 0.20750522337475324 -2.9350000416875952 ;
	setAttr ".sp" -type "double3" -2.9713248180572851 0.20750522337475324 -2.9350000416875952 ;
createNode mesh -n "BaseBoardShape1" -p "BaseBoard1";
	rename -uid "B1410449-48CB-BE1C-19E4-27A76FA08978";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[5:13]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.3750123530626297 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.375 0.25
		 0.125 0 0.125 0.25 0.625 0.25 0.37501222 0.5 0.625 0.75238937 0.625 1 0.375 1 0.37501249
		 0.75 0.625 0 0.87261069 -1.1641532e-09 0.87261063 0.25 0.625 0.49761063 0.37501222
		 0.5 0.625 0.49761063 0.625 0.75238937 0.37501249 0.75 0.37501222 0.5 0.625 0.49761063
		 0.625 0.75238937 0.37501249 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -2.4429917 0.2432178 2.5 
		-2.4429917 0.2432178 2.5 -2.4429917 -0.14736432 2.5 -2.4429917 -0.14736432 2.5 -2.4429917 
		-0.14736432 2.5 -2.4429917 0.2432178 2.5 -2.4429917 -0.14736432 2.5 -2.4429917 0.2432178 
		2.5 -2.4429917 -0.14736432 2.5 -2.4429917 -0.14736432 2.5 -2.4429917 0.2432178 2.5 
		-2.4429917 0.2432178 2.5 -2.4429917 -0.14736432 2.4423573 -2.4429917 -0.14736432 
		2.4997027 -2.4429917 0.2432178 2.4423573 -2.4429917 0.2432178 2.4997027;
	setAttr -s 16 ".vt[0:15]"  -0.55700827 -0.180843 0.5 -0.49965787 -0.180843 0.5
		 -0.55700827 0.5 0.5 -0.49965787 0.5 0.5 -0.55700541 0.5 -5.50000048 -0.55700541 -0.180843 -5.50000048
		 -0.49965787 0.5 -5.44265556 -0.49965787 -0.180843 -5.44265556 1.69234657 0.5 -5.44265556
		 1.63499904 0.5 -5.50000048 1.69234657 -0.180843 -5.44265556 1.63499904 -0.180843 -5.50000048
		 1.69234657 0.5 -5.57235718 1.63499904 0.5 -5.62970257 1.69234657 -0.180843 -5.57235718
		 1.63499904 -0.180843 -5.62970257;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 0 2 0 1 3 0 2 4 0 3 6 0 4 5 0
		 5 0 0 6 4 1 7 1 0 5 7 1 7 6 0 6 8 0 4 9 0 8 9 1 7 10 0 10 8 0 5 11 0 11 10 1 9 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 14 12 0 11 15 0 15 14 0 13 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 10 4 1
		f 4 1 5 8 -5
		mu 0 4 1 4 13 5
		f 4 10 9 -1 -8
		mu 0 4 9 6 7 8
		f 4 -10 11 -6 -4
		mu 0 4 10 11 12 4
		f 4 7 2 4 6
		mu 0 4 2 0 1 3
		f 4 -23 -25 -27 -28
		mu 0 4 18 19 20 21
		f 4 -9 12 14 -14
		mu 0 4 5 13 15 14
		f 4 -12 15 16 -13
		mu 0 4 13 6 16 15
		f 4 -11 17 18 -16
		mu 0 4 6 9 17 16
		f 4 -7 13 19 -18
		mu 0 4 9 5 14 17
		f 4 -15 20 22 -22
		mu 0 4 14 15 19 18
		f 4 -17 23 24 -21
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 21 27 -26
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BaseBoard2" -p "BaseBoard";
	rename -uid "7E2C1EB5-455E-4620-17C2-5A81BA100E7D";
	setAttr ".rp" -type "double3" 0.74133273151532819 0.20750522337475324 -2.9350000416875952 ;
	setAttr ".sp" -type "double3" 0.74133273151532819 0.20750522337475324 -2.9350000416875952 ;
createNode mesh -n "BaseBoardShape2" -p "BaseBoard2";
	rename -uid "B7D3EF8E-4B44-5546-FE91-7590363B9ABA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0:3]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.3750123530626297 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.37501222 0.5 0.625
		 0.75238937 0.37501249 0.75 0.625 0.49761063 0.37501222 0.5 0.625 0.49761063 0.625
		 0.75238937 0.37501249 0.75 0.37501249 0.75 0.625 0.75238937 0.625 0.49761063 0.37501222
		 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  1.2696658 -0.14736432 2.5 
		1.2696658 0.2432178 2.5 1.2696658 -0.14736432 2.5 1.2696658 0.2432178 2.5 1.2696658 
		-0.14736432 2.5 1.2696658 -0.14736432 2.5 1.2696658 0.2432178 2.5 1.2696658 0.2432178 
		2.5 1.2696657 0.2432178 2.4786499 1.2696658 0.2432178 2.4213052 1.2696658 -0.14736432 
		2.4213052 1.2696657 -0.14736432 2.4786499;
	setAttr -s 12 ".vt[0:11]"  0.020152688 0.5 -5.50000048 0.020152688 -0.18084298 -5.50000048
		 -0.037194967 0.5 -5.44265556 -0.037194967 -0.18084298 -5.44265556 1.73033416 0.5 -5.44265556
		 1.73033416 0.5 -5.50000048 1.73033416 -0.18084298 -5.44265556 1.73033416 -0.18084298 -5.50000048
		 0.020152688 -0.18084298 -5.60864973 -0.037194967 -0.18084298 -5.55130482 -0.037194967 0.5 -5.55130482
		 0.020152688 0.5 -5.60864973;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 0 1 1 3 1 3 2 0 2 4 0 0 5 0 4 5 0
		 3 6 0 6 4 0 1 7 0 7 6 0 5 7 0 1 8 0 3 9 0 8 9 0 2 10 0 9 10 0 0 11 0 10 11 0 11 8 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 -2 4 6 -6
		mu 0 4 0 3 5 4
		f 4 -4 7 8 -5
		mu 0 4 3 1 6 5
		f 4 -3 9 10 -8
		mu 0 4 1 2 7 6
		f 4 -1 5 11 -10
		mu 0 4 2 0 4 7
		f 4 -7 -9 -11 -12
		mu 0 4 4 5 6 7
		f 4 14 16 18 19
		mu 0 4 8 9 10 11
		f 4 2 13 -15 -13
		mu 0 4 2 1 9 8
		f 4 3 15 -17 -14
		mu 0 4 1 3 10 9
		f 4 1 17 -19 -16
		mu 0 4 3 0 11 10
		f 4 0 12 -20 -18
		mu 0 4 0 2 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TopBoard3" -p "BaseBoard";
	rename -uid "A79CCB73-4173-47C2-A4EB-AAB364A76AB7";
	setAttr ".rp" -type "double3" -3 4 -3 ;
	setAttr ".sp" -type "double3" -3 4 -3 ;
createNode mesh -n "TopBoardShape3" -p "TopBoard3";
	rename -uid "471FFC2B-40AC-F4AB-76F9-AE938D9CB61D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[5:8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.3750123530626297 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.375 0.25
		 0.125 0 0.125 0.25 0.625 0.25 0.37501222 0.5 0.625 0.75238937 0.625 1 0.375 1 0.37501249
		 0.75 0.625 0 0.87261069 -1.1641532e-09 0.87261063 0.25 0.625 0.49761063 0.37501222
		 0.5 0.625 0.49761063 0.625 0.75238937 0.37501249 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.4429946 3.8905823 2.5000005 
		-2.4429946 3.8905823 2.5000005 -2.4429946 3.5000002 2.5000005 -2.4429946 3.5000002 
		2.5000005 -2.4429946 3.5000002 2.5000005 -2.4429946 3.8905823 2.5000005 -2.4429946 
		3.5000002 2.5000005 -2.4429946 3.8905823 2.5000005 1.307651 3.5000002 2.5000005 1.3649983 
		3.5000002 2.5000005 1.307651 3.8905823 2.5000005 1.3649983 3.8905823 2.5000005;
	setAttr -s 12 ".vt[0:11]"  -0.55700827 -0.180843 0.5 -0.49965787 -0.180843 0.5
		 -0.55700827 0.5 0.5 -0.49965787 0.5 0.5 -0.55700541 0.5 -5.50000048 -0.55700541 -0.180843 -5.50000048
		 -0.49965787 0.5 -5.44265556 -0.49965787 -0.180843 -5.44265556 1.69234657 0.5 -5.44265556
		 1.63499904 0.5 -5.50000048 1.69234657 -0.180843 -5.44265556 1.63499904 -0.180843 -5.50000048;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 0 2 0 1 3 0 2 4 0 3 6 0 4 5 0
		 5 0 0 6 4 1 7 1 0 5 7 1 7 6 0 6 8 0 4 9 0 8 9 0 7 10 0 10 8 0 5 11 0 11 10 0 9 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 10 4 1
		f 4 1 5 8 -5
		mu 0 4 1 4 13 5
		f 4 10 9 -1 -8
		mu 0 4 9 6 7 8
		f 4 -10 11 -6 -4
		mu 0 4 10 11 12 4
		f 4 7 2 4 6
		mu 0 4 2 0 1 3
		f 4 -9 12 14 -14
		mu 0 4 5 13 15 14
		f 4 -12 15 16 -13
		mu 0 4 13 6 16 15
		f 4 -11 17 18 -16
		mu 0 4 6 9 17 16
		f 4 -7 13 19 -18
		mu 0 4 9 5 14 17
		f 4 -15 -17 -19 -20
		mu 0 4 14 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SkyDomeLight";
	rename -uid "29C14FF6-41A6-818D-90A3-37865DEC8E9D";
createNode aiSkyDomeLight -n "SkyDomeLightShape" -p "SkyDomeLight";
	rename -uid "DA7F0D1E-4B14-3E1A-4605-31B9A822E56C";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".intensity" 0.44999998807907104;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode transform -n "ThreeQuartersCamera";
	rename -uid "9002CF8A-4D7B-8340-C6EF-8990F7E87342";
	setAttr ".t" -type "double3" 9.0112916990939294 5.7627830456612408 8.8521717268583284 ;
	setAttr ".r" -type "double3" -20.400000000000649 44.800000000000331 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 1.6653345369377348e-15 1.221245327087672e-15 0 ;
	setAttr ".rpt" -type "double3" -7.8361901777816407e-16 -7.6594077257267976e-17 -1.4755102603458766e-15 ;
	setAttr ".sp" -type "double3" 1.6653345369377348e-15 1.2212453270876722e-15 0 ;
	setAttr ".spt" -type "double3" 0 -1.9721522630525293e-31 0 ;
createNode camera -n "ThreeQuartersCameraShape" -p "ThreeQuartersCamera";
	rename -uid "2053E732-41CD-DCAA-CC5D-3DA09EA345AA";
	setAttr -k off ".v";
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".coi" 17.675323156274118;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
createNode transform -n "RoomBase";
	rename -uid "0B7DB4AA-4401-F894-B868-FDA208838498";
createNode transform -n "LeftWall" -p "RoomBase";
	rename -uid "64105C19-402F-3C29-DAFC-97A355BE0DF8";
	setAttr ".rp" -type "double3" -0.065000057220458984 1.934999942779541 -0.065000057220458984 ;
	setAttr ".sp" -type "double3" -0.065000057220458984 1.934999942779541 -0.065000057220458984 ;
createNode mesh -n "LeftWallShape" -p "LeftWall";
	rename -uid "5EF22416-4526-0877-9C5E-1BAC26A460E0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 3 "f[1]" "f[3]" "f[6:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.125 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.125 0 0.125 0.25 0.625 0.75 0.375 0.75 0.625
		 1 0.375 1 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.625 0.75 0.625 1 0.375 1 0.375
		 0 0.375 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[7:11]" -type "float3"  0 -5.9604645e-08 2.3841858e-07 
		0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".vt[0:11]"  -3 0 3 3 0 3 -3 4 3 -3 4 -3 -3 0 -3 3 0 -3
		 -3.13000011 4 -3.13000011 3 -0.13000011 -3.13000011 -3.13000011 -0.13000011 -3.13000011
		 3 -0.13000011 3 -3.13000011 -0.13000011 3 -3.13000011 4 3;
	setAttr -s 19 ".ed[0:18]"  0 1 0 4 5 0 0 2 0 2 3 0 3 4 0 4 0 0 5 1 0
		 3 6 0 5 7 0 8 7 0 6 8 0 1 9 0 7 9 0 0 10 0 10 9 0 8 10 0 2 11 0 10 11 0 11 6 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 9 12 -15 -16
		mu 0 4 2 16 17 18
		f 4 15 17 18 10
		mu 0 4 6 19 20 21
		f 4 5 0 -7 -2
		mu 0 4 9 11 10 8
		f 4 -5 -4 -3 -6
		mu 0 4 12 15 14 13
		f 4 6 11 -13 -9
		mu 0 4 3 5 17 16
		f 4 -1 13 14 -12
		mu 0 4 5 4 18 17
		f 4 2 16 -18 -14
		mu 0 4 0 1 20 19
		f 4 3 7 -19 -17
		mu 0 4 1 7 21 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ArchWall" -p "RoomBase";
	rename -uid "072AC685-4715-B859-509E-949E0792F9E6";
	setAttr ".rp" -type "double3" -0.065000176429748535 1.9350008964538574 -3.065000057220459 ;
	setAttr ".sp" -type "double3" -0.065000176429748535 1.9350008964538574 -3.065000057220459 ;
createNode mesh -n "ArchWallShape" -p "ArchWall";
	rename -uid "D15682FB-4EDB-ACC6-1248-43B4EE57ADC4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[49]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 3 "f[15:24]" "f[50]" "f[52:55]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 5 "f[0]" "f[9:14]" "f[41:48]" "f[51]" "f[64:69]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1:8]" "f[25:40]" "f[56:63]";
	setAttr ".pv" -type "double2" 0.50000610947608948 0.37619468569755554 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 164 ".uvst[0].uvsp[0:163]" -type "float2" 0.125 0 0.125 0.1630851
		 0.625 0 0.875 0 0.375 0.16308509 0.5 0.5 0.49999997 0.25 0.875 0.16308509 0.375 0
		 0.625 0.1630851 0.46723309 0.25 0.43511954 0.25 0.40422508 0.25 0.375 0.25 0.375
		 0.22614814 0.375 0.20395987 0.375 0.18313441 0.125 0.18313441 0.125 0.20395987 0.125
		 0.22614814 0.375 0.5 0.125 0.25 0.40422508 0.5 0.43511954 0.5 0.46723309 0.5 0.625
		 0.18313441 0.625 0.20395988 0.625 0.22614816 0.625 0.25 0.59577489 0.25 0.56488043
		 0.25 0.53276688 0.25 0.53276688 0.5 0.56488043 0.5 0.59577489 0.5 0.875 0.25 0.625
		 0.5 0.875 0.22614816 0.875 0.20395987 0.875 0.18313439 0.625 0 0.875 0 0.875 0.16308509
		 0.625 0.1630851 0.125 0 0.375 0 0.375 0.16308509 0.125 0.1630851 0.375 0.18313441
		 0.125 0.18313441 0.375 0.20395987 0.125 0.20395987 0.375 0.22614814 0.125 0.22614814
		 0.375 0.25 0.125 0.25 0.40422508 0.25 0.40422508 0.5 0.375 0.5 0.43511954 0.25 0.43511954
		 0.5 0.46723309 0.25 0.46723309 0.5 0.49999997 0.25 0.5 0.5 0.53276688 0.25 0.53276688
		 0.5 0.56488043 0.25 0.56488043 0.5 0.59577489 0.25 0.59577489 0.5 0.625 0.25 0.625
		 0.5 0.625 0.22614816 0.875 0.22614816 0.875 0.25 0.625 0.20395988 0.875 0.20395987
		 0.625 0.18313441 0.875 0.18313439 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 70 ".pt";
	setAttr ".pt[0]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[1]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[2]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[3]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[4]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[5]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[6]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[7]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[8]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[9]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[10]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[11]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[12]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[13]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[14]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[15]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[16]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[17]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[18]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[19]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[20]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[21]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[22]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[23]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[24]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[25]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[26]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[27]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[28]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[29]" -type "float3" -0.74252665 0 0 ;
	setAttr ".pt[30]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[31]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[32]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[33]" -type "float3" -0.74252665 1.4901161e-08 2.3841858e-07 ;
	setAttr ".pt[34]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[35]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[36]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[37]" -type "float3" -0.74252665 0 2.3841858e-07 ;
	setAttr ".pt[38]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[42]" -type "float3" 0 8.3446503e-07 1.1920929e-07 ;
	setAttr ".pt[54]" -type "float3" -0.177348 0 0 ;
	setAttr ".pt[55]" -type "float3" -0.177348 0 0 ;
	setAttr ".pt[56]" -type "float3" -0.47752479 0 0 ;
	setAttr ".pt[57]" -type "float3" -0.47752479 0 0 ;
	setAttr ".pt[58]" -type "float3" -0.63221586 0 0 ;
	setAttr ".pt[59]" -type "float3" -0.63221586 0 0 ;
	setAttr ".pt[60]" -type "float3" -0.68639231 0 0 ;
	setAttr ".pt[61]" -type "float3" -0.68639231 0 0 ;
	setAttr ".pt[62]" -type "float3" -0.5985235 0 0 ;
	setAttr ".pt[63]" -type "float3" -0.5985235 0 0 ;
	setAttr ".pt[64]" -type "float3" -0.2829622 0 0 ;
	setAttr ".pt[65]" -type "float3" -0.2829622 0 0 ;
	setAttr ".pt[76]" -type "float3" -0.74252611 0 -2.3841858e-07 ;
	setAttr ".pt[77]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".pt[78]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[79]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[80]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[81]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[82]" -type "float3" 2.9802322e-08 0 -2.3841858e-07 ;
	setAttr ".pt[83]" -type "float3" 2.9802322e-08 0 -2.3841858e-07 ;
	setAttr ".pt[84]" -type "float3" 2.9802322e-08 0 -2.3841858e-07 ;
	setAttr ".pt[85]" -type "float3" 2.9802322e-08 0 -2.3841858e-07 ;
	setAttr ".pt[86]" -type "float3" 2.9802322e-08 0 -2.3841858e-07 ;
	setAttr ".pt[87]" -type "float3" 2.9802322e-08 0 -2.3841858e-07 ;
	setAttr ".pt[88]" -type "float3" 2.9802322e-08 0 -2.3841858e-07 ;
	setAttr ".pt[89]" -type "float3" 2.9802322e-08 0 -2.3841858e-07 ;
	setAttr ".pt[90]" -type "float3" 2.9802322e-08 0 -2.3841858e-07 ;
	setAttr ".pt[91]" -type "float3" 2.9802322e-08 0 -2.3841858e-07 ;
	setAttr ".pt[92]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".pt[94]" -type "float3" 0 -7.7486038e-07 -1.1920929e-07 ;
	setAttr -s 78 ".vt[0:77]"  -0.065466076 0.053019404 -3 2.032345057 0.053019404 -3
		 -0.065466076 0.053019524 -3.12999988 2.032345057 0.053019524 -3.12999988 0.77872372 3.058967829 -3
		 0.58197594 2.99928522 -3 0.4006522 2.90236592 -3 0.24172059 2.77193403 -3 0.1112887 2.6130023 -3
		 0.014369518 2.43167853 -3 -0.045313627 2.23493075 -3 -0.065466076 2.030319929 -3
		 0.98343945 3.079120398 -3 -0.065466091 2.030319929 -3.12999988 -0.045313641 2.23493075 -3.12999988
		 0.014369503 2.43167853 -3.12999988 0.11128868 2.6130023 -3.12999988 0.24172057 2.77193403 -3.12999988
		 0.40065217 2.90236592 -3.12999988 0.58197594 2.99928522 -3.12999988 0.77872372 3.058967829 -3.12999988
		 0.98343945 3.079120398 -3.12999988 2.012192726 2.23493075 -3 1.95250988 2.43167853 -3
		 1.85559034 2.6130023 -3 1.72515845 2.77193403 -3 1.56622684 2.90236592 -3 1.38490295 2.99928522 -3
		 1.18815517 3.058967829 -3 2.032345057 2.030319929 -3 2.032345057 2.030319929 -3.12999988
		 1.18815517 3.058967829 -3.12999988 1.38490295 2.99928522 -3.12999988 1.56622684 2.90236592 -3.12999988
		 1.72515845 2.77193403 -3.12999988 1.85559034 2.6130023 -3.12999988 1.95250988 2.43167853 -3.12999988
		 2.012192726 2.23493075 -3.12999988 3 -0.13000011 -3.13000011 3 0 -3 3.000002145767 2.030319929 -3.13000011
		 3.000002145767 2.030319929 -3 -3.13000011 0.053023696 -3.12999964 -2.99999785 0.053019404 -3
		 -3.000002622604 2.030319929 -3 -3.1300025 2.030319929 -3.13000011 -3.000002622604 2.43790674 -3
		 -3.13000202 2.43790674 -3.13000011 -3.000000953674 2.89236689 -3 -3.13000107 2.89236689 -3.13000011
		 -2.99999952 3.42781782 -3 -3.12999964 3.42781782 -3.13000011 -2.99999785 3.99999809 -3
		 -3.12999773 3.99999809 -3.13000011 -1.39200997 4.000001907349 -3 -1.39200997 4.000001907349 -3.13000011
		 -0.26024956 4.000001907349 -3 -0.26024956 4.000001907349 -3.13000011 0.41045707 4.000001907349 -3
		 0.41045707 4.000001907349 -3.13000011 0.9273051 4.000001430511 -3 0.9273051 4.000001430511 -3.13000011
		 1.42696166 4.000001907349 -3 1.42696166 4.000001907349 -3.13000011 1.82903671 4.000001907349 -3
		 1.82903671 4.000001907349 -3.13000011 2.29246831 4.000001907349 -3 2.29246831 4.000001907349 -3.13000011
		 2.99999738 3.99999809 -3 2.99999738 3.99999809 -3.13000011 2.99999857 3.42781782 -3
		 2.99999857 3.42781782 -3.13000011 3.000000953674 2.89236689 -3 3.000000953674 2.89236689 -3.13000011
		 3.000001907349 2.43790674 -3 3.000001907349 2.43790674 -3.13000011 -0.065466583 -0.13 -3.12999964
		 -3.13000059 -0.12999666 -3.12999964;
	setAttr -s 149 ".ed[0:148]"  0 1 0 0 11 0 1 29 0 13 2 0 30 3 0 11 10 0
		 14 13 0 10 9 0 15 14 0 9 8 0 16 15 0 8 7 0 17 16 0 7 6 0 18 17 0 6 5 0 19 18 0 5 4 0
		 20 19 0 4 12 0 21 20 0 12 28 0 31 21 0 28 27 0 32 31 0 27 26 0 33 32 0 26 25 0 34 33 0
		 25 24 0 35 34 0 24 23 0 36 35 0 23 22 0 37 36 0 22 29 0 30 37 0 3 38 1 1 39 0 38 39 0
		 30 40 1 40 38 0 29 41 1 40 41 1 39 41 0 2 42 0 0 43 0 11 44 1 43 44 0 13 45 1 45 42 0
		 10 46 1 44 46 0 14 47 1 47 45 0 9 48 1 46 48 0 15 49 1 49 47 0 8 50 1 48 50 0 16 51 1
		 51 49 0 7 52 1 50 52 0 17 53 1 52 53 0 53 51 0 6 54 1 52 54 0 18 55 1 54 55 1 55 53 0
		 5 56 1 54 56 0 19 57 1 56 57 1 57 55 0 4 58 1 56 58 0 20 59 1 58 59 1 59 57 0 12 60 1
		 58 60 0 21 61 1 61 60 1 61 59 0 28 62 1 60 62 0 31 63 1 62 63 1 63 61 0 27 64 1 62 64 0
		 32 65 1 64 65 1 65 63 0 26 66 1 64 66 0 33 67 1 66 67 1 67 65 0 25 68 1 66 68 0 34 69 1
		 68 69 1 69 67 0 24 70 1 68 70 0 35 71 1 70 71 1 71 69 0 23 72 1 70 72 0 36 73 1 72 73 1
		 73 71 0 22 74 1 72 74 0 37 75 1 74 75 1 75 73 0 74 41 0 40 75 0 0 2 0 1 3 0 2 3 0
		 11 13 1 29 30 1 10 14 1 9 15 1 8 16 1 7 17 1 6 18 1 5 19 1 4 20 1 12 21 1 28 31 1
		 27 32 1 26 33 1 25 34 1 24 35 1 23 36 1 22 37 1 38 76 0 2 76 1 76 77 0 42 77 0;
	setAttr -s 70 -ch 280 ".fc[0:69]" -type "polyFaces" 
		f 4 -40 -42 43 -45
		mu 0 4 40 41 42 43
		f 4 69 71 72 -67
		mu 0 4 54 56 57 58
		f 4 74 76 77 -72
		mu 0 4 56 59 60 57
		f 4 79 81 82 -77
		mu 0 4 59 61 62 60
		f 4 84 -87 87 -82
		mu 0 4 61 63 64 62
		f 4 89 91 92 86
		mu 0 4 63 65 66 64
		f 4 94 96 97 -92
		mu 0 4 65 67 68 66
		f 4 99 101 102 -97
		mu 0 4 67 69 70 68
		f 4 104 106 107 -102
		mu 0 4 69 71 72 70
		f 4 109 111 112 -107
		mu 0 4 71 73 74 75
		f 4 114 116 117 -112
		mu 0 4 73 76 77 74
		f 4 119 121 122 -117
		mu 0 4 76 78 79 77
		f 4 123 -44 124 -122
		mu 0 4 78 43 42 79
		f 4 -5 40 41 -38
		mu 0 4 3 7 42 41
		f 4 -3 38 44 -43
		mu 0 4 9 2 40 43
		f 4 1 47 -49 -47
		mu 0 4 8 4 46 45
		f 4 3 45 -51 -50
		mu 0 4 1 0 44 47
		f 4 5 51 -53 -48
		mu 0 4 4 16 48 46
		f 4 6 49 -55 -54
		mu 0 4 17 1 47 49
		f 4 7 55 -57 -52
		mu 0 4 16 15 50 48
		f 4 8 53 -59 -58
		mu 0 4 18 17 49 51
		f 4 9 59 -61 -56
		mu 0 4 15 14 52 50
		f 4 10 57 -63 -62
		mu 0 4 19 18 51 53
		f 4 11 63 -65 -60
		mu 0 4 14 13 54 52
		f 4 12 61 -68 -66
		mu 0 4 21 19 53 55
		f 4 13 68 -70 -64
		mu 0 4 13 12 56 54
		f 4 14 65 -73 -71
		mu 0 4 22 20 58 57
		f 4 15 73 -75 -69
		mu 0 4 12 11 59 56
		f 4 16 70 -78 -76
		mu 0 4 23 22 57 60
		f 4 17 78 -80 -74
		mu 0 4 11 10 61 59
		f 4 18 75 -83 -81
		mu 0 4 24 23 60 62
		f 4 19 83 -85 -79
		mu 0 4 10 6 63 61
		f 4 20 80 -88 -86
		mu 0 4 5 24 62 64
		f 4 21 88 -90 -84
		mu 0 4 6 31 65 63
		f 4 22 85 -93 -91
		mu 0 4 32 5 64 66
		f 4 23 93 -95 -89
		mu 0 4 31 30 67 65
		f 4 24 90 -98 -96
		mu 0 4 33 32 66 68
		f 4 25 98 -100 -94
		mu 0 4 30 29 69 67
		f 4 26 95 -103 -101
		mu 0 4 34 33 68 70
		f 4 27 103 -105 -99
		mu 0 4 29 28 71 69
		f 4 28 100 -108 -106
		mu 0 4 36 34 70 72
		f 4 29 108 -110 -104
		mu 0 4 28 27 73 71
		f 4 30 105 -113 -111
		mu 0 4 37 35 75 74
		f 4 31 113 -115 -109
		mu 0 4 27 26 76 73
		f 4 32 110 -118 -116
		mu 0 4 38 37 74 77
		f 4 33 118 -120 -114
		mu 0 4 26 25 78 76
		f 4 34 115 -123 -121
		mu 0 4 39 38 77 79
		f 4 35 42 -124 -119
		mu 0 4 25 9 43 78
		f 4 36 120 -125 -41
		mu 0 4 7 39 79 42
		f 4 126 -128 -126 0
		mu 0 4 80 83 82 81
		f 4 -2 125 -4 -129
		mu 0 4 84 85 86 87
		f 4 2 129 4 -127
		mu 0 4 88 89 90 91
		f 4 -6 128 -7 -131
		mu 0 4 92 93 94 95
		f 4 -8 130 -9 -132
		mu 0 4 96 97 98 99
		f 4 -10 131 -11 -133
		mu 0 4 100 101 102 103
		f 4 -12 132 -13 -134
		mu 0 4 104 105 106 107
		f 4 -14 133 -15 -135
		mu 0 4 108 109 110 111
		f 4 -16 134 -17 -136
		mu 0 4 112 113 114 115
		f 4 -18 135 -19 -137
		mu 0 4 116 117 118 119
		f 4 -20 136 -21 -138
		mu 0 4 120 121 122 123
		f 4 -22 137 -23 -139
		mu 0 4 124 125 126 127
		f 4 -24 138 -25 -140
		mu 0 4 128 129 130 131
		f 4 -26 139 -27 -141
		mu 0 4 132 133 134 135
		f 4 -28 140 -29 -142
		mu 0 4 136 137 138 139
		f 4 -30 141 -31 -143
		mu 0 4 140 141 142 143
		f 4 -32 142 -33 -144
		mu 0 4 144 145 146 147
		f 4 -34 143 -35 -145
		mu 0 4 148 149 150 151
		f 4 -36 144 -37 -130
		mu 0 4 152 153 154 155
		f 4 37 145 -147 127
		mu 0 4 156 157 158 159
		f 4 146 147 -149 -46
		mu 0 4 160 161 162 163;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeftAreaLight";
	rename -uid "574CA462-466C-D7C1-E4B8-53B301A66AE1";
	setAttr ".t" -type "double3" 0 1.919400153690541 3.9885410344135774 ;
	setAttr ".r" -type "double3" -11.065247526037648 0 0 ;
	setAttr ".s" -type "double3" 1.9446212723824154 1.9446212723824154 1.9446212723824154 ;
	setAttr ".rp" -type "double3" 0 -1.0794816553874128e-15 3.4543412972397211e-15 ;
	setAttr ".rpt" -type "double3" 0 6.8304880580920074e-16 1.4296261512423823e-16 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-16 1.7763568394002505e-15 ;
	setAttr ".spt" -type "double3" 0 -5.2437014307483451e-16 1.6779844578394706e-15 ;
createNode areaLight -n "LeftAreaLightShape" -p "LeftAreaLight";
	rename -uid "2DDB3AD4-4559-5DD5-F8CC-A9918C77B924";
	setAttr -k off ".v";
	setAttr ".in" 2;
createNode transform -n "CeilingAreaLight";
	rename -uid "D5E479F1-4FCC-E1E8-F0E6-AAB6EEB29387";
	setAttr ".t" -type "double3" 0 4.4259667104708411 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 2.5216623320327809 2.5216623320327809 1 ;
	setAttr ".rp" -type "double3" 0 0 -3.5527136788005017e-15 ;
	setAttr ".rpt" -type "double3" 0 -3.5527136788005017e-15 3.5527136788005017e-15 ;
	setAttr ".sp" -type "double3" 0 0 -3.5527136788005017e-15 ;
createNode areaLight -n "CeilingAreaLightShape" -p "CeilingAreaLight";
	rename -uid "83995DA3-4689-E0C6-832D-E6978D1FC2F3";
	setAttr -k off ".v";
	setAttr ".in" 3;
createNode transform -n "TVAreaLight";
	rename -uid "08E5B189-41F2-7633-D4C5-93BDF349FE36";
	setAttr ".t" -type "double3" 1.4166313601066607 1.1523888929483581 0.44154278400002145 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 0.49678027781129541 0.39290803790529732 0.56900790335291296 ;
	setAttr ".rp" -type "double3" 0 5.234586602913058e-16 0 ;
	setAttr ".sp" -type "double3" 0 1.3322676295501878e-15 0 ;
	setAttr ".spt" -type "double3" 0 -8.0880896925888205e-16 0 ;
createNode areaLight -n "TVAreaLightShape" -p "TVAreaLight";
	rename -uid "5B0FF817-41A7-811E-FF0D-F38836027644";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.62199998 1 1 ;
	setAttr ".in" 4;
createNode transform -n "LampPointLight";
	rename -uid "222656F8-4CB1-048E-B0AD-6682EEBAB17B";
	setAttr ".t" -type "double3" -2.3352228974332365 2.716882167613945 -1.2444217967196718 ;
createNode pointLight -n "LampPointLightShape" -p "LampPointLight";
	rename -uid "25B72404-4089-BC68-7DDD-8DB0DDFD4576";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 1 0.43599999 ;
	setAttr ".in" 4;
	setAttr ".us" no;
	setAttr ".ai_samples" 3;
	setAttr ".ai_radius" 0.05000000074505806;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8759D03A-42D4-921E-EBD7-63BCD4CA84AC";
	setAttr -s 17 ".lnk";
	setAttr -s 17 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DECAA3F3-4C3B-AFA5-EE0E-8C8905FE1FAA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "729E1D56-4E76-F981-4886-25849E2945FC";
createNode displayLayerManager -n "layerManager";
	rename -uid "B03BAFBA-4694-6A61-031C-69A55C1E23DA";
createNode displayLayer -n "defaultLayer";
	rename -uid "A7B200E6-44D4-FFB6-459F-A2A342CC1964";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "658EBC39-48DC-AC99-1A48-D08BE1996626";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1D33F217-4A59-F62C-6936-BEB6228DD2E5";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "BF36E138-4185-85F1-BC6A-D8B66C1F8DB0";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".AA_samples" 4;
	setAttr ".GI_diffuse_samples" 5;
	setAttr ".version" -type "string" "5.3.4.1";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=perspShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "FCD951B2-4107-CC69-95B8-88992EB12149";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "ED3D3029-414F-D7D9-6957-9FBDDD01A664";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "A6678CAC-466A-D076-5F9C-1B823FBAE4CE";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode lambert -n "PinkColor";
	rename -uid "6AA5188C-4929-6002-D52D-539817895DE1";
	setAttr ".c" -type "float3" 0.461 0.200996 0.20235667 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "C7A6A7E1-4C29-2BB7-E335-FD8E1FE5FD6D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "11316B20-4D3D-39CB-BDD1-679F96B764DF";
createNode shadingEngine -n "blinn1SG";
	rename -uid "0E4FCFFB-484E-DC49-AF10-969EF42BDDD4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "FC249B39-4CCC-1AC3-A754-4F989544B23D";
createNode shadingEngine -n "phong1SG";
	rename -uid "A5AC7204-42EB-3C2B-0228-3E9E9A852BF7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "8BAE523F-48BF-E226-53C9-1D81D6B0451B";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "919C01AB-48EC-6AFB-FA5B-C9A5684F08CD";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1774\n            -height 1166\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1774\\n    -height 1166\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1774\\n    -height 1166\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F63719DF-48D2-269C-806B-01BE5DE1483D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "LightBrown";
	rename -uid "5B331660-4FCE-34B5-5B3A-8398FCEADB22";
	setAttr ".c" -type "float3" 0.324 0.16803126 0.107892 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "1FA41799-42BF-151C-7FC3-C28467DBD09E";
	setAttr ".ihi" 0;
	setAttr -s 23 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 21 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "8C5B57B1-4A53-3DED-47D4-FAB3755DBABB";
createNode lambert -n "DarkBrown";
	rename -uid "8336447B-4CA0-7965-0554-78812E3B5FFB";
	setAttr ".c" -type "float3" 0.153 0.079348095 0.050949 ;
createNode shadingEngine -n "DarkBrownSG";
	rename -uid "8DF58055-4F00-8480-4A31-FCB7A014964A";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "BD0498D8-4266-74DA-0D85-7DBAF26F7002";
createNode groupId -n "groupId1";
	rename -uid "FCAE41BB-4729-468D-98AB-C1B8E412903C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "1047E390-45A0-84B7-05B3-DDA0F6FF0F92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "40E4CCEF-4F73-1D90-BB0F-6FB14D69C980";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "9CCCB3FB-46F1-1B74-1448-91B0AEBE7B5D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "B4ED74D8-4C30-8C36-475F-C1A611A9C907";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "7D3022CD-4FBE-DB20-D72E-D2A600454956";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "EA822048-4DC2-04ED-3F57-1FA1A5B2F289";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "0B061D0E-4EED-54C8-286F-B29C8E037428";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "2B5FC930-4CB0-8870-0ACB-78AC448726F8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "4AF9F17A-43B8-6E46-A279-9ABA9A930925";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "42169C87-40F0-2AFA-0F1D-85B617077003";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "C3318F53-4915-E3F4-C04E-C5B47880EB16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "C04B332A-4322-BF65-5E48-6883A0DDF3E0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "9DA21F70-4DAD-212C-116C-0FAB1EC089A5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "757EA107-4D5E-5DAD-FCA2-CEA85FEA4EF7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	rename -uid "E4076ED7-4ECC-D4A2-F288-E79F03366EF1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "6014A14B-4A24-9BD6-0C4F-DA86C0C0C8BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "3394F939-40D2-51DD-588E-CD87D2F97AD6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "2B591C2B-4404-9825-6DF8-348191147A40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "CA063889-4374-CA83-3167-87BF4DFD1198";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "7153E656-40A3-D9BB-64FD-47BB052F2F28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "A66FF94B-4325-CC25-0C4A-DFB2C447D91E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "B4664B20-4F03-FBAC-649D-E6A0CAA92C2C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	rename -uid "3BEB4881-4777-0D7E-79A6-E684E0CA052E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "079E7A3D-469F-7E9D-CDAB-5D9BD75BC45A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "4260D924-4EA5-B639-EDDA-498AF9F87750";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "AF6E940B-4F68-E643-D530-BFA1CADE0C86";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	rename -uid "A5D22A5F-4411-C79B-CBD0-4EABC192F8E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "1CB8FFDD-41FC-B88A-FDF6-BD86B5531E09";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	rename -uid "E68815E2-418E-48E4-E1E6-FF9710EAF9C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	rename -uid "6399DC92-46EB-C22E-AD63-F9B777CBF69B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	rename -uid "E90B38B0-4E79-677B-01E4-3B9EDE4520C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	rename -uid "4E148D10-4A3E-F852-0F8D-10892BF6AAE2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	rename -uid "47DEC788-42F7-985A-5E31-EBB07CAAA008";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	rename -uid "0334188B-402D-C799-1627-8CA6F995E197";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	rename -uid "DEA817C5-4668-0454-4699-D6B1F7D24FA7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId37";
	rename -uid "624385E6-4412-A2EE-3E93-D1A88D112FC4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	rename -uid "BA5F2EC6-4DCF-28E7-B757-C28D2B78B946";
	setAttr ".ihi" 0;
createNode groupId -n "groupId39";
	rename -uid "422CD9BE-4C78-4AF5-06B4-5CBF7DA7B89D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	rename -uid "83F37AE4-4144-D579-09CF-97A653F488FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId41";
	rename -uid "3FC51395-4B7B-1571-A985-E393EA05DF9B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	rename -uid "0DF20C7D-47EB-23C1-A6D9-02ACCC308BBF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId43";
	rename -uid "BB780583-45E9-87CE-802C-E98FD923AD99";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	rename -uid "8E83770D-470B-8F0A-032A-EC8FE6772B2F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId45";
	rename -uid "EFEAA776-4B74-FE54-53A3-0AA5347F9B05";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	rename -uid "66192B14-4D69-A117-3BF8-7EBBB8F4C666";
	setAttr ".ihi" 0;
createNode groupId -n "groupId47";
	rename -uid "5759734D-4C22-7390-C8C7-A28B3935A0D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	rename -uid "456DD7C6-4180-EBEA-D3A9-B980B5016F3C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId49";
	rename -uid "99DBB49A-407F-E0A0-7879-729E1DA7EA86";
	setAttr ".ihi" 0;
createNode groupId -n "groupId50";
	rename -uid "B1F5DFB7-4CB6-77C9-DB41-D9ADC595F98A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId51";
	rename -uid "D955B29A-420C-BF5A-D6E6-098B8948727F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	rename -uid "2B2BED6A-4FAF-B948-C247-E49CB936328C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId53";
	rename -uid "8021DBFA-46B3-3D78-B4D4-83830A209769";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	rename -uid "C72899BE-4752-A49B-BDEF-82B6EEFF747C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId55";
	rename -uid "5C4B7D3D-4B59-D15E-5826-C486DC76B34C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	rename -uid "0544F064-477B-EFF5-452B-6BB5D634D8CE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	rename -uid "A0DEF8A1-4DF6-2260-0618-44A69F6CF810";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	rename -uid "689F050A-4DF0-D7E5-A321-AE8D150E7632";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	rename -uid "7E09860F-498C-FD0A-36CD-A2B5B94EC71B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	rename -uid "3443488C-418D-EAA4-3DB2-9EA7D5DF48D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	rename -uid "DA2A5D9A-4D6E-4C52-07B9-169E177604B3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId62";
	rename -uid "8796390D-4C43-E625-18E5-F489E85B94DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId63";
	rename -uid "6B54792E-4C23-79E7-750F-89A48B1AE6FB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId67";
	rename -uid "D629AC8A-4D50-B4C1-573C-1BA8872F7B80";
	setAttr ".ihi" 0;
createNode lambert -n "YellowColor";
	rename -uid "93966685-49EF-F9AB-EDC1-4A9CA2D2FA2A";
	setAttr ".c" -type "float3" 0.5783 0.4736 0.090700001 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "24AF2260-4F24-6C9C-2C74-0D8A136F71B7";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "0833EC55-4937-FEA3-3E81-2DA4B4E52DD8";
createNode lambert -n "LavenderColor";
	rename -uid "53210AF7-46BD-58D5-D2FA-4CAA7DCA1F7A";
	setAttr ".c" -type "float3" 0.29159999 0.1143 0.1848 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "52BDB93E-4FF5-2EDC-22E7-108114F1DE76";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "83A81B85-4DCD-E9D3-E963-66B71D949D9C";
createNode lambert -n "SlightDarkYellowColor";
	rename -uid "75A0916F-4ABF-BBEB-816C-DF95ECFA37DF";
	setAttr ".c" -type "float3" 0.27200001 0.22276254 0.042704005 ;
createNode shadingEngine -n "SlightDarkYellowColorSG";
	rename -uid "3C376F3B-4142-9477-CA4F-7499207EA529";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "9972895D-4E14-9261-0D7B-BE845D93F78D";
createNode groupId -n "groupId77";
	rename -uid "EE1218B9-4C59-FD56-1D40-F4B1C6BA83DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId78";
	rename -uid "DCFE7DC5-436E-2566-500F-7E843346A048";
	setAttr ".ihi" 0;
createNode groupId -n "groupId79";
	rename -uid "1EA095AA-470A-A596-67F9-C98A3CDE6651";
	setAttr ".ihi" 0;
createNode lambert -n "LightBlueColor";
	rename -uid "21E1DD79-41B9-3D57-7624-9482282E4F1C";
	setAttr ".c" -type "float3" 0.12199998 0.44150412 1 ;
createNode shadingEngine -n "lambert6SG";
	rename -uid "69C6890C-43E5-A59A-0EF2-2988EBCE276F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "A4AB1BAC-468D-1954-AD99-B3A8ACA394D1";
createNode lambert -n "DarkCyan";
	rename -uid "9E3F1657-46F5-8DA7-AEEC-91AB4AFE9794";
	setAttr ".c" -type "float3" 0.10138799 0.204 0.17974593 ;
createNode shadingEngine -n "lambert7SG";
	rename -uid "C5B3ACFD-41A2-8424-36A3-6A80E4D67691";
	setAttr ".ihi" 0;
	setAttr -s 21 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 21 ".gn";
createNode materialInfo -n "materialInfo10";
	rename -uid "DBFFDC88-4B10-1734-66B5-E3A27930C9C2";
createNode lambert -n "LightCyan";
	rename -uid "2CEA4B57-42D9-C8F9-8BCC-A988382C2D5E";
	setAttr ".c" -type "float3" 0.19684699 0.461 0.41494051 ;
createNode shadingEngine -n "lambert8SG";
	rename -uid "FBB45641-49CF-5F0A-0D57-FF9B71DF8333";
	setAttr ".ihi" 0;
	setAttr -s 21 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 21 ".gn";
createNode materialInfo -n "materialInfo11";
	rename -uid "47C17A17-457A-39C6-6067-5887EDFF8895";
createNode lambert -n "LightLavender";
	rename -uid "1B6F0F2D-4CBF-F83B-92E7-A6A11B151FD1";
	setAttr ".c" -type "float3" 0.5204187 0.38595292 0.65237451 ;
createNode shadingEngine -n "lambert9SG";
	rename -uid "1C20A335-4E82-4AF0-94A1-3D8AB5981C73";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "AA31A6DA-481C-1010-7DDD-E3A021A23956";
createNode lambert -n "LightPinkColor1";
	rename -uid "7E6808DD-4233-1CE5-EB2E-1B9DD7606C2C";
	setAttr ".c" -type "float3" 0.838 0.46760398 0.46954238 ;
createNode shadingEngine -n "LightPinkColor1SG";
	rename -uid "0F57BF1A-4AC7-748C-6D16-399F9F05AC2C";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "A54E0160-4654-A280-CF25-7088167DFBC7";
createNode shadingEngine -n "lambert1SG";
	rename -uid "AD6339EA-4F58-D276-5E3A-4DAE8F2710CD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "B7AEA770-496B-2B44-D83F-0FA0C02CF603";
createNode aiPhysicalSky -n "aiPhysicalSky1";
	rename -uid "DF63B438-40CB-BC12-376D-98A151721FA8";
	setAttr ".elevation" 23.035715103149414;
	setAttr ".azimuth" 257.14285278320312;
	setAttr ".sun_tint" -type "float3" 1 1 0.18599999 ;
	setAttr ".intensity" 1.75;
createNode aiStandardSurface -n "LampEmission";
	rename -uid "3251600F-4D63-0787-912E-B493C858A391";
	setAttr ".emission" 0.44999998807907104;
	setAttr ".emission_color" -type "float3" 1 1 0.089999974 ;
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "43FAD803-415E-DC1B-12CF-B382A2EA829C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
	rename -uid "FC1F0FF9-4D15-D766-9CBC-6C895BF3115E";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "024FC3D0-46E0-0189-94DE-2EB1D5FE6C82";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -6021.4881885009008 -12324.144894693229 ;
	setAttr ".tgi[0].vh" -type "double2" 8032.9140197206034 12427.7163191491 ;
	setAttr -s 26 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 202.85714721679688;
	setAttr ".tgi[0].ni[0].y" -717.14288330078125;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 395.71429443359375;
	setAttr ".tgi[0].ni[1].y" 720;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 395.71429443359375;
	setAttr ".tgi[0].ni[2].y" -1131.4285888671875;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[3].y" 1447.142822265625;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 2327.142822265625;
	setAttr ".tgi[0].ni[4].y" 165.71427917480469;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 738.5714111328125;
	setAttr ".tgi[0].ni[5].y" 1447.142822265625;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 510;
	setAttr ".tgi[0].ni[6].y" -717.14288330078125;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[7].y" -161.42857360839844;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" 181.42857360839844;
	setAttr ".tgi[0].ni[8].y" -101.42857360839844;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 702.85711669921875;
	setAttr ".tgi[0].ni[9].y" -1131.4285888671875;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" -125.71428680419922;
	setAttr ".tgi[0].ni[10].y" -145.71427917480469;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" 181.42857360839844;
	setAttr ".tgi[0].ni[11].y" -101.42857360839844;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" 2634.28564453125;
	setAttr ".tgi[0].ni[12].y" 165.71427917480469;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" 1818.5714111328125;
	setAttr ".tgi[0].ni[13].y" -161.42857360839844;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" -31.428571701049805;
	setAttr ".tgi[0].ni[14].y" 204.28572082519531;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" 1625.7142333984375;
	setAttr ".tgi[0].ni[15].y" -1328.5714111328125;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" 781.4285888671875;
	setAttr ".tgi[0].ni[16].y" -154.28572082519531;
	setAttr ".tgi[0].ni[16].nvs" 1923;
	setAttr ".tgi[0].ni[17].x" 181.42857360839844;
	setAttr ".tgi[0].ni[17].y" -145.71427917480469;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" 1318.5714111328125;
	setAttr ".tgi[0].ni[18].y" -1328.5714111328125;
	setAttr ".tgi[0].ni[18].nvs" 1923;
	setAttr ".tgi[0].ni[19].x" -31.428571701049805;
	setAttr ".tgi[0].ni[19].y" -475.71429443359375;
	setAttr ".tgi[0].ni[19].nvs" 1923;
	setAttr ".tgi[0].ni[20].x" 702.85711669921875;
	setAttr ".tgi[0].ni[20].y" 720;
	setAttr ".tgi[0].ni[20].nvs" 1923;
	setAttr ".tgi[0].ni[21].x" 275.71429443359375;
	setAttr ".tgi[0].ni[21].y" 204.28572082519531;
	setAttr ".tgi[0].ni[21].nvs" 1923;
	setAttr ".tgi[0].ni[22].x" 1172.857177734375;
	setAttr ".tgi[0].ni[22].y" 7270;
	setAttr ".tgi[0].ni[22].nvs" 1923;
	setAttr ".tgi[0].ni[23].x" 1088.5714111328125;
	setAttr ".tgi[0].ni[23].y" -154.28572082519531;
	setAttr ".tgi[0].ni[23].nvs" 1923;
	setAttr ".tgi[0].ni[24].x" 824.28570556640625;
	setAttr ".tgi[0].ni[24].y" 7270;
	setAttr ".tgi[0].ni[24].nvs" 2387;
	setAttr ".tgi[0].ni[25].x" 275.71429443359375;
	setAttr ".tgi[0].ni[25].y" -475.71429443359375;
	setAttr ".tgi[0].ni[25].nvs" 1923;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "6FB7E228-4A63-969E-EB9C-88BCE9A70D00";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 83;
	setAttr ".unw" 83;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 17 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 17 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lightList1;
	setAttr -s 5 ".l";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".w" 1280;
	setAttr ".h" 720;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
select -ne :defaultLightSet;
	setAttr -s 5 ".dsm";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId5.id" "|TileFloor|TileRow01|Tile01|TileShape1.iog.og[0].gid";
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow01|Tile01|TileShape1.iog.og[0].gco"
		;
connectAttr "groupId45.id" "|TileFloor|TileRow01|Tile01|TileShape1.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow01|Tile01|TileShape1.iog.og[1].gco"
		;
connectAttr "groupId6.id" "|TileFloor|TileRow01|Tile01|TileShape1.ciog.cog[0].cgid"
		;
connectAttr "groupId3.id" "|TileFloor|TileRow01|Tile02|TileShape2.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow01|Tile02|TileShape2.iog.og[0].gco"
		;
connectAttr "groupId44.id" "|TileFloor|TileRow01|Tile02|TileShape2.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow01|Tile02|TileShape2.iog.og[1].gco"
		;
connectAttr "groupId4.id" "|TileFloor|TileRow01|Tile02|TileShape2.ciog.cog[0].cgid"
		;
connectAttr "groupId1.id" "|TileFloor|TileRow01|Tile03|TileShape3.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow01|Tile03|TileShape3.iog.og[0].gco"
		;
connectAttr "groupId43.id" "|TileFloor|TileRow01|Tile03|TileShape3.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow01|Tile03|TileShape3.iog.og[1].gco"
		;
connectAttr "groupId2.id" "|TileFloor|TileRow01|Tile03|TileShape3.ciog.cog[0].cgid"
		;
connectAttr "groupId7.id" "|TileFloor|TileRow02|Tile01|TileShape1.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow02|Tile01|TileShape1.iog.og[0].gco"
		;
connectAttr "groupId46.id" "|TileFloor|TileRow02|Tile01|TileShape1.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow02|Tile01|TileShape1.iog.og[1].gco"
		;
connectAttr "groupId8.id" "|TileFloor|TileRow02|Tile01|TileShape1.ciog.cog[0].cgid"
		;
connectAttr "groupId9.id" "|TileFloor|TileRow02|Tile02|TileShape2.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow02|Tile02|TileShape2.iog.og[0].gco"
		;
connectAttr "groupId47.id" "|TileFloor|TileRow02|Tile02|TileShape2.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow02|Tile02|TileShape2.iog.og[1].gco"
		;
connectAttr "groupId10.id" "|TileFloor|TileRow02|Tile02|TileShape2.ciog.cog[0].cgid"
		;
connectAttr "groupId11.id" "|TileFloor|TileRow02|Tile03|TileShape3.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow02|Tile03|TileShape3.iog.og[0].gco"
		;
connectAttr "groupId48.id" "|TileFloor|TileRow02|Tile03|TileShape3.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow02|Tile03|TileShape3.iog.og[1].gco"
		;
connectAttr "groupId12.id" "|TileFloor|TileRow02|Tile03|TileShape3.ciog.cog[0].cgid"
		;
connectAttr "groupId13.id" "|TileFloor|TileRow02|Tile04|TileShape4.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow02|Tile04|TileShape4.iog.og[0].gco"
		;
connectAttr "groupId49.id" "|TileFloor|TileRow02|Tile04|TileShape4.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow02|Tile04|TileShape4.iog.og[1].gco"
		;
connectAttr "groupId14.id" "|TileFloor|TileRow02|Tile04|TileShape4.ciog.cog[0].cgid"
		;
connectAttr "groupId21.id" "|TileFloor|TileRow03|Tile01|TileShape1.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow03|Tile01|TileShape1.iog.og[0].gco"
		;
connectAttr "groupId53.id" "|TileFloor|TileRow03|Tile01|TileShape1.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow03|Tile01|TileShape1.iog.og[1].gco"
		;
connectAttr "groupId22.id" "|TileFloor|TileRow03|Tile01|TileShape1.ciog.cog[0].cgid"
		;
connectAttr "groupId19.id" "|TileFloor|TileRow03|Tile02|TileShape2.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow03|Tile02|TileShape2.iog.og[0].gco"
		;
connectAttr "groupId52.id" "|TileFloor|TileRow03|Tile02|TileShape2.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow03|Tile02|TileShape2.iog.og[1].gco"
		;
connectAttr "groupId20.id" "|TileFloor|TileRow03|Tile02|TileShape2.ciog.cog[0].cgid"
		;
connectAttr "groupId17.id" "|TileFloor|TileRow03|Tile03|TileShape3.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow03|Tile03|TileShape3.iog.og[0].gco"
		;
connectAttr "groupId51.id" "|TileFloor|TileRow03|Tile03|TileShape3.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow03|Tile03|TileShape3.iog.og[1].gco"
		;
connectAttr "groupId18.id" "|TileFloor|TileRow03|Tile03|TileShape3.ciog.cog[0].cgid"
		;
connectAttr "groupId23.id" "|TileFloor|TileRow04|Tile01|TileShape1.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow04|Tile01|TileShape1.iog.og[0].gco"
		;
connectAttr "groupId54.id" "|TileFloor|TileRow04|Tile01|TileShape1.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow04|Tile01|TileShape1.iog.og[1].gco"
		;
connectAttr "groupId24.id" "|TileFloor|TileRow04|Tile01|TileShape1.ciog.cog[0].cgid"
		;
connectAttr "groupId25.id" "|TileFloor|TileRow04|Tile02|TileShape2.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow04|Tile02|TileShape2.iog.og[0].gco"
		;
connectAttr "groupId55.id" "|TileFloor|TileRow04|Tile02|TileShape2.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow04|Tile02|TileShape2.iog.og[1].gco"
		;
connectAttr "groupId26.id" "|TileFloor|TileRow04|Tile02|TileShape2.ciog.cog[0].cgid"
		;
connectAttr "groupId27.id" "|TileFloor|TileRow04|Tile03|TileShape3.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow04|Tile03|TileShape3.iog.og[0].gco"
		;
connectAttr "groupId56.id" "|TileFloor|TileRow04|Tile03|TileShape3.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow04|Tile03|TileShape3.iog.og[1].gco"
		;
connectAttr "groupId28.id" "|TileFloor|TileRow04|Tile03|TileShape3.ciog.cog[0].cgid"
		;
connectAttr "groupId15.id" "|TileFloor|TileRow04|Tile04|TileShape4.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow04|Tile04|TileShape4.iog.og[0].gco"
		;
connectAttr "groupId50.id" "|TileFloor|TileRow04|Tile04|TileShape4.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow04|Tile04|TileShape4.iog.og[1].gco"
		;
connectAttr "groupId16.id" "|TileFloor|TileRow04|Tile04|TileShape4.ciog.cog[0].cgid"
		;
connectAttr "groupId39.id" "|TileFloor|TileRow05|Tile01|TileShape1.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow05|Tile01|TileShape1.iog.og[0].gco"
		;
connectAttr "groupId62.id" "|TileFloor|TileRow05|Tile01|TileShape1.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow05|Tile01|TileShape1.iog.og[1].gco"
		;
connectAttr "groupId40.id" "|TileFloor|TileRow05|Tile01|TileShape1.ciog.cog[0].cgid"
		;
connectAttr "groupId35.id" "|TileFloor|TileRow05|Tile02|TileShape2.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow05|Tile02|TileShape2.iog.og[0].gco"
		;
connectAttr "groupId60.id" "|TileFloor|TileRow05|Tile02|TileShape2.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow05|Tile02|TileShape2.iog.og[1].gco"
		;
connectAttr "groupId36.id" "|TileFloor|TileRow05|Tile02|TileShape2.ciog.cog[0].cgid"
		;
connectAttr "groupId29.id" "|TileFloor|TileRow05|Tile03|TileShape3.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow05|Tile03|TileShape3.iog.og[0].gco"
		;
connectAttr "groupId57.id" "|TileFloor|TileRow05|Tile03|TileShape3.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow05|Tile03|TileShape3.iog.og[1].gco"
		;
connectAttr "groupId30.id" "|TileFloor|TileRow05|Tile03|TileShape3.ciog.cog[0].cgid"
		;
connectAttr "groupId41.id" "|TileFloor|TileRow06|Tile01|TileShape1.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow06|Tile01|TileShape1.iog.og[0].gco"
		;
connectAttr "groupId63.id" "|TileFloor|TileRow06|Tile01|TileShape1.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow06|Tile01|TileShape1.iog.og[1].gco"
		;
connectAttr "groupId42.id" "|TileFloor|TileRow06|Tile01|TileShape1.ciog.cog[0].cgid"
		;
connectAttr "groupId37.id" "|TileFloor|TileRow06|Tile02|TileShape2.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow06|Tile02|TileShape2.iog.og[0].gco"
		;
connectAttr "groupId61.id" "|TileFloor|TileRow06|Tile02|TileShape2.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow06|Tile02|TileShape2.iog.og[1].gco"
		;
connectAttr "groupId38.id" "|TileFloor|TileRow06|Tile02|TileShape2.ciog.cog[0].cgid"
		;
connectAttr "groupId33.id" "|TileFloor|TileRow06|Tile03|TileShape3.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow06|Tile03|TileShape3.iog.og[0].gco"
		;
connectAttr "groupId59.id" "|TileFloor|TileRow06|Tile03|TileShape3.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow06|Tile03|TileShape3.iog.og[1].gco"
		;
connectAttr "groupId34.id" "|TileFloor|TileRow06|Tile03|TileShape3.ciog.cog[0].cgid"
		;
connectAttr "groupId31.id" "|TileFloor|TileRow06|Tile04|TileShape4.iog.og[0].gid"
		;
connectAttr "lambert8SG.mwc" "|TileFloor|TileRow06|Tile04|TileShape4.iog.og[0].gco"
		;
connectAttr "groupId58.id" "|TileFloor|TileRow06|Tile04|TileShape4.iog.og[1].gid"
		;
connectAttr "lambert7SG.mwc" "|TileFloor|TileRow06|Tile04|TileShape4.iog.og[1].gco"
		;
connectAttr "groupId32.id" "|TileFloor|TileRow06|Tile04|TileShape4.ciog.cog[0].cgid"
		;
connectAttr "aiPhysicalSky1.out" "SkyDomeLightShape.sc";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "DarkBrownSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SlightDarkYellowColorSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "LightPinkColor1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "DarkBrownSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SlightDarkYellowColorSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "LightPinkColor1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "PinkColor.oc" "lambert2SG.ss";
connectAttr "LeftWallShape.iog" "lambert2SG.dsm" -na;
connectAttr "ArchWallShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "PinkColor.msg" "materialInfo1.m";
connectAttr "blinn1SG.msg" "materialInfo2.sg";
connectAttr "phong1SG.msg" "materialInfo3.sg";
connectAttr "LightBrown.oc" "lambert3SG.ss";
connectAttr "|TileFloor|TileRow01|Tile03|TileShape3.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow01|Tile02|TileShape2.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow01|Tile01|TileShape1.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow02|Tile01|TileShape1.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow02|Tile02|TileShape2.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow02|Tile03|TileShape3.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow02|Tile04|TileShape4.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow04|Tile04|TileShape4.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow03|Tile03|TileShape3.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow03|Tile02|TileShape2.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow03|Tile01|TileShape1.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow04|Tile01|TileShape1.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow04|Tile02|TileShape2.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow04|Tile03|TileShape3.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow05|Tile03|TileShape3.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow06|Tile04|TileShape4.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow06|Tile03|TileShape3.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow05|Tile02|TileShape2.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow06|Tile02|TileShape2.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow05|Tile01|TileShape1.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow06|Tile01|TileShape1.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "FrameShape.iog" "lambert3SG.dsm" -na;
connectAttr "OutterRugShape.iog" "lambert3SG.dsm" -na;
connectAttr "groupId2.msg" "lambert3SG.gn" -na;
connectAttr "groupId4.msg" "lambert3SG.gn" -na;
connectAttr "groupId6.msg" "lambert3SG.gn" -na;
connectAttr "groupId8.msg" "lambert3SG.gn" -na;
connectAttr "groupId10.msg" "lambert3SG.gn" -na;
connectAttr "groupId12.msg" "lambert3SG.gn" -na;
connectAttr "groupId14.msg" "lambert3SG.gn" -na;
connectAttr "groupId16.msg" "lambert3SG.gn" -na;
connectAttr "groupId18.msg" "lambert3SG.gn" -na;
connectAttr "groupId20.msg" "lambert3SG.gn" -na;
connectAttr "groupId22.msg" "lambert3SG.gn" -na;
connectAttr "groupId24.msg" "lambert3SG.gn" -na;
connectAttr "groupId26.msg" "lambert3SG.gn" -na;
connectAttr "groupId28.msg" "lambert3SG.gn" -na;
connectAttr "groupId30.msg" "lambert3SG.gn" -na;
connectAttr "groupId32.msg" "lambert3SG.gn" -na;
connectAttr "groupId34.msg" "lambert3SG.gn" -na;
connectAttr "groupId36.msg" "lambert3SG.gn" -na;
connectAttr "groupId38.msg" "lambert3SG.gn" -na;
connectAttr "groupId40.msg" "lambert3SG.gn" -na;
connectAttr "groupId42.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo4.sg";
connectAttr "LightBrown.msg" "materialInfo4.m";
connectAttr "DarkBrown.oc" "DarkBrownSG.ss";
connectAttr "TVLegShape4.iog" "DarkBrownSG.dsm" -na;
connectAttr "TVLegShape3.iog" "DarkBrownSG.dsm" -na;
connectAttr "TVLegShape2.iog" "DarkBrownSG.dsm" -na;
connectAttr "TVLegShape1.iog" "DarkBrownSG.dsm" -na;
connectAttr "DarkBrownSG.msg" "materialInfo5.sg";
connectAttr "DarkBrown.msg" "materialInfo5.m";
connectAttr "YellowColor.oc" "lambert4SG.ss";
connectAttr "ArmRestShape1.iog" "lambert4SG.dsm" -na;
connectAttr "ArmRestShape2.iog" "lambert4SG.dsm" -na;
connectAttr "CouchBackShape.iog" "lambert4SG.dsm" -na;
connectAttr "|Couch|Cushions|Cushion04|CushionShape4.iog" "lambert4SG.dsm" -na;
connectAttr "|Couch|Cushions|Cushion03|CushionShape3.iog" "lambert4SG.dsm" -na;
connectAttr "|Couch|CouchBase|Cushion04|CushionShape4.iog" "lambert4SG.dsm" -na;
connectAttr "|Couch|CouchBase|Cushion03|CushionShape3.iog" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo6.sg";
connectAttr "YellowColor.msg" "materialInfo6.m";
connectAttr "LavenderColor.oc" "lambert5SG.ss";
connectAttr "LampStandShape.iog" "lambert5SG.dsm" -na;
connectAttr "pPlaneShape2.iog" "lambert5SG.dsm" -na;
connectAttr "MidRugShape.iog" "lambert5SG.dsm" -na;
connectAttr "lambert5SG.msg" "materialInfo7.sg";
connectAttr "LavenderColor.msg" "materialInfo7.m";
connectAttr "SlightDarkYellowColor.oc" "SlightDarkYellowColorSG.ss";
connectAttr "SlightDarkYellowColorSG.msg" "materialInfo8.sg";
connectAttr "SlightDarkYellowColor.msg" "materialInfo8.m";
connectAttr "LightBlueColor.oc" "lambert6SG.ss";
connectAttr "CenterRugShape.iog" "lambert6SG.dsm" -na;
connectAttr "lambert6SG.msg" "materialInfo9.sg";
connectAttr "LightBlueColor.msg" "materialInfo9.m";
connectAttr "DarkCyan.oc" "lambert7SG.ss";
connectAttr "|TileFloor|TileRow01|Tile03|TileShape3.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow02|Tile03|TileShape3.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow02|Tile04|TileShape4.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow04|Tile04|TileShape4.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow03|Tile03|TileShape3.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow03|Tile02|TileShape2.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow04|Tile03|TileShape3.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow05|Tile03|TileShape3.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow06|Tile04|TileShape4.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow06|Tile03|TileShape3.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow05|Tile02|TileShape2.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow06|Tile01|TileShape1.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow06|Tile02|TileShape2.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow05|Tile01|TileShape1.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow04|Tile01|TileShape1.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow04|Tile02|TileShape2.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow03|Tile01|TileShape1.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow02|Tile01|TileShape1.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow02|Tile02|TileShape2.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow01|Tile02|TileShape2.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow01|Tile01|TileShape1.iog.og[1]" "lambert7SG.dsm" 
		-na;
connectAttr "groupId43.msg" "lambert7SG.gn" -na;
connectAttr "groupId48.msg" "lambert7SG.gn" -na;
connectAttr "groupId49.msg" "lambert7SG.gn" -na;
connectAttr "groupId50.msg" "lambert7SG.gn" -na;
connectAttr "groupId51.msg" "lambert7SG.gn" -na;
connectAttr "groupId52.msg" "lambert7SG.gn" -na;
connectAttr "groupId56.msg" "lambert7SG.gn" -na;
connectAttr "groupId57.msg" "lambert7SG.gn" -na;
connectAttr "groupId58.msg" "lambert7SG.gn" -na;
connectAttr "groupId59.msg" "lambert7SG.gn" -na;
connectAttr "groupId60.msg" "lambert7SG.gn" -na;
connectAttr "groupId63.msg" "lambert7SG.gn" -na;
connectAttr "groupId61.msg" "lambert7SG.gn" -na;
connectAttr "groupId62.msg" "lambert7SG.gn" -na;
connectAttr "groupId54.msg" "lambert7SG.gn" -na;
connectAttr "groupId55.msg" "lambert7SG.gn" -na;
connectAttr "groupId53.msg" "lambert7SG.gn" -na;
connectAttr "groupId46.msg" "lambert7SG.gn" -na;
connectAttr "groupId47.msg" "lambert7SG.gn" -na;
connectAttr "groupId44.msg" "lambert7SG.gn" -na;
connectAttr "groupId45.msg" "lambert7SG.gn" -na;
connectAttr "lambert7SG.msg" "materialInfo10.sg";
connectAttr "DarkCyan.msg" "materialInfo10.m";
connectAttr "LightCyan.oc" "lambert8SG.ss";
connectAttr "|TileFloor|TileRow04|Tile02|TileShape2.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow02|Tile01|TileShape1.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow01|Tile01|TileShape1.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow06|Tile02|TileShape2.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow02|Tile04|TileShape4.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow05|Tile03|TileShape3.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow01|Tile02|TileShape2.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow03|Tile01|TileShape1.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow06|Tile01|TileShape1.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow04|Tile03|TileShape3.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow06|Tile04|TileShape4.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow05|Tile02|TileShape2.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow03|Tile02|TileShape2.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow02|Tile02|TileShape2.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow01|Tile03|TileShape3.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow04|Tile01|TileShape1.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow05|Tile01|TileShape1.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow06|Tile03|TileShape3.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow02|Tile03|TileShape3.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow04|Tile04|TileShape4.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow03|Tile03|TileShape3.iog.og[0]" "lambert8SG.dsm" 
		-na;
connectAttr "groupId25.msg" "lambert8SG.gn" -na;
connectAttr "groupId7.msg" "lambert8SG.gn" -na;
connectAttr "groupId5.msg" "lambert8SG.gn" -na;
connectAttr "groupId37.msg" "lambert8SG.gn" -na;
connectAttr "groupId13.msg" "lambert8SG.gn" -na;
connectAttr "groupId29.msg" "lambert8SG.gn" -na;
connectAttr "groupId3.msg" "lambert8SG.gn" -na;
connectAttr "groupId21.msg" "lambert8SG.gn" -na;
connectAttr "groupId41.msg" "lambert8SG.gn" -na;
connectAttr "groupId27.msg" "lambert8SG.gn" -na;
connectAttr "groupId31.msg" "lambert8SG.gn" -na;
connectAttr "groupId35.msg" "lambert8SG.gn" -na;
connectAttr "groupId19.msg" "lambert8SG.gn" -na;
connectAttr "groupId9.msg" "lambert8SG.gn" -na;
connectAttr "groupId1.msg" "lambert8SG.gn" -na;
connectAttr "groupId23.msg" "lambert8SG.gn" -na;
connectAttr "groupId39.msg" "lambert8SG.gn" -na;
connectAttr "groupId33.msg" "lambert8SG.gn" -na;
connectAttr "groupId11.msg" "lambert8SG.gn" -na;
connectAttr "groupId15.msg" "lambert8SG.gn" -na;
connectAttr "groupId17.msg" "lambert8SG.gn" -na;
connectAttr "lambert8SG.msg" "materialInfo11.sg";
connectAttr "LightCyan.msg" "materialInfo11.m";
connectAttr "LightLavender.oc" "lambert9SG.ss";
connectAttr "AntennaBaseShape.iog" "lambert9SG.dsm" -na;
connectAttr "TVScreenShape.iog" "lambert9SG.dsm" -na;
connectAttr "AntennaShape1.iog" "lambert9SG.dsm" -na;
connectAttr "AntennaShape2.iog" "lambert9SG.dsm" -na;
connectAttr "TVBoxShape.iog" "lambert9SG.dsm" -na;
connectAttr "lambert9SG.msg" "materialInfo12.sg";
connectAttr "LightLavender.msg" "materialInfo12.m";
connectAttr "LightPinkColor1.oc" "LightPinkColor1SG.ss";
connectAttr "BaseBoardShape2.iog" "LightPinkColor1SG.dsm" -na;
connectAttr "BaseBoardShape1.iog" "LightPinkColor1SG.dsm" -na;
connectAttr "TopBoardShape3.iog" "LightPinkColor1SG.dsm" -na;
connectAttr "LightPinkColor1SG.msg" "materialInfo13.sg";
connectAttr "LightPinkColor1.msg" "materialInfo13.m";
connectAttr ":lambert1.oc" "lambert1SG.ss";
connectAttr "PictureShape.iog" "lambert1SG.dsm" -na;
connectAttr "lambert1SG.msg" "materialInfo14.sg";
connectAttr ":lambert1.msg" "materialInfo14.m";
connectAttr "LampEmission.out" "aiStandardSurface1SG.ss";
connectAttr "LampShadeShape.iog" "aiStandardSurface1SG.dsm" -na;
connectAttr "aiStandardSurface1SG.msg" "materialInfo15.sg";
connectAttr "LampEmission.msg" "materialInfo15.m";
connectAttr "LampEmission.msg" "materialInfo15.t" -na;
connectAttr "YellowColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "SlightDarkYellowColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "LightBlueColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert8SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "LightPinkColor1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "LightCyan.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "lambert4SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "DarkCyan.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "phong1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "lambert6SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "PinkColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "blinn1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "LightPinkColor1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "lambert7SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "DarkBrown.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "lambert9SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "LavenderColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "LightLavender.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "LightBrown.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "SlightDarkYellowColorSG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "DarkBrownSG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "aiStandardSurface1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "lambert5SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "LampEmission.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "DarkBrownSG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "SlightDarkYellowColorSG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "LightPinkColor1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "PinkColor.msg" ":defaultShaderList1.s" -na;
connectAttr "LightBrown.msg" ":defaultShaderList1.s" -na;
connectAttr "DarkBrown.msg" ":defaultShaderList1.s" -na;
connectAttr "YellowColor.msg" ":defaultShaderList1.s" -na;
connectAttr "LavenderColor.msg" ":defaultShaderList1.s" -na;
connectAttr "SlightDarkYellowColor.msg" ":defaultShaderList1.s" -na;
connectAttr "LightBlueColor.msg" ":defaultShaderList1.s" -na;
connectAttr "DarkCyan.msg" ":defaultShaderList1.s" -na;
connectAttr "LightCyan.msg" ":defaultShaderList1.s" -na;
connectAttr "LightLavender.msg" ":defaultShaderList1.s" -na;
connectAttr "LightPinkColor1.msg" ":defaultShaderList1.s" -na;
connectAttr "LampEmission.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "SkyDomeLightShape.ltd" ":lightList1.l" -na;
connectAttr "LeftAreaLightShape.ltd" ":lightList1.l" -na;
connectAttr "CeilingAreaLightShape.ltd" ":lightList1.l" -na;
connectAttr "TVAreaLightShape.ltd" ":lightList1.l" -na;
connectAttr "LampPointLightShape.ltd" ":lightList1.l" -na;
connectAttr "SkyDomeLight.iog" ":defaultLightSet.dsm" -na;
connectAttr "LeftAreaLight.iog" ":defaultLightSet.dsm" -na;
connectAttr "CeilingAreaLight.iog" ":defaultLightSet.dsm" -na;
connectAttr "TVAreaLight.iog" ":defaultLightSet.dsm" -na;
connectAttr "LampPointLight.iog" ":defaultLightSet.dsm" -na;
// End of ChallengeFive_Refine Lighting & Rendering.ma
