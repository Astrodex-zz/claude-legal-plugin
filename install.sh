#!/usr/bin/env bash
set -euo pipefail

# Legal Assistant Plugin Installer for Claude Code
# Works on Linux and macOS

PLUGIN_NAME="legal-assistant"
PLUGIN_VERSION="0.1.0"
CLAUDE_DIR="$HOME/.claude"
PLUGINS_DIR="$CLAUDE_DIR/plugins"
INSTALL_DIR="$PLUGINS_DIR/$PLUGIN_NAME"
INSTALLED_JSON="$PLUGINS_DIR/installed_plugins.json"
SETTINGS_JSON="$CLAUDE_DIR/settings.json"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing $PLUGIN_NAME plugin for Claude Code..."

# 1. Copy plugin files if not already in place
if [ "$SCRIPT_DIR" != "$INSTALL_DIR" ]; then
    echo "Copying plugin to $INSTALL_DIR..."
    mkdir -p "$INSTALL_DIR"
    cp -r "$SCRIPT_DIR"/* "$INSTALL_DIR/"
    cp -r "$SCRIPT_DIR"/.claude-plugin "$INSTALL_DIR/" 2>/dev/null || true
    cp "$SCRIPT_DIR"/.gitignore "$INSTALL_DIR/" 2>/dev/null || true
else
    echo "Plugin already at $INSTALL_DIR, skipping copy."
fi

# 2. Register in installed_plugins.json
if [ ! -f "$INSTALLED_JSON" ]; then
    echo "Creating $INSTALLED_JSON..."
    cat > "$INSTALLED_JSON" << JSONEOF
{
  "version": 2,
  "plugins": {}
}
JSONEOF
fi

if grep -q "\"$PLUGIN_NAME\"" "$INSTALLED_JSON"; then
    echo "Plugin already registered in installed_plugins.json."
else
    echo "Registering plugin in installed_plugins.json..."
    INSTALL_PATH_ESCAPED=$(echo "$INSTALL_DIR" | sed 's/\\/\\\\/g')
    TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%S.000Z" 2>/dev/null || date -u +"%Y-%m-%dT%H:%M:%SZ")

    # Use node if available for reliable JSON manipulation, otherwise use python
    if command -v node &>/dev/null; then
        node -e "
const fs = require('fs');
const data = JSON.parse(fs.readFileSync('$INSTALLED_JSON', 'utf8'));
data.plugins['$PLUGIN_NAME'] = [{
    scope: 'user',
    installPath: '$INSTALL_DIR',
    version: '$PLUGIN_VERSION',
    installedAt: '$TIMESTAMP',
    lastUpdated: '$TIMESTAMP'
}];
fs.writeFileSync('$INSTALLED_JSON', JSON.stringify(data, null, 2) + '\n');
"
    elif command -v python3 &>/dev/null; then
        python3 -c "
import json
with open('$INSTALLED_JSON') as f:
    data = json.load(f)
data['plugins']['$PLUGIN_NAME'] = [{
    'scope': 'user',
    'installPath': '$INSTALL_DIR',
    'version': '$PLUGIN_VERSION',
    'installedAt': '$TIMESTAMP',
    'lastUpdated': '$TIMESTAMP'
}]
with open('$INSTALLED_JSON', 'w') as f:
    json.dump(data, f, indent=2)
    f.write('\n')
"
    else
        echo "ERROR: Need node or python3 to update JSON. Please install one and re-run."
        exit 1
    fi
    echo "Registered."
fi

# 3. Enable in settings.json
if [ ! -f "$SETTINGS_JSON" ]; then
    echo "Creating $SETTINGS_JSON..."
    cat > "$SETTINGS_JSON" << JSONEOF
{
  "enabledPlugins": {}
}
JSONEOF
fi

if grep -q "\"$PLUGIN_NAME\"" "$SETTINGS_JSON"; then
    echo "Plugin already enabled in settings.json."
else
    echo "Enabling plugin in settings.json..."
    if command -v node &>/dev/null; then
        node -e "
const fs = require('fs');
const data = JSON.parse(fs.readFileSync('$SETTINGS_JSON', 'utf8'));
if (!data.enabledPlugins) data.enabledPlugins = {};
data.enabledPlugins['$PLUGIN_NAME'] = true;
fs.writeFileSync('$SETTINGS_JSON', JSON.stringify(data, null, 2) + '\n');
"
    elif command -v python3 &>/dev/null; then
        python3 -c "
import json
with open('$SETTINGS_JSON') as f:
    data = json.load(f)
if 'enabledPlugins' not in data:
    data['enabledPlugins'] = {}
data['enabledPlugins']['$PLUGIN_NAME'] = True
with open('$SETTINGS_JSON', 'w') as f:
    json.dump(data, f, indent=2)
    f.write('\n')
"
    else
        echo "ERROR: Need node or python3 to update JSON."
        exit 1
    fi
    echo "Enabled."
fi

echo ""
echo "Installation complete!"
echo "Please restart Claude Code for the legal-assistant plugin to take effect."
echo "Skills available: legal-adviser, legal-researcher, legal-reviewer"
echo "Agent available: citation-verifier"
