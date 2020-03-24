require "pry"

class Appointment
  
  attr_accessor :date, :patient, :doctor
  
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def patient
    Patient.all.select {|patients| patients.date == self}
  end
    
  
#binding.pry  
end