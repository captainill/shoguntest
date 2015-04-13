if [ "$1" = "prod" ]; then
  echo "Pushing to http://ultratext.co ..."
  git subtree push --prefix blocks git@heroku.com:ultratext.git master
else
  echo "Pushing to http://ultratextstage.herokuapp.com ..."
  git subtree push --prefix blocks git@heroku.com:ultratextstage.git master
fi
