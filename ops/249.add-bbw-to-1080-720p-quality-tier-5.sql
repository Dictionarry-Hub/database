-- @operation: export
-- @entity: batch
-- @name: Add BBW to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-21T23:20:38.411Z
-- @opIds: 13302, 13303, 13304, 13305

-- --- BEGIN op 13302 ( create regular_expression "BBW" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BBW', '(?<=^|[\s.-])ZiNC\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BBW', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BBW', 'Release Group');
-- --- END op 13302

-- --- BEGIN op 13303 ( update regular_expression "BBW" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])BBW\b' where "name" = 'BBW' and "pattern" = '(?<=^|[\s.-])ZiNC\b';
-- --- END op 13303

-- --- BEGIN op 13304 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'BBW', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'BBW', 'BBW');
-- --- END op 13304

-- --- BEGIN op 13305 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'BBW', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'BBW', 'BBW');
-- --- END op 13305
