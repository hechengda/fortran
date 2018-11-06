program ch0707v2
    ! Longitude from -180 to +180
    implicit none

    integer, dimension(-180:180) :: time = 0
    integer :: degree
    integer :: value

    do degree = -180, 179
        value = degree/15
        time(degree) = value
    end do
    do degree = -180, 180
        print *, degree, ' ', time(degree)
    end do
end program
