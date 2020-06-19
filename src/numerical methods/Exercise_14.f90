! Created by EverLookNeverSee@GitHub on 6/12/20
! For more information see FCS/img/Exercise_14_Alternative.png
! I could not have done it without `Stavros Meskos`

module m_cardano
    implicit none
    private     ! makes this module private
    ! makes these entities accessible from outside of the module
    public t_cubic_solution, solve

    ! defining a derived type
    type t_cubic_solution
        real :: x_1     ! real root of equation
        complex :: z_2  ! first complex root
        complex :: z_3  ! second complex root
    end type t_cubic_solution

    contains
        pure type(t_cubic_solution) function solve(a, b, c, d) result(res)
            ! declaring dummy parameters and local variables
            real, intent(in) :: a, b, c, d
            real :: Q, R, S, T, r_part, i_part, temp

            ! calculating values of Q and R
            Q = (3.0*a*c - b**2) / (9.0 * a**2)
            R = (9.0*a*b*c - 27.0*d* a**2 - 2.0 * b**3) / (54.0 * a**3)

            ! using temp adjunct variable and abs intrinsic function in order to
            ! prevent `negative real to a real power` error
            temp = R + sqrt(Q**3 + R**2)
            S = sign(1.0, temp) * abs(temp)**(1.0 / 3.0)
            temp = R - sqrt(Q**3 + R**2)
            T = sign(1.0, temp) * abs(temp)**(1.0 / 3.0)

            ! calculating real and imaginary parts of complex roots
            r_part = -(s + t) / 2.0 - b / (3.0 * a)
            i_part = (sqrt(3.0) / 2.0) * (s - t)
        end function solve
end module m_cardano

program main
    implicit none
end program main