program ch0810
    ! Rank 1 Array and the Sum Intrinsic Function
    implicit none

    integer, parameter :: n = 12
    real :: total = 0., average = 0.
    real, dimension(1:n) :: rainfall = &
        [ 3.1, 2., 2.4, 2.1, 2.2, 2.2, 1.8, 2.2, 2.7, 2.9, 3.1, 3.1 ]

    total = sum(rainfall)
    average = total/n
    print *, ' Average monthly rainfall was'
    print *, average
end program
