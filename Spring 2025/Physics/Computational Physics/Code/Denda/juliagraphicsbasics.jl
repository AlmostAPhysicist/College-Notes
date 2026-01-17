#----------------------

using GLMakie
function gui()
    scene = Scene(camera=campixel!, size=(800, 600))
    points = Observable(Point2f0[(0,0)])
    scatter!(scene, points, color=:gray)
    btn = Button(scene, label="Clean")
    on(btn.clicks) do _
        points[] = []
    end
    on(events(scene).mousebutton) do event
        if event.button == Mouse.left
            if event.action == Mouse.press
                mp = events(scene).mouseposition[]
                push!(points[], mp)
                notify(points)
            end
        end
    end
    scene
end
gui()

delete!(scene, scene[end])
#----------------------



