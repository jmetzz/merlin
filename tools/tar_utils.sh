function expand_file(){
    filename="$1"
    gzip -t $filename &> /dev/null
    if [[ $? -eq 0 ]]; then
        tar xzf $filename
    else
        echo "$filename not in zip format"
        tar xf $filename
    fi
}