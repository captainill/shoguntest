if [ "$1" = "prod" ]; then
  echo "Pushing to shoguntest prod..."
  git subtree push --prefix shogun git@heroku.com:shoguntest.git master
else
  echo "Pushing to shoguntest dev..."
  git subtree push --prefix shogun git@heroku.com:shoguntest.git master
fi
