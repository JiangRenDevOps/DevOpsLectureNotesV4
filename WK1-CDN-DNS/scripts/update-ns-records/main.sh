#!/bin/bash
set -e

mkdir -p tmp
cd tmp

while true; do
    echo "Pulling files ..."
    scp -r ec2-user@3.25.99.145:~/*.jiangren.mooo.com . > /dev/null
    sleep 1
    for record in $(ls *.jiangren.mooo.com); do
	touch $record.done
        if [ -z "$(diff $record $record.done)" ]; then
            continue
        fi
        echo "Update record $record"
        ns1=$(cat $record | sed -n '1p')
        ns2=$(cat $record | sed -n '2p')
        ns3=$(cat $record | sed -n '3p')
        ns4=$(cat $record | sed -n '4p')
        if [ -z "$ns1" ] ||  [ -z "$ns1" ] ||  [ -z "$ns1" ] ||  [ -z "$ns1" ]; then
            echo "Error: invalid record $record. File has to have four lines with records"
            continue
        fi

        cat ../rs.json | sed "s#NAME#$record#g" | sed "s#NS1#$ns1#g" | sed "s#NS2#$ns2#g" | sed "s#NS3#$ns3#g" | sed "s#NS4#$ns4#g" > rs.json

        # the hosted zone id is the one for jiangren.mooo.com
        aws route53 change-resource-record-sets --hosted-zone-id Z00405652SQD44MUS2KEG --change-batch file://rs.json
        mv $record "$record.done"
    done
done
