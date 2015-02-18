identity=$HOME"/.ssh/nopass_id"
a=$(pwd)
b=${a%/*} # вверх по директории
c=$b/hashes
echo $c

#git config user.name "ILYA ERSHOV"
#git config user.email ershov.ilya@gmail.com

whoami
#git config user.name
#git config user.email

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
fi
ssh-add $identity

rc=$?
if [[ $rc != 0 ]]; then
 echo -e "\e[31merror\e[39m"
 exit $rc
else
 echo -e "\e[32mOK\e[39m"
fi

commitname=$(php write-hashes.php)
echo "New commit name: "$commitname

cd $c
ls
git add -A
echo "add result: "
rc=$?
if [[ $rc != 0 ]]; then
 echo -e "\e[31merror\e[39m"
 exit $rc
else
 echo -e "\e[32mOK\e[39m"
fi


git commit -m "$commitname"
echo "commit result: "
rc=$?
if [[ $rc != 0 ]]; then
 echo -e "\e[31merror\e[39m"
 exit $rc
else
 echo -e "\e[32mOK\e[39m"
fi


git push
echo "push result: "
rc=$?
if [[ $rc != 0 ]]; then
 echo -e "\e[31merror\e[39m"
 exit $rc
else
 echo -e "\e[32mOK\e[39m"
fi



