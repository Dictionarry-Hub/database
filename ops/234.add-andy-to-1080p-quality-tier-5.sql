-- @operation: export
-- @entity: batch
-- @name: Add aNDy to 1080p Quality Tier 5
-- @exportedAt: 2026-08-17T04:50:59.232Z
-- @opIds: 13200, 13201, 13202, 13203

-- --- BEGIN op 13200 ( create regular_expression "aNDy" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('aNDy', '(?<=^|[\s.-])H@M\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('aNDy', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('aNDy', 'Release Group');
-- --- END op 13200

-- --- BEGIN op 13201 ( update regular_expression "aNDy" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])aNDy\b' where "name" = 'aNDy' and "pattern" = '(?<=^|[\s.-])H@M\b';
-- --- END op 13201

-- --- BEGIN op 13202 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'aNDy', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'aNDy', 'aNDy');
-- --- END op 13202

-- --- BEGIN op 13203 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'aNDy', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'aNDy', 'aNDy');
-- --- END op 13203
