-- @operation: export
-- @entity: batch
-- @name: Add AFKI to 1080/720p Quality Tier 5
-- @exportedAt: 2026-11-01T01:12:16.259Z
-- @opIds: 15580, 15581, 15582, 15583, 15584

-- --- BEGIN op 15580 ( create regular_expression "AFKI" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AFKI', '(?<=^|[\s.-])147\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AFKI', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AFKI', 'Release Group');
-- --- END op 15580

-- --- BEGIN op 15581 ( update regular_expression "AFKI" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])AFKI\b' where "name" = 'AFKI' and "pattern" = '(?<=^|[\s.-])147\b';
-- --- END op 15581

-- --- BEGIN op 15582 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'AFKI', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'AFKI', 'AFKI');
-- --- END op 15582

-- --- BEGIN op 15583 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'AFKI', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'AFKI', 'AFKI');
-- --- END op 15583

-- --- BEGIN op 15584 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'AFKI', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'AFKI', 'AFKI');
-- --- END op 15584
