-- @operation: export
-- @entity: batch
-- @name: ADD IMF to 720p Quality Tier 5
-- @exportedAt: 2026-08-22T15:26:26.583Z
-- @opIds: 13375, 13376, 13377

-- --- BEGIN op 13375 ( create regular_expression "IMF" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('IMF', '(?<=^|[\s.-])GR\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('IMF', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('IMF', 'Release Group');
-- --- END op 13375

-- --- BEGIN op 13376 ( update regular_expression "IMF" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])IMF\b' where "name" = 'IMF' and "pattern" = '(?<=^|[\s.-])GR\b';
-- --- END op 13376

-- --- BEGIN op 13377 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'IMF', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'IMF', 'IMF');
-- --- END op 13377
