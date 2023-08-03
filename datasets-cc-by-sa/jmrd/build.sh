jq -s add `find ./data/ -name "train_*.json" | sort` | jq -n -c --stream 'fromstream(1|truncate_stream(inputs)) | {instruction:.instruction, input:.input, output:.output}' > jmrd_train.jsonl
jq -s add `find ./data/ -name "valid_*.json" | sort` | jq -n -c --stream 'fromstream(1|truncate_stream(inputs)) | {instruction:.instruction, input:.input, output:.output}' > jmrd_valid.jsonl
jq -s add `find ./data/ -name "test_*.json" | sort` | jq -n -c --stream 'fromstream(1|truncate_stream(inputs)) | {instruction:.instruction, input:.input, output:.output}' > jmrd_test.jsonl

wc -l jmrd_train.jsonl
wc -l jmrd_valid.jsonl
wc -l jmrd_test.jsonl
