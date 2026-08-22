-- @operation: export
-- @entity: batch
-- @name: Add WiHD to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-22T20:43:02.275Z
-- @opIds: 13419, 13420, 13421, 13422, 13423

-- --- BEGIN op 13419 ( create regular_expression "WiHD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WiHD', '(?<=^|[\s.-])DiRTY\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WiHD', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WiHD', 'Release Group');
-- --- END op 13419

-- --- BEGIN op 13420 ( update regular_expression "WiHD" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])WiHD\b' where "name" = 'WiHD' and "pattern" = '(?<=^|[\s.-])DiRTY\b';
-- --- END op 13420

-- --- BEGIN op 13421 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'WiHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'WiHD', 'WiHD');
-- --- END op 13421

-- --- BEGIN op 13422 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'WiHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'WiHD', 'WiHD');
-- --- END op 13422

-- --- BEGIN op 13423 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'WiHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'WiHD', 'WiHD');
-- --- END op 13423
