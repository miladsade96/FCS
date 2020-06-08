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
    ! sum of all squared elements in matrix
    do i = 1, m
        do j = 1, n
            tmp = (abs(A(i, j))) ** 2
            sum_of_elements = sum_of_elements + tmp
        end do
    end do
    ! square root of sum
    norm = sqrt(sum_of_elements)
    ! printing results
    print *, "Norm =", norm
end program main