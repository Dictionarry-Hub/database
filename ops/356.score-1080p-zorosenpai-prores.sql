-- @operation: export
-- @entity: batch
-- @name: Score 1080p ZoroSenpai ProRes
-- @exportedAt: 2026-09-27T00:32:47.327Z
-- @opIds: 14614, 14615, 14616, 14617, 14618, 14619

-- --- BEGIN op 14614 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', '1080p ProRes Quality Tier 1', 'radarr', 886000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = '1080p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14614

-- --- BEGIN op 14615 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', '1080p ProRes Quality Tier 1', 'radarr', 886000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = '1080p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14615

-- --- BEGIN op 14616 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', '1080p ProRes Quality Tier 1', 'radarr', 886000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = '1080p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14616

-- --- BEGIN op 14617 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', '1080p ProRes Quality Tier 1', 'radarr', 886000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = '1080p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14617

-- --- BEGIN op 14618 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p ProRes Quality Tier 1', 'radarr', 886000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14618

-- --- BEGIN op 14619 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', '1080p ProRes Quality Tier 1', 'radarr', 886000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = '1080p ProRes Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 14619
