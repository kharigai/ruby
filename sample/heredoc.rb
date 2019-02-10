#!/usr/bin/env ruby


def skip_first_blank
	a = <<~EOF
		これはヒアドキュメントです。
		~ 指定により先頭の空白部分が無視されます
		EOF
	puts a + "\n"
end

def add_heardoc
	a = 'Ruby'
	a.prepend(<<~EOF)
		これはヒアドキュメントです
		これはヒアドキュメントを直接引数に渡す例です
	EOF
	puts a + "\n"
end

# Basic
a = <<EOF
これはヒアドキュメントです。
複数行に渡る長い文章を作成するのに便利です。
EOF
puts a + "\n"

# 先頭の空白を無視する
skip_first_blank

# ヒアドキュメントを直接引数にわたす
add_heardoc 


