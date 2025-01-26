//Maya ASCII 2024 scene
//Name: ChallengeThree_detailedPartTwoWip.ma
//Last modified: Sun, Jan 26, 2025 04:01:37 PM
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
fileInfo "UUID" "4ACAD82C-49EB-F23B-29F7-E99D125E5879";
createNode transform -s -n "persp";
	rename -uid "96488201-4E2C-7CF2-6CC6-34B83BBEB772";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.316999690143524 11.366238314610555 6.6104518391305938 ;
	setAttr ".r" -type "double3" -2912.9999999999645 2217.9999999997112 -3.0009804286320426e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "FB6A41C5-42FB-4565-7794-3AA709DD9CBC";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 20.982268434153251;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.6028658730567442 1.6985973264241063 0.26287256184961871 ;
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
	setAttr ".ow" 15.570299987105752;
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
	setAttr ".t" -type "double3" 997.51323027837066 1.9135849834340979 -0.11250975855594425 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rpt" -type "double3" -2.7008413312799156e-14 0 4.5614543194955345e-14 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CA1F7450-48A9-2856-0767-A9A3F42A68D8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 7.680996899428064;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -2.5867697216293664 0.56246221481234471 0.26287257671356057 ;
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
	setAttr ".pv" -type "double2" 1 0.5 ;
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
createNode transform -n "Couch";
	rename -uid "4AA3B5F1-4FE8-18B8-784A-A2BF48DF9E2A";
	setAttr ".s" -type "double3" 1 1 0.96541629785261041 ;
	setAttr ".rp" -type "double3" -0.54391883137385122 0 0.54298945713637714 ;
	setAttr ".sp" -type "double3" -0.54391883137385122 0 0.54298945713637714 ;
createNode transform -n "CouchBase" -p "Couch";
	rename -uid "7E7BE618-432E-B4CC-A262-F48E9B7E049C";
	setAttr ".rp" -type "double3" -0.54391883137385122 -0.41008010284555585 0.54298945713637714 ;
	setAttr ".sp" -type "double3" -0.54391883137385122 -0.41008010284555585 0.54298945713637714 ;
createNode transform -n "Cushion03" -p "CouchBase";
	rename -uid "F24763A8-4D4A-FA4B-66E3-5893CB704264";
	setAttr ".rp" -type "double3" -1.2276548438198556 0.062374711036682073 0.79712049491784254 ;
	setAttr ".sp" -type "double3" -1.2276548438198556 0.062374711036682073 0.79712049491784254 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.1540604 0.56237471 0.29712045 
		-1.8238119 0.56237471 0.29712045 -2.1540604 -0.13184562 0.29712045 -1.8238119 -0.13184562 
		0.29712045 -2.1540604 -0.13184562 -0.29759288 -1.8238119 -0.13184562 -0.29759288 
		-2.1540604 0.56237471 -0.29759288 -1.8238119 0.56237471 -0.29759288;
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
	setAttr ".rp" -type "double3" -1.2276548438198556 0.062374711036682073 2.3918338819474996 ;
	setAttr ".sp" -type "double3" -1.2276548438198556 0.062374711036682073 2.3918338819474996 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.1540604 0.56237471 1.8918338 
		-1.8238119 0.56237471 1.8918338 -2.1540604 -0.13184562 1.8918338 -1.8238119 -0.13184562 
		1.8918338 -2.1540604 -0.13184562 1.2971206 -1.8238119 -0.13184562 1.2971206 -2.1540604 
		0.56237471 1.2971206 -1.8238119 0.56237471 1.2971206;
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
	setAttr ".rp" -type "double3" -1.227654757559492 0.368154376745224 0.79712049491784254 ;
	setAttr ".sp" -type "double3" -1.227654757559492 0.368154376745224 0.79712049491784254 ;
