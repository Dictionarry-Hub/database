-- @operation: export
-- @entity: batch
-- @name: Add POH to 1080p Quality Tier 5
-- @exportedAt: 2026-08-17T02:16:44.719Z
-- @opIds: 13145, 13146, 13147

-- --- BEGIN op 13145 ( create regular_expression "POH" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('POH', '(?<=^|[\s.-])REPTiLE\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('POH', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('POH', 'Release Group');
-- --- END op 13145

-- --- BEGIN op 13146 ( update regular_expression "POH" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])POH\b' where "name" = 'POH' and "pattern" = '(?<=^|[\s.-])REPTiLE\b';
-- --- END op 13146

-- --- BEGIN op 13147 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'POH', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'POH', 'POH');
-- --- END op 13147
