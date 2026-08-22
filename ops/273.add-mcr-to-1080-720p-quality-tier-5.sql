-- @operation: export
-- @entity: batch
-- @name: Add MCR to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-22T20:55:44.786Z
-- @opIds: 13431, 13432, 13433, 13434, 13435

-- --- BEGIN op 13431 ( create regular_expression "MCR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MCR', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MCR', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MCR', 'Release Group');
-- --- END op 13431

-- --- BEGIN op 13432 ( update regular_expression "MCR" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])MCR\b' where "name" = 'MCR' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13432

-- --- BEGIN op 13433 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'MCR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'MCR', 'MCR');
-- --- END op 13433

-- --- BEGIN op 13434 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'MCR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'MCR', 'MCR');
-- --- END op 13434

-- --- BEGIN op 13435 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'MCR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'MCR', 'MCR');
-- --- END op 13435
