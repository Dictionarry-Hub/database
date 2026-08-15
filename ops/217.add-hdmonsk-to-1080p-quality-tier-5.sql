-- @operation: export
-- @entity: batch
-- @name: Add HDmonSK to 1080p Quality Tier 5
-- @exportedAt: 2026-08-15T20:42:25.331Z
-- @opIds: 12926, 12927, 12928

-- --- BEGIN op 12926 ( create regular_expression "HDmonSK" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDmonSK', '(?<=^|[\s.-])ASD87\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDmonSK', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDmonSK', 'Release Group');
-- --- END op 12926

-- --- BEGIN op 12927 ( update regular_expression "HDmonSK" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])HDmonSK\b' where "name" = 'HDmonSK' and "pattern" = '(?<=^|[\s.-])ASD87\b';
-- --- END op 12927

-- --- BEGIN op 12928 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'HDmonSK', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'HDmonSK', 'HDmonSK');
-- --- END op 12928
