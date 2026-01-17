# Implement Euler's method for solving differential equations for y'(t) = f(t, y), y(t0) = y0
function euler(f, t0, y0, h, t_final)
    t = t0
    y = y0
    ts = [t]
    ys = [y]

    while t <= t_final
        y += h * f(t, y)
        t += h
        push!(ts, t)
        push!(ys, y)
    end

    return ts, ys
end


using GLMakie

f(t, y) = y  # Example function: dy/dt = y
t0 = 0.0
y0 = 1.0
h = 0.001
t_final = 1.0

ts, ys = euler(f, t0, y0, h, t_final)

fig = Figure()
ax = Axis(fig[1, 1], xlabel="t", ylabel="y", title="Euler's Method")
lines!(ax, ts, ys, color=:blue, label="y(t)")
axislegend(ax)
display(fig)

function f(t, y)
    function f(x)
        if x==0
            return 0
        else
            return x^2 * sin(1/(x^2))
        end
    end
    return f(y)
end

t0 = 0.0
y01 = 0.6
y02 = 0.9
h = 0.001
t_final = 1.0
ts1, ys1 = euler(f, t0, y01, h, t_final)
ts2, ys2 = euler(f, t0, y02, h, t_final)

fig2 = Figure()
ax2 = Axis(fig2[1, 1], xlabel="t", ylabel="y", title="Euler's Method with Different Initial Conditions")
lines!(ax2, ts1, ys1, color=:red, label=L"y_0=0.6")
lines!(ax2, ts2, ys2, color=:green, label=L"y_0=0.9")
axislegend(ax2)
display(fig2)

t0 = 0.0
y0 = 0.0001
h = 0.001
t_final = 1.0
ts3, ys3 = euler(f, t0, y0, h, t_final)
fig3 = Figure()
ax3 = Axis(fig3[1, 1], xlabel="t", ylabel="y", title="Euler's Method with Small Initial Condition")
lines!(ax3, ts3, ys3, color=:purple, label=L"y_0=0.0001")
axislegend(ax3)
display(fig3)


# To make this work, use Runge-Kutta method instead of Euler's method.

function rk4(f, t0, y0, h, t_final)
    t = t0
    y = y0
    ts = [t]
    ys = [y]

    while t <= t_final
        k1 = h * f(t, y)
        k2 = h * f(t + h/2, y + k1/2)
        k3 = h * f(t + h/2, y + k2/2)
        k4 = h * f(t + h, y + k3)
        y += (k1 + 2*k2 + 2*k3 + k4) / 6
        t += h
        push!(ts, t)
        push!(ys, y)
    end

    return ts, ys
end
t0 = 0.0
y01 = 0.01
y02 = 0.1
y03 = 0.4
y04 = 0.5
y05 = 0.6
y07 = 0.9
y08 = 1.0
y09 = 1.1
h = 0.001
t_final = 1.0

ts1, ys1 = rk4(f, t0, y01, h, t_final)
ts2, ys2 = rk4(f, t0, y02, h, t_final)
ts3, ys3 = rk4(f, t0, y03, h, t_final)
ts4, ys4 = rk4(f, t0, y04, h, t_final)
ts5, ys5 = rk4(f, t0, y05, h, t_final)
ts7, ys7 = rk4(f, t0, y07, h, t_final)
ts8, ys8 = rk4(f, t0, y08, h, t_final)
ts9, ys9 = rk4(f, t0, y09, h, t_final)
fig4 = Figure()
ax4 = Axis(fig4[1, 1], xlabel="t", ylabel="y", title="Runge-Kutta Method with Different Initial Conditions")
lines!(ax4, ts1, ys1, color=:red, label=L"y_0=0.01")
lines!(ax4, ts2, ys2, color=:orange, label=L"y_0=0.1")
lines!(ax4, ts3, ys3, color=:yellow, label=L"y_0=0.4")
lines!(ax4, ts4, ys4, color=:green, label=L"y_0=0.5")
lines!(ax4, ts5, ys5, color=:blue, label=L"y_0=0.6")
lines!(ax4, ts7, ys7, color=:indigo, label=L"y_0=0.9")
lines!(ax4, ts8, ys8, color=:violet, label=L"y_0=1.0")
lines!(ax4, ts9, ys9, color=:purple, label=L"y_0=1.1")
axislegend(ax4)
display(fig4)



