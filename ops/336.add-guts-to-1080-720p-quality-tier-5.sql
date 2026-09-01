-- @operation: export
-- @entity: batch
-- @name: Add GutS to 1080/720p Quality Tier 5
-- @exportedAt: 2026-09-01T22:07:35.387Z
-- @opIds: 14245, 14246, 14247, 14248, 14249, 14250, 14251

-- --- BEGIN op 14245 ( create regular_expression "GutS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GutS', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GutS', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GutS', 'Release Group');
-- --- END op 14245

-- --- BEGIN op 14246 ( update regular_expression "GutS" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])GutS\b' where "name" = 'GutS' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 14246

-- --- BEGIN op 14247 ( update regular_expression "UHD Bluray Release Groups" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|AZVD|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|GutS|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KamiKaze|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NTb|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|Palm|pcroland|Penumbra|PerfectionHD|PiG30N|PiMP|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|SbR|ShAnKs|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPEED|SPHD|SuBHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WESTSiDE|WiHD|WiLF|WMING|xander|XFR|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b' where "name" = 'UHD Bluray Release Groups' and "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|AZVD|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KamiKaze|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NTb|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|Palm|pcroland|Penumbra|PerfectionHD|PiG30N|PiMP|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|SbR|ShAnKs|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPEED|SPHD|SuBHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WESTSiDE|WiHD|WiLF|WMING|xander|XFR|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b';
-- --- END op 14247

-- --- BEGIN op 14248 ( update regular_expression "UHD WEBRip Release Groups" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|AZVD|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|GutS|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KamiKaze|KASHMiR|Krispy|Kururun|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|Palm|pcroland|Penumbra|PerfectionHD|PiG30N|PiMP|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|ShAnKs|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SPEED|SuBHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|VLAD|VorteX|W4NK3R|WESTSiDE|WiHD|WiLF|WMING|xander|XFR|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b' where "name" = 'UHD WEBRip Release Groups' and "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|AZVD|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KamiKaze|KASHMiR|Krispy|Kururun|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|Palm|pcroland|Penumbra|PerfectionHD|PiG30N|PiMP|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|ShAnKs|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SPEED|SuBHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|VLAD|VorteX|W4NK3R|WESTSiDE|WiHD|WiLF|WMING|xander|XFR|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b';
-- --- END op 14248

-- --- BEGIN op 14249 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'GutS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'GutS', 'GutS');
-- --- END op 14249

-- --- BEGIN op 14250 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'GutS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'GutS', 'GutS');
-- --- END op 14250

-- --- BEGIN op 14251 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'GutS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'GutS', 'GutS');
-- --- END op 14251
