using LinearAlgebra
using Quaternions

function euler_to_quaternion(roll, pitch, yaw)
    """Convert Euler angles to quaternion"""
    qx = Quaternion(cos(roll/2), sin(roll/2), 0, 0)
    qy = Quaternion(cos(pitch/2), 0, sin(pitch/2), 0)
    qz = Quaternion(cos(yaw/2), 0, 0, sin(yaw/2))
    return qz * qy * qx  # Order matters
end

function quaternion_to_euler(q::Quaternion)
    """Convert quaternion to Euler angles (roll, pitch, yaw)"""
    q = normalize(q)
    roll = atan(2(q.s * q.v1 + q.v2 * q.v3), 1 - 2(q.v1^2 + q.v2^2))
pitch = asin(2(q.s * q.v2 - q.v3 * q.v1))
yaw = atan(2(q.s * q.v3 + q.v1 * q.v2), 1 - 2(q.v2^2 + q.v3^2))

    return (roll, pitch, yaw)
end

function interpolate_rotation(S1, S2, dt, total_time)
    """
    Interpolates from S1 to S2 using quaternion SLERP.

    S1, S2: (roll, pitch, yaw) in radians
    dt: Time step
    total_time: Total time to transition from S1 to S2
    """
    q1 = euler_to_quaternion(S1...)
    q2 = euler_to_quaternion(S2...)
    
    num_steps = Int(floor(total_time / dt))
    rotations = []

    for t in 0:num_steps
        alpha = min(t * dt / total_time, 1)  # Ensure alpha is between 0 and 1
        q_interp = q1 * exp(alpha * log(q2 * inv(q1)))  # SLERP interpolation
        push!(rotations, quaternion_to_euler(q_interp))
    end

    return rotations
end

# Example usage
S1 = (0.1, 0.2, 0.3)  # Initial rotation (roll, pitch, yaw)
S2 = (1.0, -0.5, 0.2) # Target rotation (roll, pitch, yaw)
dt = 0.1              # Time step
total_time = 2.0      # Total transition time

rotations = interpolate_rotation(S1, S2, dt, total_time)
println(rotations)  # Array of interpolated Euler angles over time



# q = Quaternion(1, 2, 3, 4)
# q.s
# q.v1
# q.v2
# q.v3
