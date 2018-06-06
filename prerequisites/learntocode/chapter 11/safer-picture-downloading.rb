#take a folder of pictures, Download i.e. copy into a different folder and check if 
#the files currently exist.


Dir.chdir '/Users/onji/Desktop/new Stuff'
target_directory = 'Users/onji/Desktop/new Stuff'
files_to_copy = Dir.glob('/Users/onji/Desktop/old Stuff/**/*.png')
picture_number = 1
batch_name = 'work_screenshots'
puts "Downloading #{files_to_copy.length} files in the old directory"

files_to_copy.each do |name|
  print '.'
  new_name = if picture_number < 10
    "#{batch_name}0#{picture_number}.png"
  else 
    "#{batch_name}#{picture_number}.png"
  end

  if File.exist(new_name) == true
    break
  else
  File.rename name, new_name
  picture_number += 1
end
end

puts #

puts "Copy and rename is complete"