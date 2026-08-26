-- @operation: export
-- @entity: batch
-- @name: Fix TayTO
-- @exportedAt: 2026-08-26T23:04:52.930Z
-- @opIds: 13757, 13758, 13759, 13760, 13761, 13762, 13763, 13764, 13765, 13766, 13767, 13768, 13769, 13770, 13771, 13772, 13773, 13774

-- --- BEGIN op 13757 ( update regular_expression "TayTo" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])TayTO\b' where "name" = 'TayTo' and "pattern" = '(?<=^|[\s.-])TayTo\b';
-- --- END op 13757

-- --- BEGIN op 13758 ( update regular_expression "Stupid" )
update "regular_expressions" set "name" = 'Stupid' where "name" = 'TayTo';
-- --- END op 13758

-- --- BEGIN op 13759 ( update custom_format "1080p Quality Tier 2" )
update "condition_patterns" set "regular_expression_name" = 'Stupid' where "custom_format_name" = '1080p Quality Tier 2' and "condition_name" = 'TayTo' and "regular_expression_name" in ('TayTo', 'Stupid');
-- --- END op 13759

-- --- BEGIN op 13760 ( update custom_format "1080p Quality Tier 2 (Efficient)" )
update "condition_patterns" set "regular_expression_name" = 'Stupid' where "custom_format_name" = '1080p Quality Tier 2 (Efficient)' and "condition_name" = 'TayTo' and "regular_expression_name" in ('TayTo', 'Stupid');
-- --- END op 13760

-- --- BEGIN op 13761 ( update custom_format "720p Quality Tier 2" )
update "condition_patterns" set "regular_expression_name" = 'Stupid' where "custom_format_name" = '720p Quality Tier 2' and "condition_name" = 'TayTo' and "regular_expression_name" in ('TayTo', 'Stupid');
-- --- END op 13761

-- --- BEGIN op 13762 ( update regular_expression "TayTO" )
update "regular_expressions" set "name" = 'TayTO' where "name" = 'Stupid';
-- --- END op 13762

-- --- BEGIN op 13763 ( update custom_format "1080p Quality Tier 2" )
update "condition_patterns" set "regular_expression_name" = 'TayTO' where "custom_format_name" = '1080p Quality Tier 2' and "condition_name" = 'TayTo' and "regular_expression_name" in ('Stupid', 'TayTO');
-- --- END op 13763

-- --- BEGIN op 13764 ( update custom_format "1080p Quality Tier 2 (Efficient)" )
update "condition_patterns" set "regular_expression_name" = 'TayTO' where "custom_format_name" = '1080p Quality Tier 2 (Efficient)' and "condition_name" = 'TayTo' and "regular_expression_name" in ('Stupid', 'TayTO');
-- --- END op 13764

-- --- BEGIN op 13765 ( update custom_format "720p Quality Tier 2" )
update "condition_patterns" set "regular_expression_name" = 'TayTO' where "custom_format_name" = '720p Quality Tier 2' and "condition_name" = 'TayTo' and "regular_expression_name" in ('Stupid', 'TayTO');
-- --- END op 13765

-- --- BEGIN op 13766 ( update custom_format "1080p Quality Tier 2" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 2'
	  AND name = 'TayTo'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13766

-- --- BEGIN op 13767 ( update custom_format "1080p Quality Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 2', 'TayTO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 2', 'TayTO', 'TayTO');
-- --- END op 13767

-- --- BEGIN op 13768 ( update custom_format "720p Quality Tier 2" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '720p Quality Tier 2'
	  AND name = 'TayTo'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13768

-- --- BEGIN op 13769 ( update custom_format "720p Quality Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 2', 'TayTO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 2', 'TayTO', 'TayTO');
-- --- END op 13769

-- --- BEGIN op 13770 ( update custom_format "1080p Quality Tier 2 (Efficient)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 2 (Efficient)'
	  AND name = 'TayTo'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13770

-- --- BEGIN op 13771 ( update custom_format "1080p Quality Tier 2 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 2 (Efficient)', 'TayTO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 2 (Efficient)', 'TayTO', 'TayTO');
-- --- END op 13771

-- --- BEGIN op 13772 ( update regular_expression "UHD Bluray Release Groups" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NTb|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiG30N|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|SbR|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b' where "name" = 'UHD Bluray Release Groups' and "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NTb|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiG30N|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|SbR|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTo|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b';
-- --- END op 13772

-- --- BEGIN op 13773 ( update regular_expression "UHD WEBRip Release Groups" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiG30N|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|SbR|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b' where "name" = 'UHD WEBRip Release Groups' and "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiG30N|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|SbR|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTo|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b';
-- --- END op 13773

-- --- BEGIN op 13774 ( update regular_expression "Golden Popcorn Negation" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(AJP69|ATELiER|BMF|BSTD|BV|c0kE|Chotab|CJ|coffee|CRiSC|CRX|CtrlHD|Dariush|de[42]|decibel|DON|D-Z0N3|E.N.D|E1|EDPH|EbP|ESiR|EuReKA|EXCiSION|FoRM|FraMeSToR|GALAXY|Geek|GS88|HANDJOB|hdalx|HDC|HDMaNiAcS|HiDt|HiFi|HiP|HQMUX|IDE|iFT|iON|Ivandro|KASHMiR|Kitsune|KnG|LEGi0N|LiNG|LolHD|LoRD|luvBB|MaG|MTeam|NCmt|NiBuRu|NiP|nmd|NTb|NyHD|ORiGEN|P0W4HD|Penumbra|playHD|Positive|PTer|PTP|REBORN|RiCO|rightSIZE|RO|ROCiNANTE|rttr|SA89|SaNcTi|SbR|SiMPLE|Skazhutin|Slappy|SoLaR|SOP|SPHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|VLAD|VietHD|W4NK3R|WiKi|WiLDCAT|WiLF|WMING|xander|ZIMBO|ZoroSenpai|ZQ)\b' where "name" = 'Golden Popcorn Negation' and "pattern" = '(?<=^|[\s.-])(AJP69|ATELiER|BMF|BSTD|BV|c0kE|Chotab|CJ|coffee|CRiSC|CRX|CtrlHD|Dariush|de[42]|decibel|DON|D-Z0N3|E.N.D|E1|EDPH|EbP|ESiR|EuReKA|EXCiSION|FoRM|FraMeSToR|GALAXY|Geek|GS88|HANDJOB|hdalx|HDC|HDMaNiAcS|HiDt|HiFi|HiP|HQMUX|IDE|iFT|iON|Ivandro|KASHMiR|Kitsune|KnG|LEGi0N|LiNG|LolHD|LoRD|luvBB|MaG|MTeam|NCmt|NiBuRu|NiP|nmd|NTb|NyHD|ORiGEN|P0W4HD|Penumbra|playHD|Positive|PTer|PTP|REBORN|RiCO|rightSIZE|RO|ROCiNANTE|rttr|SA89|SaNcTi|SbR|SiMPLE|Skazhutin|Slappy|SoLaR|SOP|SPHD|TayTo|TBB|TDD|TeamSyndicate|ThD|TnP|VLAD|VietHD|W4NK3R|WiKi|WiLDCAT|WiLF|WMING|xander|ZIMBO|ZoroSenpai|ZQ)\b';
-- --- END op 13774
