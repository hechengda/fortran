program ch0813
    ! Array Element Ordering
    implicit none

    integer :: j1 = 1
    integer :: k1 = 2
    integer :: j2 = 1
    integer :: k2 = 5
    integer :: s1, s2, d1, position

    d1 = k1-j1+1
    print *, ' Row  Column    Position'
    do s1 = j1, k1
        do s2 = j2, k2
            position = 1+(s1-j1)+(s2-j2)*d1
            print 100, s1, s2, position
        end do
    end do

100 format (3x, i2, 6x, i2, 10x, i2)
end program
