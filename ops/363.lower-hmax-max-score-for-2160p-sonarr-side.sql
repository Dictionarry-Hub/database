-- @operation: export
-- @entity: batch
-- @name: Lower HMAX/MAX Score for 2160p Sonarr Side
-- @exportedAt: 2026-10-08T22:36:06.887Z
-- @opIds: 14661, 14662, 14663, 14664, 14665, 14666, 14667, 14668, 14669, 14670, 14671, 14672

-- --- BEGIN op 14661 ( update quality_profile "2160p Balanced" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'HMAX'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 14661

-- --- BEGIN op 14662 ( update quality_profile "2160p Balanced" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'MAX'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 14662

-- --- BEGIN op 14663 ( update quality_profile "2160p Efficient" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '2160p Efficient'
  AND custom_format_name = 'HMAX'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 14663

-- --- BEGIN op 14664 ( update quality_profile "2160p Efficient" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '2160p Efficient'
  AND custom_format_name = 'MAX'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 14664

-- --- BEGIN op 14665 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'HMAX'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 14665

-- --- BEGIN op 14666 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'MAX'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 14666

-- --- BEGIN op 14667 ( update quality_profile "2160p Remux" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'HMAX'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 14667

-- --- BEGIN op 14668 ( update quality_profile "2160p Remux" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'MAX'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 14668

-- --- BEGIN op 14669 ( update quality_profile "2160p Balanced" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'HBO Max Enhancement'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 14669

-- --- BEGIN op 14670 ( update quality_profile "2160p Efficient" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Efficient'
  AND custom_format_name = 'HBO Max Enhancement'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 14670

-- --- BEGIN op 14671 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'HBO Max Enhancement'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 14671

-- --- BEGIN op 14672 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'HBO Max Enhancement'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 14672
