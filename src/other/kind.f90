! Created By EverLookNeverSee@GitHub on 10/04/20
! If the range -999999 to 999999 is desired, k6 may be
! established as a constant with an appropriate value
! by the statement.

program main
    implicit none
    ! defining desired kind and testing it
    integer, parameter :: k6 = selected_int_kind(6)
    integer :: x = 1_k6
    print *, "x = ", x
end program main