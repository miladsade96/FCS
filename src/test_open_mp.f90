! Created by EverLookNeverSee@GitHub at 06/04/20
! Testing OpenMP parallel programming library.

program main
    use omp_lib
    implicit none
    ! setting number of threads
    call omp_set_num_threads(4)
    print *, "Entering to parallel region"
    !$omp parallel
    print *, "Inside paralell region, Thread no:", omp_get_thread_num()
    !$omp end parallel
end program main