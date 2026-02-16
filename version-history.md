# Version History

## 0.1.1 — 2026-02-16

**Fix: Plugin registration and portability improvements**

### Problem
The legal-assistant plugin had all files correctly structured and was enabled in `~/.claude/settings.json`, but its skills (legal-adviser, legal-researcher, legal-reviewer) and agent (citation-verifier) never appeared in Claude Code sessions. The root cause was that the plugin was not registered in `~/.claude/plugins/installed_plugins.json` — the metadata file Claude Code reads at startup to discover installed plugins.

### Changes

1. **Registered plugin in `installed_plugins.json`**
   - Added `legal-assistant` entry to the `plugins` object, matching the format used by the working frontend-design plugin
   - Included `scope`, `installPath`, `version`, `installedAt`, `lastUpdated`, and `gitCommitSha` fields

2. **Fixed hardcoded path in `README.md`** (line 35)
   - Changed `C:\Users\Bird\.claude\plugins\legal-assistant\` to portable `~/.claude/plugins/legal-assistant/`
   - Added install script usage instructions to the Installation section

3. **Added `install.sh`** (new file)
   - Bash installer for Linux/macOS
   - Copies plugin to `~/.claude/plugins/legal-assistant/` if not already there
   - Registers plugin in `installed_plugins.json` using node or python3
   - Enables plugin in `settings.json`

4. **Added `install.ps1`** (new file)
   - PowerShell installer for Windows
   - Same logic as `install.sh` using native PowerShell JSON cmdlets

---

## 0.1.0 — 2026-02-04

**Initial release**

- Three core skills: legal-researcher, legal-adviser, legal-reviewer
- One agent: citation-verifier
- Anti-hallucination architecture with mandatory primary source verification
- Australian law focus (Commonwealth and all States/Territories)
- Reference guides for AustLII, jade.io, court websites, legislation databases
- Example workflows for case verification, legislation lookup, and judicial consideration
