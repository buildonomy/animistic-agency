#!/bin/env bash
# Reference: https://jdhao.github.io/2019/05/30/markdown2pdf_pandoc/
# https://pandoc.org/MANUAL.html#pandocs-markdown

PANDOC_ARGS="--from markdown+implicit_header_references+inline_notes+implicit_figures --pdf-engine=xelatex --citeproc --include-in-header head.tex --number-sections --toc -V subparagraph -V colorlinks -V fontsize=12pt"

declare -A documents=(
    ["animistic_agency_general_theory"]="00_metadata.md 01_introduction.md 10_general_theory.md 90_about_the_project.md 95_glossary.md 99_references.md"
#    ["animistic_agency_all"]="00_metadata.md 01_introduction.md 10_general_theory.md 11_embodied_theory.md 12_ecological_theory.md 90_about_the_project.md 95_glossary.md 99_references.md"
)

rm -r build/*
for EXT in "docx" "tex";
do
    for FILENAME in "${!documents[@]}";
    do
        echo "RUNNING pandoc $PANDOC_ARGS -V mainfont='Fira Sans-Regular' -o $FILENAME.$EXT ${documents[$FILENAME]}"
        pandoc $PANDOC_ARGS -V mainfont='Fira Sans-Regular' -o build/$FILENAME.$EXT ${documents[$FILENAME]}
        if [ $EXT = 'tex' ];
        then
            echo "Making pdf"
            EXT="pdf"
            pdflatex --interaction=batchmode -output-directory build/ $FILENAME.tex
            pdflatex --interaction=batchmode -output-directory build/ $FILENAME.tex
            pdflatex --interaction=batchmode -output-directory build/ $FILENAME.tex
        fi
        cp build/$FILENAME.$EXT out/
    done
done
