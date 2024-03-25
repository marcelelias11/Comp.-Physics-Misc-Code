cards = list("A", 2, 3, 4, 5, 6, 7, 8, 9, 10,"J", "Q", "K")
    cd1 = floor(13*rand()+1)
    cd2 = floor(13*rand()+1)
    cardsd = string(cards(cd1)) + " ??"
    truecardsd = string(cards(cd1)) + string(cards(cd2))
    printf(cardsd)
    if cards(cd1) == "A"
        vd1 = 1
    elseif cards(cd1) == "J"
        vd1 = 10
    elseif cards(cd1) == "Q"
        vd1 = 10
    elseif cards(cd1) == "K"
        vd1 = 10
    else
        vd1 = cards(cd1)
    end
    if cards(cd2) == "A"
        vd2 = 1
    elseif cards(cd2) == "J"
        vd2 = 10
    elseif cards(cd2) == "Q"
        vd2 = 10
    elseif cards(cd2) == "K"
        vd2 = 10
    else
        vd2 = cards(cd2)
    end
    vd = vd1 + vd2
    printf("\n" + string(vd))
    //if cards(cd1) == "A" and vd2 == 10 then
        //disp("\n Dealer win!")
    //end
    //if vd > 21 then
        //disp("\n Dealer bust!")
    //end
    
    cp1 = floor(13*rand()+1)
    cp2 = floor(13*rand()+1)
    cp = "\n" + string(cards(cp1)) + " " + string(cards(cp2))
    printf(cp)
    if cards(cp1) == "A"
        vp1 = 1
    elseif cards(cp1) == "J"
        vp1 = 10
    elseif cards(cp1) == "Q"
        vp1 = 10
    elseif cards(cp1) == "K"
        vp1 = 10
    else
        vp1 = cards(cp1)
    end
    if cards(cp2) == "A"
        vp2 = 1
    elseif cards(cp2) == "J"
        vp2 = 10
    elseif cards(cp2) == "Q"
        vp2 = 10
    elseif cards(cp2) == "K"
        vp2 = 10
    else
        vp2 = cards(cp2)
    end
    vp = vp1 + vp2
    printf("\n" + string(vp))
    //if vp == 21 then
        //disp("\n Blackjack!")
    //end
    //if vd > 21 then
        //disp("\n Bust!")
    //end
    disp("1 - Hit");
    disp("2 - Stop");
    option = input("");
    if option == 1 then

while %t

        cp3 = floor(13*rand()+1)
        cardsp = cp + " " + string(cards(cp3))
        printf("\n" + cardsp)
        if cards(cp3) == "A"
            vp3 = 1
        elseif cards(cp3) == "J"
            vp3 = 10
        elseif cards(cp3) == "Q"
            vp3 = 10
        elseif cards(cp3) == "K"
        vp3 = 10
        else
            vp3 = cards(cp3)
        end
    vp = vp + vp3
    printf("\n" + string(vp))
    if vp >= 21 then
        break
    end
    disp("1 - Hit");
    disp("2 - Stop");
    option = input("");
    option2 = option
    if option2 == 2 then
        break
    end
    end
end
if option == 2 then
    while %T
    cd3 = floor(13*rand()+1)
    cardsd2 = cardsd + " " + string(cards(cd3))
    printf("\n" + cardsd2)
    if cards(cd3) == "A"
        vd3 = 1
    elseif cards(cd3) == "J"
        vd3 = 10
    elseif cards(cd3) == "Q"
        vd3 = 10
    elseif cards(cd3) == "K"
        vd3 = 10
    else
        vd3 = cards(cd3)
    end
    vd = vd + vd3
    printf("\n" + string(vd))
    if vp >= 21 then
        break
    end
    end
end
if vd > 21 then
    disp("Dealer Bust!")
end
if vp > 21 then
    disp("Bust!")
elseif vp > vd then
    disp("You win!")
elseif vp < vd then
    disp("You lose!")
elseif vp == vd then
    disp("Push!")
end
