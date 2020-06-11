! Created by EverLookNeverSee@GitHub on 6/11/20
! For more information see FCS/img/Exercise_12.png

program main
    implicit none
    ! declaring and initializing variables
    integer :: i
    real :: tmp
    real, dimension(50) :: y
    y = [(i, i = 1, 50)]
end program main