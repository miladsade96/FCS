! Created by EverLookNeverSee@GitHub on 6/11/20
! For more information see FCS/img/Exercise_12.png

program main
    implicit none
    ! declaring and initializing variables
    integer :: i
    real :: tmp
    real, dimension(50) :: y
    y = [(i, i = 1, 50)]
    ! calculating and replacing smoothing of thr data
    do i = 2, 49
        tmp = (y(i - 1) + y(i) + y(i + 1)) / 3.0
        y(i) = tmp
    end do
    ! printing results
    print *, y
end program main