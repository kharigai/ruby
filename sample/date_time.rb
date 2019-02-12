
# [[Ruby入門] 14. 日付と時刻を扱う（全パターン網羅）](https://qiita.com/prgseek/items/c0fc2ffc8e1736348486)

require "date"

d = Date.parse("2017/04/25"); p d   # #<Date: 2017-04-25 ((2457869j,0s,0n),+0s,2299161j)>
d = Date.parse("2017/5/5"); p d     # #<Date: 2017-05-05 ((2457879j,0s,0n),+0s,2299161j)>
d = Date.parse("2017-8-1"); p d     # #<Date: 2017-08-01 ((2457967j,0s,0n),+0s,2299161j)>
d = Date.parse("20170907"); p d     # #<Date: 2017-09-07 ((2458004j,0s,0n),+0s,2299161j)>
d = Date.parse("2017-9/12"); p d    # #<Date: 2017-09-12 ((2458009j,0s,0n),+0s,2299161j)>
Date.parse("xoxoxo$$") rescue p $! # #<ArgumentError: invalid date>

day = Date.today
str = day.strftime("%Y-%m-%d %H:%M:%S")

