-- @operation: export
-- @entity: batch
-- @name: Add Discovery+ & HBO
-- @exportedAt: 2026-08-23T23:27:19.898Z
-- @opIds: 13483, 13484, 13485, 13486, 13487, 13488, 13489, 13490, 13491, 13492, 13493, 13494, 13495, 13496, 13497, 13498, 13499, 13500, 13501, 13502, 13503, 13504, 13505, 13506, 13507, 13508, 13509, 13510, 13511, 13512, 13513, 13514, 13515, 13516, 13517, 13518, 13519, 13520, 13521, 13522, 13523, 13524, 13525, 13526, 13527, 13528, 13529, 13530, 13531, 13532, 13533, 13534, 13535, 13536, 13537, 13538, 13539, 13540, 13541, 13542, 13543, 13544, 13545, 13546, 13547, 13548, 13549, 13550, 13551, 13552, 13553, 13554, 13555, 13556, 13557, 13558, 13559, 13560, 13561, 13562, 13563, 13564, 13565, 13566, 13567, 13568, 13569

-- --- BEGIN op 13483 ( create regular_expression "HBO" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HBO', '\b(PLAY)\b[ ._-]web[ ._-]?(dl|rip)?\b', 'Google TV, formerly known as Google Play Movies & TV, is a digital distribution service for movies and television series developed by Google. Launched in 2011 as part of the Google Play product line, the service offers search and discovery of video titles across multiple streaming services, including rental or purchase options, alongside watchlist features for accessing titles from eligible devices and platforms. In September 2020, it was relaunched as Google TV.', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HBO', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HBO', 'WEB-DL');
-- --- END op 13483

-- --- BEGIN op 13484 ( create regular_expression "HBO Rename" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HBO Rename', '\[(PLAY)\b|\b(PLAY)\]', 'Google TV, formerly known as Google Play Movies & TV, is a digital distribution service for movies and television series developed by Google. Launched in 2011 as part of the Google Play product line, the service offers search and discovery of video titles across multiple streaming services, including rental or purchase options, alongside watchlist features for accessing titles from eligible devices and platforms. In September 2020, it was relaunched as Google TV.', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HBO Rename', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HBO Rename', 'WEB-DL');
-- --- END op 13484

-- --- BEGIN op 13485 ( update regular_expression "HBO" )
update "regular_expressions" set "description" = 'Home Box Office (HBO) is an American premium television network and service, which is the flagship property of namesake parent Home Box Office, Inc., a subsidiary of Warner Bros. Discovery. The overall Home Box Office business unit is based at Warner Bros. Discovery''s corporate headquarters inside 30 Hudson Yards in Manhattan. Programming featured on the service consists primarily of theatrically released motion pictures and original television programs as well as made-for-cable movies, documentaries, occasional comedy, and concert specials, and periodic interstitial programs (consisting of short films and making-of documentaries).' where "name" = 'HBO' and "description" = 'Google TV, formerly known as Google Play Movies & TV, is a digital distribution service for movies and television series developed by Google. Launched in 2011 as part of the Google Play product line, the service offers search and discovery of video titles across multiple streaming services, including rental or purchase options, alongside watchlist features for accessing titles from eligible devices and platforms. In September 2020, it was relaunched as Google TV.';
-- --- END op 13485

-- --- BEGIN op 13486 ( update regular_expression "HBO" )
update "regular_expressions" set "pattern" = '\b(hbo)(?![ ._-]max)\b(?=[ ._-]web[ ._-]?(dl|rip)\b)' where "name" = 'HBO' and "pattern" = '\b(PLAY)\b[ ._-]web[ ._-]?(dl|rip)?\b';
-- --- END op 13486

-- --- BEGIN op 13487 ( update regular_expression "HBO Rename" )
update "regular_expressions" set "description" = 'Home Box Office (HBO) is an American premium television network and service, which is the flagship property of namesake parent Home Box Office, Inc., a subsidiary of Warner Bros. Discovery. The overall Home Box Office business unit is based at Warner Bros. Discovery''s corporate headquarters inside 30 Hudson Yards in Manhattan. Programming featured on the service consists primarily of theatrically released motion pictures and original television programs as well as made-for-cable movies, documentaries, occasional comedy, and concert specials, and periodic interstitial programs (consisting of short films and making-of documentaries).' where "name" = 'HBO Rename' and "description" = 'Google TV, formerly known as Google Play Movies & TV, is a digital distribution service for movies and television series developed by Google. Launched in 2011 as part of the Google Play product line, the service offers search and discovery of video titles across multiple streaming services, including rental or purchase options, alongside watchlist features for accessing titles from eligible devices and platforms. In September 2020, it was relaunched as Google TV.';
-- --- END op 13487

-- --- BEGIN op 13488 ( update regular_expression "HBO Rename" )
update "regular_expressions" set "pattern" = '\[(HBO)\b|\b(HBO)\]' where "name" = 'HBO Rename' and "pattern" = '\[(PLAY)\b|\b(PLAY)\]';
-- --- END op 13488

-- --- BEGIN op 13489 ( update regular_expression "Google TV" )
update "regular_expressions" set "pattern" = '\b(PLAY)\b[ ._-]web[ ._-]?(DL|RIP)?\b' where "name" = 'Google TV' and "pattern" = '\b(PLAY)\b[ ._-]web[ ._-]?(dl|rip)?\b';
-- --- END op 13489

-- --- BEGIN op 13490 ( update regular_expression "Google TV" )
update "regular_expressions" set "pattern" = '\b(PLAY)\b[ ._-]WEB[ ._-]?(DL|RIP)?\b' where "name" = 'Google TV' and "pattern" = '\b(PLAY)\b[ ._-]web[ ._-]?(DL|RIP)?\b';
-- --- END op 13490

-- --- BEGIN op 13491 ( update regular_expression "HBO" )
update "regular_expressions" set "pattern" = '\b(HBO)(?![ ._-]MAX)\b(?=[ ._-]WEB[ ._-]?(DL|RIP)\b)' where "name" = 'HBO' and "pattern" = '\b(hbo)(?![ ._-]max)\b(?=[ ._-]web[ ._-]?(dl|rip)\b)';
-- --- END op 13491

-- --- BEGIN op 13492 ( update regular_expression "iTunes" )
update "regular_expressions" set "pattern" = '\b(iT|iTunes)\b(?=[ ._-]WEB[ ._-]?(DL|RIP)\b)' where "name" = 'iTunes' and "pattern" = '\b(it|itunes)\b(?=[ ._-]web[ ._-]?(dl|rip)\b)';
-- --- END op 13492

-- --- BEGIN op 13493 ( update regular_expression "Max" )
update "regular_expressions" set "pattern" = '\b((?<!HBO[ ._-])MAX)\b(?=[ ._-]WEB[ ._-]?(DL|RIP)\b)' where "name" = 'Max' and "pattern" = '\b((?<!hbo[ ._-])max)\b(?=[ ._-]web[ ._-]?(dl|rip)\b)';
-- --- END op 13493

-- --- BEGIN op 13494 ( update regular_expression "Movies Anywhere" )
update "regular_expressions" set "pattern" = '\b(?<!DTS[ .-]?HD[ .-]?)(MA|YKW)\b(?=.*\bWEB[ ._-]?(DL|RIP)\b)' where "name" = 'Movies Anywhere' and "pattern" = '\b(?<!dts[ .-]?hd[ .-]?)(MA|YKW)\b(?=.*\bweb[ ._-]?(dl|rip)\b)';
-- --- END op 13494

-- --- BEGIN op 13495 ( update regular_expression "Now" )
update "regular_expressions" set "pattern" = '\b(NOW)\b[ ._-]WEB[ ._-]?(DL|RIP)?\b' where "name" = 'Now' and "pattern" = '\b(now)\b[ ._-]web[ ._-]?(dl|rip)?\b';
-- --- END op 13495

-- --- BEGIN op 13496 ( update regular_expression "Showtime" )
update "regular_expressions" set "pattern" = '\b(SHO|Showtime)\b[ ._-]WEB[ ._-]?(DL|RIP)?\b' where "name" = 'Showtime' and "pattern" = '\b(sho|showtime)\b[ ._-]web[ ._-]?(dl|rip)?\b';
-- --- END op 13496

-- --- BEGIN op 13497 ( update regular_expression "Stan" )
update "regular_expressions" set "pattern" = '\b(STAN)\b[ ._-]WEB[ ._-]?(DL|RIP)?\b' where "name" = 'Stan' and "pattern" = '\b(stan)\b[ ._-]web[ ._-]?(dl|rip)?\b';
-- --- END op 13497

-- --- BEGIN op 13498 ( update regular_expression "iQIYI" )
update "regular_expressions" set "pattern" = '\b(iQIY|IQ|iQIYI)\b(?=[ ._-]WEB[ ._-]?(DL|RIP)\b)' where "name" = 'iQIYI' and "pattern" = '\b(IQIYI|IQ)\b';
-- --- END op 13498

-- --- BEGIN op 13499 ( create regular_expression "Discovery+" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Discovery+', '\b(ATV)\b', 'Apple TV is an American subscription OTT streaming service owned and operated by Apple Inc. Launched on November 1, 2019, it offers a selection of purchased and channel television series.', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Discovery+', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Discovery+', 'WEB-DL');
-- --- END op 13499

-- --- BEGIN op 13500 ( update regular_expression "Discovery+" )
update "regular_expressions" set "description" = 'Discovery+ (pronounced "Discovery Plus"; stylized as discovery+) is an American multinational subscription video on-demand over-the-top streaming service owned by Warner Bros. Discovery (WBD).[1] The service focuses on factual programming drawn from the libraries of Discovery''s main channel brands, as well as original series (including spin-offs of programs from Discovery''s television networks), and content from A&E Networks, NBCUniversal, and Discovery+''s corporate sibling CNN.' where "name" = 'Discovery+' and "description" = 'Apple TV is an American subscription OTT streaming service owned and operated by Apple Inc. Launched on November 1, 2019, it offers a selection of purchased and channel television series.';
-- --- END op 13500

-- --- BEGIN op 13501 ( update regular_expression "Discovery+" )
update "regular_expressions" set "pattern" = '\b(DSCP)\b' where "name" = 'Discovery+' and "pattern" = '\b(ATV)\b';
-- --- END op 13501

-- --- BEGIN op 13502 ( create custom_format "HBO" )
insert into "custom_formats" ("name", "description") values ('HBO', '');
-- --- END op 13502

-- --- BEGIN op 13503 ( update custom_format "HBO" )
update "custom_formats" set "description" = 'Matches ''iTunes'' WEB-DLs' where "name" = 'HBO' and "description" = '';
-- --- END op 13503

-- --- BEGIN op 13504 ( update custom_format "HBO" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'HBO' and "include_in_rename" = 0;
-- --- END op 13504

-- --- BEGIN op 13505 ( update custom_format "HBO" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('HBO', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('HBO', 'WEB-DL');
-- --- END op 13505

-- --- BEGIN op 13506 ( update custom_format "HBO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HBO', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HBO', 'WEB-DL', 'web_dl');
-- --- END op 13506

-- --- BEGIN op 13507 ( update custom_format "HBO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HBO', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HBO', 'WEBRip', 'webrip');
-- --- END op 13507

-- --- BEGIN op 13508 ( update custom_format "HBO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HBO', 'iT Regex', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HBO', 'iT Regex', 'iTunes');
-- --- END op 13508

-- --- BEGIN op 13509 ( update custom_format "HBO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HBO', 'iT Rename Regex', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HBO', 'iT Rename Regex', 'iTunes Rename');
-- --- END op 13509

-- --- BEGIN op 13510 ( update custom_format "HBO" )
update "custom_formats" set "description" = 'Matches ''HBO'' WEB-DLs' where "name" = 'HBO' and "description" = 'Matches ''iTunes'' WEB-DLs';
-- --- END op 13510

-- --- BEGIN op 13511 ( update custom_format "HBO" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HBO'
	  AND name = 'iT Regex'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13511

-- --- BEGIN op 13512 ( update custom_format "HBO" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HBO'
	  AND name = 'iT Rename Regex'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13512

-- --- BEGIN op 13513 ( update custom_format "HBO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HBO', 'HBO Regex', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HBO', 'HBO Regex', 'HBO');
-- --- END op 13513

-- --- BEGIN op 13514 ( update custom_format "HBO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HBO', 'HBO Rename Regex', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HBO', 'HBO Rename Regex', 'HBO Rename');
-- --- END op 13514

-- --- BEGIN op 13515 ( create custom_format "DSCP" )
insert into "custom_formats" ("name", "description") values ('DSCP', '');
-- --- END op 13515

-- --- BEGIN op 13516 ( update custom_format "DSCP" )
update "custom_formats" set "description" = 'Matches ''Amazon Prime'' WEB-DLs' where "name" = 'DSCP' and "description" = '';
-- --- END op 13516

-- --- BEGIN op 13517 ( update custom_format "DSCP" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'DSCP' and "include_in_rename" = 0;
-- --- END op 13517

-- --- BEGIN op 13518 ( update custom_format "DSCP" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('DSCP', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('DSCP', 'WEB-DL');
-- --- END op 13518

-- --- BEGIN op 13519 ( update custom_format "DSCP" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DSCP', 'AMZN Regex', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DSCP', 'AMZN Regex', 'Amazon Prime');
-- --- END op 13519

-- --- BEGIN op 13520 ( update custom_format "DSCP" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DSCP', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('DSCP', 'WEB-DL', 'web_dl');
-- --- END op 13520

-- --- BEGIN op 13521 ( update custom_format "DSCP" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DSCP', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('DSCP', 'WEBRip', 'webrip');
-- --- END op 13521

-- --- BEGIN op 13522 ( update custom_format "DSCP" )
update "custom_formats" set "description" = 'Matches ''Discovery+'' WEB-DLs' where "name" = 'DSCP' and "description" = 'Matches ''Amazon Prime'' WEB-DLs';
-- --- END op 13522

-- --- BEGIN op 13523 ( update custom_format "DSCP" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'DSCP'
	  AND name = 'AMZN Regex'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 13523

-- --- BEGIN op 13524 ( update custom_format "DSCP" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DSCP', 'DSCP Regex', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DSCP', 'DSCP Regex', 'Amazon Prime');
-- --- END op 13524

-- --- BEGIN op 13525 ( update custom_format "DSCP" )
DELETE FROM condition_patterns WHERE custom_format_name = 'DSCP' AND condition_name = 'DSCP Regex' AND regular_expression_name = 'Amazon Prime';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DSCP', 'DSCP Regex', 'Discovery+');
-- --- END op 13525

-- --- BEGIN op 13526 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'DSCP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'radarr'
);
-- --- END op 13526

-- --- BEGIN op 13527 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'DSCP', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'sonarr'
);
-- --- END op 13527

-- --- BEGIN op 13528 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'HBO', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'HBO'
    AND arr_type = 'radarr'
);
-- --- END op 13528

-- --- BEGIN op 13529 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'HBO', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'HBO'
    AND arr_type = 'sonarr'
);
-- --- END op 13529

-- --- BEGIN op 13530 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'DSCP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'radarr'
);
-- --- END op 13530

-- --- BEGIN op 13531 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'DSCP', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'sonarr'
);
-- --- END op 13531

-- --- BEGIN op 13532 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'HBO', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'HBO'
    AND arr_type = 'radarr'
);
-- --- END op 13532

-- --- BEGIN op 13533 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'HBO', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'HBO'
    AND arr_type = 'sonarr'
);
-- --- END op 13533

-- --- BEGIN op 13534 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'DSCP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'radarr'
);
-- --- END op 13534

-- --- BEGIN op 13535 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'DSCP', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'sonarr'
);
-- --- END op 13535

-- --- BEGIN op 13536 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'HBO', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'HBO'
    AND arr_type = 'radarr'
);
-- --- END op 13536

-- --- BEGIN op 13537 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'HBO', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'HBO'
    AND arr_type = 'sonarr'
);
-- --- END op 13537

-- --- BEGIN op 13538 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'DSCP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'radarr'
);
-- --- END op 13538

-- --- BEGIN op 13539 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'DSCP', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'sonarr'
);
-- --- END op 13539

-- --- BEGIN op 13540 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'HBO', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'HBO'
    AND arr_type = 'radarr'
);
-- --- END op 13540

-- --- BEGIN op 13541 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'HBO', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'HBO'
    AND arr_type = 'sonarr'
);
-- --- END op 13541

-- --- BEGIN op 13542 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'DSCP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'radarr'
);
-- --- END op 13542

-- --- BEGIN op 13543 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'DSCP', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'sonarr'
);
-- --- END op 13543

-- --- BEGIN op 13544 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'HBO', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'HBO'
    AND arr_type = 'radarr'
);
-- --- END op 13544

-- --- BEGIN op 13545 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'HBO', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'HBO'
    AND arr_type = 'sonarr'
);
-- --- END op 13545

