# To update manual mappings, see the GetMappings function

function Resolve([string] $path) {
    return (Resolve-Path $path).Path
}

function ResolveHome([string] $path) {
    return "$HOME\$path"
}

function PromptYesNo([string] $question) {
    $answer = Read-Host "$question (y/n)"
    return $answer -eq "y"
}

function CreateDirectories([string] $target) {
    $parent = Split-Path -Path $target -Parent
    if (-not (Test-Path $parent)) {
        New-Item -ItemType Directory -Path $parent -Force >$null
    }
}

function CreateSymlink {
    param (
        [string] $Source,
        [string] $Target
    )
    if (Test-Path -Path $Target -PathType Container) {
        if (PromptYesNo("The directory $Target exists. Remove it?")) {
            Remove-Item $Target
            echo "Removed $Target"
        } else {
            echo "Skipped $Target"
            return
        }
    }
    New-Item -ItemType SymbolicLink -Path $Target -Target $Source -Force >$null
}

function RemoveSymlink([string] $target) {
    if ((Get-Item $target).LinkType -eq "SymbolicLink") {
        Remove-Item -Path $target
    } else {
        echo "$target is not a symlink. Skipping."
    }
}

# get source and target of links
function GetMappings() {
    $mappings = @()

    # automatic mappings - match windows_home with $HOME
    $basePath = Resolve(".\windows_home")
    Get-ChildItem -Recurse -File .\windows_home | ForEach-Object {
        $absolutePath = $_.FullName
        $relativePath = $absolutePath.Substring($basePath.Length + 1)
        $targetAbsolutePath = ResolveHome($relativePath)

        $entry = @{ Source = $absolutePath; Target = $targetAbsolutePath }
        $mappings += @($entry)
    }

    # manual mappings - pick from outside the windows/ dotfiles
    $manualMappings = 
        @{ 
            Source = Resolve("..\git\.config\.gitconfig.include");
            Target = ResolveHome(".gitconfig.include")
        },
        @{
            Source = Resolve("..\nvim\.config\nvim");
            Target = ResolveHome("AppData\Local\nvim")
        },
        @{
            Source = ResolveHome("source\repos\project-launcher\src\project-launcher.ps1");
            Target = ResolveHome("tools\project-launcher.ps1")
        }

    $mappings += $manualMappings

    return $mappings
}

function EditGitConfig {
    $gitConfigPath = ResolveHome(".gitconfig")
    if (-not (Test-Path $gitConfigPath)) {
        New-Item -Path $gitConfigPath -ItemType File >$null
    }

    if (-not (Select-String -Path $gitConfigPath -Pattern "\[include\]")) {
        $toAdd = @"
[include]
    path = .gitconfig.include
"@
        $toAdd | Out-File -Append -FilePath $gitConfigPath -Encoding ASCII
    }
}

function SetupDotfiles() {
    GetMappings | ForEach-Object {
        $source = $_.Source
        $target = $_.Target

        CreateDirectories($target)
        CreateSymlink -Source $source -Target $target
    }
    EditGitConfig
}

function CleanupDotfiles() {
    GetMappings | ForEach-Object {
        $target = $_.Target

        RemoveSymlink($target)
    }
}
