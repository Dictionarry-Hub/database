-- @operation: export
-- @entity: batch
-- @name: Add RoJYA to 2160p Quality Tier 4
-- @exportedAt: 2026-11-09T18:15:18.198Z
-- @opIds: 15605, 15606, 15607

-- --- BEGIN op 15605 ( create regular_expression "RoJYA" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RoJYA', '(?<=^|[\s.-])ADE\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RoJYA', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RoJYA', 'Release Group');
-- --- END op 15605

-- --- BEGIN op 15606 ( update regular_expression "RoJYA" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])RoJYA\b' where "name" = 'RoJYA' and "pattern" = '(?<=^|[\s.-])ADE\b';
-- --- END op 15606

-- --- BEGIN op 15607 ( update custom_format "2160p Quality Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Quality Tier 4', 'RoJYA', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Quality Tier 4', 'RoJYA', 'RoJYA');
-- --- END op 15607
