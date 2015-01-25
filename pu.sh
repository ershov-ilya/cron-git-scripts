cd ../hashes && git commit -am "$1"
echo "commit result: "$?
git push -v --progress origin master
echo "push result: "$?

