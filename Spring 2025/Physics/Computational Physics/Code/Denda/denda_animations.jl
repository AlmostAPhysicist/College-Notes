using LinearAlgebra
using AbstractPlotting
using GLMakie

function compute_delta_s_linear(S1, S2, dt, total_time)
    # Compute the differences
    delta_r = (S2[1] - S1[1]) / total_time
    delta_p = (S2[2] - S1[2]) / total_time
    delta_y = (S2[3] - S1[3]) / total_time
    
    # Compute the incremental changes
    delta_r_dt = delta_r * dt
    delta_p_dt = delta_p * dt
    delta_y_dt = delta_y * dt
    
    return (delta_r_dt, delta_p_dt, delta_y_dt)
end

function apply_delta_s(S1, delta_s)
    # Apply the incremental changes to the current state
    new_r = S1[1] + delta_s[1]
    new_p = S1[2] + delta_s[2]
    new_y = S1[3] + delta_s[3]
    
    return (new_r, new_p, new_y)
end

function rotation_matrix(r, p, y)
    Rx = [1 0 0; 0 cos(r) -sin(r); 0 sin(r) cos(r)]
    Ry = [cos(p) 0 sin(p); 0 1 0; -sin(p) 0 cos(p)]
    Rz = [cos(y) -sin(y) 0; sin(y) cos(y) 0; 0 0 1]
    return Rz * Ry * Rx
end

# Example usage
S1 = (0.0, 0.0, 0.0)  # Initial state (rotation1, pitch1, yaw1)
S2 = (π/2, π/4, π/6)  # Final state (rotation2, pitch2, yaw2)
dt = 0.1
total_time = 1.0

# Compute the incremental changes
delta_s = compute_delta_s_linear(S1, S2, dt, total_time)

# Initialize the plot
scene = Scene()
arrows_plot = lift(scene) do
    current_state = S1
    for _ in 0:dt:total_time
        current_state = apply_delta_s(current_state, delta_s)
    end
    
    # Extract the current rotation, pitch, and yaw
    r, p, y = current_state
    
    # Compute the rotation matrix
    R = rotation_matrix(r, p, y)
    
    # Define the initial vector (e.g., representing the bird's wing)
    initial_vector = [1, 0, 0]
    
    # Rotate the vector
    rotated_vector = R * initial_vector
    
    # Plot the rotated vector using arrows
    arrows(Point3f0(0, 0, 0), Point3f0(rotated_vector[1], rotated_vector[2], rotated_vector[3]), arrowsize = 0.02, linecolor = :green, arrowcolor = :darkblue)
end

# Save the animation as a GIF
record(scene, "rotation_animation.gif", 0:dt:total_time) do t
    arrows_plot
end