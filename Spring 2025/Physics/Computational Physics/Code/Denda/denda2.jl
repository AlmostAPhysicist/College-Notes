using Rotations, LinearAlgebra, Quaternions

function euler_to_quaternion(rotation, pitch, yaw)
    return Quaternion(RotXYZ(rotation, pitch, yaw))
end

function quaternion_to_euler(q)
    r = RotXYZ(q)
    return (r.θ1, r.θ2, r.θ3)
end

function interpolate_rotation(S1, S2, dt, total_time, interpolation_curve)
    # Convert Euler angles to quaternions
    q1 = euler_to_quaternion(S1...)
    q2 = euler_to_quaternion(S2...)
    
    # Number of steps
    steps = Int(total_time / dt)
    
    # Interpolated rotations
    rotations = []
    
    for i in 0:steps
        t = i * dt / total_time
        t_curve = interpolation_curve(t)
        q_interp = slerp(q1, q2, t_curve)
        euler_interp = quaternion_to_euler(q_interp)
        push!(rotations, euler_interp)
    end
    
    return rotations
end

# Example interpolation curve functions
function linear_interpolation(t)
    return t
end

function sine_in_interpolation(t)
    return sin(t * π / 2)
end

# Example usage
S1 = (0.0, 0.0, 0.0)  # Initial state (rotation1, pitch1, yaw1)
S2 = (π/2, π/4, π/6)  # Final state (rotation2, pitch2, yaw2)
dt = 0.1
total_time = 1.0

rotations = interpolate_rotation(S1, S2, dt, total_time, sine_in_interpolation)
println(rotations)  # Array of interpolated Euler angles over time