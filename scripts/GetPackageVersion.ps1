$currentVersionString = (Get-Content  $(System.DefaultWorkingDirectory)/typingsBetaBuild/drop/package.json) -join "`n" | ConvertFrom-Json | Select -ExpandProperty "version"
Write-Host "Package version is '$($currentVersionString)'" -ForegroundColor Green;

Write-Host "##vso[task.setvariable variable=VERSION_STRING]$($currentVersionString)";