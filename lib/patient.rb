class Patient
  
  @@all = []
  
  attr_reader :name
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(doctor, date, self)
  end
  
  def appointments
    Appointments.all.select { |a| a.patient == self }
  end
  
  def doctors
    self.appointments.collect { |a| a.doctor }
  end
  
end