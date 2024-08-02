export NEW_PUBS=$(python -c "import json; print(len(json.load(open('diff.json'))))")
if [ $NEW_PUBS -gt 0 ]; then
    echo "has_new_publications=true" >> $GITHUB_OUTPUT
    echo "title=$(python -c "import json; print(json.load(open('diff.json'))[0]['title'])")" >> $GITHUB_OUTPUT
else
    echo "has_new_publications=false" >> $GITHUB_OUTPUT
fi
