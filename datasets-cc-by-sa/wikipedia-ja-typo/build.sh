jq -s add `find ./data/ -name "*.json" | sort` | jq -n -c --stream 'fromstream(1|truncate_stream(inputs)) | {instruction:.instruction, input:.input, output:.output}' > wikipedia-ja-typo_train_data.jsonl
wc -l wikipedia-ja-typo_train_data.jsonl
