-- @operation: export
-- @entity: batch
-- @name: Add Spekt0r to 1080/720p Quality Tier 6
-- @exportedAt: 2026-08-22T16:13:58.511Z
-- @opIds: 13404, 13405, 13406, 13407, 13408

-- --- BEGIN op 13404 ( create regular_expression "Spekt0r" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Spekt0r', '(?<=^|[\s.-])CONSORTiUM\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Spekt0r', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Spekt0r', 'Remux');
-- --- END op 13404

-- --- BEGIN op 13405 ( update regular_expression "Spekt0r" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Spekt0r\b' where "name" = 'Spekt0r' and "pattern" = '(?<=^|[\s.-])CONSORTiUM\b';
-- --- END op 13405

-- --- BEGIN op 13406 ( update custom_format "720p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 6', 'Spekt0r', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 6', 'Spekt0r', 'Spekt0r');
-- --- END op 13406

-- --- BEGIN op 13407 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'Spekt0r', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'Spekt0r', 'Spekt0r');
-- --- END op 13407

-- --- BEGIN op 13408 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'Spekt0r', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'Spekt0r', 'Spekt0r');
-- --- END op 13408