#------------------------------------------


ddoty(t,y) = y 

# Convert to first order system in y and v where v = y'
function system(t, Y) # Y is (y, v)
    y, v = Y 
    return [v, ddoty(t, y)]
end

# Determine vector field associated with the system
function vector_field(t, Y)
    y, v = Y
    dydt, dvdt = system(t, Y)
    return (dydt, dvdt)
end

using LinearAlgebra
using GLMakie

# Create a grid of points in the phase space
y_range = -10:0.5:10
v_range = -10:0.5:10
grid = [(y, v) for y in y_range, v in v_range]
Y = [p[1] for p in grid]
V = [p[2] for p in grid]
U = similar(Y)
W = similar(V)
for i in eachindex(Y)
    dydt, dvdt = vector_field(0.0, (Y[i], V[i]))
    U[i] = dydt
    W[i] = dvdt
end
fig5 = Figure()
ax5 = Axis(fig5[1, 1], xlabel="y", ylabel="v", title="Phase Space Vector Field")

# Downscale vectors for better visualization
max_length = 0.4
lengths = sqrt.(U .^ 2 .+ W .^ 2)
U .= U ./ lengths .* max_length
W .= W ./ lengths .* max_length
quiver!(ax5, vec(Y), vec(V), vec(U), vec(W), color=:blue)
display(fig5)
#------------------------------------------


using LinearAlgebra
using GLMakie


# Multivariable Linear ODE Solver using Euler's Method
# Example function 
# du/dt = A*u, u = [x, y], A is a matrix
function euler_multivariable(A, t0, u0, h, t_final)
    t = t0
    u = u0
    ts = [t]
    us = [u]

    while t <= t_final
        u += h * (A * u)
        t += h
        push!(ts, t)
        push!(us, copy(u))
    end

    return ts, us
end
function direction_field(A, y, v)
    dydt = A[1,1]*y + A[1,2]*v
    dvdt = A[2,1]*y + A[2,2]*v
    return (dydt, dvdt)
end

A = [
    -2 -2
    -2 1
]

# Plot direction field and solution curve in phase plane of the system components (x, y)

x_range = -5:0.5:5
y_range = -5:0.5:5
grid = [(x, y) for x in x_range, y in y_range]
X = [p[1] for p in grid]
Y = [p[2] for p in grid]
U = similar(X)
V = similar(Y)
for i in eachindex(X)
    dydt, dvdt = direction_field(A, X[i], Y[i])
    U[i] = dydt
    V[i] = dvdt
end
fig6 = Figure()
ax6 = Axis(fig6[1, 1], xlabel="x", ylabel="y", title="Phase Plane with Direction Field")
# Downscale vectors for better visualization
max_length = 0.4
lengths = sqrt.(U .^ 2 .+ V .^ 2)
U .= U ./ lengths .* max_length
V .= V ./ lengths .* max_length
quiver!(ax6, vec(X), vec(Y), vec(U), vec(V), color=:blue)
# Now plot solution curves for different initial conditions on the same phase plane
h = 0.01
initial_conditions = [
    [1.0, 0.0],
    [0.0, 1.0],
    [1.0, -2.0]
]

for u0 in initial_conditions
    ts, us = euler_multivariable(A, 0.0, u0, h, 5.0)
    xs = [u[1] for u in us]
    ys = [u[2] for u in us]

    # plot the data points up until the points go out of bounds (-10, 10, -10, 10)
    valid_indices = findall(x -> -10 <= x <= 10, xs) ∩ findall(y -> -10 <= y <= 10, ys)
    lines!(ax6, xs[valid_indices], ys[valid_indices], label="IC: ($(u0[1]), $(u0[2]))", color=[:green, :orange, :orange][findfirst(==(u0), initial_conditions)])
end
axislegend(ax6)
display(fig6)



