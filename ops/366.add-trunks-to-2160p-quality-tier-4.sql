-- @operation: export
-- @entity: batch
-- @name: Add TRUNKS to 2160p Quality Tier 4
-- @exportedAt: 2026-10-14T23:48:37.377Z
-- @opIds: 14731, 14732, 14733

-- --- BEGIN op 14731 ( create regular_expression "TRUNKS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TRUNKS', '(?<=^|[\s.-])4KDVS\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRUNKS', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRUNKS', 'Release Group');
-- --- END op 14731

-- --- BEGIN op 14732 ( update regular_expression "TRUNKS" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])TRUNKS\b' where "name" = 'TRUNKS' and "pattern" = '(?<=^|[\s.-])4KDVS\b';
-- --- END op 14732

-- --- BEGIN op 14733 ( update custom_format "2160p Quality Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Quality Tier 4', 'TRUNKS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Quality Tier 4', 'TRUNKS', 'TRUNKS');
-- --- END op 14733
