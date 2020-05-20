! Created by EverLookNeverSee@GitHub on 5/20/20.
! This subroutine calculates the roots of a quadratic
! equation with ability to generate complex roots.


subroutine quadratic_equation_solver(a, b, c)
    ! declaring variables
    real :: a, b, c, two_a, x_1, x_2, sgn_b, disc
    complex :: z_1, z_2
    ! calculating the discriminant
    disc = b ** 2 - 4.0 * a * c
    two_a = 2.0 * a
    if (b > 0.0) sgn_b = 1.0
    if (b == 0.0) sgn_b = 0.0
    if (b < 0.0) sgn_b = -1.0
    if (disc >= 0.0) then
        x_1 = (-b - sgn_b * sqrt(disc)) / two_a
        x_2 = c / a * x_1
        print *,"Real Solution, Roots Are:", x_1, x_2
    else
        z_1 = (-b + csqrt(cmplx(disc, 0.0))) / two_a
        z_2 = c / a * z_1
        print *,"complex Solution, Roots Are:", z_1, z_2
    end if
end subroutine quadratic_equation_solver