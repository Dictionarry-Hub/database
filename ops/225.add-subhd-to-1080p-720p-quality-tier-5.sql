-- @operation: export
-- @entity: batch
-- @name: Add SuBHD to 1080p/720p Quality Tier 5
-- @exportedAt: 2026-08-17T02:26:24.201Z
-- @opIds: 13153, 13154, 13155, 13156, 13157

-- --- BEGIN op 13153 ( create regular_expression "SuBHD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SuBHD', '(?<=^|[\s.-])UxO\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SuBHD', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SuBHD', 'Release Group');
-- --- END op 13153

-- --- BEGIN op 13154 ( update regular_expression "SuBHD" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])SuBHD\b' where "name" = 'SuBHD' and "pattern" = '(?<=^|[\s.-])UxO\b';
-- --- END op 13154

-- --- BEGIN op 13155 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'SuBHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'SuBHD', 'SuBHD');
-- --- END op 13155

-- --- BEGIN op 13156 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'SuBHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'SuBHD', 'SuBHD');
-- --- END op 13156

-- --- BEGIN op 13157 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'SuBHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'SuBHD', 'SuBHD');
-- --- END op 13157
