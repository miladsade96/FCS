! Created by EverLookNeverSee@GitHub at 06/04/20
! Testing OpenMP parallel programming library.

program main
    use omp_lib
    implicit none
    ! setting number of threads
    call omp_set_num_threads(4)
end program main