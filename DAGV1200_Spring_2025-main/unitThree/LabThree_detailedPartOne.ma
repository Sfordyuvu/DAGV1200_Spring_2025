//Maya ASCII 2024 scene
//Name: LabThree_detailedPartOne.ma
//Last modified: Thu, Jan 23, 2025 06:35:07 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 10 Enterprise v2009 (Build: 19045)";
fileInfo "UUID" "C6178B7D-4AB9-FFF0-D071-FF9355837AB5";
createNode transform -s -n "persp";
	rename -uid "96488201-4E2C-7CF2-6CC6-34B83BBEB772";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.902479779590243 7.1768704232849903 9.3910352261739511 ;
	setAttr ".r" -type "double3" -1819.8000000344732 2931.6000000000554 2.5602238166594676e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "FB6A41C5-42FB-4565-7794-3AA709DD9CBC";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 17.375308699420252;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0.9169117157249369 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "EEE36144-43EE-542D-5DF7-1EADB754D5DA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5676DA17-4915-4385-8E08-4E8B43360935";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
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
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CA1F7450-48A9-2856-0767-A9A3F42A68D8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "WhiteboxRoom";
	rename -uid "64105C19-402F-3C29-DAFC-97A355BE0DF8";
	setAttr ".rp" -type "double3" -0.065000057220458984 1.934999942779541 -0.065000057220458984 ;
	setAttr ".sp" -type "double3" -0.065000057220458984 1.934999942779541 -0.065000057220458984 ;
