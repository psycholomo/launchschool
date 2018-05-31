line_width = 50
list_of_chapters = ["Chapter 1: Getting Started".ljust(line_width) + "page 1".rjust(line_width),"Chapter 2: Numbers".ljust(line_width) + "page 9".rjust(line_width),"Chapter 3: Letters".ljust(line_width) + "page 13".rjust(line_width)]
puts ("Table Of Contents".center(100))


list_of_chapters.each do |chapter|
  puts chapter
end