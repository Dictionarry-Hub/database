-- @operation: export
-- @entity: batch
-- @name: Add MHYSA to 1080p Quality Tier 5 & UHD Exceptions
-- @exportedAt: 2026-11-26T19:06:29.876Z
-- @opIds: 15680, 15681, 15682, 15683

-- --- BEGIN op 15680 ( create regular_expression "MHYSA" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MHYSA', '(?<=^|[\s.-])aBa\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MHYSA', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MHYSA', 'Release Group');
-- --- END op 15680

-- --- BEGIN op 15681 ( update regular_expression "MHYSA" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])MHYSA\b' where "name" = 'MHYSA' and "pattern" = '(?<=^|[\s.-])aBa\b';
-- --- END op 15681

-- --- BEGIN op 15682 ( update regular_expression "UHD Bluray Release Groups" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|AZVD|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|GutS|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|Ivandro|J2G|JewelBox|JKP|JM|KamiKaze|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|M13|MCR|MGs|MHYSA|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NTb|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|Palm|pcroland|Penumbra|PerfectionHD|PiG30N|PiMP|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|SbR|ShAnKs|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPEED|SPHD|SuBHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WESTSiDE|WiHD|WiLF|WMING|xander|XFR|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b' where "name" = 'UHD Bluray Release Groups' and "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|AZVD|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|CtrlHD|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|GutS|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|Ivandro|J2G|JewelBox|JKP|JM|KamiKaze|KASHMiR|Kitsune|Krispy|Kururun|LAZY|LiNG|LolHD|LoRD|luvBB|M13|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NTb|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|Palm|pcroland|Penumbra|PerfectionHD|PiG30N|PiMP|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|SbR|ShAnKs|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPEED|SPHD|SuBHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|ViSUM|VLAD|VorteX|W4NK3R|WESTSiDE|WiHD|WiLF|WMING|xander|XFR|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b';
-- --- END op 15682

-- --- BEGIN op 15683 ( update regular_expression "UHD WEBRip Release Groups" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|AZVD|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|GutS|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|Ivandro|J2G|JewelBox|JKP|JM|KamiKaze|KASHMiR|Krispy|Kururun|LiNG|LolHD|LoRD|luvBB|M13|MCR|MGs|MHYSA|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|Palm|pcroland|Penumbra|PerfectionHD|PiG30N|PiMP|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|ShAnKs|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SPEED|SuBHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|VLAD|VorteX|W4NK3R|WESTSiDE|WiHD|WiLF|WMING|xander|XFR|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b' where "name" = 'UHD WEBRip Release Groups' and "pattern" = '(?<=^|[\s.-])(0BSiDiAN|147|Aio|AJP69|aNDy|ARiN|ASD87|ATELiER|AZVD|BakedFEL|BAT1|BBW|BMF|BNL|BRUTE|BSTD|BV|Cache|CALiGARi|CART|c0kE|Chotab|CJ|coffee|CONSORTiUM|CRiME|CRiSC|CRX|D-Z0N3|Dariush|de[42]|decibeL|DiRTY|DON|E.N.D|E1|E76|EA|EBCP|EbP|Eby|EDPH|ENDSkY|ESiR|EXCiSION|eXterminator|faBR|FANDANGO|FoRM|FraMeSToR|FTO|GALAXY|Geek|GL|GR|GrapeHD|GS88|GutS|Gyroscope|GZ|H@M|hdalx|HDL|HDMaNiAcS|HDmonSK|HDV|HDv0T|HDxT|HiDt|HiFi|HiP|HQMUX|HR|IDE|iFT|iLL|iLoveHD|IMNEWHERE|Ivandro|J2G|JewelBox|JKP|JM|KamiKaze|KASHMiR|Krispy|Kururun|LiNG|LolHD|LoRD|luvBB|M13|MCR|MGs|Narkyy|Natuyuki|NCmt|NiBuRu|NiP|nmd|NorTV|NoVA|NyHD|O2STK|OB1|OmertaHD|ORBiT|ORiGEN|Otaibi|Palm|pcroland|Penumbra|PerfectionHD|PiG30N|PiMP|PiPicK|playHD|POH|Positive|Prestige|PTer|PuTao|RDK123|REBORN|REPTiLE|RiCO|RightSIZE|RO|Rose3Thorn|rttr|SA89|SaL|SaNcTi|ShAnKs|SiMPLE|Skazhutin|Softboat|SoLaR|SOP|SPHD|SPEED|SuBHD|TayTO|TBB|TDD|TeamSyndicate|ThD|TnP|ToK|UxO|VD|VietHD|VLAD|VorteX|W4NK3R|WESTSiDE|WiHD|WiLF|WMING|xander|XFR|ZIMBO|ZiNC|ZoroSenpai|ZQ)\b';
-- --- END op 15683
