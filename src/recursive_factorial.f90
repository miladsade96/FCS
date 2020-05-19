! Created by EverLookNeverSee@GitHub on 5/19/20.
! This subroutine computes factorial of n using recursion.

recursive subroutine recursive_factorial(n, fact)
    ! declaring variables
    integer :: n        ! input value
    integer :: fact     ! output value
    ! exit point
    if (n == 1) then
        fact = 1
    else
        call recursive_factorial((n - 1), fact)
        fact = n * fact
    end if
end subroutine recursive_factorial