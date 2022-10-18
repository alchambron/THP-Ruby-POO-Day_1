class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title.to_s
    @attendees = attendees
  end

  # Delaying by 24h
  def postpone_24h
    @start_date + 24 * 60 * 60
  end

  # Calculating ending time
  def end_date
    @start_date + @duration * 60
  end

  # Is the event past ?
  def is_past?
    @start_date < Time.now
  end

  # Is the event in the future ?
  def is_future?
    !is_past?
  end

  # Is the event soon ?
  def is_soon?
    Time.now > @start_date - 30 * 60 and Time.now < @start_date
  end

  def to_s
    # Formating Time
    puts "> Title : #{@title}"
    puts "> Date de début : #{@start_date.strftime '%Y-%m-%d %H:%M'}"
    puts "> Durée : #{@duration} minutes"
    puts "> Invités : #{@attendees.join(', ')}"
  end
end
