program ch1203
    ! Elemental Function Use
    implicit none

    real, dimension(1:5) :: x = [ 1., 2., 3., 4., 5. ]

    print *, 'sine of ', x, ' = ', sin(x)
end program