createNode mesh -n "WhiteboxRoomShape" -p "WhiteboxRoom";
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
	setAttr ".pv" -type "double2" 0.625 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.125 0 0.125 0.25 0.625 0.75 0.375 0.75 0.625
		 1 0.375 1 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.625 0.75 0.625 1 0.375 1 0.375
		 0 0.375 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[7]" -type "float3"  0 -5.9604645e-08 2.3841858e-07;
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
createNode transform -n "ArchWall";
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
	setAttr ".pv" -type "double2" 0.0625 0.5 ;
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
	setAttr -s 3 ".pt";
	setAttr ".pt[38]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[42]" -type "float3" 0 8.3446503e-07 1.1920929e-07 ;
	setAttr ".pt[94]" -type "float3" 0 -7.7486038e-07 -1.1920929e-07 ;
	setAttr -s 95 ".vt[0:94]"  -0.065466106 0.053019404 -3 2.032345057 0.053019404 -3
		 -0.065466106 0.053019524 -3.12999988 2.032345057 0.053019524 -3.12999988 0.77872372 3.058967829 -3
		 0.58197594 2.99928522 -3 0.40065217 2.90236592 -3 0.24172056 2.77193403 -3 0.11128867 2.6130023 -3
		 0.014369488 2.43167853 -3 -0.045313656 2.23493075 -3 -0.065466106 2.030319929 -3
		 0.98343945 3.079120398 -3 -0.065466106 2.030319929 -3.13000011 -0.045313656 2.23493075 -3.13000011
		 0.014369488 2.43167853 -3.13000011 0.11128867 2.6130023 -3.13000011 0.24172056 2.77193403 -3.13000011
		 0.40065217 2.90236592 -3.13000011 0.58197594 2.99928522 -3.13000011 0.77872372 3.058967829 -3.13000011
		 0.98343945 3.079120398 -3.13000011 2.012192726 2.23493075 -3 1.95250988 2.43167853 -3
		 1.85559034 2.6130023 -3 1.72515845 2.77193403 -3 1.56622684 2.90236592 -3 1.38490295 2.99928522 -3
		 1.18815517 3.058967829 -3 2.032345057 2.030319929 -3 2.032345057 2.030319929 -3.13000011
		 1.18815517 3.058967829 -3.13000011 1.38490295 2.99928522 -3.13000011 1.56622684 2.90236592 -3.13000011
		 1.72515845 2.77193403 -3.13000011 1.85559034 2.6130023 -3.13000011 1.95250988 2.43167853 -3.13000011
		 2.012192726 2.23493075 -3.13000011 3 -0.13000011 -3.12999988 3 0 -3 3.000002145767 2.030319929 -3.13000011
		 3.000002145767 2.030319929 -3 -3.13000011 0.053022861 -3.12999964 -2.99999785 0.053019404 -3
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
		 3.000001907349 2.43790674 -3 3.000001907349 2.43790674 -3.13000011 -0.065466106 2.030319929 -3.12999964
		 2.032345057 2.030319929 -3.12999964 -0.045313656 2.23493075 -3.12999964 0.014369488 2.43167853 -3.12999964
		 0.11128867 2.6130023 -3.12999964 0.24172056 2.77193403 -3.12999964 0.40065217 2.90236592 -3.12999964
		 0.58197594 2.99928522 -3.12999964 0.77872372 3.058967829 -3.12999964 0.98343945 3.079120398 -3.12999964
		 1.18815517 3.058967829 -3.12999964 1.38490295 2.99928522 -3.12999964 1.56622684 2.90236592 -3.12999964
		 1.72515845 2.77193403 -3.12999964 1.85559034 2.6130023 -3.12999964 1.95250988 2.43167853 -3.12999964
		 2.012192726 2.23493075 -3.12999964 -0.065466583 -0.13 -3.12999964 -3.13000059 -0.12999588 -3.12999964;
	setAttr -s 167 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 11 0 1 29 0 13 2 0 30 3 0 11 10 0 14 13 0 10 9 0
		 15 14 0 9 8 0 16 15 0 8 7 0 17 16 0 7 6 0 18 17 0 6 5 0 19 18 0 5 4 0 20 19 0 4 12 0
		 21 20 0 12 28 0 31 21 0 28 27 0 32 31 0 27 26 0 33 32 0 26 25 0 34 33 0 25 24 0 35 34 0
		 24 23 0 36 35 0 23 22 0 37 36 0 22 29 0 30 37 0 3 38 1 1 39 0 38 39 0 30 40 1 40 38 0
		 29 41 1 40 41 1 39 41 0 2 42 0 0 43 0 11 44 1 43 44 0 13 45 1 45 42 0 10 46 1 44 46 0
		 14 47 1 47 45 0 9 48 1 46 48 0 15 49 1 49 47 0 8 50 1 48 50 0 16 51 1 51 49 0 7 52 1
		 50 52 0 17 53 1 52 53 0 53 51 0 6 54 1 52 54 0 18 55 1 54 55 1 55 53 0 5 56 1 54 56 0
		 19 57 1 56 57 1 57 55 0 4 58 1 56 58 0 20 59 1 58 59 1 59 57 0 12 60 1 58 60 0 21 61 1
		 61 60 1 61 59 0 28 62 1 60 62 0 31 63 1 62 63 1 63 61 0 27 64 1 62 64 0 32 65 1 64 65 1
		 65 63 0 26 66 1 64 66 0 33 67 1 66 67 1 67 65 0 25 68 1 66 68 0 34 69 1 68 69 1 69 67 0
		 24 70 1 68 70 0 35 71 1 70 71 1 71 69 0 23 72 1 70 72 0 36 73 1 72 73 1 73 71 0 22 74 1
		 72 74 0 37 75 1 74 75 1 75 73 0 74 41 0 40 75 0 0 2 0 1 3 0 2 3 0 11 76 1 2 76 0
		 29 77 1 3 77 0 10 78 1 76 78 0 9 79 1 78 79 0 8 80 1 79 80 0 7 81 1 80 81 0 6 82 1
		 81 82 0 5 83 1 82 83 0 4 84 1 83 84 0 12 85 1 84 85 0 28 86 1 85 86 0 27 87 1 86 87 0
		 26 88 1 87 88 0 25 89 1 88 89 0 24 90 1 89 90 0 23 91 1 90 91 0 22 92 1 91 92 0 92 77 0
		 38 93 0 2 93 1 93 94 0;
	setAttr ".ed[166]" 42 94 0;
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
		f 4 -2 125 129 -129
		mu 0 4 84 85 86 87
		f 4 2 130 -132 -127
		mu 0 4 88 89 90 91
		f 4 -6 128 133 -133
		mu 0 4 92 93 94 95
		f 4 -8 132 135 -135
		mu 0 4 96 97 98 99
		f 4 -10 134 137 -137
		mu 0 4 100 101 102 103
		f 4 -12 136 139 -139
		mu 0 4 104 105 106 107
		f 4 -14 138 141 -141
		mu 0 4 108 109 110 111
		f 4 -16 140 143 -143
		mu 0 4 112 113 114 115
		f 4 -18 142 145 -145
		mu 0 4 116 117 118 119
		f 4 -20 144 147 -147
		mu 0 4 120 121 122 123
		f 4 -22 146 149 -149
		mu 0 4 124 125 126 127
		f 4 -24 148 151 -151
		mu 0 4 128 129 130 131
		f 4 -26 150 153 -153
		mu 0 4 132 133 134 135
		f 4 -28 152 155 -155
		mu 0 4 136 137 138 139
		f 4 -30 154 157 -157
		mu 0 4 140 141 142 143
		f 4 -32 156 159 -159
		mu 0 4 144 145 146 147
		f 4 -34 158 161 -161
		mu 0 4 148 149 150 151
		f 4 -36 160 162 -131
		mu 0 4 152 153 154 155
		f 4 37 163 -165 127
		mu 0 4 156 157 158 159
		f 4 164 165 -167 -46
		mu 0 4 160 161 162 163;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "1C21BECE-4664-F7C9-BB29-3386FE5195EB";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C3149D2E-4CB4-A334-0BB1-FC9E3D57A25E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A7EC9869-4D28-DE9C-0808-7D9AB08B0540";
