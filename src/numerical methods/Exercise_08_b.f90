! Created by EverLookNeverSee@GitHub on 6/3/20
! For more information see FCS/img/Exercise_08_b.png

function fact(n) result(factorial)
    integer, intent(in) :: n
    integer :: i
    real :: factorial, temp
    if (n < 0) then
        factorial = -1.0    ! error
        else if(n == 0) then
        factorial = 1.0     ! factorial of zero
        else
        temp = 1.0
        do i = 2, n
            temp = temp * i
        end do
        factorial = temp
    end if
end function fact

program main
    implicit none
    ! x --> the exponent of `e`
    ! Ea --> approximation error
    ! fact --> declaration of fact function
    ! sum --> current sum of elements in series
    ! previous --> sum of elements in previous step
    ! declaring and initializing variables
    integer :: i = 1
    real :: sum = 1.0 , x = 1.2, previous, Ea, fact
    do
        ! Adding up second element of series -> `x` itself
        if (i == 1) then
            sum = sum + x
            i = i + 1
        ! Calculating and adding up rest of elements of series
        else
            previous = sum
            sum = sum + (x ** i / fact(i))
            Ea = sum - previous
            ! Exit whenever approximation error is less than 10e-10
            if (Ea < 10e-10) then
                exit
            ! keep going to calculate and add up next element of series
            else
                i = i + 1
                cycle
            end if
        end if
    end do
    ! printing results
    print *, "Sum:", sum
    print *, "EXP(", x, "):", EXP(x)    ! This is fortran intrinsic exp function
end program main