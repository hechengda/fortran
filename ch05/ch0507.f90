program ch0507
    ! Underflow
    implicit none

    real :: z = 0.
    real :: b = 1.e-30
    real :: c = 1.e-30
    real :: d = 1.e-30

    z = b*c/d
    print *, z
    z = b*(c/d)
    print *, z
end program
