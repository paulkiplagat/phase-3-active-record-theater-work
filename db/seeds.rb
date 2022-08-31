##  Get Rid of All Previous Seeds/Already-Existing-Data-In-DB
    
Role.destroy_all
Audition.destroy_all

##  Get Rid of All Previous Seeds/Already-Existing-Data-In-DB

puts "


✅🚮✅ !!!!Previous Seeds Gone!!!! ✅🚮✅


🛤 🌱🛤🧹 New Seeding Started 🛤 🌱🛤🧹


----------------
"



sam = Role.create( character_name: "Sam" )
ariel = Role.create( character_name: "Ariel - Little Mermaid" )
jb = Role.create( character_name: "It's Bond....James Bond" )

# No audtions case
oscar = Role.create( character_name: "Oscar The Grouch 👹🗑" )


puts "🙌🌱 All Roles Seeded 🌱🙌"




Audition.create( 

actor: "Tammy" , 
location: "South Africa" , 
hired: true ,
phone: 7777777777 ,

role_id: sam.id

)
Audition.create( 

actor: "Emily" , 
location: "Disney Land" , 
hired: false ,
phone: 1111111111 ,

role_id: ariel.id

)


# 2 Auditions for 1 Role - Case
Audition.create( 

    actor: "Joey <Ha$hTagz>" , 
    location: "Delaware" , 
    hired: false ,
    phone: 3334443344 ,

    role_id: jb.id

)
Audition.create( 

    actor: "Scohhhtayyyyy" , 
    location: "Scottyland :)" , 
    hired: false ,
    phone: 3334443344 ,

    role_id: jb.id

)
# 2 Auditions for 1 Role - Case


puts "🙌🌱 All Auditions Seeded 🌱🙌"




puts "
----------------


🙌🌱🌿🌱🙌 All Seeding Done! 🙌🌱🌿🌱🙌


"