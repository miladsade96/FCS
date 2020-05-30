! Created by EverLookNeverSee@GitHub on 5/30/20
! For more information see FCS/img/Exercise_06.png

program main
    ! using integer 64-bit to avoid overflow
    use iso_fortran_env, only: int64
    ! declaring variables
    integer(int64) :: i, n, s_1 =0, s_2 =0, s_3 = 0, factorial = 1
    ! getting user input
    do
        print *,"Enter a positive integer value:"
        read *, n
        if (n <= 0) then
            print *,"You should enter a positive integer!"
            cycle
        end if
        exit
    end do
end program main