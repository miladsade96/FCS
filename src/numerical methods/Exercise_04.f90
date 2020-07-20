! Created by EverLookNeverSee@GitHub on 5/30/20
! For more information see FCS/img/Exercise_04.png

program main
    implicit none
    ! declaring variables
    integer :: i = 1
    real :: R = 20.0
    real , dimension(37) :: S
    ! checking current value of R to compute corresponding S
    1   if (R <= 120) then
        S(i) = 17000.0 - (0.485 * R ** 2)
        else
        S(i) = 18000.0 / (1.0 + (R ** 2 / 18000.0))
    end if
    ! checking current value of R to making loop
    if (R < 200) then
        ! incrementation of R
        R = R + 5.0
        ! icrementation of array blocks counter
        i = i + 1
        goto 1
    end if
    ! do loop for formated print
    do i = 1, 37, 1
        print "(a2,i2,a3,f11.5)", "S(", i, "): ", S(i)
    end do
end program main
