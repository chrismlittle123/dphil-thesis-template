#!/bin/bash

# Define the main project structure
main_folders=(
    "1_research" 
    "2_data"
    "3_analysis"
    "4_manuscript"
)

# Define research subfolders
research_folders=(
    "1_literature_review"
    "2_background_research"
)

# Define data subfolders
data_folders=(
    "1_raw_data"
    "2_processed_data"
    "3_transformed_data"
    "4_documentation"
)

# Define analysis section structure
analysis_section_folders=(
    "1_scripts"
    "2_notebooks" 
    "3_figures"
    "4_documentation"
)

# Define script subfolders
script_folders=(
    "1_processing"
    "2_transformation"
    "3_figures"
)

# Define manuscript structure
manuscript_folders=(
    "1_content"
    "2_references"
)

# Define chapter folders
chapter_folders=(
    "1_chapter_1_tag"
    "2_chapter_2_tag"
)

# Create folder structure for each chapter
for chapter in "${chapter_folders[@]}"; do
    # Create main project structure within chapter
    for folder in "${main_folders[@]}"; do
        mkdir -p "$chapter/$folder"
        echo "Created main folder in $chapter: $folder"
    done

    # Create research subfolders
    for subfolder in "${research_folders[@]}"; do
        mkdir -p "$chapter/1_research/$subfolder"
        echo "Created research subfolder in $chapter/1_research: $subfolder"
    done

    # Create data subfolders
    for subfolder in "${data_folders[@]}"; do
        mkdir -p "$chapter/2_data/$subfolder"
        echo "Created data subfolder in $chapter/2_data: $subfolder"
    done

    # Create analysis subfolders
    for subfolder in "${analysis_section_folders[@]}"; do
        mkdir -p "$chapter/3_analysis/$subfolder"
        echo "Created analysis subfolder in $chapter/3_analysis: $subfolder"
    done

    # Create script subfolders
    for subfolder in "${script_folders[@]}"; do
        mkdir -p "$chapter/3_analysis/1_scripts/$subfolder"
        echo "Created script subfolder in $chapter/3_analysis/1_scripts: $subfolder"
    done

    # Create manuscript structure
    for subfolder in "${manuscript_folders[@]}"; do
        mkdir -p "$chapter/4_manuscript/$subfolder"
        echo "Created manuscript subfolder in $chapter/4_manuscript: $subfolder"
    done
done

echo "Folder structure creation complete!"
