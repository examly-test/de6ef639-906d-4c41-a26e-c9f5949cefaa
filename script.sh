current_branch=$(git rev-parse --abbrev-ref HEAD) && if [ -f .gitignore ]; then if ! grep -q node_modules ".gitignore"; then echo "node_modules/" >> .gitignore ; fi ; else touch .gitignore && echo "node_modules/" >> .gitignore ; fi && git add . && git commit -m " Saved via iamneo IDE " && if [ true ]; then git push || git push -u origin $current_branch ; fi && echo " Pushed successfully "