echo "*******************"
echo "**** Pushing image ****"
echo "*******************"

IMAGE="maven-project"

echo "** Logging in **"
echo "$PASS" | docker login -u danish045 --password-stdin
echo "**** Tagging image ****"
docker tag $IMAGE:$BUILD_TAG danish045/$IMAGE:$BUILD_TAG
echo "*** Pusing image ***"
docker push danish045/$IMAGE:$BUILD_TAG
