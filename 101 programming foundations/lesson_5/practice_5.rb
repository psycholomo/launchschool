#figure out the age of just the male members of the family


def calculate(age)
  total = 0
  age.each do |key, value|
    if value["gender"] == "male"
      total += value["age"]
    end
  end

  total
end


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

p calculate(munsters)