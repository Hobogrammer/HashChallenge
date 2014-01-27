require 'date'

class AbbrDate

  def initialize
    @date = Date.new
    @year = 0
    @month = 0
    @two_letter_hash = { "Sunday" => "Su",  "Monday" => "Mo" , "Tuesday" => "Tu",  "Wednesday" => "We" , "Thursday" => "Th" , "Friday" => "Fr", "Saturday" => "Sa" }
  end

  def user_prompt
    puts "year?"
    @year = gets.chomp.to_i
    puts "month?"
    @month = gets.chomp.to_i
  end

  def two_letter_day(day)
    @date = Date.new(@year,@month,day)
    @two_letter_hash.each_key do |full_day|
      if @date.send("#{full_day.downcase}?")
        puts @two_letter_hash[full_day]
      end
    end
  end
end

abbr_class = AbbrDate.new
abbr_class.user_prompt
abbr_class.two_letter_day(5)
abbr_class.two_letter_day(20)
