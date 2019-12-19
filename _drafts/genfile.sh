if [ $1 ]; then
    filename=$1
else
    filename="unknown"$RANDOM
fi

template="template.md"
suffix=".md"
date=$(date +%Y-%m-%d-)
cp $template $date$filename$suffix
