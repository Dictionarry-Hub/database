-- @operation: export
-- @entity: batch
-- @name: Negate Streaming Service for 1080p Quality Tier WEBRips
-- @exportedAt: 2026-09-07T01:01:43.651Z
-- @opIds: 14313, 14314, 14315, 14316, 14317, 14318, 14319, 14320, 14321, 14322, 14323, 14324, 14325, 14326, 14327, 14328, 14329, 14330, 14331, 14332, 14333, 14334, 14335, 14336, 14337, 14338, 14339, 14340, 14341, 14342, 14343, 14344, 14345, 14346, 14347, 14348, 14349, 14350, 14351

-- --- BEGIN op 14313 ( update custom_format "AMZN" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AMZN', 'Release Groups', 'release_title', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('AMZN', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14313

-- --- BEGIN op 14314 ( update custom_format "ATV" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATV', 'Release Groups', 'release_title', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATV', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14314

-- --- BEGIN op 14315 ( update custom_format "ATVP" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATVP', 'Release Groups', 'release_title', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATVP', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14315

-- --- BEGIN op 14316 ( update custom_format "BCORE" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('BCORE', 'Release Groups', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('BCORE', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14316

-- --- BEGIN op 14317 ( update custom_format "BCORE" )
UPDATE custom_format_conditions
SET arr_type = 'radarr', negate = 1, required = 1
WHERE custom_format_name = 'BCORE'
  AND name = 'Release Groups'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14317

-- --- BEGIN op 14318 ( update custom_format "CR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('CR', 'Release Groups', 'release_title', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('CR', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14318

-- --- BEGIN op 14319 ( update custom_format "CRAV" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('CRAV', 'Release Groups', 'release_title', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('CRAV', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14319

-- --- BEGIN op 14320 ( update custom_format "CRIT" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('CRIT', 'Release Groups', 'release_title', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('CRIT', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14320

-- --- BEGIN op 14321 ( update custom_format "DRPO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DRPO', 'Release Groups', 'release_title', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DRPO', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14321

-- --- BEGIN op 14322 ( update custom_format "DSCP" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DSCP', 'Release Groups', 'release_title', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DSCP', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14322

-- --- BEGIN op 14323 ( update custom_format "DSNP" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DSNP', 'Release Groups', 'release_title', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DSNP', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14323

-- --- BEGIN op 14324 ( update custom_format "AMZN" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'AMZN'
  AND name = 'Release Groups'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 1
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'AMZN' AND condition_name = 'Release Groups' AND regular_expression_name = 'UHD WEBRip Release Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('AMZN', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14324

-- --- BEGIN op 14325 ( update custom_format "ATV" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'ATV'
  AND name = 'Release Groups'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 1
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'ATV' AND condition_name = 'Release Groups' AND regular_expression_name = 'UHD WEBRip Release Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATV', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14325

-- --- BEGIN op 14326 ( update custom_format "ATVP" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'ATVP'
  AND name = 'Release Groups'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 1
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'ATVP' AND condition_name = 'Release Groups' AND regular_expression_name = 'UHD WEBRip Release Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATVP', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14326

-- --- BEGIN op 14327 ( update custom_format "BCORE" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'BCORE'
  AND name = 'Release Groups'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 1
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'BCORE' AND condition_name = 'Release Groups' AND regular_expression_name = 'UHD WEBRip Release Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('BCORE', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14327

-- --- BEGIN op 14328 ( update custom_format "CR" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'CR'
  AND name = 'Release Groups'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 1
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'CR' AND condition_name = 'Release Groups' AND regular_expression_name = 'UHD WEBRip Release Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('CR', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14328

-- --- BEGIN op 14329 ( update custom_format "CRAV" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'CRAV'
  AND name = 'Release Groups'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 1
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'CRAV' AND condition_name = 'Release Groups' AND regular_expression_name = 'UHD WEBRip Release Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('CRAV', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14329

-- --- BEGIN op 14330 ( update custom_format "CRIT" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'CRIT'
  AND name = 'Release Groups'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 1
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'CRIT' AND condition_name = 'Release Groups' AND regular_expression_name = 'UHD WEBRip Release Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('CRIT', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14330

-- --- BEGIN op 14331 ( update custom_format "DRPO" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'DRPO'
  AND name = 'Release Groups'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 1
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'DRPO' AND condition_name = 'Release Groups' AND regular_expression_name = 'UHD WEBRip Release Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DRPO', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14331

-- --- BEGIN op 14332 ( update custom_format "DSCP" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'DSCP'
  AND name = 'Release Groups'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 1
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'DSCP' AND condition_name = 'Release Groups' AND regular_expression_name = 'UHD WEBRip Release Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DSCP', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14332

-- --- BEGIN op 14333 ( update custom_format "DSNP" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'DSNP'
  AND name = 'Release Groups'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 1
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'DSNP' AND condition_name = 'Release Groups' AND regular_expression_name = 'UHD WEBRip Release Groups';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DSNP', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14333

-- --- BEGIN op 14334 ( update custom_format "HBO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HBO', 'Release Groups', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HBO', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14334

-- --- BEGIN op 14335 ( update custom_format "HMAX" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HMAX', 'Release Groups', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HMAX', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14335

-- --- BEGIN op 14336 ( update custom_format "HTSR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HTSR', 'Release Groups', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HTSR', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14336

-- --- BEGIN op 14337 ( update custom_format "CR" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'CR'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14337

-- --- BEGIN op 14338 ( update custom_format "CRIT" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'CRIT'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14338

-- --- BEGIN op 14339 ( update custom_format "CRAV" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'CRAV'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14339

-- --- BEGIN op 14340 ( update custom_format "DRPO" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'DRPO'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14340

-- --- BEGIN op 14341 ( update custom_format "DSCP" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'DSCP'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14341

-- --- BEGIN op 14342 ( update custom_format "HTSR" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HTSR'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14342

-- --- BEGIN op 14343 ( update custom_format "iT" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('iT', 'Release Groups', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('iT', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14343

-- --- BEGIN op 14344 ( update custom_format "MA" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MA', 'Release Groups', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MA', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14344

-- --- BEGIN op 14345 ( update custom_format "HBO" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HBO'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14345

-- --- BEGIN op 14346 ( update custom_format "MAX" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MAX', 'Release Groups', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MAX', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14346

-- --- BEGIN op 14347 ( update custom_format "NF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('NF', 'Release Groups', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('NF', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14347

-- --- BEGIN op 14348 ( update custom_format "HULU" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HULU', 'Release Groups', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HULU', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14348

-- --- BEGIN op 14349 ( update custom_format "PCOK" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PCOK', 'Release Groups', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PCOK', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14349

-- --- BEGIN op 14350 ( update custom_format "PLAY" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PLAY', 'Release Groups', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PLAY', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14350

-- --- BEGIN op 14351 ( update custom_format "PMTP" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PMTP', 'Release Groups', 'release_group', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PMTP', 'Release Groups', 'UHD WEBRip Release Groups');
-- --- END op 14351
