-- @operation: export
-- @entity: batch
-- @name: Add PriMeHD to 1080p Quality Tier 6
-- @exportedAt: 2026-08-30T23:52:45.874Z
-- @opIds: 14189, 14190, 14191, 14192, 14193, 14194

-- --- BEGIN op 14189 ( create regular_expression "PriMeHD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PriMeHD', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PriMeHD', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PriMeHD', 'Release Group');
-- --- END op 14189

-- --- BEGIN op 14190 ( update regular_expression "PriMeHD" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])PriMeHD\b' where "name" = 'PriMeHD' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 14190

-- --- BEGIN op 14191 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'PriMeHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'PriMeHD', 'PriMeHD');
-- --- END op 14191

-- --- BEGIN op 14192 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'PriMeHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'PriMeHD', 'PriMeHD');
-- --- END op 14192

-- --- BEGIN op 14193 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'PiMP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'PiMP', 'PiMP');
-- --- END op 14193

-- --- BEGIN op 14194 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'XFR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'XFR', 'XFR');
-- --- END op 14194
