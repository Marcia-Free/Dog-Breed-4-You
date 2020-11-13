Breed.destroy_all
User.destroy_all
Favorite.destroy_all

        #t.string :breed
        #t.string :activity_level (high, medium, low)
        #t.string :kid_friendly(yes, no)
        #t.string :dog_size(large, medium, small)
        #t.string :hypoallergenic (yes, no)

Golden_Retriever = Breed.create(breed: "Golden Retriever", activity_level: "High", 
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "No")

Poodle = Breed.create(breed: "Poodle", activity_level: "Medium", 
kid_friendly: "No", dog_size: "Large", hypoallergenic: "Yes")

Labrador_Retriever = Breed.create(breed: "Labrador Retriever", activity_level: "High", 
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "No")

German_Shepherd = Breed.create(breed: "German Shepherd", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "No")

French_Bulldog = Breed.create(breed: "French Bulldog", activity_level: "Low", 
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "No")

Bulldog = Breed.create(breed: "Bulldog", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Medium", hypoallergenic: "No")

Beagle = Breed.create(breed: "Beagle", activity_level: "High", 
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "No")

Rottweiler = Breed.create(breed: "Rottweiler", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "No")

German_Shorthaired_Pointer = Breed.create(breed: "German Shorthaired Pointer", activity_level: "High", 
kid_friendly: "No", dog_size: "Large", hypoallergenic: "No")

Yorkshire_Terrier = Breed.create(breed: "Yorkshire Terrier", activity_level: "Medium", 
kid_friendly: "No", dog_size: "Small", hypoallergenic: "Yes")

Boxer = Breed.create(breed: "Boxer", activity_level: "High", 
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "No")

Dachshund = Breed.create(breed: "Dachshund", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "No")

Pembroke_Welsh_Corgi = Breed.create(breed: "Pembroke Welsh Corgi", activity_level: "High", 
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "No")

Siberian_Husky = Breed.create(breed: "Siberian Husky", activity_level: "High", 
kid_friendly: "Yes", dog_size: "Medium", hypoallergenic: "No")

Australian_Shepherd = Breed.create(breed: "Australian Shepherd", activity_level: "High", 
kid_friendly: "Yes", dog_size: "Medium", hypoallergenic: "No")

Great_Dane = Breed.create(breed: "Great Dane", activity_level: "High", 
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "No")

Doberman_Pinscher = Breed.create(breed: "Doberman Pinscher", activity_level: "High", 
kid_friendly: "No", dog_size: "Large", hypoallergenic: "No")

Cavalier_King_Charles_Spaniel = Breed.create(breed: "Cavalier King Charles Spaniel", activity_level: "Low", 
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "No")

Miniature_Schnauzer = Breed.create(breed: "Miniature Schnauzer", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "Yes")

Shih_Tzu = Breed.create(breed: "Shih Tzu", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "Yes")

Boston_Terrier = Breed.create(breed: "Boston Terrier", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "No")

Bernese_Mountain_Dog = Breed.create(breed: "Bernese Mountain Dog", activity_level: "High", 
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "No")

Pomeranian = Breed.create(breed: "Pomeranian ", activity_level: "Medium", 
kid_friendly: "No", dog_size: "Small", hypoallergenic: "No")

Havanese = Breed.create(breed: "Havanese", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "Yes")

Shetland_Sheepdog = Breed.create(breed: "Shetland Sheepdog", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "No")

Brittany = Breed.create(breed: "Brittany", activity_level: "High", 
kid_friendly: "Yes", dog_size: "Medium", hypoallergenic: "No")

English_Springer_Spaniel = Breed.create(breed: "English_Springer_Spaniel", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Medium", hypoallergenic: "No")

Pug = Breed.create(breed: "Pug", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "No")

Mastiff = Breed.create(breed: "Mastiff", activity_level: "Medium", 
kid_friendly: "No", dog_size: "Large", hypoallergenic: "No")

Cocker_Spaniel = Breed.create(breed: "Cocker Spaniel", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Medium", hypoallergenic: "No")

Vizslas = Breed.create(breed: "Vizslas", activity_level: "High", 
kid_friendly: "Yes", dog_size: "Medium", hypoallergenic: "No")

Cani_Corsi = Breed.create(breed: "Cani Corsi", activity_level: "High", 
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "No")

Chihuahua = Breed.create(breed: "Chihuahua", activity_level: "Medium", 
kid_friendly: "No", dog_size: "Small", hypoallergenic: "No")

Miniature_American_Shepherd = Breed.create(breed: "Miniature American Shepherd", activity_level: "High", 
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "No")

Border_Collie = Breed.create(breed: "Border Collie", activity_level: "High", 
kid_friendly: "No", dog_size: "Medium", hypoallergenic: "No")

Weimaraner = Breed.create(breed: "Weimaraner", activity_level: "High", 
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "No")

Maltese = Breed.create(breed: "Maltese", activity_level: "Medium", 
kid_friendly: "No", dog_size: "Small", hypoallergenic: "No")

Collie = Breed.create(breed: "Collie", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "No")

Basset_Hound = Breed.create(breed: "Basset Hound", activity_level: "Low", 
kid_friendly: "Yes", dog_size: "Medium", hypoallergenic: "No")

Newfoundland = Breed.create(breed: "Newfoundland", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "No")

Rhodesian_Ridgeback = Breed.create(breed: "Rhodesian Ridgeback", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "No")

West_Highland_White_Terrier = Breed.create(breed: "West Highland White Terrier", activity_level: "Medium", 
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "Yes")

Belgian_Malinois = Breed.create(breed: "Belgian Malinois", activity_level: "High",	
kid_friendly: "No", dog_size: "Medium", hypoallergenic: "No")

Shiba_Inu = Breed.create(breed: "Shiba Inu", activity_level: "Medium",
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "No")

Chesapeake_Bay_Retriever = Breed.create(breed: "Chesapeake Bay Retriever", activity_level: "High",	
kid_friendly: "Yes", dog_size: "Medium", hypoallergenic: "No")

Bichon_Frise = Breed.create(breed: "Bichon Frise", activity_level: "Medium",	
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "Yes")

Akita = Breed.create(breed: "Akita", activity_level: "Medium",	
kid_friendly: "No", dog_size: "Large", hypoallergenic: "No")

St_Bernard = Breed.create(breed: "St. Bernards", activity_level: "Medium",	
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "No")

Bloodhound = Breed.create(breed: "Bloodhound", activity_level: "Medium",	
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "No")

Portuguese_Water_Dog = Breed.create(breed: "Portuguese Water Dog", activity_level: "High",	
kid_friendly: "No", dog_size: "Medium", hypoallergenic: "Yes")

Soft_Coated_Wheaten_Terrier = Breed.create(breed: "Soft Coated Wheaten Terrier", activity_level: "High",	
kid_friendly: "Yes", dog_size: "Medium", hypoallergenic: "Yes")

Irish_Water_Spaniel = Breed.create(breed: "Irish Water Spaniel", activity_level: "High",	
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "Yes")

Brussels_Griffon = Breed.create(breed: "Brussels Griffon", activity_level: "High",	
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "Yes")

Samoyed = Breed.create(breed: "Samoyed", activity_level: "High",	
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "Yes")

Puli = Breed.create(breed: "Puli", activity_level: "Medium",	
kid_friendly: "Yes", dog_size: "Medium", hypoallergenic: "Yes")

Bergamasco_Sheepdog = Breed.create(breed: "Bergamasco Sheepdog", activity_level: "Low",	
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "Yes")

Old_English_Sheepdog = Breed.create(breed: "Old English Sheepdog", activity_level: "Low",	
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "Yes")



#-------USERS
        #t.string :name
        #t.string :activity_level (high, medium, low)
        #t.string :kid_friendly(yes, no)
        #t.string :dog_size(large, medium, small)
        #t.string :hypoallergenic (yes, no)

Dena = User.create(name: "Dena", activity_level: "Low",	
kid_friendly: "Yes", dog_size: "Large", hypoallergenic: "Yes")

Marcia = User.create(name: "Marcia", activity_level: "Medium",	
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "Yes")

Max = User.create(name: "Max", activity_level: "High",
kid_friendly: "No", dog_size: "Medium", hypoallergenic: "No")

Derick = User.create(name: "Derick", activity_level: "High",	
kid_friendly: "Yes", dog_size: "Small", hypoallergenic: "No")

Evelyn = User.create(name: "Evelyn", activity_level: "Low",	
kid_friendly: "No", dog_size: "Large", hypoallergenic: "No")

#-------Favorites
        #t.integer "user_id"
        #t.integer "breed_id"

#Recommendation_1 = Favorites.create(user_id: Dena.id, breed_id: Old_English_Sheepdog.id)
