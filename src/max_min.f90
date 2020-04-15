! Created by EverLookNeverSee@GitHub on 4/14/20.
! This program gets two integer number from user and
! determines which one is maximum and which one is minimum.

program max_min
    implicit none
    ! declaring two integer variables
    integer :: number_1, number_2
    print *, "Enter two integer number: "
    ! getting user input
    read *, number_1, number_2
    if (number_1 > number_2) then
        print *, "maximum:", number_1, "minimum:", number_2
    elseif (number_2 > number_1) then
        print *, "maximum:", number_2, "minimum:", number_1
    else
        print *, number_1, "and", number_2, "is equal."
    end if
end program max_min