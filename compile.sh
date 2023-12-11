#!/usr/bin/env bash

FSUFFIX='zZz_XMAS_EVENT_v23_pak'
ZIPSPLIT=134217728 # 128 MiB
ZIPTOTAL=0
PAK=0

while IFS='' read -r L; do
    if [[ "${L:0:1}" == '#' || -z "$L" ]]; then
        continue
    fi

    if [[ ! -d "maps/$L" ]]; then
        echo 'Directory (maps/'"$L"') from maplist does not exist.'; continue
    fi

    ZIPTOTAL=$(( ZIPTOTAL + "$(du -s "maps/$L" | cut -f1)" ))

    7z a -tzip "$FSUFFIX$PAK.pk3" "./maps/$L/"* # /dev/null 2>&1

    if [[ "$ZIPTOTAL" -gt "$ZIPSPLIT" ]]; then
        PAK=$(( PAK + 1 ))
        ZIPTOTAL=0
    fi
done < maplist