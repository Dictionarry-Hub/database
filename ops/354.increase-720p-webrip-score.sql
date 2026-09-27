-- @operation: export
-- @entity: batch
-- @name: Increase 720p WEBRip Score
-- @exportedAt: 2026-09-27T00:11:34.975Z
-- @opIds: 14590, 14591, 14592, 14593, 14594, 14595, 14596, 14597, 14598

-- --- BEGIN op 14590 ( update quality_profile "1080p Balanced" )
UPDATE quality_profile_custom_formats
SET score = 541000
WHERE quality_profile_name = '1080p Balanced'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND score = 540000;
-- --- END op 14590

-- --- BEGIN op 14591 ( update quality_profile "1080p Quality" )
UPDATE quality_profile_custom_formats
SET score = 541000
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND score = 540000;
-- --- END op 14591

-- --- BEGIN op 14592 ( update quality_profile "1080p Quality HDR" )
UPDATE quality_profile_custom_formats
SET score = 541000
WHERE quality_profile_name = '1080p Quality HDR'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND score = 540000;
-- --- END op 14592

-- --- BEGIN op 14593 ( update quality_profile "1080p Remux" )
UPDATE quality_profile_custom_formats
SET score = 541000
WHERE quality_profile_name = '1080p Remux'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND score = 540000;
-- --- END op 14593

-- --- BEGIN op 14594 ( update quality_profile "2160p Balanced" )
UPDATE quality_profile_custom_formats
SET score = 541000
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND score = 540000;
-- --- END op 14594

-- --- BEGIN op 14595 ( update quality_profile "2160p Efficient" )
UPDATE quality_profile_custom_formats
SET score = 541000
WHERE quality_profile_name = '2160p Efficient'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND score = 540000;
-- --- END op 14595

-- --- BEGIN op 14596 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 541000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND score = 540000;
-- --- END op 14596

-- --- BEGIN op 14597 ( update quality_profile "2160p Remux" )
UPDATE quality_profile_custom_formats
SET score = 541000
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND score = 540000;
-- --- END op 14597

-- --- BEGIN op 14598 ( update quality_profile "720p Quality" )
UPDATE quality_profile_custom_formats
SET score = 541000
WHERE quality_profile_name = '720p Quality'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND score = 540000;
-- --- END op 14598