createNode displayLayerManager -n "layerManager";
	rename -uid "CB3A17CC-4A03-5C78-706E-B987863441F6";
createNode displayLayer -n "defaultLayer";
	rename -uid "A7B200E6-44D4-FFB6-459F-A2A342CC1964";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "714B0154-4BF5-7578-8E1E-2796E16EE084";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1D33F217-4A59-F62C-6936-BEB6228DD2E5";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "BF36E138-4185-85F1-BC6A-D8B66C1F8DB0";
	setAttr ".version" -type "string" "5.3.4.1";
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
	setAttr ".c" -type "float3" 0.59836245 0.30288339 0.30442914 ;
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
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1789\n            -height 1166\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1789\\n    -height 1166\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1789\\n    -height 1166\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
	setAttr -s 42 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 42 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "8C5B57B1-4A53-3DED-47D4-FAB3755DBABB";
createNode lambert -n "DarkBrown";
	rename -uid "8336447B-4CA0-7965-0554-78812E3B5FFB";
	setAttr ".c" -type "float3" 0.153 0.079348095 0.050949 ;
createNode shadingEngine -n "DarkBrownSG";
	rename -uid "8DF58055-4F00-8480-4A31-FCB7A014964A";
	setAttr ".ihi" 0;
	setAttr -s 21 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 21 ".gn";
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
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "C19EF9EC-418F-A360-E994-6581DBE4E1D2";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297324017 -798.77291319177925 ;
	setAttr ".tgi[0].vh" -type "double2" 471.79434145475869 227.34436446973805 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -31.428571701049805;
	setAttr ".tgi[0].ni[0].y" 204.28572082519531;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 275.71429443359375;
	setAttr ".tgi[0].ni[1].y" 204.28572082519531;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 181.42857360839844;
	setAttr ".tgi[0].ni[2].y" -101.42857360839844;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 181.42857360839844;
	setAttr ".tgi[0].ni[3].y" -145.71427917480469;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -125.71428680419922;
	setAttr ".tgi[0].ni[4].y" -145.71427917480469;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 181.42857360839844;
	setAttr ".tgi[0].ni[5].y" -101.42857360839844;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -31.428571701049805;
	setAttr ".tgi[0].ni[6].y" -475.71429443359375;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 275.71429443359375;
	setAttr ".tgi[0].ni[7].y" -475.71429443359375;
	setAttr ".tgi[0].ni[7].nvs" 1923;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "37CF1996-4B3B-623B-9B45-9FBF76974D77";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
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
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
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
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow01|Tile01|TileShape1.iog.og[0].gco"
		;
connectAttr "groupId45.id" "|TileFloor|TileRow01|Tile01|TileShape1.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow01|Tile01|TileShape1.iog.og[1].gco"
		;
connectAttr "groupId6.id" "|TileFloor|TileRow01|Tile01|TileShape1.ciog.cog[0].cgid"
		;
connectAttr "groupId3.id" "|TileFloor|TileRow01|Tile02|TileShape2.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow01|Tile02|TileShape2.iog.og[0].gco"
		;
