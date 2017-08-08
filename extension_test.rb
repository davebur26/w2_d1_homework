require( "minitest/autorun" )
require_relative( "./extension" )

class TestStudent < MiniTest::Test

def setup

  @books = Library.new([
    {
    title: "lord_of_the_rings",
    rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
    }
  },

    {
    title: "Arry Potter",
    rental_details: {
      student_name: "Dorris",
      date: "01/04/13"
    }
  },

    {
    title: "Dictionary",
    rental_details: {
      student_name: "Paul",
      date: "01/01/09"
    }
  }
  ]
  )
end


def test_list_books_details
  # test_expected = @books[2]
  test_expected = {
    title: "Dictionary",
    rental_details: {
      student_name: "Paul",
      date: "01/01/09"
  }}
  assert_equal(test_expected, @books.list_book_detais("Dictionary"))
end

def test_list_books_rental_details
  test_expected = {
    student_name: "Dorris",
    date: "01/04/13"
  }
  assert_equal(test_expected, @books.list_book_rental_detais("Arry Potter"))
end

def test_add_new_book
  test_expected = ([
    {
    title: "lord_of_the_rings",
    rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
    }
  },

    {
    title: "Arry Potter",
    rental_details: {
      student_name: "Dorris",
      date: "01/04/13"
    }
  },
  {
  title: "Dictionary",
  rental_details: {
    student_name: "Paul",
    date: "01/01/09"
  }
},
    {
    title: "My New Book",
    rental_details: {
      student_name: "",
      date: ""
    }
  }
  ]
  )

  assert_equal(test_expected, @books.add_new_book("My New Book"))
end

def test_change_book_details
  test_expected = ([
    {
    title: "lord_of_the_rings",
    rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
    }
  },

    {
    title: "Arry Potter",
    rental_details: {
      student_name: "Dorris",
      date: "01/04/13"
    }
  },

    {
    title: "Dictionary",
    rental_details: {
      student_name: "David",
      date: "Tomorrow"
    }
  }
  ]
  )
puts @books
  assert_equal(test_expected, @books.change_book_rental_detais("Dictionary","David","Tomorrow"))

end

end
