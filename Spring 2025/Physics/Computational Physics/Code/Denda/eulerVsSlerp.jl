using GLMakie
using Colors
using LinearAlgebra
Point3f = Point{3, Float64}

# Create 3D scene 
scene = Scene(resolution=(800, 600), camera=cam3d!, backgroundcolor="#20262e")

# Add an axis
function createSceneAxis(scene)
    arrows!(scene, [Point3f0(0, 0, 0)], [Vec3f0(1, 0, 0)], color="#d8f3dc")
    arrows!(scene, [Point3f0(0, 0, 0)], [Vec3f0(0, 1, 0)], color="#d8f3dc")
    arrows!(scene, [Point3f0(0, 0, 0)], [Vec3f0(0, 0, 1)], color="#d8f3dc")
    # text!(scene, 1, 0, 0, "X", color=:red)
    # text!(scene, 0, 1, 0, "Y", color=:green)
    # text!(scene, 0, 0, 1, "Z", color=:blue)
end


createSceneAxis(scene)

#plot sphere of radius 1
v1 = AxesAngles2vector(deg2rad.((39.68,72.5,56)), 1)
# v1 = Point3f(normalize!(rand(3).*rand((-1,1),3)))
v1copy = copy(v1)
# v2 = Point3f(normalize!(rand(3).*rand((-1,1),3)))
v2 = AxesAngles2vector(deg2rad.((78.87,40.65,128.47)), 1)

arrowAxesAngles = Observable([v1])
# arrowSlerp = Observable([v2])

arrows!(scene, [Point3f0(0, 0, 0)], arrowAxesAngles, color="#ff5a5f") # for arrow
arrows!(scene, [Point3f0(0, 0, 0)], [v2], color="#95d5b2") # for arrow
# meshscatter!(scene, arrow1, markersize=0.05, color="#ff5a5f") # for sphere on tip

# PATH TRACER
trackerAxesAngles = Observable([v1])
# trackerSlerp = Observable([v2])

f(t) = range(start=colorant"#95d5b2", stop=colorant"#ff5a5f", length=length(t)+1)[2:end]
colorsAxesAngles = lift(f, trackerAxesAngles)
# colorsSlerp = lift(f, trackerSlerp)
lines!(scene, trackerAxesAngles, color=colorsAxesAngles, linewidth=2, fxaa=true)
# lines!(scene, trackerSlerp, color=colorsSlerp, linewidth=2, fxaa=true)

# Rotate v1 to v2 

begin 
    sleep(2)
    global v1, v2
    steps = 1000
    for i in 1:steps
        # use interpolateAxesAngles
        v1copy = interpolateAxesAngles(v1, v2, steps, i)
        arrowAxesAngles[] = [v1copy]
        push!(trackerAxesAngles[], v1copy)
        trackerAxesAngles[] = trackerAxesAngles[] #This updates the observable value

        # yield()
        sleep(0.001)
    end
end

delete!(scene, scene[end])
delete!(scene, scene[end])
delete!(scene, scene[end])


function vector2AxesAngles(v)
    # Returns the angles that the vector makes with the x, y, and z axes
    # Normalize the vector
    v_norm = norm(v)
    
    # Compute the angles with the x, y, and z axes
    theta_x = acos(v[1] / v_norm)
    theta_y = acos(v[2] / v_norm)
    theta_z = acos(v[3] / v_norm)
    
    return Point3f(theta_x, theta_y, theta_z)
end
vector2AxesAngles(x,y,z) = vector2AxesAngles(Point3f0(x,y,z))

function AxesAngles2vector(AxesAngles, magnitude)
    # Returns the vector corresponding to the angles with the x, y, and z axes
    theta_x, theta_y, theta_z = AxesAngles
    
    # Compute the vector components
    x = cos(theta_x)
    y = cos(theta_y)
    z = cos(theta_z)
    
    return magnitude.*Point3f(normalize!([x, y, z]))
    # return magnitude.*Point3f(x,y,z)
end

lerp(x1, x2, alpha) = x1 + alpha * (x2 - x1)

function interpolateAxesAngles(v1, v2, steps, current_step)
    alpha = current_step / steps
    theta1 = vector2AxesAngles(v1)
    theta2 = vector2AxesAngles(v2)

    interpolated_theta = Point3f0(
        lerp(theta1[1], theta2[1], alpha),
        lerp(theta1[2], theta2[2], alpha),
        lerp(theta1[3], theta2[3], alpha)
    )
    rotated_vector = AxesAngles2vector(interpolated_theta, lerp(norm(v1), norm(v2), alpha))
    return rotated_vector
end




