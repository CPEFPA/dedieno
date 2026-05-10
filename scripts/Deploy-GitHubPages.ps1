param([switch]$OpenBrowser)
$repo="CPEFPA/dedieno";$branch="gh-pages"
if(!(Test-Path .git)){git init;git remote add origin "https://github.com/$repo.git"}
git checkout --orphan $branch 2>$null;if(!(git branch --list | Select-String $branch)){git checkout -b $branch};git reset --hard;git add .;git commit -m "deploy";git push -u origin $branch -f;if($OpenBrowser){Start-Process "https://CPEFPA.github.io/dedieno/"}
