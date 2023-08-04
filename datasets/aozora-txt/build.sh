jq -s add `find ./data/ -name "*.json" | sort` | jq -n -c --stream 'fromstream(1|truncate_stream(inputs)) | {instruction:.instruction, input:.input, output:.output}' > aozora_train.jsonl
wc -l aozora_train.jsonl
