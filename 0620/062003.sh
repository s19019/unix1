line=$1
curl "http://express.heartrail.com/api/json?method=getStation&line=${line}" 2> dev/null | jq '.resonse.station[].name'
