#!/usr/bin/env ruby

Dir[File.expand_path('../../*/*.png', __FILE__)].each do |img|
  next unless img =~ /(\d+)\/(\w+)\.png$/
  size = $1
  result = `mogrify -resize #{size}x#{size} -extent #{size}x#{size} -background transparent -gravity center #{img}`
  puts result if result.strip.any?
end
