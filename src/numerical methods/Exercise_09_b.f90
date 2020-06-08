! Created by EverLookNeverSee@GitHub on 6/8/20
! For more information see FCS/img/Exercise_09_b.png

program main
    implicit none
    ! declaring and initializing variables
    integer :: i, j, m, n
    real :: norm, tmp, sum_of_elements = 0.0
    real, allocatable, dimension(:,:) :: A
    ! getting shape of matrix from user input
    print *, "Enter the shape of matrix(rows, columns):"
    read *, m, n
    ! allocating mem space to matrix
    allocate(A(m, n))
    ! getting matrix elements from user input
    do i = 1, m
        do j = 1, n
            print *, "A(", i, j, "):"
            read *, A(i, j)
        end do
    end do
end program main