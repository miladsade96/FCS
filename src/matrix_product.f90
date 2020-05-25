! Created by EverLookNeverSee@GitHub on 5/25/20.
! This program computes the product of two given matrices.

program matrix_product
    implicit none
    ! declaring variables
    integer :: m, n, o, p, i, j, k
    ! declaring matrices
    real, allocatable, dimension(:,:) :: A, B, C

    print *, "Matrix A:"
    do
        print *, "Enter number of rows and columns for matrix A:"
        read *, m, n
        if (m <= 0 .or. n <= 0) then
            print *, "number of rows and columns should be positive integers"
            print *, "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            cycle
        end if
        exit
    end do

    print *, "Matrix B:"
    do
        print *, "Enter number of rows and columns for matrix B:"
        read *, o, p
        if (o <= 0 .or. p <= 0) then
            print *, "number of rows and columns should be positive integers"
            print *, "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            cycle
        end if
        if (n /= o) then
            print *, "Number columns in matrix A should be equal to number of rows in matrix B."
            cycle
        end if
        exit
    end do

    ! Allocating memory space for matrices
    allocate(A(m, n))
    allocate(B(o, p))
    allocate(C(m, p))

    ! Getting elements of matrix A from user
    print *, "Getting elements of matrix A:"
    do i = 1, m
        do j = 1, n
            print *, "A(", i, j, "):"
            read*, A(i, j)
        end do
    end do
    ! Getting elements of matrix B from user
    print *, "Getting elements of matrix B:"
    do i = 1, o
        do j = 1, p
            print *, "B(", i, j, "):"
            read*, B(i, j)
        end do
    end do
end program matrix_product