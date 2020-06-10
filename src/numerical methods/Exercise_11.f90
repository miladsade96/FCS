! Created by EverLookNeverSee@GitHub on 6/10/20
! For more information see FCS/img/Exercise_11.png

program main
    implicit none
    ! declaring variables
    integer :: i, j, k , root
    logical(1), dimension(1000) :: a
    ! initializing variables
    ! setting .true. for all elements of array
    a = .true.
    ! assigning false to first element of array(1 is not prime)
    a(1) = .false.
    ! calculating square root of size of array
    ! because we don't need to check all elements of array
    ! if i^2 > size of array, there is no non-prime number in array.
    root = int(sqrt(real(size(a))))
    ! checking elements of array
    do i = 2, root
        if (a(i)) then  ! if a(i) is true
            ! set all multiples of i as false
            do j = i * i, size(a), i
                a(j) = .false.
            end do
        end if
    end do
end program main