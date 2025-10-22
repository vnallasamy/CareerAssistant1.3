#!/usr/bin/env bash
set -e
echo "Deploying frontend to gh-pages branch..."
read -p "This will create/overwrite the gh-pages branch with frontend/ content. Continue? (y/n): " ans
if [[ "$ans" != "y" ]]; then echo "Aborted."; exit 1; fi
git checkout --orphan gh-pages
git --work-tree=frontend add --all
git --work-tree=frontend commit -m "Deploy frontend to gh-pages"
git push origin gh-pages --force
git checkout - 2>/dev/null || true
echo "Frontend pushed to gh-pages. In GitHub repo settings -> Pages, configure custom domain: careerassistant.alfalabs.ca"
