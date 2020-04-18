! Created by EverLookNeverSee@GitHub on 4/18/20.
! This program gets a integer value(mark) and
! converts it to grades using case.

program mark_to_grade
    implicit none
    integer :: mark     ! declaring a variable for user input
    print *, "Enter a positive integer value(0 - 100):"
    read *, mark
    select case(mark)
        case(0:60)
            print *, "Repeat", mark
        case(61:70)
            print *, "Fair", mark
        case(71:80)
            print *, "Good", mark
        case(81:90)
            print *, "Very good", mark
        case(91:100)
            print *, "Excellent", mark
        case default
            print *, "Invalid input value:", mark
    end select
end program mark_to_grade