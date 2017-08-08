class Library

attr_reader(:books)
attr_writer(:books)



  def initialize(books)
    @books = books
  end

  def list_book_detais(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

  def list_book_rental_detais(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
  end

  def add_new_book(title)
    title_hash = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    return @books << title_hash
  end

  def change_book_rental_detais(title,name,date)
    for book in @books
      if book[:title] == title
          book[:rental_details] = {student_name: name, date: date}
      end
    end
  end


end
