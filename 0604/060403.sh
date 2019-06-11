if [ -d "$1"]; then
    # ディレクトリ内のファイルが実行可能ファイルかチェックして
    # 実行可能ファイルであれば表示
    for file in $(find "$1" -maxdepth -type f)
    do
        # fileが実行ファイルであれば表示
        if [ -x "$file" ]; then
            echo $(basename " $file")
        fi
    done
else
    # エラーメッセージ
    echo "${1}: ディレクトリではありません"
fi