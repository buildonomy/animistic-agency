#!/bin/env bash
# Reference: https://jdhao.github.io/2019/05/30/markdown2pdf_pandoc/
# https://pandoc.org/MANUAL.html#pandocs-markdown

PANDOC_ARGS="--from markdown+implicit_header_references+inline_notes+implicit_figures --pdf-engine=xelatex --citeproc --include-in-header head.tex -V subparagraph -V colorlinks -V fontsize=12pt"

declare -A documents=(
    # ["animistic_agency_general_theory"]="00_metadata/animistic_agency_yaml.md 10_introduction/existential_orientation.md 30_theory/general.md 90_supporting_material/about_the_project.md 90_supporting_material/about_me_andrew_lyjak.md 90_supporting_material/glossary.md 90_supporting_material/references.md"
    # ["on_inferring_intention"]="10_introduction/legible_intention.md"
    # ["what_is_engineering"]="10_introduction/what_is_engineering.md"
    # ["surfing_with_the_maelstrom"]="10_introduction/surfing_with_the_maelstrom.md"
    # ["buildonomy_cognitive_model"]="40_design/buildonomy_cognitive_model.md"
    # ["completed_essays"]="10_introduction/legible_intention.md 10_introduction/what_is_engineering.md 10_introduction/surfing_with_the_maelstrom.md 10_introduction/sources_of_relevance.md"
    # ["wip"]="00_metadata/buildonomy.md 10_introduction/legible_intention.md 10_introduction/what_is_engineering.md 10_introduction/surfing_with_the_maelstrom.md 10_introduction/sources_of_relevance.md 10_introduction/existential_orientation.md 10_introduction/egregores.md 10_introduction/bureaucracies_are_structurally_anti_social.md 10_introduction/the_sanghas.md 30_theory/dancing_with_the_stranger.md 30_theory/knowing_the_dance.md 30_theory/general.md 30_theory/ecological.md 30_theory/embodied.md 40_design/adversarial_partnership_feedback_process.md 40_design/buildonomy_cognitive_model.md 40_design/buildonomy_homepage.md 40_design/cognitive_network_design.md 40_design/procedures.md 40_design/sprout.md 90_supporting_material/about_the_project.md 90_supporting_material/about_me_andrew_lyjak.md 90_supporting_material/glossary.md 90_supporting_material/references.md"
    # ["pibbss_application"]="90_supporting_material/pibbss_affiliate_program_application.md"
    ["buildonomy_value_proposition_whitepaper"]="40_design/buildonomy_value_proposition_whitepaper.md"
)

rm -r build/*
for EXT in "docx" "tex";
do
    for FILENAME in "${!documents[@]}";
    do
        document_files=( ${documents[$FILENAME]} );
        WITH_TOC="";
        if [ ${#document_files[@]} -gt 1 ]
        then
            WITH_TOC="--toc --number-sections";
        fi
        echo "RUNNING pandoc $PANDOC_ARGS $WITH_TOC -V mainfont='Fira Sans-Regular' -o $FILENAME.$EXT ${documents[$FILENAME]}"
        pandoc $PANDOC_ARGS $WITH_TOC -V mainfont='Fira Sans-Regular' -o build/$FILENAME.$EXT ${documents[$FILENAME]}
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
