! Created by EverLookNeverSee@GitHub on 6/5/20
! For more information see FCS/img/Exercise_08_c.png

! Solution:
!   Since x = z * (2 ** m) Hence z = x / (2 ** m)
!   We can choose any `m` as long as -1 <= z <= 1
!   Our x = 3 , for which m = 2 and z = 0.75 works.
!   Smaller `m` will give a larger `z` which will give
!   smaller `xi` which will lead to fewer terms necessary
!   for a certain precision.

! I could not have done it without @taless474, @diehlpk and @LKedward

program main
    implicit none
    ! xi_sum --> sum of xi elements
    ! previous --> sum of xi elements in previous step
    ! Ea --> approximation error
    ! declaring and initializing variables
    integer :: i = 1
    real :: x = 3.0, m = 2.0, z = 0.75, ln2 = 0.6931472, ln3, xi, xi_sum = 0.0, previous, Ea
    xi = (1 - z) / (1 + z)
    do  ! only xi part of formula is infinite and we need to truncate it
        ! Adding up first element of `xi` series -> `xi` itself
        if (i == 1) then
            xi_sum = xi
            i = i + 1
        else    ! Calculating and adding up rest of the elements of series
            previous = xi_sum
            xi_sum = xi_sum + (xi **(2 * i - 1) / (2 * i - 1))
            Ea = xi_sum - previous
            ! Exit whenever approximation error is less than 10e-10
            if (Ea < 10e-10) then
                exit
            else    ! Keep going to calculate and add up next element of seirs
                i = i + 1
                cycle
            end if
        end if
    end do
end program main