connectAttr "groupId44.id" "|TileFloor|TileRow01|Tile02|TileShape2.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow01|Tile02|TileShape2.iog.og[1].gco"
		;
connectAttr "groupId4.id" "|TileFloor|TileRow01|Tile02|TileShape2.ciog.cog[0].cgid"
		;
connectAttr "groupId1.id" "|TileFloor|TileRow01|Tile03|TileShape3.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow01|Tile03|TileShape3.iog.og[0].gco"
		;
connectAttr "groupId43.id" "|TileFloor|TileRow01|Tile03|TileShape3.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow01|Tile03|TileShape3.iog.og[1].gco"
		;
connectAttr "groupId2.id" "|TileFloor|TileRow01|Tile03|TileShape3.ciog.cog[0].cgid"
		;
connectAttr "groupId7.id" "|TileFloor|TileRow02|Tile01|TileShape1.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow02|Tile01|TileShape1.iog.og[0].gco"
		;
connectAttr "groupId46.id" "|TileFloor|TileRow02|Tile01|TileShape1.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow02|Tile01|TileShape1.iog.og[1].gco"
		;
connectAttr "groupId8.id" "|TileFloor|TileRow02|Tile01|TileShape1.ciog.cog[0].cgid"
		;
connectAttr "groupId9.id" "|TileFloor|TileRow02|Tile02|TileShape2.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow02|Tile02|TileShape2.iog.og[0].gco"
		;
connectAttr "groupId47.id" "|TileFloor|TileRow02|Tile02|TileShape2.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow02|Tile02|TileShape2.iog.og[1].gco"
		;
connectAttr "groupId10.id" "|TileFloor|TileRow02|Tile02|TileShape2.ciog.cog[0].cgid"
		;
connectAttr "groupId11.id" "|TileFloor|TileRow02|Tile03|TileShape3.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow02|Tile03|TileShape3.iog.og[0].gco"
		;
connectAttr "groupId48.id" "|TileFloor|TileRow02|Tile03|TileShape3.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow02|Tile03|TileShape3.iog.og[1].gco"
		;
connectAttr "groupId12.id" "|TileFloor|TileRow02|Tile03|TileShape3.ciog.cog[0].cgid"
		;
connectAttr "groupId13.id" "|TileFloor|TileRow02|Tile04|TileShape4.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow02|Tile04|TileShape4.iog.og[0].gco"
		;
connectAttr "groupId49.id" "|TileFloor|TileRow02|Tile04|TileShape4.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow02|Tile04|TileShape4.iog.og[1].gco"
		;
connectAttr "groupId14.id" "|TileFloor|TileRow02|Tile04|TileShape4.ciog.cog[0].cgid"
		;
connectAttr "groupId21.id" "|TileFloor|TileRow03|Tile01|TileShape1.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow03|Tile01|TileShape1.iog.og[0].gco"
		;
connectAttr "groupId53.id" "|TileFloor|TileRow03|Tile01|TileShape1.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow03|Tile01|TileShape1.iog.og[1].gco"
		;
connectAttr "groupId22.id" "|TileFloor|TileRow03|Tile01|TileShape1.ciog.cog[0].cgid"
		;
connectAttr "groupId19.id" "|TileFloor|TileRow03|Tile02|TileShape2.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow03|Tile02|TileShape2.iog.og[0].gco"
		;
connectAttr "groupId52.id" "|TileFloor|TileRow03|Tile02|TileShape2.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow03|Tile02|TileShape2.iog.og[1].gco"
		;
connectAttr "groupId20.id" "|TileFloor|TileRow03|Tile02|TileShape2.ciog.cog[0].cgid"
		;
connectAttr "groupId17.id" "|TileFloor|TileRow03|Tile03|TileShape3.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow03|Tile03|TileShape3.iog.og[0].gco"
		;
connectAttr "groupId51.id" "|TileFloor|TileRow03|Tile03|TileShape3.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow03|Tile03|TileShape3.iog.og[1].gco"
		;
connectAttr "groupId18.id" "|TileFloor|TileRow03|Tile03|TileShape3.ciog.cog[0].cgid"
		;
