program ch1201
    ! Simple Function Usage
    implicit none

    real :: x

    print *, 'type in an angle (in radians)'
    read *, x
    print *, 'sine of ', x, ' = ', sin(x)
end program
