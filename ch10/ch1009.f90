program ch1009
    ! Timing of Reading Unformatted Files
    implicit none
    integer, parameter :: n = 1000000
    integer, dimension(1:n) :: x
    real, dimension(1:n) :: y
    integer :: i
    real :: t, t1, t2, t3
    character(15) :: comment

    call cpu_time(t)
    t1 = t
    comment = ' Program starts'
    print 100, comment, t1

    open(10,file='ch0914.dat',form='unformatted',&
        status='old')
    read(10) x
    call cpu_time(t)
    t2 = t-t1
    comment = ' Integer read '
    print 100, comment, t2

    read(10) y
    call cpu_time(t)
    t3 = t-t1-t2
    comment = ' Real read '
    print 100, comment, t3
    close(10)

    do i = 1, 10
        print 110, x(i), y(i)
    end do
100 format(1x,a,2x,f7.3)
110 format(1x,i4,2x,f10.7)
end program
