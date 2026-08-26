-- @operation: export
-- @entity: batch
-- @name: Add Funner to 1080/720p Quality Tier 6
-- @exportedAt: 2026-08-26T01:26:47.811Z
-- @opIds: 13718, 13719, 13720, 13721, 13722

-- --- BEGIN op 13718 ( create regular_expression "Funner" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Funner', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Funner', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Funner', 'Release Group');
-- --- END op 13718

-- --- BEGIN op 13719 ( update regular_expression "Funner" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Funner\b' where "name" = 'Funner' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13719

-- --- BEGIN op 13720 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'Funner', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'Funner', 'Funner');
-- --- END op 13720

-- --- BEGIN op 13721 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'Funner', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'Funner', 'Funner');
-- --- END op 13721

-- --- BEGIN op 13722 ( update custom_format "720p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 6', 'Funner', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 6', 'Funner', 'Funner');
-- --- END op 13722
