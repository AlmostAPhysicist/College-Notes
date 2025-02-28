#Implementation of dual numbers in julia 
import Base: +, -, *, /, ^, promote_rule

# ----- Define Dual number type -----
struct Dual{T}
    real::T
    dual::T
end

# Define Dual number for variable types (for instance Dual(a::Int64, b::Float64) by typecasting to higher type)

function Dual(a::T, b::S) where {T, S}
    # Determine the common type to which T and S can be promoted
    promoted_type = promote_type(T, S)
    # Create a Dual number with the promoted type
    return Dual(promoted_type(a), promoted_type(b))
end

Dual(a::T) where {T} = Dual(a, 0)

Dual(a::Dual) = a


# ---- Define arithmetic operations for Dual numbers ----
function +(a::Dual, b::Dual)
    return Dual(a.real + b.real, a.dual + b.dual)
end

function -(a::Dual, b::Dual)
    return Dual(a.real - b.real, a.dual - b.dual)
end

function *(a::Dual, b::Dual)
    return Dual(a.real * b.real, a.real * b.dual + a.dual * b.real)
end

function /(a::Dual, b::Dual)
    return Dual(a.real / b.real, (a.dual * b.real - a.real * b.dual) / (b.real^2))
end

function ^(a::Dual, b::Dual)
    return Dual(a.real^b.real, a.real^b.real * (b.dual * log(a.real) + b.real * a.dual / a.real))
end

# Define promote_rule for Dual and real numbers
promote_rule(::Type{Dual{T}}, ::Type{S}) where {T, S<:Real} = Dual{promote_type(T, S)}
promote_rule(::Type{S}, ::Type{Dual{T}}) where {T, S<:Real} = Dual{promote_type(T, S)}

# Define arithmetic operations for Dual and real numbers
function +(a::S, b::T) where {S, T}
    a = S <: Dual ? a : Dual(a)
    b = T <: Dual ? b : Dual(b)
    return Dual(a.real + b.real, a.dual + b.dual)
end

function -(a::S, b::T) where {S, T}
    a = S <: Dual ? a : Dual(a)
    b = T <: Dual ? b : Dual(b)
    return Dual(a.real - b.real, a.dual - b.dual)
end

function *(a::S, b::T) where {S, T}
    a = S <: Dual ? a : Dual(a)
    b = T <: Dual ? b : Dual(b)
    return Dual(a.real * b.real, a.real * b.dual + a.dual * b.real)
end

function /(a::S, b::T) where {S, T}
    a = S <: Dual ? a : Dual(a)
    b = T <: Dual ? b : Dual(b)
    return Dual(a.real / b.real, (a.dual * b.real - a.real * b.dual) / (b.real^2))
end

function ^(a::S, b::T) where {S, T}
    a = S <: Dual ? a : Dual(a)
    b = T <: Dual ? b : Dual(b)
    return Dual(a.real^b.real, a.real^b.real * (b.dual * log(a.real) + b.real * a.dual / a.real))
end

# Defining Slope function using Dual Numbers 

function slopeat(f, x)
    # Create a dual number with the real part as x and the dual part as 1
    d = Dual(x, 1)
    # Evaluate the function at the dual number
    return f(d).dual
end


#--- Test the implementation ---

f(x) = x^2 + 3x + 2
dx=0.0001
x = 2

numericalSlopeat(f, x, dx) = (f(x+dx)-f(x-dx))/(2*dx)

#compilation runs 
@time slopeat(f, x)
@time numericalSlopeat(f, x, dx)

#actual test

@time slopeat(f, x)
@time numericalSlopeat(f, x, dx)
