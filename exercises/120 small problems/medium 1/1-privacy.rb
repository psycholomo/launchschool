# Privacy
# Consider the following class:

class Machine
 # attr_writer :switch

  def start
    xsflip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  private

  def flip_switch(desired_state)
    self.switch = desired_state
  end

  def switch=(new_switch)
    switch = new_switch
  end
end
# Modify this class so both flip_switch and the setter method switch= are private methods.

