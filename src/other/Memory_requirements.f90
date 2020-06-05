! Created by EverLookNeverSee@GitHub on 4/14/20.
! This program shows size of the data types in memory
! using the library function `storage_size()`.

program Memory_requirements
    ! defining integer, real, double precision
    ! complex, character and double complex variables
    integer :: a
    real :: b
    doubleprecision :: c
    complex :: d
    character :: e
    doublecomplex :: f
    ! print out size of intrinsic data types
    print *, "size of integer: ", storage_size(a)
    print *, "size of real: ", storage_size(b)
    print *, "size of double precision: ", storage_size(c)
    print *, "size of complex: ", storage_size(d)
    print *, "size of character: ", storage_size(e)
    print *, "size of double complex: ", storage_size(f)
end program Memory_requirements