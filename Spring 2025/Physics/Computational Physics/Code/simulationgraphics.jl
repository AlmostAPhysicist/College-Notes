using GLMakie

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


tip = Vec3f0(0)
arrow = Observable([tip])

# arrows!(scene, [Point3f0(0, 0, 0)], arrow, color=:red)
#@time a[] = [Vec3f0(2, 2, 2)]

# delete!(scene, scene[end])
meshscatter!(scene, arrow, markersize=0.05, color="#ff5a5f")
# PATH TRACER
tracker = Observable([tip])

f(t) = range(start=colorant"#95d5b2", stop=colorant"#ff5a5f", length=length(t)+1)[2:end]
colors = lift(f, tracker)


lines!(scene, tracker, color=colors, linewidth=2, fxaa=true)
# RANDOM WALKER
for i in 1:100_000
    tip = tip .+ [rand()*rand((-1,1)) for i in 1:3] * 0.1
    # tip = tip .+ [rand()*rand((-1,1)),0,0]*0.1
    arrow[] = [tip]
    push!(tracker[], tip)
    tracker[] = tracker[] #This updates the observable value
    # center!(scene, tip)
    yield()
    # sleep(0.001)
    # notify(scene)
end

center!(scene)
scene.camera.eyeposition = tip
# path = Observable([Point3f0(0, 0, 0), Point3f0(1, 1, 1), Point3f0(2, 2, 2)])
# lines!(scene, path, color=:blue)

# push!(path[], Point3f0(3, 3, 0)) #Does not update the observable value
# path[] = path[] #This updates the observable value

# path[] = [Point3f0(0, 0, 0), Point3f0(1, 1, 1), Point3f0(2, 0, 1)]
# delete!(scene, scene[end])
# scene

# Create Gimbol axis
using LinearAlgebra
using Rotations

function create_arc(start_point, about_vector, angle; about_point=Point3f0(0),  npoints=25)
    # Normalize the about_vector
    about_vector = Point3f0(normalize(about_vector))
    
    # Calculate the incremental angle
    delta_angle = angle / npoints
    
    # Translate the start point to the origin
    translated_start = start_point - about_point
    
    # Initialize the list of points with the start point
    points = [translated_start]
    
    # Generate points on the arc
    for i in 1:npoints
        # Create the rotation using AngleAxis
        rotation = AngleAxis(delta_angle * i, about_vector...)
        
        # Rotate the point incrementally
        rotated_point = rotation * translated_start
        
        # Append the point to the list
        push!(points, rotated_point)
    end
    
    # Translate the points back to the original position
    points .+= about_point
    
    return points
end

# Example usage
about_vector = Point3f0(rand(), 1, rand())
start_point = Point3f0(-0.5, rand()*2, 0.25)
about_point = Point3f0(0, 0, 0)
angle = pi
arc_points = create_arc(start_point, about_vector, angle; about_point=about_point, npoints=25)
# println(arc_points)

# typeof(arc_points)

# scene
lines!(scene, arc_points, color=:red)

println(arc_points[1])

delete!(scene, scene[end])



# Create Gimbal
function angles_with_axes(v)
    # Normalize the vector
    v_norm = norm(v)
    
    # Compute the angles with the x, y, and z axes
    theta_x = acos(v[1] / v_norm)
    theta_y = acos(v[2] / v_norm)
    theta_z = acos(v[3] / v_norm)
    
    return (theta_x, theta_y, theta_z)
end

gimbalangles = angles_with_axes(tip)
# The gimbal angle is the angle between a basis vector and the normalized vector for all the 3 basis vectors.
# The gimbal angle is rendered about a direction vector (about_vector) perpendicular to the vector and the basis vector.
# That is, the axis of rotation is the cross product of the normalized vector and the basis vector.
# So the angle must be rendered as :
    # 1. start_point = basis_i
    # 2. about_vector = cross(normalize(tip), basis_i)
    # 3. angle = gimbalangles[i]
    # 4. about_point = Point3f0(0)
    # 5. npoints = 25
    # 6. repeat for all 3 basis vectors for the iterator i

for i in 1:3
    start_point = [Point3f0(1,0,0), Point3f0(0,1,0), Point3f0(0,0,1)][i]
    about_vector = Point3f0(cross(normalize(tip), start_point))
    angle = gimbalangles[i]
    about_point = Point3f0(0)
    npoints = 25
    arc_points = create_arc(start_point, about_vector, -angle; about_point=about_point, npoints=npoints)
    lines!(scene, arc_points)
end


sample_vec = Point3f0(rand(3).*3)
arrows!(scene, [Point3f0(0, 0, 0)], [sample_vec], color=:red)
samplegimbalangles = angles_with_axes(sample_vec)

for i in 1:3
    start_point = [Point3f0(1,0,0), Point3f0(0,1,0), Point3f0(0,0,1)][i]
    about_vector = Point3f0(cross(normalize(sample_vec), start_point))
    angle = samplegimbalangles[i]
    about_point = Point3f0(0)
    npoints = 25
    arc_points = create_arc(start_point, about_vector, -angle; about_point=about_point, npoints=npoints)
    lines!(scene, arc_points, color=[:red, :green, :blue][i], linewidth=2)
end

delete!(scene, scene[end])