### ------------------------------------------
using GLMakie
# Plot cylindrical surface with radius r and height h
fig7 = Figure()
ax7 = Axis3(fig7[1, 1], xlabel="x", ylabel="y", zlabel="z", title="Cylindrical Surface")

# Cylindrical coordinate conversion functions
cartesian2cyl(x, y, z) = (sqrt(x^2 + y^2), atan(y, x), z)
cyl2cartesian(r, phi, z) = (r * cos(phi), r * sin(phi), z)

function maprange(t, x1, x2, y1, y2)
    return y1 + (t - x1) * (y2 - y1) / (x2 - x1)
end

# Create cylinder with radius 2 and height from 0 to 5
r = 2.0
theta = range(0, 2π, length=100)
z = range(0, 5, length=100)

# Parametric equations for cylinder: x = r*cos(θ), y = r*sin(θ), z = z
X = [r * cos(t) for z_val in z, t in theta]
Y = [r * sin(t) for z_val in z, t in theta]
Z = [z_val for z_val in z, t in theta]

surface!(ax7, X, Y, Z, colormap=:blues, alpha=0.8)

# Define two points in cylindrical coordinates (R, phi, z)
R = 2.0
z1 = 1.0
phi1 = π/4
z2 = 4.0
phi2 = 7π/4

# Adjust phi2 to minimize angular difference (shortest path on cylinder)
# Find the phi2 equivalent that minimizes |phi2 - phi1|
phi2_adjusted = phi2
for offset in [-2π, 0, 2π]
    if abs(phi2 + offset - phi1) < abs(phi2_adjusted - phi1)
        phi2_adjusted = phi2 + offset
    end
end

# Convert to Cartesian for plotting (use original phi values for correct positions)
x1, y1, z1_cart = cyl2cartesian(R, phi1, z1)
x2, y2, z2_cart = cyl2cartesian(R, phi2, z2)

# Plot the two points
scatter!(ax7, [x1], [y1], [z1_cart], color=:red, markersize=20, label="Point 1")
scatter!(ax7, [x2], [y2], [z2_cart], color=:green, markersize=20, label="Point 2")

# Create curve parameterized by z with phi interpolated as function of z
# Use adjusted phi2 for interpolation to get shortest path
n_points = 100
z_curve = range(z1, z2, length=n_points)
phi_curve = [maprange(z, z1, z2, phi1, phi2_adjusted) for z in z_curve]

# Convert to Cartesian
x_curve = [R * cos(phi) for phi in phi_curve]
y_curve = [R * sin(phi) for phi in phi_curve]

# Plot the curve
lines!(ax7, x_curve, y_curve, collect(z_curve), color=:black, linewidth=3, label="Curve")

axislegend(ax7)
display(fig7)


# Plot z - Rphi phase curve 
fig8 = Figure()
ax8 = Axis(fig8[1, 1], xlabel="R*phi", ylabel="z", title="Phase Curve z vs R*phi")
Rphi_curve = [R * phi for phi in phi_curve]
lines!(ax8, Rphi_curve, z_curve, color=:blue, linewidth=3, label="Phase Curve")
axislegend(ax8)
display(fig8)

using LinearAlgebra
using GLMakie

E = 1
B = 0.1
omega = 1.0

R = E/(B*omega)

x(t) = 0
y(t) = R * omega * t - R * sin(omega * t)
z(t) = R - R * cos(omega * t)

# Plot curve as a function of t 

t_vals = range(0, 20, length=1000)
x_vals = [x(t) for t in t_vals]
y_vals = [y(t) for t in t_vals]
z_vals = [z(t) for t in t_vals]


# Add a circle at 2nd z=0 in zy plane with radius R, centred at some centre 2
centre2 = (x(2π/omega), y(2π/omega), z(2π/omega))./2
circle_points = [(centre2[1], centre2[2] + 2R * cos(theta), centre2[3] + 2R * sin(theta)) for theta in range(0, 2π, length=100)]

