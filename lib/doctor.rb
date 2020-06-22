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
  
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end
  
  def patients
    Appointment.all.collect {|appointment| appointment.patients }
  end
   
  # def patients
  #   appointments.collect {|appointment| appointment.doctor }
  # end
 
  def appointments
    Appointment.all.select {|appointment| appointment.doctor}
  end

end