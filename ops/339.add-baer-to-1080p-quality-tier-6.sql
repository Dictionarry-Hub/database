-- @operation: export
-- @entity: batch
-- @name: Add Baer to 1080p Quality Tier 6
-- @exportedAt: 2026-09-02T02:22:44.759Z
-- @opIds: 14263, 14264, 14265, 14266

-- --- BEGIN op 14263 ( create regular_expression "Baer" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Baer', '(?<=^|[\s.-])cFc\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Baer', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Baer', 'Release Group');
-- --- END op 14263

-- --- BEGIN op 14264 ( update regular_expression "Baer" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Baer\b' where "name" = 'Baer' and "pattern" = '(?<=^|[\s.-])cFc\b';
-- --- END op 14264

-- --- BEGIN op 14265 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'Baer', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'Baer', 'Baer');
-- --- END op 14265

-- --- BEGIN op 14266 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'Baer', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'Baer', 'Baer');
-- --- END op 14266