fig9 = Figure()
ax9 = Axis3(fig9[1, 1], xlabel="x", ylabel="y", zlabel="z", title="3D Parametric Curve", aspect = (1,1,1), )
lines!(ax9, x_vals, y_vals, z_vals, color=:purple, linewidth=2, label="Parametric Curve")
lines!(ax9, [p[1] for p in circle_points], [p[2] for p in circle_points], [p[3] for p in circle_points], color=:red, linewidth=2, label="Circle at 2nd z=0")
axislegend(ax9)
display(fig9)



#---------------------------------------------
#---------------------------------------------

# Replace the bottom Lorentz-simulation section with a self-contained function
using GLMakie
using LinearAlgebra
function run_lorentz_cases(; dt=0.001, T=20.0)

    # Local physical constants (kept local to avoid collisions)
    E = 1.0
    B = 1.0
    q = 1.0
    m = 1.0

    # Local vectors - use Vec3{Float64} consistently
    E_vec = Vec3{Float64}(0, 0, E)
    B_vec = Vec3{Float64}(B, 0, 0)

    # Lorentz acceleration
    accel(v) = (q / m) * (E_vec + cross(v, B_vec))

    # Euler integrator (returns vector of Point3f)
    function solve_euler_local(v0; dt=dt, T=T)
        steps = Int(floor(T / dt))
        x = Vec3{Float64}(0.0, 0.0, 0.0)
        v = Vec3{Float64}(v0[1], v0[2], v0[3])
        pts = Vector{Point3f}(undef, steps)

        for i in 1:steps
            v += accel(v) * dt
            x += v * dt
            pts[i] = Point3f(x)
        end

        return pts
    end

    # Analytic trajectory for E ⟂ B (integrate vy, vz analytically, integrate positions with trapezoid)
    ω = q * B / m
    vd = E / B

    function analytic_traj_local(v0; dt=dt, T=T)
        steps = Int(floor(T / dt))
        pts = Vector{Point3f}(undef, steps)

        vy0 = Float64(v0[2])
        vz0 = Float64(v0[3])

        # initial values at t = 0
        vy_prev = vy0
        vz_prev = vz0

        y = 0.0
        z = 0.0

        for n in 1:steps
            t = n * dt
            vy = (vy0 - vd) * cos(ω * t) + vz0 * sin(ω * t) + vd
            vz = vz0 * cos(ω * t) - (vy0 - vd) * sin(ω * t)

            # trapezoidal integration for positions
            y += 0.5 * (vy_prev + vy) * dt
            z += 0.5 * (vz_prev + vz) * dt

            vy_prev = vy
            vz_prev = vz

            pts[n] = Point3f(0f0, Float32(y), Float32(z))
        end

        return pts
    end

    # Plot helper
    function plot_case_local(v0, title_str::String)
        analytic = analytic_traj_local(v0; dt=dt, T=T)
        numeric = solve_euler_local(v0; dt=dt, T=T)

        fig = Figure(resolution=(800,600))
        ax = Axis3(fig[1,1], title=title_str, xlabel="x", ylabel="y", zlabel="z")

        lines!(ax, analytic, color=:blue, linewidth=3, label="analytic")
        lines!(ax, numeric, color=:red, linestyle=:dash, label="Euler numerical")

        axislegend(ax)
        display(fig)
        return fig
    end

    # CASES - use Vec3{Float64}
    v0a = Vec3{Float64}(0.0, E/B, 0.0)
    v0b = Vec3{Float64}(0.0, 2E/B, 0.0)
    v0c = Vec3{Float64}(0.0, E/B, E/B)

    fig_a = plot_case_local(v0a, "Case (a): v₀ = (E/B)ĵ")
    fig_b = plot_case_local(v0b, "Case (b): v₀ = 2(E/B)ĵ")
    fig_c = plot_case_local(v0c, "Case (c): v₀ = (E/B)(ĵ + k̂)")

    return fig_a, fig_b, fig_c
end

# Run the local Lorentz simulation and display results
fig_a, fig_b, fig_c = run_lorentz_cases()
fig_a
fig_b
fig_c


#---------------------------------------------
#---------------------------------------------

