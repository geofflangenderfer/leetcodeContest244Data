#!/usr/bin/env bash

for i in $(seq 1 579)
do
    curl "https://leetcode.com/contest/api/ranking/weekly-contest-244/?pagination=$i&region=global" \
      -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="90", "Google Chrome";v="90"' \
      -H 'sec-fetch-mode: cors' \
      -H 'accept-language: en-US,en;q=0.9' \
      -H 'sec-fetch-dest: empty' \
      -H 'x-requested-with: XMLHttpRequest' \
      -H $'cookie: __stripe_mid=e2c414f7-2c82-479b-ad44-a3ef15fe4cc442bfca; csrftoken=WGxTos4C1QzB4s9a2r3PPHBXHbDNOBPmldjodxHJy2SOO9yXqX9fgMv6TXJjfq9g; _ga_DKXQ03QCVK=GS1.1.1620072280.1.1.1620072343.0; _ga=GA1.2.1409996604.1615414003; __atuvc=3%7C18; gr_user_id=aa01e611-484c-446e-9481-ab045bab4c23; 87b5a3c3f1a55520_gr_last_sent_cs1=geoff_langenderfer; messages="27deb29871907ad03cefd2fd58e1bac750e11672$[[\\"__json_message\\"\\0540\\05420\\054\\"Stripe Error\\"]\\054[\\"__json_message\\"\\0540\\05420\\054\\"Your card is now updated.\\"]\\054[\\"__json_message\\"\\0540\\05420\\054\\"Your subscription status is now \'active\' until \'2021-06-28 18:41:06+00:00\'\\"]]"; _gid=GA1.2.1758882113.1623329236; c_a_u=Z2VvZmZfbGFuZ2VuZGVyZmVy:1lrOiY:WWWj5NRNAJBReIovvBf-OqWF6jc; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiMjM0MTI1MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjRiMzM2ZDZjMWYyODlmZmZmYjZkNGNhNTZmNzI4MTliZmU0OWU3MTAiLCJpZCI6MjM0MTI1MiwiZW1haWwiOiJnZW9mZi5sYW5nZW5kZXJmZXJAZ21haWwuY29tIiwidXNlcm5hbWUiOiJnZW9mZl9sYW5nZW5kZXJmZXIiLCJ1c2VyX3NsdWciOiJnZW9mZl9sYW5nZW5kZXJmZXIiLCJhdmF0YXIiOiJodHRwczovL2Fzc2V0cy5sZWV0Y29kZS5jb20vdXNlcnMvZ2VvZmZfbGFuZ2VuZGVyZmVyL2F2YXRhcl8xNTg2NTU5MzkxLnBuZyIsInJlZnJlc2hlZF9hdCI6MTYyMzMyOTIzNCwiaXAiOiIyODA2OjEwYmU6NDpmYTg5OjlkMTA6ZWYwZjo4NjJhOjcwN2YiLCJpZGVudGl0eSI6IjBmODBjMjA0Njg5MDQ3YzgxOWM0ZjU4OWNlZTdhN2ViIiwic2Vzc2lvbl9pZCI6NzYwMzY1NCwiX3Nlc3Npb25fZXhwaXJ5IjoxMjA5NjAwfQ.yYoebnOlzdc35jAlPyRRZzbwiQfo79ZnQYZw9U38wYQ; __cf_bm=7a6c508b1d6a75741ee2d497fd4d8a3e8cb1e6eb-1623419719-1800-Ae158O0D+4euip7gWlbmSbnMg6Uy3Xpm8ssbCB3Nurz1EUL1WnWT/bqwWTo4516QthoT9AaH9DC0rdBh2bDQjy8=; 87b5a3c3f1a55520_gr_session_id=ab81c3b4-de2f-41e3-a73f-553538026146; 87b5a3c3f1a55520_gr_last_sent_sid_with_cs1=ab81c3b4-de2f-41e3-a73f-553538026146; 87b5a3c3f1a55520_gr_session_id_ab81c3b4-de2f-41e3-a73f-553538026146=true; 87b5a3c3f1a55520_gr_cs1=geoff_langenderfer; _gat=1' \
      -H 'x-newrelic-id: UAQDVFVRGwEAXVlbBAg=' \
      -H 'sec-ch-ua-mobile: ?0' \
      -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36' \
      -H 'content-type: application/json' \
      -H 'accept: application/json, text/javascript, */*; q=0.01' \
      -H 'referer: https://leetcode.com/contest/weekly-contest-244/ranking/579/' \
      -H 'authority: leetcode.com' \
      -H 'sec-fetch-site: same-origin' \
      --compressed >> data.txt

      echo "," >> data.txt


      sleep $((1+$RANDOM%10))
done

# manually data.txt -> data.json

jq '.[] | .total_rank | .[] | {user_slug, score, data_region}' data.json > userScoreRegion.txt

# manually userScoreRegion.txt -> userScoreRegion.json
