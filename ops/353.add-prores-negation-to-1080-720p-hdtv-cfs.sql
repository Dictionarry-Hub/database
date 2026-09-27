-- @operation: export
-- @entity: batch
-- @name: Add ProRes Negation to 1080/720p HDTV CFs
-- @exportedAt: 2026-09-27T00:06:16.244Z
-- @opIds: 14574, 14575, 14576, 14577, 14578, 14579, 14580, 14581, 14582, 14583, 14584, 14585, 14586

-- --- BEGIN op 14574 ( create custom_format "720p ProRes Quality Tier 1" )
insert into "custom_formats" ("name", "description") values ('720p ProRes Quality Tier 1', '');
-- --- END op 14574

-- --- BEGIN op 14575 ( update custom_format "720p ProRes Quality Tier 1" )
update "custom_formats" set "description" = 'Matches release groups who fall under 1080p ProRes Tier 1' where "name" = '720p ProRes Quality Tier 1' and "description" = '';
-- --- END op 14575

-- --- BEGIN op 14576 ( update custom_format "720p ProRes Quality Tier 1" )
insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('720p ProRes Quality Tier 1', '1080p');

insert into "tags" ("name") values ('ProRes') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('720p ProRes Quality Tier 1', 'ProRes');

insert into "tags" ("name") values ('Quality') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('720p ProRes Quality Tier 1', 'Quality');

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('720p ProRes Quality Tier 1', 'Release Group Tier');
-- --- END op 14576

-- --- BEGIN op 14577 ( update custom_format "720p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p ProRes Quality Tier 1', '1080p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('720p ProRes Quality Tier 1', '1080p', '1080p');
-- --- END op 14577

-- --- BEGIN op 14578 ( update custom_format "720p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p ProRes Quality Tier 1', 'HDTV', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('720p ProRes Quality Tier 1', 'HDTV', 'television');
-- --- END op 14578

-- --- BEGIN op 14579 ( update custom_format "720p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p ProRes Quality Tier 1', 'ProRes', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p ProRes Quality Tier 1', 'ProRes', 'ProRes');
-- --- END op 14579

-- --- BEGIN op 14580 ( update custom_format "720p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p ProRes Quality Tier 1', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('720p ProRes Quality Tier 1', 'WEB-DL', 'web_dl');
-- --- END op 14580

-- --- BEGIN op 14581 ( update custom_format "720p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p ProRes Quality Tier 1', 'ZoroSenpai', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p ProRes Quality Tier 1', 'ZoroSenpai', 'ZoroSenpai');
-- --- END op 14581

-- --- BEGIN op 14582 ( update custom_format "720p ProRes Quality Tier 1" )
update "custom_formats" set "description" = 'Matches release groups who fall under 720p ProRes Tier 1' where "name" = '720p ProRes Quality Tier 1' and "description" = 'Matches release groups who fall under 1080p ProRes Tier 1';
-- --- END op 14582

-- --- BEGIN op 14583 ( update custom_format "720p ProRes Quality Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '720p ProRes Quality Tier 1'
	  AND name = '1080p'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 14583

-- --- BEGIN op 14584 ( update custom_format "720p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p ProRes Quality Tier 1', '720p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('720p ProRes Quality Tier 1', '720p', '720p');
-- --- END op 14584

-- --- BEGIN op 14585 ( update custom_format "1080p HDTV" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p HDTV', 'ProRes', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p HDTV', 'ProRes', 'ProRes');
-- --- END op 14585

-- --- BEGIN op 14586 ( update custom_format "720p HDTV" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p HDTV', 'ProRes', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p HDTV', 'ProRes', 'ProRes');
-- --- END op 14586
