import json
from datasets import load_dataset

# Load the JCommonsenseQA dataset
dataset = load_dataset("Open-Orca/OpenOrca")

# Get all unique values in the "system_prompt" column
unique_system_prompts = set(
    dataset["train"]["system_prompt"]
)

# Print the unique values
for prompt in unique_system_prompts:
    print(prompt)

with open("unique_prompts.json", "w") as f:
    json.dump(list(unique_system_prompts), f)
