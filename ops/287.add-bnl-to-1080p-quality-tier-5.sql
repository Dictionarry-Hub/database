-- @operation: export
-- @entity: batch
-- @name: ADD BNL To 1080p Quality Tier 5
-- @exportedAt: 2026-08-25T02:01:02.211Z
-- @opIds: 13618, 13619, 13620, 13621

-- --- BEGIN op 13618 ( create regular_expression "BNL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BNL', '(?<=^|[\s.-])J2G\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BNL', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BNL', 'Release Group');
-- --- END op 13618

-- --- BEGIN op 13619 ( update regular_expression "BNL" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])BNL\b' where "name" = 'BNL' and "pattern" = '(?<=^|[\s.-])J2G\b';
-- --- END op 13619

-- --- BEGIN op 13620 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'BNL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'BNL', 'BNL');
-- --- END op 13620

-- --- BEGIN op 13621 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'BNL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'BNL', 'BNL');
-- --- END op 13621
