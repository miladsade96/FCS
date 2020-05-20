! Created by EverLookNeverSee@GitHub on 5/20/20.
! This program calculates the roots of a quadratic
! equation with ability to generate complex roots.


program quadratic_equation_solver
    ! declaring variables
    real :: a, b, c, two_a, x_1, x_2, sgn_b, disc
    complex :: z_1, z_2
    ! calculating the discriminant
    disc = b ** 2 - 4.0 * a * c
    two_a = 2.0 * a
    if (b > 0.0) sgn_b = 1.0
    if (b == 0.0) sgn_b = 0.0
    if (b < 0.0) sgn_b = -1.0
end program quadratic_equation_solver