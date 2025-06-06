
[ -z "$ISTORE_CONF_DIR" ] && exit 1
[ -z "$ISTORE_CACHE_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set jellyfin.@jellyfin[0].config_path="$ISTORE_CONF_DIR/Jellyfin"
    set jellyfin.@jellyfin[0].cache_path="$ISTORE_CACHE_DIR/Jellyfin"
    set jellyfin.@jellyfin[0].media_path=""
    commit jellyfin
EOF

ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop

if [ -f /usr/libexec/istorec/jellyfin.sh ]; then
    /usr/libexec/istorec/jellyfin.sh $ISTORE_ACTION || [ stop = $ISTORE_ACTION ]
else
    /usr/share/jellyfin/install.sh $ISTORE_ACTION || [ stop = $ISTORE_ACTION ]
fi
