! Created by EverLookNeverSee@GitHub on 6/7/20
! For more information see FCS/img/Exercise_09_a.png

program main
    implicit none
    ! declaring and initializing variables
    integer :: i, n
    real :: norm, tmp, sum_of_elements = 0.0
    real, allocatable, dimension(:) :: A
    print *, "please enter number of elements in the vector:"
    read *, n
    allocate(A(n))
    read *, A
    ! sum of all squared elements in the vector
    do i = 1, n
        tmp = (abs(A(i))) ** 2
        sum_of_elements = sum_of_elements + tmp
    end do
    ! square root of sum
    norm = sqrt(sum_of_elements)
    ! printing results
    print *, "norm=", norm
end program main