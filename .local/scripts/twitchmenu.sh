streamers="$(cat ~/.config/twitchmenu/streamers.txt || echo " ")"
[ "$streamers" = " " ] && exit 1

for s in $streamers; do
	curl -sL "https://twitch.tv/$s" | grep -q "isLiveBroadcast" || continue
	online=$(echo "$online\n$s")
done;

echo "$online" | dmenu -p "Stream2Watch: " | xargs -i{} streamlink --player mpv "twitch.tv/{}" best
