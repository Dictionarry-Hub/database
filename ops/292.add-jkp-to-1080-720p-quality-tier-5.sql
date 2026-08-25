-- @operation: export
-- @entity: batch
-- @name: Add JKP to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-25T18:37:46.460Z
-- @opIds: 13653, 13654, 13655, 13656, 13657, 13658, 13659

-- --- BEGIN op 13653 ( create regular_expression "JKP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('JKP', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('JKP', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('JKP', 'Release Group');
-- --- END op 13653

-- --- BEGIN op 13654 ( update regular_expression "JKP" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])JKP\b' where "name" = 'JKP' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13654

-- --- BEGIN op 13655 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'JKP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'JKP', 'JKP');
-- --- END op 13655

-- --- BEGIN op 13656 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'JKP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'JKP', 'JKP');
-- --- END op 13656

-- --- BEGIN op 13657 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'JKP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'JKP', 'JKP');
-- --- END op 13657

-- --- BEGIN op 13658 ( update regular_expression "UHD Bluray Release Groups" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|nmd|NorTV|NoVA|NTb|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|rightSIZE|RO|Rose3Thorn|rttr|SA89|SaNcTi|SbR|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTo|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b' where "name" = 'UHD Bluray Release Groups' and "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|nmd|NorTV|NoVA|NTb|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|rightSIZE|RO|Rose3Thorn|rttr|SA89|SaNcTi|SbR|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTo|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b';
-- --- END op 13658

-- --- BEGIN op 13659 ( update regular_expression "UHD WEBRip Release Groups" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|nmd|NorTV|NoVA|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|rightSIZE|RO|Rose3Thorn|rttr|SA89|SaNcTi|SbR|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTo|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b' where "name" = 'UHD WEBRip Release Groups' and "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|nmd|NorTV|NoVA|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|rightSIZE|RO|Rose3Thorn|rttr|SA89|SaNcTi|SbR|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTo|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b';
-- --- END op 13659
