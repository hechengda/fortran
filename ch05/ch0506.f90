program ch0506
    ! Overflow
    implicit none

    real :: z = 0.
    real :: b = 1.e30
    real :: c = 1.e30
    real :: d = 1.e30

    z = b*c/d
    print *, z
    z = b*(c/d)
    print *, z
end program
