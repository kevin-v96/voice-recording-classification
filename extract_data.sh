#!/bin/bash

datasets_folder="/Users/kevinvegda/Desktop/stratascratch projects/voice_recordings_analysis/datasets"

output_folder="/Users/kevinvegda/Desktop/stratascratch projects/voice_recordings_analysis/extracted_data"

# Ensure output folder exists
mkdir -p "$output_folder"

# Navigate to the datasets folder
cd "$datasets_folder"

# Loop through each .tgz file in the datasets folder
for file in *.tgz; do
    # Extract the contents of the current .tgz file
    # Create a directory based on the filename (without extension)
    extract_folder="$output_folder/$(basename "$file" .tgz)"
    mkdir -p "$extract_folder"
    
    # Extract the contents of the .tgz file into the created directory
    tar -xzf "$file" -C "$extract_folder"
    
    # Optionally, perform additional operations here (e.g., metadata extraction)
done