program ch0709
    ! Means and Standard Deviations
    implicit none

    real :: mean = 0., ssq = 0., x, w, sd, r
    integer :: i, n

    print *, ' enter the number of readings'
    read *, n
    print *, ' enter the ', n, &
        ' values one per line'
    do i = 1, n
        read *, x
        w = x-mean
        r = i-1
        mean = (r*mean+x)/i
        ssq = ssq+w*w*r/i
    end do
    sd = (ssq/r)**0.5
    print *, ' mean is ', mean
    print *, ' standard deviation is ', sd
end program
