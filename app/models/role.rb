
class Role < ActiveRecord::Base
    has_many :auditions  
   
    def actors

        puts " in actors Method"

       

            return self.auditions.map do | each_audition |
                each_audition.actor
            end

      


    end

 def locations

    

            actor_locations = []

                self.auditions.each do | each_audition |

                    actor_locations << each_audition.location

                end

            return actor_locations

       

    end

    def lead 
    
        array_result_of_filter = self.auditions.filter do | that_audtion_instance |
            
            that_audtion_instance.hired == true

        end


        if (array_result_of_filter.size != 0  &&  array_result_of_filter.size > 0)

            return array_result_of_filter.first
        
        else 
            return 'no actor has been hired for this role'
        end


    end
    

    def understudy

        
         array_result_of_filter = self.auditions.filter do | that_audtion_instance |
            
            that_audtion_instance.hired == true

        end


        if (array_result_of_filter.size != 0  &&  array_result_of_filter.size > 1)

            return array_result_of_filter.second
        
        else 
            return 'no actor has been hired for understudy for this role'
        end


    end



end  



