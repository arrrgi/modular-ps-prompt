Register-PromptComponent Node {
    $background = Get-PromptOption NodeVersionBackgroundColor DarkGreen
    $foreground = Get-PromptOption NodeVersionClockForegroundColor White
    $always = Get-PromptOption AlwaysShowNodeVersion $false
    $segment = New-PromptSegment $background $foreground
    if ($(Test-Path ($(Get-Item .).FullName + '\package.json') -PathType Leaf) -or $always) {
        try {
            $segment.Append("Node $($(node -v).Substring(1))")
        } catch {}
    }
    return $segment
}