# Create n normalized vectors in space for a well crossed set of phi and z,
# Plot the Min, Max and Mean of the pairwize vectors over all possible sets of n vectors

using GLMakie
using LinearAlgebra

mean(angles) = sum(angles) / length(angles)

function generate_vectors(n::Int)
    vectors = Vector{Vec3{Float64}}()
    phi_vals = range(0, 2π, length=n+1)[1:end-1]  # avoid duplicate at 2π
    z_vals = range(-1, 1, length=n)

    for phi in phi_vals
        for z in z_vals
            r = sqrt(1 - z^2)
            x = r * cos(phi)
            y = r * sin(phi)
            push!(vectors, normalize(Vec3{Float64}(x, y, z)))
        end
    end

    return vectors
end

function analyze_vectors(vectors::Vector{Vec3{Float64}}, n::Int)
    min_angles = Float64[]
    max_angles = Float64[]
    mean_angles = Float64[]

    # Generate all combinations of n vectors using indices
    function generate_combinations_recursive!(result, current, start, n_choose, n_total)
        if length(current) == n_choose
            push!(result, copy(current))
            return
        end
        for i in start:n_total
            push!(current, i)
            generate_combinations_recursive!(result, current, i + 1, n_choose, n_total)
            pop!(current)
        end
    end

    all_combos = Vector{Vector{Int}}()
    generate_combinations_recursive!(all_combos, Int[], 1, n, length(vectors))

    for combo_indices in all_combos
        angles = Float64[]
        for i in 1:length(combo_indices)-1
            for j in i+1:length(combo_indices)
                v1 = vectors[combo_indices[i]]
                v2 = vectors[combo_indices[j]]
                angle = acos(clamp(dot(v1, v2), -1.0, 1.0))
                push!(angles, angle)
            end
        end
        push!(min_angles, minimum(angles))
        push!(max_angles, maximum(angles))
        push!(mean_angles, mean(angles))
    end
    
    return min_angles, max_angles, mean_angles
end

n = 3  # number of vectors to select
vectors = generate_vectors(25)  # Reduced from 100 to avoid too many combinations
min_angles, max_angles, mean_angles = analyze_vectors(vectors, n)

# Plot histograms for 0 to pi radians
# Make the histogram plots side by side, with the bounds being strictly from 0 to pi radians

fig10 = Figure(resolution=(1200, 400))
ax1 = Axis(fig10[1, 1], xlabel="Angle (radians)", ylabel="Frequency", title="Min Angles")
hist!(ax1, min_angles, bins=50, color=:blue)
ax2 = Axis(fig10[1, 2], xlabel="Angle (radians)", ylabel="Frequency", title="Max Angles")
hist!(ax2, max_angles, bins=50, color=:red)
ax3 = Axis(fig10[1, 3], xlabel="Angle (radians)", ylabel="Frequency", title="Mean Angles")
hist!(ax3, mean_angles, bins=50, color=:green)
xlims!(ax1, 0, π)
xlims!(ax2, 0, π)
xlims!(ax3, 0, π)
display(fig10)

# Plot on a sphere, the generated vectors (plot the points themselves along with lines that are mostly transparent)
fig11 = Figure()
ax11 = Axis3(fig11[1, 1], xlabel="X", ylabel="Y", zlabel="Z", title="Generated Vectors on Sphere", aspect=(1,1,1))
for v in vectors
    lines!(ax11, [0.0, v[1]], [0.0, v[2]], [0.0, v[3]], color=:purple, transparency=true, alpha=0.3)
    scatter!(ax11, [v[1]], [v[2]], [v[3]], color=:orange, markersize=5)
end
display(fig11)


#---------------------------------------------

# Again, I want to plot a direction field and solution curves for a 2D system of ODEs
using LinearAlgebra
using GLMakie
# Define the system of ODEs

