produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(items)
  new_hash = {}
  key_values = items.keys
  for i in key_values
    if items[i] == "Fruit"
      new_hash[i] = items[i]
    end
  end
  new_hash
  puts new_hash
end
select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}


#puts(produce['apple'])
#puts(produce.has_value? "Fruit")