# Render normalized vector, and components
normalized_vec = normalize(sample_vec)
lines!(scene, [Point3f0(0, 0, 0), Point3f0(normalized_vec)], color=:black, linewidth=35, fxaa=true)
lines!(scene, [Point3f0(0, 0, 0), Point3f0(normalized_vec[1], 0, 0)], color=:red, linewidth=25, fxaa=true)
lines!(scene, [Point3f0(0, 0, 0), Point3f0(0, normalized_vec[2], 0)], color=:green, linewidth=25, fxaa=true)
lines!(scene, [Point3f0(0, 0, 0), Point3f0(0, 0, normalized_vec[3])], color=:blue, linewidth=25, fxaa=true)



#----------- Cylinder ----------- 

"""
- ssao methods  based on https://beautiful.makie.org/dev/examples/generated/2d/mscatters/SSAO_meshscatter/

- cylinder see: https://juliageometry.github.io/GeometryBasics.jl/stable/api/#GeometryBasics.Cylinder

- tesselation see: https://juliageometry.github.io/GeometryBasics.jl/stable/api/#GeometryBasics.Tesselation
"""

using GLMakie,GeometryBasics
# GLMakie.activate!(ssao=true)
# GLMakie.closeall() # close any open screen

# #=======Setting  define notice for ssao setting========#
# fig = Figure(resolution = (1200, 600))
# ssao = Makie.SSAO(radius = 5.0, blur = 2)
# ax1 = LScene(fig[1, 1], scenekw = (ssao=ssao,),show_axis=false)
# ax1.scene.ssao.bias[] = 0.025
# ax2 = LScene(fig[1, 2], scenekw = (ssao=ssao,),show_axis=false)
# ax2.scene.ssao.bias[] = 0.025
# #============================#

"""
## define  default  cylinder
`cylinder=Cylinder(startpoint,maxheightpoint, radius)`
"""
cylinder1=Cylinder(Point3(1.0,1.0,1.0), Point3(1.0,1.0,4.0), 2.0)


"""
    CylinderTess(; o=Point3(1.0,1.0,1.0),m=Point3(1.0,1.0,4.0), r=2.0, tess=60)
# define cylinder with tesselation 
>for  fine grained with tess,  higer value,higher fine grained

return  object with more grined coordinates
"""
function CylinderTess(; o=Point3(1.0,1.0,1.0),m=Point3(1.0,1.0,4.0), r=2.0, tess=60)
    return uv_normal_mesh(Tesselation(Cylinder(o,m,r), tess))
end


cylinder2=CylinderTess(;tess=100)

scene = Scene(resolution=(800, 600), camera=cam3d!)
mesh!(scene,cylinder1,ssao=true,color=:lightblue)
mesh!(scene,cylinder2,ssao=true,color=:lightblue)

delete!(scene, scene[end])
#save("ssao-cyclinder.png",fig)



#---
Vec3f = Vec3f0
Point3f = Point3f0
using GLMakie
using GeometryBasics
using LinearAlgebra

function _mantle(origin, extremity, r1, r2, N)
    dphi = 2pi / N

    # Equivalent to
    # xy = cos(atan(temp))
    # z  = sin(atan(temp))
    temp = -(r2-r1) / norm(extremity .- origin)
    xy = 1.0 / sqrt(temp^2 + 1)
    z = temp / sqrt(temp^2 + 1)

    coords = Vector{Point3f}(undef, 2N)
    normals = Vector{Vec3f}(undef, 2N)
    faces = Vector{GLTriangleFace}(undef, 2N)

    for (i, phi) in enumerate(0:dphi:2pi-0.5dphi)
        coords[2i - 1] = origin .+ r1 * Vec3f(cos(phi), sin(phi), 0)
        coords[2i] = extremity .+ r2 * Vec3f(cos(phi), sin(phi), 0)
        normals[2i - 1] = Vec3f(xy*cos(phi), xy*sin(phi), z)
        normals[2i] = Vec3f(xy*cos(phi), xy*sin(phi), z)
        faces[2i - 1] = GLTriangleFace(2i-1, mod1(2i+1, 2N), 2i)
        faces[2i] = GLTriangleFace(mod1(2i+1, 2N), mod1(2i+2, 2N), 2i)
    end

    GeometryBasics.mesh(coords; faces; normaltype = normals)
end

# GeometryBasics.Circle doesn't work with Point3f...
function _circle(origin, r, normal, N)
    dphi = 2pi / N

    coords = Vector{Point3f}(undef, N+1)
    normals = fill(normal, N+1)
    faces = Vector{GLTriangleFace}(undef, N)

    for (i, phi) in enumerate(0:dphi:2pi-0.5dphi)
        coords[i] = origin .+ r * Vec3f(cos(phi), sin(phi), 0)
        faces[i] = GLTriangleFace(N+1, mod1(i+1, N), i)
    end
    coords[N+1] = origin

    GeometryBasics.mesh(coords, faces; normal = normals)
end

# Example usage
quality = 16
cylinder = merge([
    _circle(Point3f0(0,0,-1), 0.5f0, Vec3f0(0,0,-1), quality),
    _mantle(Point3f0(0,0,-1), Point3f0(0,0,0), 0.5f0, 0.5f0, quality),
    _circle(Point3f0(0,0,0), 0.5f0, Vec3f0(0,0,1), quality)
])

scene = Scene(resolution=(800, 600), camera=cam3d!)
mesh!(scene, cylinder, color=:lightblue)

# Save the scene as an image
save("cylinder.png", scene)