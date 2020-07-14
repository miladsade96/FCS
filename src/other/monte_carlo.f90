program mc
    implicit none
    ! declaring and initializing variables
    integer :: n = 1000 ! initial number of samples
    ! calling pi function until raaching upper bound
    do while(n <= 1000000000)
        print "(a19,i10,7x,a14,f9.7)", "Number of samples: ", n, "Estimated PI: ", pi(n)
        n = n * 10
    end do
end program mc
