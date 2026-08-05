-- @operation: export
-- @entity: batch
-- @name: Add PrimeFix / ViSTA / PMI to Amazon 3rd Channel Scoring
-- @exportedAt: 2026-08-05T16:09:26.312Z
-- @opIds: 12553, 12554, 12555, 12556, 12557, 12558, 12559, 12560, 12561

-- --- BEGIN op 12553 ( create regular_expression "PrimeFix" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PrimeFix', '(?<=^|[\s.-])ABM\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PrimeFix', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PrimeFix', 'WEB-DL');
-- --- END op 12553

-- --- BEGIN op 12554 ( create regular_expression "ViSTA" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ViSTA', '(?<=^|[\s.-])ABM\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ViSTA', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ViSTA', 'WEB-DL');
-- --- END op 12554

-- --- BEGIN op 12555 ( create regular_expression "PMI" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PMI', '(?<=^|[\s.-])ABM\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PMI', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PMI', 'WEB-DL');
-- --- END op 12555

-- --- BEGIN op 12556 ( update regular_expression "PrimeFix" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])PrimeFix\b' where "name" = 'PrimeFix' and "pattern" = '(?<=^|[\s.-])ABM\b';
-- --- END op 12556

-- --- BEGIN op 12557 ( update regular_expression "ViSTA" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])ViSTA\b' where "name" = 'ViSTA' and "pattern" = '(?<=^|[\s.-])ABM\b';
-- --- END op 12557

-- --- BEGIN op 12558 ( update regular_expression "PMI" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])PMI\b' where "name" = 'PMI' and "pattern" = '(?<=^|[\s.-])ABM\b';
-- --- END op 12558

-- --- BEGIN op 12559 ( update custom_format "Amazon Channel Enhancement" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Amazon Channel Enhancement', 'PrimeFix', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Amazon Channel Enhancement', 'PrimeFix', 'PrimeFix');
-- --- END op 12559

-- --- BEGIN op 12560 ( update custom_format "Amazon Channel Enhancement" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Amazon Channel Enhancement', 'ViSTA', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Amazon Channel Enhancement', 'ViSTA', 'ViSTA');
-- --- END op 12560

-- --- BEGIN op 12561 ( update custom_format "Amazon Channel Enhancement" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Amazon Channel Enhancement', 'PMI', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Amazon Channel Enhancement', 'PMI', 'PMI');
-- --- END op 12561
