-- @operation: export
-- @entity: batch
-- @name: Add VD to 1080p Quality Tier 5
-- @exportedAt: 2026-08-15T20:33:56.092Z
-- @opIds: 12920, 12921, 12922, 12923, 12924

-- --- BEGIN op 12920 ( create regular_expression "VD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VD', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VD', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VD', 'Release Group');
-- --- END op 12920

-- --- BEGIN op 12921 ( update regular_expression "VD" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])VD\b' where "name" = 'VD' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 12921

-- --- BEGIN op 12922 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'VD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'VD', 'VD');
-- --- END op 12922

-- --- BEGIN op 12923 ( update regular_expression "UHD Bluray Release Groups" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(AJP69|ATELiER|BakedFEL|BMF|BRUTE|BSTD|BV|c0kE|CART|Chotab|CJ|coffee|CRiSC|CRX|CtrlHD|Dariush|de[42]|decibel|DON|D-Z0N3|E.N.D|E1|EA|EDPH|EbP|ESiR|EXCiSION|faBR|FoRM|FraMeSToR|GALAXY|Geek|GS88|GZ|hdalx|HDMaNiAcS|HiDt|HiFi|HiP|IDE|iFT|KASHMiR|Kitsune|LiNG|LolHD|LoRD|luvBB|NCmt|NiBuRu|nmd|NTb|NyHD|ORBiT|ORiGEN|Penumbra|playHD|Positive|PTer|PuTao|REBORN|RiCO|rightSIZE|RO|rttr|SA89|SaNcTi|SbR|SiMPLE|Softboat|SoLaR|SOP|SPHD|TayTo|TBB|TDD|TeamSyndicate|TnP|VD|VLAD|VietHD|W4NK3R|WiLF|WMING|xander|ZIMBO|ZoroSenpai|ZQ)\b' where "name" = 'UHD Bluray Release Groups' and "pattern" = '(?<=^|[\s.-])(AJP69|ATELiER|BakedFEL|BMF|BRUTE|BSTD|BV|c0kE|CART|Chotab|CJ|coffee|CRiSC|CRX|CtrlHD|Dariush|de[42]|decibel|DON|D-Z0N3|E.N.D|E1|EA|EDPH|EbP|ESiR|EXCiSION|faBR|FoRM|FraMeSToR|GALAXY|Geek|GS88|GZ|hdalx|HDMaNiAcS|HiDt|HiFi|HiP|IDE|iFT|KASHMiR|Kitsune|LiNG|LolHD|LoRD|luvBB|NCmt|NiBuRu|nmd|NTb|NyHD|ORBiT|ORiGEN|Penumbra|playHD|Positive|PTer|PuTao|REBORN|RiCO|rightSIZE|RO|rttr|SA89|SaNcTi|SbR|SiMPLE|Softboat|SoLaR|SOP|SPHD|TayTo|TBB|TDD|TeamSyndicate|TnP|VLAD|VietHD|W4NK3R|WiLF|WMING|xander|ZIMBO|ZoroSenpai|ZQ)\b';
-- --- END op 12923

-- --- BEGIN op 12924 ( update regular_expression "UHD WEBRip Release Groups" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])(AJP69|ATELiER|BMF|BRUTE|BSTD|BV|c0kE|Chotab|CJ|coffee|CRiSC|CRX|CtrlHD|Dariush|de[42]|decibel|DON|D-Z0N3|E.N.D|E1|EA|EDPH|EbP|ESiR|EXCiSION|FoRM|FraMeSToR|GALAXY|Geek|GS88|hdalx|HDMaNiAcS|HiDt|HiFi|HiP|IDE|iFT|KASHMiR|Kitsune|LiNG|LolHD|LoRD|luvBB|NCmt|NiBuRu|nmd|NyHD|ORiGEN|Penumbra|playHD|Positive|PTer|REBORN|RiCO|rightSIZE|RO|rttr|SA89|SaNcTi|SbR|SiMPLE|SoLaR|SOP|SPHD|TayTo|TBB|TDD|TeamSyndicate|TnP|VD|VLAD|VietHD|W4NK3R|WiLF|WMING|xander|ZIMBO|ZoroSenpai|ZQ)\b' where "name" = 'UHD WEBRip Release Groups' and "pattern" = '(?<=^|[\s.-])(AJP69|ATELiER|BMF|BRUTE|BSTD|BV|c0kE|Chotab|CJ|coffee|CRiSC|CRX|CtrlHD|Dariush|de[42]|decibel|DON|D-Z0N3|E.N.D|E1|EA|EDPH|EbP|ESiR|EXCiSION|FoRM|FraMeSToR|GALAXY|Geek|GS88|hdalx|HDMaNiAcS|HiDt|HiFi|HiP|IDE|iFT|KASHMiR|Kitsune|LiNG|LolHD|LoRD|luvBB|NCmt|NiBuRu|nmd|NyHD|ORiGEN|Penumbra|playHD|Positive|PTer|REBORN|RiCO|rightSIZE|RO|rttr|SA89|SaNcTi|SbR|SiMPLE|SoLaR|SOP|SPHD|TayTo|TBB|TDD|TeamSyndicate|TnP|VLAD|VietHD|W4NK3R|WiLF|WMING|xander|ZIMBO|ZoroSenpai|ZQ)\b';
-- --- END op 12924
