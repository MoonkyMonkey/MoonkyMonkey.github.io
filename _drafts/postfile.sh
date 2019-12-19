if [ $2 ]; then
    filename=$2
else
    #提取文件名称
    filename=$(basename $1 .md | awk -F '-' '{print $4}')
fi

suffix=".md"
date=$(date +%Y-%m-%d-)
if [$1];then
    mv $1 ../_posts/$date$filename$suffix
else
    echo "No filename input !"
fi
