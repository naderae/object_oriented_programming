class Paperboy
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 50
    @total_papers_delivered = 0
  end



  def name
    return @name
  end

  def experience
    return @experience
  end

  def earnings
    return @earnings
  end


  def quota
    @quota += (50 + (@experience * 0.5))
    return @quota
  end

  def deliver(start_address, end_address)
    total_houses = end_address - start_address
    @total_papers_delivered += total_houses
    @experience += total_houses
    if total_houses < quota
      @earnings += (0.25 * total_houses)
      @earnings -= 2
    elsif total_houses == quota
      @earnings += (0.25 * total_houses)
    elsif total_houses > quota
      above_quota_deliveries = (total_houses - quota)
      @earnings += (0.25 * total_houses) + (0.5 * above_quota_deliveries )
    end
  end

  def report
    puts "I'm #{@name}, and I've delivered #{@total_papers_delivered} papers and I've earned $#{@earnings} so far!"
  end
end

paperboy_1 = Paperboy.new("nader")
paperboy_1.deliver(0, 50)
paperboy_1.report
paperboy_1.deliver(50, 200)
paperboy_1.report


# must add total_houses to the equation so that you can use it later.
