class Audition < ActiveRecord::Base
    belongs_to :role
    def call_back
        puts "- in call_back Method -"

        self.update( hired: true )
    end
end