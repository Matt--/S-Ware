module VolunteersHelper


# Given volunteer, the next time they are working is...
# returns array [job.name, day.name, date]
# ignores today, result is in range from tomorrow
  def next_working volunteer
    job = ['none', 'none', 'none']
    job_day = nil
    daynumber = 0
    time = Time.now
    (1..31).each do |y| # start searching from tomorrow, y=1
      t = time + (y * (60*60*24))

      daynumber = (t.wday == 0) ? 7 : t.wday # weekday range 1..7 starting Mon

      vjd = volunteer.vol_job_day.where("onday_id = ?", daynumber)[0]
#raise Time.new(2012,1,1).wday.inspect
      if (!vjd.nil?                 && 
          vjd.dojob.name != "none"  &&
          check_frequency?(vjd, t)       )
        date = t.strftime(", %b %d")
        job = [vjd.dojob.name, vjd.onday.name, date]
        break
      end
    end
    return job
  end

# Given a time and vjd representing a specific vol_job_day, 
#   works out if the volunteer is working.
# returns boolean
  def check_frequency? (vjd, time)
    if !vjd.volunteer.break_from.nil? &&            # volunteer is on a break
        vjd.volunteer.break_from <= time.to_date &&
        time.to_date <= vjd.volunteer.break_to
        return false
    elsif vjd.frequency.name == "weekly"
       return true 
    elsif vjd.frequency.name == "fortnightly" &&
       vjd.frequency.week == (time.strftime("%W").to_i)%2+1
       return true 
    elsif vjd.frequency.name == "monthly" &&
       nth_monday(vjd, time)
       return true 
    else
      return false
    end
  end

# is this the nth 'Monday' this month?
# return boolean
  def nth_monday (vjd, time)
    nth = vjd.frequency.week
    day = time.wday # sunday ==0
    week_one_size = time.week_split[0].size
    # [[1,2,3,4],[]] # not sun, mon, tue... 7 - size = 3 > 0,1,2 
    if 7 - week_one_size > day &&
       nth == time.week_of_month
        return true
    elsif(nth == time.week_of_month-1)
        return true
    else
        return false
    end
  end

end
