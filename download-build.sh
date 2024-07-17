if [[ -z "${REPO_ACCESS_TOKEN}" ]]; then
  echo "REPO_ACCESS_TOKEN has not been set."
  exit 1
fi

# Pattern:
# ./download-build.sh [owner] [repo] [tag] [name]
(export GITHUB_API_TOKEN=$REPO_ACCESS_TOKEN && ./gh-get.sh $1 $2 $3 $4)

echo "Unzipping build folder."
unzip -o $4 -d build