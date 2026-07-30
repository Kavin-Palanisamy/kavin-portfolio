$profile = [Convert]::ToBase64String([IO.File]::ReadAllBytes('c:\Users\kavin\Documents\portfolio\assets\profile\profile.jpg'))
$project1 = [Convert]::ToBase64String([IO.File]::ReadAllBytes('c:\Users\kavin\Documents\portfolio\assets\projects\project1.png'))
$pcb = [Convert]::ToBase64String([IO.File]::ReadAllBytes('c:\Users\kavin\Documents\portfolio\assets\projects\pcb-design.png'))
$ach1 = [Convert]::ToBase64String([IO.File]::ReadAllBytes('c:\Users\kavin\Documents\portfolio\assets\achievements\achievement-1.png'))
$ach2 = [Convert]::ToBase64String([IO.File]::ReadAllBytes('c:\Users\kavin\Documents\portfolio\assets\achievements\achievement-2.png'))
$jarvis = [Convert]::ToBase64String([IO.File]::ReadAllBytes('c:\Users\kavin\Documents\portfolio\assets\projects\jarvis-ai.png'))
$theft = [Convert]::ToBase64String([IO.File]::ReadAllBytes('c:\Users\kavin\Documents\portfolio\assets\projects\theft-detection.png'))

$js = @"
const B64_PROFILE = 'data:image/jpeg;base64,$profile';
const B64_PROJECT1 = 'data:image/png;base64,$project1';
const B64_PCB = 'data:image/png;base64,$pcb';
const B64_JARVIS = 'data:image/png;base64,$jarvis';
const B64_THEFT = 'data:image/png;base64,$theft';
const B64_ACH1 = 'data:image/png;base64,$ach1';
const B64_ACH2 = 'data:image/png;base64,$ach2';
"@

Set-Content -Path 'c:\Users\kavin\Documents\portfolio\b64_assets.js' -Value $js
Write-Host "Base64 assets script created successfully!"
