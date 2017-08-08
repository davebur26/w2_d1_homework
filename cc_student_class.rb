class Student

  # attr_reader( :name, :cohort )
  #
  # attr_writer( :name, :cohort )


  def initialize ( name, cohort)
    @name = name
    @cohort = cohort
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def set_name ( name )
    return @name = name
  end

  def set_cohort ( cohort )
    return @cohort = cohort
  end

  def talking()
    return "nope"
    puts "nope"
  end

  def fav_language(name)
    return "my favourite langauge is #{name}"
  end

end
