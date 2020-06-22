class Doctor
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
  end
  
  def patients
    Appointment.all.collect {|appointment| appointment.patient}
  end
   
 
  def appointments
    Appointment.all.select {|appointment| appointment.doctor}
  end

end