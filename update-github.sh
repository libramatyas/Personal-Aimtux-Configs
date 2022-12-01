#git add --all
#git commit -m "v$VERSION"
version=$(cat version.info)
echo "last known version $version"
echo "please enter new version id / name (example v1.0.0 or v1.2.3)"
read -p " > " newver
echo $newver > version.info
echo "last known version set to $newver"
echo "running git..."
git add --all
git commit -m "v$newver"
git push
echo "update done."