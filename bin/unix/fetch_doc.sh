#!/bin/bash - 
#===============================================================================
#
#          FILE: fetch_doc.sh
# 
#         USAGE: ./fetch_doc.sh 
# 
#   DESCRIPTION: 提取vimrc文件头的注释部分
# 
#       OPTIONS: -o 输入文档 
#                -d 要查找的vimrc文件
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: tenfyzhong (tenfy), 364755805@qq.com
#  ORGANIZATION: 
#       CREATED: 2016年07月05日 20:13
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

recursive=0
output=$HOME/.vim/document.txt
dir=$HOME/.vim/vimrcs

while getopts "d:o:" arg #选项后面的冒号表示该选项需要参数
do
    case $arg in
        d)
            dir=$OPTARG
            ;;
        o)
            output=$OPTARG
            ;;
        ?)  #当有不认识的选项的时候arg为?
            echo "unkonw argument"
            exit 1
            ;;
    esac
done

if [ -f $output ]; then
    rm -f $output
fi

files=$(find $dir -name '*.vimrc' -o -name '*.vim')


for f in ${files[@]}; do
    if [ -f $f ]; then
        sed '/^"=\{10,\}$/,/^"=\{10,\}$/p' $f -n >> $output
        echo "" >> $output
    fi
done

sed -i '/" VIM Version/d' $output
sed -i '/"  author/d' $output
sed -i '/"   email/d' $output
sed -i '/" created/d' $output

