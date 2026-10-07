-- @operation: export
-- @entity: batch
-- @name: Add Banned Groups (Release Title) to all Profiles
-- @exportedAt: 2026-10-07T00:16:39.828Z
-- @opIds: 14635, 14636, 14637, 14638, 14639, 14640, 14641, 14642, 14643, 14644, 14645, 14646, 14647, 14648, 14649, 14650, 14651, 14652, 14653, 14654, 14655, 14656, 14657, 14658, 14659

-- --- BEGIN op 14635 ( create regular_expression "SiCFoI CMv4" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SiCFoI CMv4', '(?<=^|[\s.-])SiCFoI\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SiCFoI CMv4', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SiCFoI CMv4', 'Remux');
-- --- END op 14635

-- --- BEGIN op 14636 ( update regular_expression "SiCFoI CMv4" )
update "regular_expressions" set "pattern" = '(?=.*\bSiCFoI\b)(?=.*\bCMv4\b).*' where "name" = 'SiCFoI CMv4' and "pattern" = '(?<=^|[\s.-])SiCFoI\b';
-- --- END op 14636

-- --- BEGIN op 14637 ( update custom_format "Banned Groups (Release Title)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups (Release Title)', 'SiCFoI CMv4', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups (Release Title)', 'SiCFoI CMv4', 'SiCFoI CMv4');
-- --- END op 14637

-- --- BEGIN op 14638 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'Banned Groups (Release Title)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 14638

-- --- BEGIN op 14639 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 14639

-- --- BEGIN op 14640 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'Banned Groups (Release Title)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 14640

-- --- BEGIN op 14641 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 14641

-- --- BEGIN op 14642 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'Banned Groups (Release Title)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 14642

-- --- BEGIN op 14643 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 14643

-- --- BEGIN op 14644 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'Banned Groups (Release Title)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 14644

-- --- BEGIN op 14645 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 14645

-- --- BEGIN op 14646 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'Banned Groups (Release Title)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 14646

-- --- BEGIN op 14647 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 14647

-- --- BEGIN op 14648 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'Banned Groups (Release Title)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 14648

-- --- BEGIN op 14649 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 14649

-- --- BEGIN op 14650 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'Banned Groups (Release Title)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 14650

-- --- BEGIN op 14651 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 14651

-- --- BEGIN op 14652 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'Banned Groups (Release Title)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 14652

-- --- BEGIN op 14653 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 14653

-- --- BEGIN op 14654 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Banned Groups (Release Title)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 14654

-- --- BEGIN op 14655 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 14655

-- --- BEGIN op 14656 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'Banned Groups (Release Title)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 14656

-- --- BEGIN op 14657 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 14657

-- --- BEGIN op 14658 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'Banned Groups (Release Title)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 14658

-- --- BEGIN op 14659 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'Banned Groups (Release Title)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'Banned Groups (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 14659
