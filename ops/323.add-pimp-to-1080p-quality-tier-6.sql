-- @operation: export
-- @entity: batch
-- @name: Add PiMP to 1080p Quality Tier 6
-- @exportedAt: 2026-08-30T22:22:18.839Z
-- @opIds: 14177, 14178, 14179, 14180, 14181

-- --- BEGIN op 14177 ( create regular_expression "PiMP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PiMP', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PiMP', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PiMP', 'Release Group');
-- --- END op 14177

-- --- BEGIN op 14178 ( update regular_expression "PiMP" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])PiMP\b' where "name" = 'PiMP' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 14178

-- --- BEGIN op 14179 ( update regular_expression "UHD Bluray Release Groups" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NTb|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiG30N|PiMP|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|SbR|ShAnKs|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WESTSiDE|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b' where "name" = 'UHD Bluray Release Groups' and "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NTb|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiG30N|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|SbR|ShAnKs|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WESTSiDE|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b';
-- --- END op 14179

-- --- BEGIN op 14180 ( update regular_expression "UHD WEBRip Release Groups" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiG30N|PiMP|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|SbR|ShAnKs|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WESTSiDE|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b' where "name" = 'UHD WEBRip Release Groups' and "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|J2G|JewelBox|JKP|JM|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|pcroland|Penumbra|PerfectionHD|PiG30N|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|SbR|ShAnKs|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SuBHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WESTSiDE|WiHD|WiLF|WMING|xander|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b';
-- --- END op 14180

-- --- BEGIN op 14181 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'PiMP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'PiMP', 'PiMP');
-- --- END op 14181
