#!/usr/bin/env bash

FSUFFIX='zZz_XMAS_EVENT_v23_pak'
FPOSTFIX='.pk3'
ZIPSPLIT=157286400
ZIPTOTAL=0
PAK=0

while IFS='' read -r L; do
    if [[ "${L:0:1}" == "#" || -z "$L" ]]; then
        continue
    fi

    ZIPTOTAL=$(( ZIPTOTAL + "$(du -s "maps/$L" | cut -f1)" ))

    7z a -tzip -x'@ignorelist' "$FSUFFIX$PAK$FPOSTFIX" "./maps/$L/"* # /dev/null 2>&1

    if [[ "$ZIPTOTAL" -gt "$ZIPSPLIT" ]]; then
        PAK=$(( PAK + 1 ))
        ZIPTOTAL=0
    fi
done < maplist