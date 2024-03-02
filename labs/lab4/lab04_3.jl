# x'' + 8x' + 16x = 0.5cos(3t)
using DifferentialEquations

function lorenz!(du, u, p, t)
    a, b = p
    du[1] = u[2]
    du[2] = -a*du[1] - b*u[1] + 0.5*cos(3*t)
end

const x = 1.8
const y = 0.8
u0 = [x, y]

p = (sqrt(8), 16)
tspan = (0.0, 68.0)
prob = ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob, dtmax = 0.05)

using Plots; gr()

#решение системы уравнений
plot(sol)
savefig("lab4_julia_3.png")

#фазовый портрет
plot(sol, vars=(2,1))
savefig("lab4_julia_3_ph.png")