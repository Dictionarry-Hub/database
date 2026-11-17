-- @operation: export
-- @entity: batch
-- @name: Seperate 1080p WEB-DL HEVC into SDR/HDR
-- @exportedAt: 2026-11-17T22:43:11.339Z
-- @opIds: 15618, 15619, 15620, 15621, 15622, 15623, 15624, 15625, 15626, 15627, 15628, 15629, 15630, 15631, 15632, 15633, 15634, 15635, 15636, 15637, 15638, 15639, 15640, 15641, 15642, 15643, 15644, 15645, 15646, 15647, 15648, 15649, 15650

-- --- BEGIN op 15618 ( update custom_format "1080p WEB-DL HEVC (SDR)" )
update "custom_formats" set "name" = '1080p WEB-DL HEVC (SDR)' where "name" = '1080p WEB-DL HEVC';
-- --- END op 15618

-- --- BEGIN op 15619 ( update quality_profile "1080p Compact" )
update "quality_profile_custom_formats" set "custom_format_name" = '1080p WEB-DL HEVC (SDR)' where "quality_profile_name" = '1080p Compact' and "custom_format_name" = '1080p WEB-DL HEVC' and "arr_type" = 'radarr' and "score" = 920000;
-- --- END op 15619

-- --- BEGIN op 15620 ( update quality_profile "1080p Efficient" )
update "quality_profile_custom_formats" set "custom_format_name" = '1080p WEB-DL HEVC (SDR)' where "quality_profile_name" = '1080p Efficient' and "custom_format_name" = '1080p WEB-DL HEVC' and "arr_type" = 'radarr' and "score" = 940000;

update "quality_profile_custom_formats" set "custom_format_name" = '1080p WEB-DL HEVC (SDR)' where "quality_profile_name" = '1080p Efficient' and "custom_format_name" = '1080p WEB-DL HEVC' and "arr_type" = 'sonarr' and "score" = 920000;
-- --- END op 15620

-- --- BEGIN op 15621 ( update quality_profile "2160p Efficient" )
update "quality_profile_custom_formats" set "custom_format_name" = '1080p WEB-DL HEVC (SDR)' where "quality_profile_name" = '2160p Efficient' and "custom_format_name" = '1080p WEB-DL HEVC' and "arr_type" = 'radarr' and "score" = 940000;

update "quality_profile_custom_formats" set "custom_format_name" = '1080p WEB-DL HEVC (SDR)' where "quality_profile_name" = '2160p Efficient' and "custom_format_name" = '1080p WEB-DL HEVC' and "arr_type" = 'sonarr' and "score" = 920000;
-- --- END op 15621

-- --- BEGIN op 15622 ( update custom_format "1080p WEB-DL HEVC (SDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (SDR)', 'HDR', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (SDR)', 'HDR', 'Basic HDR Formats');
-- --- END op 15622

-- --- BEGIN op 15623 ( create custom_format "1080p WEB-DL HEVC (HDR)" )
insert into "custom_formats" ("name", "description") values ('1080p WEB-DL HEVC (HDR)', '');
-- --- END op 15623

-- --- BEGIN op 15624 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
update "custom_formats" set "description" = 'Matches release groups who fall under 1080p WEB-DL HEVC' where "name" = '1080p WEB-DL HEVC (HDR)' and "description" = '';
-- --- END op 15624

-- --- BEGIN op 15625 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('1080p WEB-DL HEVC (HDR)', '1080p');

insert into "tags" ("name") values ('HEVC') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('1080p WEB-DL HEVC (HDR)', 'HEVC');

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('1080p WEB-DL HEVC (HDR)', 'Release Group Tier');
-- --- END op 15625

-- --- BEGIN op 15626 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', '1080p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('1080p WEB-DL HEVC (HDR)', '1080p', '1080p');
-- --- END op 15626

-- --- BEGIN op 15627 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'BYNDR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'BYNDR', 'BYNDR');
-- --- END op 15627

-- --- BEGIN op 15628 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'CMRG', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'CMRG', 'CMRG');
-- --- END op 15628

-- --- BEGIN op 15629 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'DUSKLiGHT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'DUSKLiGHT', 'DUSKLiGHT');
-- --- END op 15629

-- --- BEGIN op 15630 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'FLUX', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'FLUX', 'FLUX');
-- --- END op 15630

-- --- BEGIN op 15631 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'HDR', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'HDR', 'Basic HDR Formats');
-- --- END op 15631

-- --- BEGIN op 15632 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'HEVC', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'HEVC', 'HEVC');
-- --- END op 15632

-- --- BEGIN op 15633 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'HHWEB', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'HHWEB', 'HHWEB');
-- --- END op 15633

-- --- BEGIN op 15634 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'HONE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'HONE', 'HONE');
-- --- END op 15634

-- --- BEGIN op 15635 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'Kitsune', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'Kitsune', 'Kitsune');
-- --- END op 15635

-- --- BEGIN op 15636 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'MZABI', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'MZABI', 'MZABI');
-- --- END op 15636

-- --- BEGIN op 15637 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'NTb', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'NTb', 'NTb');
-- --- END op 15637

-- --- BEGIN op 15638 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'Not Weasley', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'Not Weasley', 'Weasley');
-- --- END op 15638

-- --- BEGIN op 15639 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'SMURF', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'SMURF', 'SMURF');
-- --- END op 15639

-- --- BEGIN op 15640 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'TEPES', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'TEPES', 'TEPES');
-- --- END op 15640

-- --- BEGIN op 15641 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'WEB-DL', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('1080p WEB-DL HEVC (HDR)', 'WEB-DL', 'web_dl');
-- --- END op 15641

-- --- BEGIN op 15642 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'XEBEC', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'XEBEC', 'XEBEC');
-- --- END op 15642

-- --- BEGIN op 15643 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC (HDR)', 'playWEB', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC (HDR)', 'playWEB', 'playWEB');
-- --- END op 15643

-- --- BEGIN op 15644 ( update custom_format "1080p WEB-DL HEVC (SDR)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p WEB-DL HEVC (SDR)'
	  AND name = 'MZABI'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 15644

-- --- BEGIN op 15645 ( update custom_format "1080p WEB-DL HEVC (HDR)" )
UPDATE custom_format_conditions
SET negate = 0
WHERE custom_format_name = '1080p WEB-DL HEVC (HDR)'
  AND name = 'HDR'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;
-- --- END op 15645

-- --- BEGIN op 15646 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', '1080p WEB-DL HEVC (HDR)', 'radarr', 920000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = '1080p WEB-DL HEVC (HDR)'
    AND arr_type = 'radarr'
);
-- --- END op 15646

-- --- BEGIN op 15647 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', '1080p WEB-DL HEVC (HDR)', 'radarr', 940000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = '1080p WEB-DL HEVC (HDR)'
    AND arr_type = 'radarr'
);
-- --- END op 15647

-- --- BEGIN op 15648 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', '1080p WEB-DL HEVC (HDR)', 'sonarr', 920000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = '1080p WEB-DL HEVC (HDR)'
    AND arr_type = 'sonarr'
);
-- --- END op 15648

-- --- BEGIN op 15649 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', '1080p WEB-DL HEVC (HDR)', 'radarr', 940000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = '1080p WEB-DL HEVC (HDR)'
    AND arr_type = 'radarr'
);
-- --- END op 15649

-- --- BEGIN op 15650 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', '1080p WEB-DL HEVC (HDR)', 'sonarr', 920000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = '1080p WEB-DL HEVC (HDR)'
    AND arr_type = 'sonarr'
);
-- --- END op 15650
