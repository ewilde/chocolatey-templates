#How to update

 * Update the spec file, update version number release notes etc...
 * Update the tools\chocolateyInstall.ps1 to point to the correct download file
 * Re-pack your file
 * Upload to chocolately gallery

Open a command prompt, and naviage into the correct directory

    cd sharpdevelop
    cpack

Now upload the updated nupkg