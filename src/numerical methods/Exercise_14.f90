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
end module m_cardano

program main
    implicit none
end program main