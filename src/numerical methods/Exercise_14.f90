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
        end function solve
end module m_cardano

program main
    implicit none
end program main