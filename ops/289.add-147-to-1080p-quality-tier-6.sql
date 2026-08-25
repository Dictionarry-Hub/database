-- @operation: export
-- @entity: batch
-- @name: Add 147 to 1080p Quality Tier 6
-- @exportedAt: 2026-08-25T03:43:26.342Z
-- @opIds: 13629, 13630, 13631, 13632

-- --- BEGIN op 13629 ( create regular_expression "147" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('147', '(?<=^|[\s.-])CRX\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('147', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('147', 'Release Group');
-- --- END op 13629

-- --- BEGIN op 13630 ( update regular_expression "147" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])147\b' where "name" = '147' and "pattern" = '(?<=^|[\s.-])CRX\b';
-- --- END op 13630

-- --- BEGIN op 13631 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', '147', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', '147', '147');
-- --- END op 13631

-- --- BEGIN op 13632 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', '147', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', '147', '147');
-- --- END op 13632
