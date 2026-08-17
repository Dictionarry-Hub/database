-- @operation: export
-- @entity: batch
-- @name: Add iNFLiKTED to 720p Quality Tier 5
-- @exportedAt: 2026-08-17T04:37:16.587Z
-- @opIds: 13181, 13182, 13183

-- --- BEGIN op 13181 ( create regular_expression "iNFLiKTED" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iNFLiKTED', '(?<=^|[\s.-])NorTV\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iNFLiKTED', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iNFLiKTED', 'Release Group');
-- --- END op 13181

-- --- BEGIN op 13182 ( update regular_expression "iNFLiKTED" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])iNFLiKTED\b' where "name" = 'iNFLiKTED' and "pattern" = '(?<=^|[\s.-])NorTV\b';
-- --- END op 13182

-- --- BEGIN op 13183 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'iNFLiKTED', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'iNFLiKTED', 'iNFLiKTED');
-- --- END op 13183
