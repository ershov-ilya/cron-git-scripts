whoami
git config user.name "ILYA ERSHOV"
git config user.email ershov.ilya@gmail.com

git config user.name
git config user.email

sshagentstatus=$(ps -e | grep [s]sh-agent)
echo $sshagentstatus

#if [ -n "$sshagentstatus" ]; then
#    echo "sshagentstatus is not empty"
#fi
#
#if [ -z "$sshagentstatus" ]; then 
#    echo "sshagentstatus is empty"
#fi

if [ -z "$sshagentstatus" ]; then 
echo "ssh-agent is OFF, starting again..."
ssh-agent /bin/bash
ssh-add ~/.ssh/nopass_id
fi

commitname=$(php write-hashes.php)
echo $commitname

cd ../hashes
ls
git commit -am "$commitname"
echo "commit result: "$?
git push
echo "push result: "$?

