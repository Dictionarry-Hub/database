-- @operation: export
-- @entity: batch
-- @name: Score 720p ZoroSenpai ProRes
-- @exportedAt: 2026-09-27T00:22:12.473Z
-- @opIds: 14600, 14601, 14602, 14603, 14604, 14605, 14606, 14607, 14608, 14609, 14610, 14611, 14612

-- --- BEGIN op 14600 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', '720p ProRes Quality Tier 1', 'radarr', 686000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = '720p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14600

-- --- BEGIN op 14601 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', '720p ProRes Quality Tier 1', 'radarr', 686000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = '720p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14601

-- --- BEGIN op 14602 ( update quality_profile "1080p Compact" )
UPDATE quality_profile_custom_formats
SET score = 541000
WHERE quality_profile_name = '1080p Compact'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND score = 540000;
-- --- END op 14602

-- --- BEGIN op 14603 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', '720p ProRes Quality Tier 1', 'radarr', 686000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = '720p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14603

-- --- BEGIN op 14604 ( update quality_profile "1080p Efficient" )
UPDATE quality_profile_custom_formats
SET score = 541000
WHERE quality_profile_name = '1080p Efficient'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND score = 540000;
-- --- END op 14604

-- --- BEGIN op 14605 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', '720p ProRes Quality Tier 1', 'radarr', 686000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = '720p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14605

-- --- BEGIN op 14606 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', '720p ProRes Quality Tier 1', 'radarr', 686000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = '720p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14606

-- --- BEGIN op 14607 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', '720p ProRes Quality Tier 1', 'radarr', 686000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = '720p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14607

-- --- BEGIN op 14608 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', '720p ProRes Quality Tier 1', 'radarr', 686000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = '720p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14608

-- --- BEGIN op 14609 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', '720p ProRes Quality Tier 1', 'radarr', 686000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = '720p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14609

-- --- BEGIN op 14610 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p ProRes Quality Tier 1', 'radarr', 686000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14610

-- --- BEGIN op 14611 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', '720p ProRes Quality Tier 1', 'radarr', 686000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = '720p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14611

-- --- BEGIN op 14612 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', '720p ProRes Quality Tier 1', 'radarr', 686000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = '720p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14612
