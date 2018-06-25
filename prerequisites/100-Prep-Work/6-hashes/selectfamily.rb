family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }


new_array =  family.select {|key,value| key == :sisters || key == :brothers }

flatten_array = new_array.values.flatten

p flatten_array

