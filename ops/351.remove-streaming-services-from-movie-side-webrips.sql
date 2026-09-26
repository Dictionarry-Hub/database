-- @operation: export
-- @entity: batch
-- @name: Remove Streaming Services from Movie Side WEBRips
-- @exportedAt: 2026-09-26T21:48:18.956Z
-- @opIds: 14493, 14494, 14495, 14496, 14497, 14498, 14499, 14500, 14501, 14502, 14503, 14504, 14505, 14506, 14507, 14508, 14509, 14510, 14511, 14512, 14513, 14514, 14515, 14516, 14517, 14518, 14519, 14520, 14521, 14522, 14523, 14524, 14525, 14526, 14527, 14528, 14529, 14530, 14531, 14532, 14533, 14534, 14535

-- --- BEGIN op 14493 ( update custom_format "AMZN" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'AMZN'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14493

-- --- BEGIN op 14494 ( update custom_format "AMZN" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'AMZN'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14494

-- --- BEGIN op 14495 ( update custom_format "ATV" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'ATV'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14495

-- --- BEGIN op 14496 ( update custom_format "ATV" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'ATV'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14496

-- --- BEGIN op 14497 ( update custom_format "ATVP" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'ATVP'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14497

-- --- BEGIN op 14498 ( update custom_format "ATVP" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'ATVP'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14498

-- --- BEGIN op 14499 ( update custom_format "BCORE" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'BCORE'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14499

-- --- BEGIN op 14500 ( update custom_format "BCORE" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'BCORE'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14500

-- --- BEGIN op 14501 ( update custom_format "CR" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'CR'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14501

-- --- BEGIN op 14502 ( update custom_format "CR" )
UPDATE custom_format_conditions
SET arr_type = 'all'
WHERE custom_format_name = 'CR'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 14502

-- --- BEGIN op 14503 ( update custom_format "CRAV" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'CRAV'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14503

-- --- BEGIN op 14504 ( update custom_format "CRIT" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'CRIT'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14504

-- --- BEGIN op 14505 ( update custom_format "DRPO" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'DRPO'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14505

-- --- BEGIN op 14506 ( update custom_format "DSCP" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'DSCP'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14506

-- --- BEGIN op 14507 ( update custom_format "DSNP" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'DSNP'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14507

-- --- BEGIN op 14508 ( update custom_format "DSNP" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'DSNP'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14508

-- --- BEGIN op 14509 ( update custom_format "HBO" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'HBO'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14509

-- --- BEGIN op 14510 ( update custom_format "HMAX" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HMAX'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14510

-- --- BEGIN op 14511 ( update custom_format "HMAX" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'HMAX'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14511

-- --- BEGIN op 14512 ( update custom_format "HTSR" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'HTSR'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14512

-- --- BEGIN op 14513 ( update custom_format "HULU" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HULU'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14513

-- --- BEGIN op 14514 ( update custom_format "HULU" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'HULU'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14514

-- --- BEGIN op 14515 ( update custom_format "iP" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'iP'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14515

-- --- BEGIN op 14516 ( update custom_format "iT" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'iT'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14516

-- --- BEGIN op 14517 ( update custom_format "iT" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'iT'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14517

-- --- BEGIN op 14518 ( update custom_format "MA" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'MA'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14518

-- --- BEGIN op 14519 ( update custom_format "MA" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'MA'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14519

-- --- BEGIN op 14520 ( update custom_format "MAX" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'MAX'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14520

-- --- BEGIN op 14521 ( update custom_format "MAX" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'MAX'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14521

-- --- BEGIN op 14522 ( update custom_format "MUBI" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'MUBI'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14522

-- --- BEGIN op 14523 ( update custom_format "NF" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'NF'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14523

-- --- BEGIN op 14524 ( update custom_format "NF" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'NF'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14524

-- --- BEGIN op 14525 ( update custom_format "NOW" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'NOW'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14525

-- --- BEGIN op 14526 ( update custom_format "PCOK" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'PCOK'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14526

-- --- BEGIN op 14527 ( update custom_format "PCOK" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'PCOK'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14527

-- --- BEGIN op 14528 ( update custom_format "PLAY" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'PLAY'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14528

-- --- BEGIN op 14529 ( update custom_format "PLAY" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'PLAY'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14529

-- --- BEGIN op 14530 ( update custom_format "PMTP" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'PMTP'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14530

-- --- BEGIN op 14531 ( update custom_format "PMTP" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'PMTP'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14531

-- --- BEGIN op 14532 ( update custom_format "ROKU" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'ROKU'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14532

-- --- BEGIN op 14533 ( update custom_format "SHO" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'SHO'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14533

-- --- BEGIN op 14534 ( update custom_format "SKST" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'SKST'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14534

-- --- BEGIN op 14535 ( update custom_format "STAN" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'STAN'
  AND name = 'WEBRip'
  AND type = 'source'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14535
