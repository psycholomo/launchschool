#create a playlist that will save as a .m3u extension. It can be in a text file 
# or an array but make sure its truly random regardless of the folder


Dir.chdir '/Users/onji/Music/BTS - The Most Beautiful Moment in Life Young Forever [Special Album]/'

#music_list = Dir.glob('/users/onji/Music/BTS\ -\ The\ Most\ Beautiful\ Moment\ in\ Life\ Young\ Forever\ \[Special\ Album\]/**/*.mp3').select {|f| File.file?(f)}
music_list = Dir.entries("./[CD 2]")
music_list2 = Dir.entries("./[CD 1]")
test_file = File.open("test.m3u", "w+")
$music_array = []



def music_push(array)

  array.each do |music|
    if(music == "." || music == ".." || music.slice(-3..-1) != "mp3")
    next
  else
  $music_array.push(music)
  end
end
end



music_push(music_list)
music_push(music_list2)


$music_array.shuffle

test_file.write($music_array)

test_file.close

puts $music_array 





