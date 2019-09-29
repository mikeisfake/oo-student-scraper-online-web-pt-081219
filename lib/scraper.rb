require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML( open(index_url))
    student_cards_array = []
    
    doc.css("student-card").each_with_index do |card, i|
     student_cards_array[i] = {
      :name => card.css(".card-text-continer.student-name").text,
      :location => card.css(".card-text-container.student-location").text,
      :profile_url => card.css("a").attribute("href").value
      }
      binding.pry
    end

    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end



#doc.css(".card-text-container h4").map{|student| student.text}