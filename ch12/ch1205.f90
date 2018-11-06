program ch1205
    ! Intrinsic dot_product Use
    implicit none

    real, dimension(1:5) :: x = [ 1., 2., 3., 4., 5. ]

    print *, 'dot product of x with x is '
    print *, dot_product(x, x)
end program
