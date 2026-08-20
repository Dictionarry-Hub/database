-- @operation: export
-- @entity: batch
-- @name: Add Optional Hyphen inside Bluray for Consistency
-- @exportedAt: 2026-08-20T00:35:27.468Z
-- @opIds: 13286, 13287, 13288

-- --- BEGIN op 13286 ( update regular_expression "3D" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*\b((Blu[-]?ray|BD)?3D|((H(alf)?|F(ull)?).?)?(O(ver)?.?U(nder)?|S(ide)?[\W_]?B(y)?.?S(ide)?))\b' where "name" = '3D' and "pattern" = '(?<=\b[12]\d{3}\b).*\b((Bluray|BD)?3D|((H(alf)?|F(ull)?).?)?(O(ver)?.?U(nder)?|S(ide)?[\W_]?B(y)?.?S(ide)?))\b';
-- --- END op 13286

-- --- BEGIN op 13287 ( update regular_expression "Dolby Vision (Without Fallback)" )
update "regular_expressions" set "pattern" = '(?<=^(?!.*(HDR|HULU|REMUX|BLU[-]?RAY)).*?)\b(DV|Dovi|Dolby[ .]?Vision)\b' where "name" = 'Dolby Vision (Without Fallback)' and "pattern" = '(?<=^(?!.*(HDR|HULU|REMUX|BLURAY)).*?)\b(DV|Dovi|Dolby[ .]?Vision)\b';
-- --- END op 13287

-- --- BEGIN op 13288 ( update regular_expression "Full Disc" )
update "regular_expressions" set "pattern" = '^(?!.*\b((?<!HD[._ -]|HD)DVD|BDRip|MKV|XviD|WMV|d3g|BDREMUX|REMUX|^(?=.*1080p)(?=.*HEVC)|[xh][-_. ]?26[45]|German.*DL|((?<=\d{4}).*German.*(DL)?)(?=.*\b(AVC|HEVC|VC[-_. ]?1|MVC|MPEG[-_. ]?2)\b))\b)(((?=.*\b(Blu[-_. ]?ray|BD|HD[-_. ]?DVD)\b)(?=.*\b(AVC|HEVC|VC[-_. ]?1|MVC|MPEG[-_. ]?2|BDMV|ISO)\b))|^((?=.*\b(^((?=.*\b((.*_)?COMPLETE.*|Dis[ck])\b)(?=.*(Blu[-_. ]?ray|HD[-_. ]?DVD)))|3D[-_. ]?BD|BR[-_. ]?DISK|Full[-_. ]?Blu[-_. ]?ray|^((?=.*((BD|UHD)[-_. ]?(25|50|66|100|ISO)))))))).*|(?i)(DVD9|DVD5|NTSC|PAL|VOB IFO|VC-1|AVC|MPEG-2|\bCOMPLETE[-.\s]?(?:UHD[-.\s])?BLU[-.\s]?RAY\b|\bCOMPLETE BLU[-]?RAY\b|\bBR-Disk\b)' where "name" = 'Full Disc' and "pattern" = '^(?!.*\b((?<!HD[._ -]|HD)DVD|BDRip|MKV|XviD|WMV|d3g|BDREMUX|REMUX|^(?=.*1080p)(?=.*HEVC)|[xh][-_. ]?26[45]|German.*DL|((?<=\d{4}).*German.*(DL)?)(?=.*\b(AVC|HEVC|VC[-_. ]?1|MVC|MPEG[-_. ]?2)\b))\b)(((?=.*\b(Blu[-_. ]?ray|BD|HD[-_. ]?DVD)\b)(?=.*\b(AVC|HEVC|VC[-_. ]?1|MVC|MPEG[-_. ]?2|BDMV|ISO)\b))|^((?=.*\b(^((?=.*\b((.*_)?COMPLETE.*|Dis[ck])\b)(?=.*(Blu[-_. ]?ray|HD[-_. ]?DVD)))|3D[-_. ]?BD|BR[-_. ]?DISK|Full[-_. ]?Blu[-_. ]?ray|^((?=.*((BD|UHD)[-_. ]?(25|50|66|100|ISO)))))))).*|(?i)(DVD9|DVD5|NTSC|PAL|VOB IFO|VC-1|AVC|MPEG-2|\bCOMPLETE[-.\s]?(?:UHD[-.\s])?BLU[-.\s]?RAY\b|\bCOMPLETE BLURAY\b|\bBR-Disk\b)';
-- --- END op 13288
