program ch1204
    ! Simple Transformational Use
    implicit none

    real, dimension(1:5) :: x = [ 1., 2., 3., 4., 5. ]

    print *, 'sine of ', x, ' = ', sin(x)
    print *, 'sum of ', x, ' = ', sum(x)
end program