-- --- BEGIN op 13546 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'DSCP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'radarr'
);
-- --- END op 13546

-- --- BEGIN op 13547 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'DSCP', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'sonarr'
);
-- --- END op 13547

-- --- BEGIN op 13548 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'HBO', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'HBO'
    AND arr_type = 'radarr'
);
-- --- END op 13548

-- --- BEGIN op 13549 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'HBO', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'HBO'
    AND arr_type = 'sonarr'
);
-- --- END op 13549

-- --- BEGIN op 13550 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'DSCP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'radarr'
);
-- --- END op 13550

-- --- BEGIN op 13551 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'DSCP', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'sonarr'
);
-- --- END op 13551

-- --- BEGIN op 13552 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'HBO', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'HBO'
    AND arr_type = 'radarr'
);
-- --- END op 13552

-- --- BEGIN op 13553 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'HBO', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'HBO'
    AND arr_type = 'sonarr'
);
-- --- END op 13553

-- --- BEGIN op 13554 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'DSCP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'radarr'
);
-- --- END op 13554

-- --- BEGIN op 13555 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'DSCP', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'sonarr'
);
-- --- END op 13555

-- --- BEGIN op 13556 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'HBO', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'HBO'
    AND arr_type = 'radarr'
);
-- --- END op 13556

