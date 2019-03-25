#You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. 
#You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle 
#switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat 
#this process and keep going until you have been through n repetitions.

#Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.


# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].


def switches(num)
lights = (1..num).to_a
switches = {}
final_array = []
counter = 0

    while counter < lights.length
      counter += 1
      switches[counter] = 'on'
    end
counter = 1
  while counter < lights.length
    counter += 1
    
    switches.each do |key, value|

      if key % counter == 0
        if value == 'on'
          switches[key] = 'off'
        else
          switches[key] = 'on'
        end

      end

    end

  end

  switches.each do |key, _|
    
    if switches[key] == 'on'
      final_array.push(key)
    end
  end

final_array
end

p switches(10)

# 1 on 2 on 3 on 4 on 5 on
# 1 on 2 off 3 on 4 off 5 on
# 1 on 2 off 3 off 4 off 5 on