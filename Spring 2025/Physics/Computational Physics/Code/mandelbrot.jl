function Mand(z0, max_steps)
    z = 0im
    for n in 1:max_steps
        if abs(z) > 2
            return n
        end
        z = z^2 + z0
    end
    return max_steps
end
"""
    Mandelbrot(plotxy, Nxy, max_steps)

Compute and plot the Mandelbrot set.

# Arguments:
- `plotxy::Function`: array of 4 elements [xmin, xmax, ymin, ymax]
- `Nxy::Int`: number of points in x and y directions
- `max_steps::Int`: maximum number of iterations
"""
function Mandelbrot(plotxy, Nxy, max_steps)
    nothing
end