connectAttr "groupId23.id" "|TileFloor|TileRow04|Tile01|TileShape1.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow04|Tile01|TileShape1.iog.og[0].gco"
		;
connectAttr "groupId54.id" "|TileFloor|TileRow04|Tile01|TileShape1.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow04|Tile01|TileShape1.iog.og[1].gco"
		;
connectAttr "groupId24.id" "|TileFloor|TileRow04|Tile01|TileShape1.ciog.cog[0].cgid"
		;
connectAttr "groupId25.id" "|TileFloor|TileRow04|Tile02|TileShape2.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow04|Tile02|TileShape2.iog.og[0].gco"
		;
connectAttr "groupId55.id" "|TileFloor|TileRow04|Tile02|TileShape2.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow04|Tile02|TileShape2.iog.og[1].gco"
		;
connectAttr "groupId26.id" "|TileFloor|TileRow04|Tile02|TileShape2.ciog.cog[0].cgid"
		;
connectAttr "groupId27.id" "|TileFloor|TileRow04|Tile03|TileShape3.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow04|Tile03|TileShape3.iog.og[0].gco"
		;
connectAttr "groupId56.id" "|TileFloor|TileRow04|Tile03|TileShape3.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow04|Tile03|TileShape3.iog.og[1].gco"
		;
connectAttr "groupId28.id" "|TileFloor|TileRow04|Tile03|TileShape3.ciog.cog[0].cgid"
		;
connectAttr "groupId15.id" "|TileFloor|TileRow04|Tile04|TileShape4.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow04|Tile04|TileShape4.iog.og[0].gco"
		;
connectAttr "groupId50.id" "|TileFloor|TileRow04|Tile04|TileShape4.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow04|Tile04|TileShape4.iog.og[1].gco"
		;
connectAttr "groupId16.id" "|TileFloor|TileRow04|Tile04|TileShape4.ciog.cog[0].cgid"
		;
connectAttr "groupId39.id" "|TileFloor|TileRow05|Tile01|TileShape1.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow05|Tile01|TileShape1.iog.og[0].gco"
		;
connectAttr "groupId62.id" "|TileFloor|TileRow05|Tile01|TileShape1.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow05|Tile01|TileShape1.iog.og[1].gco"
		;
connectAttr "groupId40.id" "|TileFloor|TileRow05|Tile01|TileShape1.ciog.cog[0].cgid"
		;
connectAttr "groupId35.id" "|TileFloor|TileRow05|Tile02|TileShape2.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow05|Tile02|TileShape2.iog.og[0].gco"
		;
connectAttr "groupId60.id" "|TileFloor|TileRow05|Tile02|TileShape2.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow05|Tile02|TileShape2.iog.og[1].gco"
		;
connectAttr "groupId36.id" "|TileFloor|TileRow05|Tile02|TileShape2.ciog.cog[0].cgid"
		;
connectAttr "groupId29.id" "|TileFloor|TileRow05|Tile03|TileShape3.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow05|Tile03|TileShape3.iog.og[0].gco"
		;
connectAttr "groupId57.id" "|TileFloor|TileRow05|Tile03|TileShape3.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow05|Tile03|TileShape3.iog.og[1].gco"
		;
connectAttr "groupId30.id" "|TileFloor|TileRow05|Tile03|TileShape3.ciog.cog[0].cgid"
		;
connectAttr "groupId41.id" "|TileFloor|TileRow06|Tile01|TileShape1.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow06|Tile01|TileShape1.iog.og[0].gco"
		;
connectAttr "groupId63.id" "|TileFloor|TileRow06|Tile01|TileShape1.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow06|Tile01|TileShape1.iog.og[1].gco"
		;
connectAttr "groupId42.id" "|TileFloor|TileRow06|Tile01|TileShape1.ciog.cog[0].cgid"
		;
connectAttr "groupId37.id" "|TileFloor|TileRow06|Tile02|TileShape2.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow06|Tile02|TileShape2.iog.og[0].gco"
		;
connectAttr "groupId61.id" "|TileFloor|TileRow06|Tile02|TileShape2.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow06|Tile02|TileShape2.iog.og[1].gco"
		;
connectAttr "groupId38.id" "|TileFloor|TileRow06|Tile02|TileShape2.ciog.cog[0].cgid"
		;
