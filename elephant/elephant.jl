using Pkg;
Pkg.activate(".")
using Plots

# elephant parameters
p1, p2, p3, p4 = (50 - 30im, 18 +  8im, 12 - 10im, -14 - 60im)
p5 = 40 + 20im # eyepiece

function fourier(t,C)
    f = zeros(size(t))
    A, B = real(C), imag(C)
    for k in 1:length(C)
        f .+= A[k].*cos.(k .*t) + B[k].*sin.(k .*t)
    end
    return f
end

function elephant(t, p1, p2, p3, p4, p5)
    npar = 6
    Cx = zeros(Complex, npar)
    Cy = zeros(Complex, npar)

    Cx[1] = real(p1)*1im
    Cx[2] = real(p2)*1im
    Cx[3] = real(p3)
    Cx[5] = real(p4)

    Cy[1] = imag(p4) + imag(p1)*1im
    Cy[2] = imag(p2)*1im
    Cy[3] = imag(p3)*1im

    x = push!(fourier(t,Cx), -imag(p5))
    y = push!(fourier(t,Cy), imag(p5))

    return x,y
end

x, y = elephant(collect(range(0, 2pi, length=1000)), p1, p2, p3, p4, p5)
plot(y, -x, seriestype = :scatter, legend=false)