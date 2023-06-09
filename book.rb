require_relative 'rental'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    rental = Rental.new(date, person, self)
    person.rentals << rental
    rental
  end

  def to_h
    {
      title: @title,
      author: @author,
      rentals: @rentals.map(&:to_h)
    }
  end
end
