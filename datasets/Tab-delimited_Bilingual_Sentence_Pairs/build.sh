jq -s add `find ./data/ -name "*.json" | sort` | jq -n -c --stream 'fromstream(1|truncate_stream(inputs)) | {instruction:.instruction, input:.input, output:.output}' > bilingualsentencepairs_train.jsonl
wc -l bilingualsentencepairs_train.jsonl
