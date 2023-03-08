#!/usr/bin/env bash

file_name="$1";
content="$2";

echo "#!/usr/bin/env bash
$content
" > "$HOME/.local/bin/$file_name"
chmod +x "$HOME/.local/bin/$file_name"