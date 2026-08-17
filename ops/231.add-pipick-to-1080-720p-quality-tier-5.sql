-- @operation: export
-- @entity: batch
-- @name: Add PiPicK to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-17T04:38:51.381Z
-- @opIds: 13185, 13186, 13187, 13188, 13189

-- --- BEGIN op 13185 ( create regular_expression "PiPicK" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PiPicK', '(?<=^|[\s.-])iNFLiKTED\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PiPicK', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PiPicK', 'Release Group');
-- --- END op 13185

-- --- BEGIN op 13186 ( update regular_expression "PiPicK" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])PiPicK\b' where "name" = 'PiPicK' and "pattern" = '(?<=^|[\s.-])iNFLiKTED\b';
-- --- END op 13186

-- --- BEGIN op 13187 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'PiPicK', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'PiPicK', 'PiPicK');
-- --- END op 13187

-- --- BEGIN op 13188 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'PiPicK', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'PiPicK', 'PiPicK');
-- --- END op 13188

-- --- BEGIN op 13189 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'PiPicK', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'PiPicK', 'PiPicK');
-- --- END op 13189
