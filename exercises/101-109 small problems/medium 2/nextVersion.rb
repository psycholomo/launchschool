#nextVersion
# Exercice

# Create a function nextVersion, that will take a string in parameter, and will return a string containing the next version number.

# For example:

def nextVersion(str)
  version_arr = str.split('.')
  version_arr_to_i = version_arr.map(&:to_i)
  return (version_arr_to_i[0] + 1).to_s if version_arr.size == 1
 
  if version_arr_to_i[-1] == 9
    version_arr_to_i[-2] += 1
    version_arr_to_i[-1] = 0
  else version_arr_to_i[-1] += 1
  end
  if version_arr_to_i[-2] >= 9
    version_arr_to_i[0] = 1
    version_arr_to_i[-2] = 0
  end
  version_arr_to_i.join()
end

p nextVersion("1.2.3")# === "1.2.4";
p nextVersion("0.9.9")# === "1.0.0"; nextVersion("1") === "2";
p nextVersion("1.2.3.4.5.6.7.8")# === "1.2.3.4.5.6.7.9";
p nextVersion("9.9")# === "10.0";

