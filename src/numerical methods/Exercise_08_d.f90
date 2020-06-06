! Created by EverLookNeverSee@GitHub on 6/6/20
! For more information see FCS/img/Exercise_08_d.png

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
    ! x --> given value that we're gonna calculate its arcsin
    ! total --> sum of the elements in series
    ! previous --> sum of elements in previous step
    ! fact --> declaration of fact function
    ! Ea --> approximation error
    ! declaring and initializing variables
    integer :: k = 0
    real :: x = 0.5, total = 0.0, Ea, previous, fact
end program main