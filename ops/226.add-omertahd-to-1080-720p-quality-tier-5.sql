-- @operation: export
-- @entity: batch
-- @name: Add OmertaHD to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-17T02:32:00.637Z
-- @opIds: 13159, 13160, 13161, 13162, 13163

-- --- BEGIN op 13159 ( create regular_expression "OmertaHD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('OmertaHD', '(?<=^|[\s.-])SuBHD\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OmertaHD', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OmertaHD', 'Release Group');
-- --- END op 13159

-- --- BEGIN op 13160 ( update regular_expression "OmertaHD" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])OmertaHD\b' where "name" = 'OmertaHD' and "pattern" = '(?<=^|[\s.-])SuBHD\b';
-- --- END op 13160

-- --- BEGIN op 13161 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'OmertaHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'OmertaHD', 'OmertaHD');
-- --- END op 13161

-- --- BEGIN op 13162 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'OmertaHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'OmertaHD', 'OmertaHD');
-- --- END op 13162

-- --- BEGIN op 13163 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'OmertaHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'OmertaHD', 'OmertaHD');
-- --- END op 13163
