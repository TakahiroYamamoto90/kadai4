#!/bin/bash

# 2つの自然数を引数として受け取る
a=$1
b=$2

# 引数が2つ与えられているか確認
if [ $# -ne 2 ]; then
    echo "使用法: $0 <自然数1> <自然数2>"
    exit 1
fi

# 引数が自然数であるか確認
if ! [[ "$a" =~ ^[1-9][0-9]*$ ]] || ! [[ "$b" =~ ^[1-9][0-9]*$ ]]; then
    echo "エラー: 引数は正の整数でなければなりません。"
    exit 1
fi

# ユークリッドの互除法でGCDを計算
gcd() {
    local x=$1
    local y=$2
    while [ $y -ne 0 ]; do
        local temp=$y
        y=$(( x % y ))
        x=$temp
    done
    echo $x
}

# GCDを計算して出力
result=$(gcd $a $b)
echo $result
