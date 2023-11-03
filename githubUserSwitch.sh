echo "Switching git user profile"
echo
echo "Curent git profile:"
echo

git config user.name
git config user.email

echo

if [ -z "$1" ]; then
  echo "Please enter which profile to use 'work' or 'personal'"
  read profile
else
  profile=$1
fi

if [[ $profile == "work" ]]; then
  echo "Setting git profile to access github.work.com"
  # Don't forget to change these 2 lines
  git config --global user.email "email@work.com"
  git config --global user.name "username"
 else
  echo "Setting git profile to access github.com"
  # Don't forget to change these 2 lines
  git config --global user.email "email@personal.com"
  git config --global user.name "username"
fi
  echo "git profile has been switched to use the profile - "$profile"."

echo
git config user.name
git config user.email