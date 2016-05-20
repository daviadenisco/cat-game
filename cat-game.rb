puts("You wake up in a room: there's a cat next to you, he looks scared, and you see a door.")

puts("What do you want to do? \nExamples: \npick up knife \nopen closet")

gameOverLose = false
gameOverWin = false

hasCat = false
wasCatPet = false

while (gameOverLose==false && gameOverWin==false)
    input = gets.chomp
    if(input=="take cat" || input=="pick up cat")
        if(wasCatPet)
            puts("You can leave with the cat.")
            hasCat = true
        else
            puts("The cat scratched you.")
        end
    elsif(input=="open door" || input=="unlock door")
        if(hasCat)
            puts("You open the door and leave with your new pet cat.")
            gameOverWin = true
        else
            puts("Do not leave the cat behind.")
        end
    elsif(input=="pet cat")
        puts("The cat is calm. Now you can pick up the cat.")
        wasCatPet = true
    elsif(input=="look")
        if(hasCat)
        puts("You see a door, and you have the cat. What do you want to do?")
        else
            puts("You see a cat in the room, he looks scared, and you see a door.")
        end
    else
        puts("I'm sorry, I do not understand " + input)
    end
end

if (gameOverLose)
    puts("fuck you, you dead hahahaha")
else
    puts("you da bomb and you win")
end
