-- @operation: export
-- @entity: batch
-- @name: Tweak Full Disc Regex
-- @exportedAt: 2026-11-03T01:01:37.542Z
-- @opIds: 15594

-- --- BEGIN op 15594 ( update regular_expression "Full Disc" )
update "regular_expressions" set "pattern" = '^(?!.*\b((?<!HD[._ -]|HD)DVD|BDRip|MKV|XviD|WMV|d3g|(BD)?REMUX|^(?=.*1080p)(?=.*HEVC)|[xh][-_. ]?26[45]|German.*[DM]L|((?<=\d{4}).*German.*([DM]L)?)(?=.*\b(AVC|HEVC|VC[-_. ]?1|MVC|MPEG[-_. ]?2)\b))\b)(((?=.*\b(Blu[-_. ]?ray|BD|HD[-_. ]?DVD)\b)(?=.*\b(AVC|HEVC|VC[-_. ]?1|MVC|MPEG[-_. ]?2|BDMV|ISO)\b))|^((?=.*\b(((?=.*\b((.*_)?COMPLETE.*|Dis[ck])\b)(?=.*(Blu[-_. ]?ray|HD[-_. ]?DVD)))|3D[-_. ]?BD|BR[-_. ]?DISK|Full[-_. ]?Blu[-_. ]?ray|^((?=.*((BD|UHD)[-_. ]?(25|50|66|100|ISO)))))))).*|(AVC|DVD5|DVD9|MPEG[-]?2|NTSC|\bPAL\b|VC[-]?1|VOB[-_. ]?IFO|COMPLETE[-_. ]?(UHD)?[-_. ]?BLU[-_. ]?RAY|BR[-]?DISK)' where "name" = 'Full Disc' and "pattern" = '^(?!.*\b((?<!HD[._ -]|HD)DVD|BDRip|MKV|XviD|WMV|d3g|BDREMUX|REMUX|^(?=.*1080p)(?=.*HEVC)|[xh][-_. ]?26[45]|German.*DL|((?<=\d{4}).*German.*(DL)?)(?=.*\b(AVC|HEVC|VC[-_. ]?1|MVC|MPEG[-_. ]?2)\b))\b)(((?=.*\b(Blu[-_. ]?ray|BD|HD[-_. ]?DVD)\b)(?=.*\b(AVC|HEVC|VC[-_. ]?1|MVC|MPEG[-_. ]?2|BDMV|ISO)\b))|^((?=.*\b(^((?=.*\b((.*_)?COMPLETE.*|Dis[ck])\b)(?=.*(Blu[-_. ]?ray|HD[-_. ]?DVD)))|3D[-_. ]?BD|BR[-_. ]?DISK|Full[-_. ]?Blu[-_. ]?ray|^((?=.*((BD|UHD)[-_. ]?(25|50|66|100|ISO)))))))).*|(?i)(DVD9|DVD5|NTSC|PAL|VOB IFO|VC-1|AVC|MPEG-2|\bCOMPLETE[-.\s]?(?:UHD[-.\s])?BLU[-.\s]?RAY\b|\bCOMPLETE BLU[-]?RAY\b|\bBR-Disk\b)';
-- --- END op 15594
