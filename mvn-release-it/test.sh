
#
# @see https://remarkablemark.org/blog/2017/10/12/check-git-dirty/
#
if [[ $(git diff --stat) != '' ]]; then
  echo 'dirty'
else
  echo 'clean'
fi
