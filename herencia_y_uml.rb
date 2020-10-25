class Appointment
    attr_accessor :location, :purpose, :hour, :min
    def initialize(location,purpose,hour,min)
        @location=location
        @purpose=purpose
        @hour=hour
        @min=min
    end
end
class MonthlyAppointment<Appointment
    attr_accessor :day
    def initialize(location, purpose,hour,min,day)
        @location=location
        @purpose=purpose
        @hour=hour
        @min=min
        @day=day
    end
    def occurs_on?(day)
        self.day==day    
    end
    def to_s
        "Reunión mensual en #{location} sobre #{purpose}, el día #{day} a la(s) #{hour}:#{min}."
    end
end
class DailyAppointment<Appointment
    def occurs_on?(hour, min)
        self.hour==hour && self.min==min
    end
    def to_s 
        "Reunión diaria en #{location} sobre #{purpose} a la(s) #{hour}:#{min}."
    end
end
class OneTimeAppointment<Appointment
    attr_accessor :day, :month, :year
    def initialize(location, purpose,hour,min,day, month, year)
        @day=day
        @month=month
        @year=year
    end
    def occurs_on? (day, month, year)
        self.day==day && self.month==month && self.year==year
    end
    def to_s 
        "Reunión única en #{location} sobre #{purpose}, el #{day}/#{month}/#{year} a la(s) #{hour}:#{min}."
    end
end
