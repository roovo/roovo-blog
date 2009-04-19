class Time
  def day_ordinal_suffix
    if day == 11 or day == 12
      return "th"
    else
      case day % 10
      when 1 then return "st"
      when 2 then return "nd"
      when 3 then return "rd"
      else return "th"
      end
    end
  end
end

class Date
  def month_with_leading_zero
    month < 10 ? "0#{month}" : month.to_s
  end
end
