! Created by EverLookNeverSee@GitHub on 6/11/20
! For more information see FCS/img/Exercise_13.png

program main
    implicit none
    ! declaring variables
    integer :: n, i, j
    real :: tmp_1, tmp_2, tmp_3, tmp_4, tmp_5, corr, numerator, denominator
    real, allocatable, dimension(:) :: x, y
    ! initializing temporary variables
    tmp_1 = 0.0; tmp_2 = 0.0; tmp_3 = 0.0; tmp_4 = 0.0; tmp_5 = 0.0
    ! specifying number of elements in sets
    do
        print *, "Enter the number of elements in sets:"
        read *, n
        if (n <= 0) then
            print *, "You should enter a positive integer number!"
            cycle
        else
            exit
        end if
    end do
end program main