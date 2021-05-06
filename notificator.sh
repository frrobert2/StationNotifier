#/bin/sh

#Ident's cert and key files paths
key=''
cert=''

#URL of your station
url=''

#Path to curl, that works with gemini protocol
curlpath=''

lasttime=0

while [ true ]
do
    $curlpath -s -k --key $key --cert $cert $url > current
    IFS=' ' read -ra my_array <<< $(cat ./current | grep '/notifications')
    notifications=${my_array[2]}
    rm ./current
    if [[ $notifications -gt $lasttime ]]; then
        echo -en "\007"
        echo "You have new notifications!"
        read -p "Press enter to continue"
        lasttime=$notifications
        unset $my_array
    fi
    sleep 60
done



