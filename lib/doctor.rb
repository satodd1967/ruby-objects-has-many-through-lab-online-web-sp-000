require "pry"

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
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select {|appointments| appointments.doctor == self}
  end

  def patients
    appointments.map {|appointment| appointment.patient}
  end
  
#binding.pry
end