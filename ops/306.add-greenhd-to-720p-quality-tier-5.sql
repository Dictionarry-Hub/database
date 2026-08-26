-- @operation: export
-- @entity: batch
-- @name: Add greenHD to 720p Quality Tier 5
-- @exportedAt: 2026-08-26T22:45:52.826Z
-- @opIds: 13748, 13749, 13750

-- --- BEGIN op 13748 ( create regular_expression "greenHD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('greenHD', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('greenHD', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('greenHD', 'Release Group');
-- --- END op 13748

-- --- BEGIN op 13749 ( update regular_expression "greenHD" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])greenHD\b' where "name" = 'greenHD' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13749

-- --- BEGIN op 13750 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'greenHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'greenHD', 'greenHD');
-- --- END op 13750
