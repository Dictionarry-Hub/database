-- @operation: export
-- @entity: batch
-- @name: Bump WEBRips over Blurays by Default
-- @exportedAt: 2026-09-08T17:10:19.883Z
-- @opIds: 14377, 14378, 14379, 14380, 14381, 14382

-- --- BEGIN op 14377 ( update quality_profile "1080p Quality" )
UPDATE quality_profile_custom_formats
SET score = 701000
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'radarr'
  AND score = 700000;
-- --- END op 14377

-- --- BEGIN op 14378 ( update quality_profile "1080p Quality HDR" )
UPDATE quality_profile_custom_formats
SET score = 701000
WHERE quality_profile_name = '1080p Quality HDR'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'radarr'
  AND score = 700000;
-- --- END op 14378

-- --- BEGIN op 14379 ( update quality_profile "1080p Remux" )
UPDATE quality_profile_custom_formats
SET score = 701000
WHERE quality_profile_name = '1080p Remux'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'radarr'
  AND score = 700000;
-- --- END op 14379

-- --- BEGIN op 14380 ( update quality_profile "2160p Balanced" )
UPDATE quality_profile_custom_formats
SET score = 701000
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'radarr'
  AND score = 700000;
-- --- END op 14380

-- --- BEGIN op 14381 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 701000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'radarr'
  AND score = 700000;
-- --- END op 14381

-- --- BEGIN op 14382 ( update quality_profile "2160p Remux" )
UPDATE quality_profile_custom_formats
SET score = 701000
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'radarr'
  AND score = 700000;
-- --- END op 14382