-- --- BEGIN op 13557 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'HBO', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'HBO'
    AND arr_type = 'sonarr'
);
-- --- END op 13557

-- --- BEGIN op 13558 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DSCP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'radarr'
);
-- --- END op 13558

-- --- BEGIN op 13559 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DSCP', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'sonarr'
);
-- --- END op 13559

-- --- BEGIN op 13560 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'HBO', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'HBO'
    AND arr_type = 'radarr'
);
-- --- END op 13560

-- --- BEGIN op 13561 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'HBO', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'HBO'
    AND arr_type = 'sonarr'
);
-- --- END op 13561

-- --- BEGIN op 13562 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'DSCP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'radarr'
);
-- --- END op 13562

-- --- BEGIN op 13563 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'DSCP', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'sonarr'
);
-- --- END op 13563

-- --- BEGIN op 13564 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'HBO', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'HBO'
    AND arr_type = 'radarr'
);
-- --- END op 13564

-- --- BEGIN op 13565 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'HBO', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'HBO'
    AND arr_type = 'sonarr'
);
-- --- END op 13565

-- --- BEGIN op 13566 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'DSCP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'radarr'
);
-- --- END op 13566

-- --- BEGIN op 13567 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'DSCP', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'sonarr'
);
-- --- END op 13567

-- --- BEGIN op 13568 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'HBO', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'HBO'
    AND arr_type = 'radarr'
);
-- --- END op 13568

-- --- BEGIN op 13569 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'HBO', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'HBO'
    AND arr_type = 'sonarr'
);
-- --- END op 13569
