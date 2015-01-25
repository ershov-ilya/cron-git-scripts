whoami
git config user.name "ILYA ERSHOV"
git config user.email ershov.ilya@gmail.com

git config user.name
git config user.email

cd ../hashes
ls
git commit -am "$1"
echo "commit result: "$?
git push
echo "push result: "$?

