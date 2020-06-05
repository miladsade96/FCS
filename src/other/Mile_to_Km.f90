! Created by EverLookNeverSee@GitHub  on 4/14/20.
! This program gets  mile and yard values from user
! and converts it to kilometer.

program Mile_to_Km
    implicit none
    ! mile to kilometer conversion factor
    real, parameter :: factor = 1.609
    integer :: mile
    integer :: yard
    real :: km
    print *, "Enter mile: "
    read *, mile
    print *, "Enter yard: "
    read *, yard
    km = factor * (mile + yard / 1760.0)   ! 1 mile = 1760 yards
    print *, mile, "mile(s) and ", yard, "yard(s) = ", km, "kilometer(s)."
end program Mile_to_Km