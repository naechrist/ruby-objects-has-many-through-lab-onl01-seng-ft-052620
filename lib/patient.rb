class Patient

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient}
  end
  
  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

end