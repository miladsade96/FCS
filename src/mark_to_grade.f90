! Created by EverLookNeverSee@GitHub on 4/18/20.
! This program gets a integer value(mark) and
! converts it to grades using case.

program mark_to_grade
    implicit none
    integer :: mark     ! declaring a variable for user input
    print *, "Enter a positive integer value(0 - 100):"
    read *, mark
end program mark_to_grade