connectAttr "groupId33.id" "|TileFloor|TileRow06|Tile03|TileShape3.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow06|Tile03|TileShape3.iog.og[0].gco"
		;
connectAttr "groupId59.id" "|TileFloor|TileRow06|Tile03|TileShape3.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow06|Tile03|TileShape3.iog.og[1].gco"
		;
connectAttr "groupId34.id" "|TileFloor|TileRow06|Tile03|TileShape3.ciog.cog[0].cgid"
		;
connectAttr "groupId31.id" "|TileFloor|TileRow06|Tile04|TileShape4.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|TileFloor|TileRow06|Tile04|TileShape4.iog.og[0].gco"
		;
connectAttr "groupId58.id" "|TileFloor|TileRow06|Tile04|TileShape4.iog.og[1].gid"
		;
connectAttr "DarkBrownSG.mwc" "|TileFloor|TileRow06|Tile04|TileShape4.iog.og[1].gco"
		;
connectAttr "groupId32.id" "|TileFloor|TileRow06|Tile04|TileShape4.ciog.cog[0].cgid"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "DarkBrownSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "DarkBrownSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "PinkColor.oc" "lambert2SG.ss";
connectAttr "WhiteboxRoomShape.iog" "lambert2SG.dsm" -na;
connectAttr "ArchWallShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "PinkColor.msg" "materialInfo1.m";
connectAttr "blinn1SG.msg" "materialInfo2.sg";
connectAttr "phong1SG.msg" "materialInfo3.sg";
connectAttr "LightBrown.oc" "lambert3SG.ss";
connectAttr "|TileFloor|TileRow01|Tile03|TileShape3.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow01|Tile03|TileShape3.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow01|Tile02|TileShape2.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow01|Tile02|TileShape2.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow01|Tile01|TileShape1.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow01|Tile01|TileShape1.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow02|Tile01|TileShape1.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow02|Tile01|TileShape1.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow02|Tile02|TileShape2.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow02|Tile02|TileShape2.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow02|Tile03|TileShape3.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow02|Tile03|TileShape3.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow02|Tile04|TileShape4.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow02|Tile04|TileShape4.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow04|Tile04|TileShape4.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow04|Tile04|TileShape4.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow03|Tile03|TileShape3.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow03|Tile03|TileShape3.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow03|Tile02|TileShape2.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow03|Tile02|TileShape2.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow03|Tile01|TileShape1.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow03|Tile01|TileShape1.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow04|Tile01|TileShape1.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow04|Tile01|TileShape1.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow04|Tile02|TileShape2.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow04|Tile02|TileShape2.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow04|Tile03|TileShape3.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow04|Tile03|TileShape3.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow05|Tile03|TileShape3.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow05|Tile03|TileShape3.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow06|Tile04|TileShape4.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow06|Tile04|TileShape4.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow06|Tile03|TileShape3.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow06|Tile03|TileShape3.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow05|Tile02|TileShape2.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow05|Tile02|TileShape2.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow06|Tile02|TileShape2.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow06|Tile02|TileShape2.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow05|Tile01|TileShape1.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow05|Tile01|TileShape1.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow06|Tile01|TileShape1.iog.og[0]" "lambert3SG.dsm" 
		-na;
