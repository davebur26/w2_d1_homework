require( "minitest/autorun" )
require_relative( "./cc_student_class" )

class TestStudent < MiniTest::Test
  #
  # def test_student_name
  #   student = Student.new("David",15)
  #   assert_equal("David", student.name())
  # end
  #
  # def test_student_name
  #   student = Student.new("David",15)
  #   student.set_name( "Rod" )
  #   assert_equal("Rod", student.name())
  # end
  #
  # def test_student_cohort
  #   student = Student.new("David",15)
  #   assert_equal(15, student.cohort())
  # end

  # def test_student_name
  #   student = Student.new("David",15)
  #   student.set_cohort( 16 )
  #   assert_equal( 16, student.cohort())
  # end

  # def test_talking()
  #    student = Student.new("David",15)
  #    assert_equal("nope", student.talking())
  # end

  def test_fav_language()
     student = Student.new("David",15)
     assert_equal("my favourite langauge is Ruby", student.fav_language("Ruby"))
  end
end
