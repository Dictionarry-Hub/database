-- @operation: export
-- @entity: batch
-- @name: Add RDK123 to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-21T23:25:36.326Z
-- @opIds: 13312, 13313, 13314, 13315, 13316

-- --- BEGIN op 13312 ( create regular_expression "RDK123" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RDK123', '(?<=^|[\s.-])iLL\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RDK123', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RDK123', 'Release Group');
-- --- END op 13312

-- --- BEGIN op 13313 ( update regular_expression "RDK123" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])RDK123\b' where "name" = 'RDK123' and "pattern" = '(?<=^|[\s.-])iLL\b';
-- --- END op 13313

-- --- BEGIN op 13314 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'RDK123', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'RDK123', 'RDK123');
-- --- END op 13314

-- --- BEGIN op 13315 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'RDK123', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'RDK123', 'RDK123');
-- --- END op 13315

-- --- BEGIN op 13316 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'RDK123', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'RDK123', 'RDK123');
-- --- END op 13316