connectAttr "|TileFloor|TileRow06|Tile01|TileShape1.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "groupId1.msg" "lambert3SG.gn" -na;
connectAttr "groupId2.msg" "lambert3SG.gn" -na;
connectAttr "groupId3.msg" "lambert3SG.gn" -na;
connectAttr "groupId4.msg" "lambert3SG.gn" -na;
connectAttr "groupId5.msg" "lambert3SG.gn" -na;
connectAttr "groupId6.msg" "lambert3SG.gn" -na;
connectAttr "groupId7.msg" "lambert3SG.gn" -na;
connectAttr "groupId8.msg" "lambert3SG.gn" -na;
connectAttr "groupId9.msg" "lambert3SG.gn" -na;
connectAttr "groupId10.msg" "lambert3SG.gn" -na;
connectAttr "groupId11.msg" "lambert3SG.gn" -na;
connectAttr "groupId12.msg" "lambert3SG.gn" -na;
connectAttr "groupId13.msg" "lambert3SG.gn" -na;
connectAttr "groupId14.msg" "lambert3SG.gn" -na;
connectAttr "groupId15.msg" "lambert3SG.gn" -na;
connectAttr "groupId16.msg" "lambert3SG.gn" -na;
connectAttr "groupId17.msg" "lambert3SG.gn" -na;
connectAttr "groupId18.msg" "lambert3SG.gn" -na;
connectAttr "groupId19.msg" "lambert3SG.gn" -na;
connectAttr "groupId20.msg" "lambert3SG.gn" -na;
connectAttr "groupId21.msg" "lambert3SG.gn" -na;
connectAttr "groupId22.msg" "lambert3SG.gn" -na;
connectAttr "groupId23.msg" "lambert3SG.gn" -na;
connectAttr "groupId24.msg" "lambert3SG.gn" -na;
connectAttr "groupId25.msg" "lambert3SG.gn" -na;
connectAttr "groupId26.msg" "lambert3SG.gn" -na;
connectAttr "groupId27.msg" "lambert3SG.gn" -na;
connectAttr "groupId28.msg" "lambert3SG.gn" -na;
connectAttr "groupId29.msg" "lambert3SG.gn" -na;
connectAttr "groupId30.msg" "lambert3SG.gn" -na;
connectAttr "groupId31.msg" "lambert3SG.gn" -na;
connectAttr "groupId32.msg" "lambert3SG.gn" -na;
connectAttr "groupId33.msg" "lambert3SG.gn" -na;
connectAttr "groupId34.msg" "lambert3SG.gn" -na;
connectAttr "groupId35.msg" "lambert3SG.gn" -na;
connectAttr "groupId36.msg" "lambert3SG.gn" -na;
connectAttr "groupId37.msg" "lambert3SG.gn" -na;
connectAttr "groupId38.msg" "lambert3SG.gn" -na;
connectAttr "groupId39.msg" "lambert3SG.gn" -na;
connectAttr "groupId40.msg" "lambert3SG.gn" -na;
connectAttr "groupId41.msg" "lambert3SG.gn" -na;
connectAttr "groupId42.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo4.sg";
connectAttr "LightBrown.msg" "materialInfo4.m";
connectAttr "DarkBrown.oc" "DarkBrownSG.ss";
connectAttr "groupId43.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId44.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId45.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId46.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId47.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId48.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId49.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId50.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId51.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId52.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId53.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId54.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId55.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId56.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId57.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId58.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId59.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId60.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId61.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId62.msg" "DarkBrownSG.gn" -na;
connectAttr "groupId63.msg" "DarkBrownSG.gn" -na;
connectAttr "|TileFloor|TileRow01|Tile03|TileShape3.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow01|Tile02|TileShape2.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow01|Tile01|TileShape1.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow02|Tile01|TileShape1.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow02|Tile02|TileShape2.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow02|Tile03|TileShape3.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow02|Tile04|TileShape4.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow04|Tile04|TileShape4.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow03|Tile03|TileShape3.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow03|Tile02|TileShape2.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow03|Tile01|TileShape1.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow04|Tile01|TileShape1.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow04|Tile02|TileShape2.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow04|Tile03|TileShape3.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow05|Tile03|TileShape3.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow06|Tile04|TileShape4.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow06|Tile03|TileShape3.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow05|Tile02|TileShape2.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow06|Tile02|TileShape2.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow05|Tile01|TileShape1.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "|TileFloor|TileRow06|Tile01|TileShape1.iog.og[1]" "DarkBrownSG.dsm"
		 -na;
connectAttr "DarkBrownSG.msg" "materialInfo5.sg";
connectAttr "DarkBrown.msg" "materialInfo5.m";
connectAttr "DarkBrown.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "DarkBrownSG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "phong1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "PinkColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "blinn1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "LightBrown.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "DarkBrownSG.pa" ":renderPartition.st" -na;
connectAttr "PinkColor.msg" ":defaultShaderList1.s" -na;
connectAttr "LightBrown.msg" ":defaultShaderList1.s" -na;
connectAttr "DarkBrown.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of LabThree_detailedPartOne.ma
