class Book
 attr_accessor :title

  def title=(title)
    title_array = title.split(" ")
    title_array.each do |word|
        unless ['a','the','an','in','of','and'].include? word
            word.capitalize!
        end
    end
    if title_array.size > 0
        title_array[0].capitalize!
    end
    @title = title_array.join(" ")
  end

end