createNode transform -n "Cushion03" -p "Cushions";
	rename -uid "E80B12B8-44C7-5B75-21B5-C4AAB04293CB";
	setAttr ".rp" -type "double3" -1.2276548438198556 0.36815438751456536 0.79712055254040026 ;
	setAttr ".sp" -type "double3" -1.2276548438198556 0.36815438751456536 0.79712055254040026 ;
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
	setAttr ".rp" -type "double3" -1.2276548438198556 0.36815438751456536 2.3918339395700574 ;
	setAttr ".sp" -type "double3" -1.2276548438198556 0.36815438751456536 2.3918339395700574 ;
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
	setAttr ".rp" -type "double3" -2.7983549938135912 0.56246221481234471 0.79712049491784087 ;
	setAttr ".sp" -type "double3" -2.7983549938135912 0.56246221481234471 0.79712049491784087 ;
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
	setAttr -s 103 ".pt[0:102]" -type "float3"  0 0 0.01850545 0 0 0.01850545 
		0 0 0.018411595 0 0 0.018133638 0 0 0.017682247 0 0 0.017074794 0 0 0.016334591 0 
		0 0.015490111 0 0 0.014573792 0 0 0.013620856 0 0 -0.018505456 0 0 -0.013620858 0 
		0 -0.014573798 0 0 -0.015490113 0 0 -0.016334595 0 0 -0.01707479 0 0 -0.017682249 
		0 0 -0.018133638 0 0 -0.018411599 0 0 0.01850545 0 0 0.017945562 0 0 0.018225506 
		0 0 0.018430438 0 0 0.01850545 0 0 0.018430479 0 0 0.018225655 0 0 0.017945861 0 
		0 -0.018505456 0 0 -0.018430443 0 0 -0.01822551 0 0 -0.017945563 0 0 -0.017945563 
		0 0 -0.01822551 0 0 -0.018430443 0 0 -0.018505456 0 0 -0.018505456 0 0 -0.018430443 
		0 0 -0.01822551 0 0 -0.017945563 0 0 0.013600498 0 0 0.013610674 0 0 0.013618128 
		0 0 0.013620856 0 0 -0.013620858 0 0 -0.013617174 0 0 -0.013607106 0 0 -0.013593353 
		0 0 0.018411595 0 0 0.018337784 0 0 0.018136133 0 0 0.017860673 0 0 0.018133638 0 
		0 0.01806418 0 0 0.017874429 0 0 0.017615212 0 0 0.017682247 0 0 0.017619798 0 0 
		0.017449185 0 0 0.017216124 0 0 0.017074794 0 0 0.017022284 0 0 0.016878827 0 0 0.016682861 
		0 0 0.016334591 0 0 0.016293576 0 0 0.016181527 0 0 0.01602846 0 0 0.015490111 0 
		0 0.015462173 0 0 0.015385848 0 0 0.01528159 0 0 0.014573792 0 0 0.014560027 0 0 
		0.014522419 0 0 0.014471041 0 0 -0.014573798 0 0 -0.014559091 0 0 -0.014518918 0 
		0 -0.014464039 0 0 -0.015490113 0 0 -0.015461268 0 0 -0.015382464 0 0 -0.015274815 
		0 0 -0.016334595 0 0 -0.016292719 0 0 -0.016178314 0 0 -0.01602203 0 0 -0.01707479 
		0 0 -0.01702149 0 0 -0.016875882 0 0 -0.016676972 0 0 -0.017682249 0 0 -0.01761958 
		0 0 -0.017448358 0 0 -0.017214466 0 0 -0.018133638 0 0 -0.018064002 0 0 -0.017873751 
		0 0 -0.017613864 0 0 -0.018411599 0 0 -0.018337674 0 0 -0.018135704 0 0 -0.017859809;
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
	setAttr ".rp" -type "double3" -0.54391883137385122 0 0.54298945713637714 ;
	setAttr ".sp" -type "double3" -0.54391883137385122 0 0.54298945713637714 ;
createNode transform -n "ArmRest2" -p "ArmRests";
	rename -uid "68DD62AC-433B-9AE1-C39D-15A7026E97D1";
	setAttr ".rp" -type "double3" -1.2276548095064683 0.062374711036682129 -0.79759289526144939 ;
	setAttr ".sp" -type "double3" -1.2276548095064683 0.062374711036682129 -0.79759289526144939 ;
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
	setAttr ".rp" -type "double3" -2.6540602992319862 0.062374740839004517 2.3918338850971343 ;
	setAttr ".sp" -type "double3" -2.6540602992319862 0.062374740839004517 2.3918338850971343 ;
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
createNode transform -n "WhiteBoxPainting";
	rename -uid "AAE5490F-4909-5A33-51CD-229AAE49E96A";
	setAttr ".rp" -type "double3" -2.9378216862678528 2.6941310553488353 0.79712057113647461 ;
	setAttr ".sp" -type "double3" -2.9378216862678528 2.6941310553488353 0.79712057113647461 ;
createNode mesh -n "WhiteBoxPaintingShape" -p "WhiteBoxPainting";
	rename -uid "5288F772-4464-46D0-826C-BD9029C08918";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.5 2.3209975 1.8208289 
		-3.3756435 2.3209975 1.8208289 -2.5 3.0672646 1.8208289 -3.3756435 3.0672646 1.8208289 
		-2.5 3.0672646 -0.22658782 -3.3756435 3.0672646 -0.22658782 -2.5 2.3209975 -0.22658782 
		-3.3756435 2.3209975 -0.22658782;
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B9373351-4459-92C6-44BE-F6B0133E9A7D";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D6E17A80-40CA-752F-1A72-FAAAF1C5B9D2";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "435472C7-4863-B4A6-98B3-A1B718A5AA40";
createNode displayLayerManager -n "layerManager";
	rename -uid "E46880FD-4C4D-59AE-4A81-51898E3B5213";
createNode displayLayer -n "defaultLayer";
	rename -uid "A7B200E6-44D4-FFB6-459F-A2A342CC1964";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C22D54F5-41C1-7560-6E2F-0EA35E8E7019";
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
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 891\n            -height 561\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 891\n            -height 560\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 891\n            -height 560\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
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
	rename -uid "7F1C11D8-4999-440B-8B30-37B100337115";
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
	setAttr -s 8 ".dsm";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
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
connectAttr "|Couch|CouchBase|Cushion03|CushionShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Couch|CouchBase|Cushion04|CushionShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ArmRestShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|Couch|Cushions|Cushion03|CushionShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Couch|Cushions|Cushion04|CushionShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ArmRestShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CouchBackShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WhiteBoxPaintingShape.iog" ":initialShadingGroup.dsm" -na;
// End of ChallengeThree_detailedPartTwoWip.ma
