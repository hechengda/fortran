program ch0918
    ! Alternative Format Specification Using a String
    implicit none

    integer :: t

    print *, ' '
    print *, ' Twelve times table'
    print *, ' '
    do t = 1, 12
        print  '(1x, i3, " * 12 = ", i3)', t, t*12
    end do
end program
