function onEvent(eventName, value1, value2)
    if eventName == 'Middle Scroll Switch' then
        for i=0,3 do
            noteTweenAlpha("NoteAlpha"..i, i, 0, 0*(i+1), linear)
            noteTweenX("bf"..i, i+4, 400+(125*i), 0.1*(i+1), "circInOut")
            noteTweenX("opp"..i, i, 400+(125*i), 0.1*(i+1), "circInOut")
            noteTweenAngle("mama"..i, i, 360, 0.1*(i+1), "circInOut")
            noteTweenAngle("lala"..i, i+4, 360, 0.1*(i+1), "circInOut")
        end
    end
end