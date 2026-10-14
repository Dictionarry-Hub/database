-- @operation: export
-- @entity: batch
-- @name: Add G4MBiT to 1080p Quality Tier 6
-- @exportedAt: 2026-10-14T23:58:31.907Z
-- @opIds: 14735, 14736, 14737, 14738

-- --- BEGIN op 14735 ( create regular_expression "G4MBiT" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('G4MBiT', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('G4MBiT', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('G4MBiT', 'Release Group');
-- --- END op 14735

-- --- BEGIN op 14736 ( update regular_expression "G4MBiT" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])G4MBiT\b' where "name" = 'G4MBiT' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 14736

-- --- BEGIN op 14737 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'G4MBiT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'G4MBiT', 'G4MBiT');
-- --- END op 14737

-- --- BEGIN op 14738 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'G4MBiT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'G4MBiT', 'G4MBiT');
-- --- END op 14738
