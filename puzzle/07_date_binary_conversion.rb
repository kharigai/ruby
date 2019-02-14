#!/usr/bin/env ruby
require "date"

FIST_DATE = "1964/10/10"
LAST_DATE = "2020/07/24"
date_list = (Date.parse(FIST_DATE)..Date.parse(LAST_DATE)).map {|d| d.strftime("%Y%m%d").to_i}
puts date_list.select {|d| d == d.to_s(2).reverse.to_i(2)}