# --- changed: system2 no longer takes a matrix, define RHS here (modify to any nonlinear system) ---
function system2(t, Y)
    # Y is a 2-element vector-like (e.g. Array)
    # Example: linear diagonal system; replace body with any nonlinear RHS you want
    # A_local = [
    #     1.0  0.0
    #      0.0 1.0
    # ]
    # return A_local * Y               # returns a 2-element derivative vector

    y1 = Y[1]
    y2 = Y[2]

    dy1dt = -y1 + 0.5y1^2
    dy2dt = -y2 + 0.5y2^2
    return [dy1dt, dy2dt]
end

# vector_field2 uses system2 (no matrix argument)
function vector_field2(t, Y)
    dv = system2(t, Y)
    return (dv[1], dv[2])
end

# --- new: RK4 integrator for multivariable systems ---
function rk4_multivariable(sys, t0, u0, h, t_final)
    t = t0
    u = copy(u0)
    ts = [t]
    us = [copy(u)]

    while t <= t_final
        k1 = sys(t, u)
        k2 = sys(t + h/2, u .+ (h/2) .* k1)
        k3 = sys(t + h/2, u .+ (h/2) .* k2)
        k4 = sys(t + h,     u .+ h .* k3)
        u .= u .+ (h/6) .* (k1 .+ 2 .* k2 .+ 2 .* k3 .+ k4)
        t += h
        push!(ts, t)
        push!(us, copy(u))
    end

    return ts, us
end
# --- end new code ---

# Create a grid of points in the phase space
y_range = -10:0.25:10
v_range = -10:0.25:10
grid = [(y, v) for y in y_range, v in v_range]
Y = [p[1] for p in grid]
V = [p[2] for p in grid]
U = similar(Y)
W = similar(V)
for i in eachindex(Y)
    # --- changed: call vector_field2 without a matrix argument ---
    dydt, dvdt = vector_field2(0.0, [Y[i], V[i]])
    # --- end changed ---
    U[i] = dydt
    W[i] = dvdt
end

fig12 = Figure()
ax12 = Axis(fig12[1, 1], xlabel="y", ylabel="v", title="Phase Space Vector Field for system2 (RK4 trajectories)")
# Downscale vectors for better visualization (avoid division by zero)
max_length = 0.4
lengths = sqrt.(U .^ 2 .+ W .^ 2)
zero_mask = lengths .== 0.0
lengths[zero_mask] .= 1.0
U .= (U ./ lengths) .* max_length
W .= (W ./ lengths) .* max_length
U[zero_mask] .= 0.0
W[zero_mask] .= 0.0

quiver!(ax12, vec(Y), vec(V), vec(U), vec(W), color=:blue)

# set explicit axis limits to match the grid (prevents autoscale surprises)
xlims!(ax12, first(y_range), last(y_range))
ylims!(ax12, first(v_range), last(v_range))

# initial conditions (edit as needed)
initial_conditions2 = [
    [0.75, 0.75],
    [1.0, -1.0],
    [1.5, 2.0],
    [0.0, 1.0],
    [4.0, -4.0]
]

# Plot solution curves using RK4 integrator
for u0 in initial_conditions2
    ts, us = rk4_multivariable(system2, 0.0, u0, 0.01, 20.0)
    ys = [u[1] for u in us]
    vs = [u[2] for u in us]

    # plot the data points up until the points go out of bounds (-10, 10, -10, 10)
    valid_indices = findall(y -> -10 <= y <= 10, ys) ∩ findall(v -> -10 <= v <= 10, vs)
    n_valid = length(valid_indices)

    colors_gradient_base = [[0.0, 1.0, 0.0], [1.0, 0.5, 0.0], [1.0, 0.0, 0.0], [0.5, 0.0, 1.0], [0.0, 0.0, 1.0]]
    idx = findfirst(ic -> all(ic .== u0), initial_conditions2)
    idx = idx === nothing ? 1 : idx
    colors_gradient = [RGBAf(colors_gradient_base[idx]..., maprange(i, 1, max(n_valid,1), 0.2, 1.0)) for i in 1:n_valid]

    lines!(ax12, ys[valid_indices], vs[valid_indices], color=colors_gradient, label="IC: ($(u0[1]), $(u0[2]))", linewidth=5)
end

axislegend(ax12)
display(fig12)
#---------------------------------------------