#!/bin/bash

# Define the main project structure
main_folders=(
    "1_research" 
    "2_data"
    "3_analysis"
    "4_manuscript"
    "5_automation"
)

# Define section structure for each main folder
section_folders=(
    "0_general"
    "1_section_1_tag"
    "2_section_2_tag" 
    "3_section_3_tag"
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
        # Create section folders within each main folder
        for section in "${section_folders[@]}"; do
            mkdir -p "$chapter/$folder/$section"
            echo "Created section folder in $chapter/$folder: $section"
        done
    done

    # Create research subfolders within each section
    for section in "${section_folders[@]}"; do
        for subfolder in "${research_folders[@]}"; do
            mkdir -p "$chapter/1_research/$section/$subfolder"
            echo "Created research subfolder in $chapter/1_research/$section: $subfolder"
        done
    done

    # Create data subfolders within each section
    for section in "${section_folders[@]}"; do
        for subfolder in "${data_folders[@]}"; do
            mkdir -p "$chapter/2_data/$section/$subfolder"
            echo "Created data subfolder in $chapter/2_data/$section: $subfolder"
        done
    done

    # Create analysis subfolders within each section
    for section in "${section_folders[@]}"; do
        for subfolder in "${analysis_section_folders[@]}"; do
            mkdir -p "$chapter/3_analysis/$section/$subfolder"
            echo "Created analysis subfolder in $chapter/3_analysis/$section: $subfolder"
        done
    done

    # Create manuscript structure within each section
    for section in "${section_folders[@]}"; do
        for subfolder in "${manuscript_folders[@]}"; do
            mkdir -p "$chapter/4_manuscript/$section/$subfolder"
            echo "Created manuscript subfolder in $chapter/4_manuscript/$section: $subfolder"
        done
    done
done

echo "Folder structure creation complete!"
