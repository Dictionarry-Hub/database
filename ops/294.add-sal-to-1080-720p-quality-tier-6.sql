-- @operation: export
-- @entity: batch
-- @name: Add SaL to 1080/720p Quality Tier 6
-- @exportedAt: 2026-08-25T18:57:03.273Z
-- @opIds: 13669, 13670, 13671, 13672, 13673, 13674, 13675

-- --- BEGIN op 13669 ( create regular_expression "SaL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SaL', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SaL', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SaL', 'Release Group');
-- --- END op 13669

-- --- BEGIN op 13670 ( update regular_expression "SaL" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])SaL\b' where "name" = 'SaL' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13670

-- --- BEGIN op 13671 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'SaL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'SaL', 'SaL');
-- --- END op 13671

-- --- BEGIN op 13672 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'SaL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'SaL', 'SaL');
-- --- END op 13672

-- --- BEGIN op 13673 ( update custom_format "720p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 6', 'SaL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 6', 'SaL', 'SaL');
-- --- END op 13673

-- --- BEGIN op 13674 ( update regular_expression "UHD Bluray Release Groups" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|nmd|NorTV|NoVA|NTb|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiG30N|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|rightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|SbR|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTo|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b' where "name" = 'UHD Bluray Release Groups' and "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|nmd|NorTV|NoVA|NTb|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiG30N|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|rightSIZE|RO|Rose3Thorn|rttr|SA89|SaNcTi|SbR|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTo|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b';
-- --- END op 13674

-- --- BEGIN op 13675 ( update regular_expression "UHD WEBRip Release Groups" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|nmd|NorTV|NoVA|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiG30N|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|rightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|SbR|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTo|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b' where "name" = 'UHD WEBRip Release Groups' and "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|nmd|NorTV|NoVA|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiG30N|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|rightSIZE|RO|Rose3Thorn|rttr|SA89|SaNcTi|SbR|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTo|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b';
-- --- END op 13675
