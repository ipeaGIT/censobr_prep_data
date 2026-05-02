# check-scope-shell.ps1
# PreToolUse hook for Bash / PowerShell tools.
# Blocks any shell command that *writes* to ..\censobr\ (the consumer package).
# Read-only operations against ../censobr (cat, ls, grep, git log, gh release view)
# are allowed. See .claude/rules/scope.md.
#
# Exits:
#   0 = allow
#   2 = block (stderr is shown to Claude)

$ErrorActionPreference = 'Stop'

$raw = [Console]::In.ReadToEnd()
if ([string]::IsNullOrWhiteSpace($raw)) { exit 0 }

try {
    $payload = $raw | ConvertFrom-Json
} catch {
    exit 0
}

$cmd = [string]$payload.tool_input.command
if ([string]::IsNullOrWhiteSpace($cmd)) { exit 0 }

# Does the command reference the forbidden directory?
# We match "censobr" as a *standalone token* — i.e. surrounded by characters
# that are not word chars. This catches:
#   ../censobr/...          (relative)
#   ..\censobr\...          (Windows backslash)
#   D:/.../censobr/...      (absolute)
#   censobr_e_prepData/censobr/...
# But NOT "censobr_prep_data" (the underscore is a word char in the lookahead).
$pathPattern = '(?i)(?<![A-Za-z0-9_])censobr(?![A-Za-z0-9_])'
if ($cmd -notmatch $pathPattern) {
    exit 0
}

# Path is mentioned. Is the command write-capable?
# Conservative list: any of these patterns + the forbidden path = block.
$writePatterns = @(
    # I/O redirection (with or without leading number for fd, e.g. 2>)
    '(?<![0-9])>\s',
    '(?<![0-9])>>\s',
    '(?<![0-9])>"',
    "(?<![0-9])>'",
    # PowerShell write cmdlets
    '\bOut-File\b',
    '\bSet-Content\b',
    '\bAdd-Content\b',
    '\bTee-Object\b',
    '\bExport-Csv\b',
    '\bExport-Clixml\b',
    # File manipulation
    '\bNew-Item\b',
    '\bRemove-Item\b',
    '\bCopy-Item\b',
    '\bMove-Item\b',
    '\bRename-Item\b',
    # POSIX file ops
    '\brm\s+',
    '\bmv\s+',
    '\bcp\s+',
    '\bmkdir\b',
    '\brmdir\b',
    '\btouch\s+',
    '\bdd\s+',
    # Shell built-ins (Windows)
    '\bdel\b',
    '\berase\b',
    # Heredocs / writes via tee/sed -i / awk -i
    '\btee\s+',
    '\bsed\s+-i\b',
    '\bawk\s+-i\b',
    # Editors that write
    '\bvim?\b',
    '\bnano\b',
    '\bemacs\b',
    # Git destructive / mutating
    'git\s+(commit|push|checkout|restore|reset|apply|rm|mv|pull|fetch|merge|rebase|stash|tag|cherry-pick|revert|clean|init|clone|add)\b',
    # gh mutating
    'gh\s+(pr|release|issue|repo|api).*-X\s+(POST|PUT|PATCH|DELETE)',
    'gh\s+(pr|release|issue)\s+(create|edit|delete|comment|merge|close|reopen|review)\b',
    # Package install / R writing
    '\binstall\.packages\b',
    '\bRscript\b'
)

$matched = $null
foreach ($pat in $writePatterns) {
    if ($cmd -match $pat) {
        $matched = $pat
        break
    }
}

if ($null -eq $matched) {
    # Path mentioned but no write pattern detected — assume read-only, allow.
    exit 0
}

[Console]::Error.WriteLine("BLOQUEADO: comando com efeito colateral em ../censobr nao permitido.")
[Console]::Error.WriteLine("")
[Console]::Error.WriteLine("Padrao detectado: $matched")
[Console]::Error.WriteLine("Comando: $cmd")
[Console]::Error.WriteLine("")
[Console]::Error.WriteLine("O diretorio ../censobr e somente leitura nesta sessao.")
[Console]::Error.WriteLine("Mudancas no consumidor 'censobr' devem ser feitas via PR")
[Console]::Error.WriteLine("no GitHub: https://github.com/ipeaGIT/censobr")
[Console]::Error.WriteLine("")
[Console]::Error.WriteLine("Operacoes read-only (cat, ls, grep, git log, gh release view, etc.)")
[Console]::Error.WriteLine("sao permitidas. Veja .claude/rules/scope.md.")
exit 2