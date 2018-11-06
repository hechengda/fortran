program ch0919
    ! Alternative Format Specification Using a
    ! Character Variable
    implicit none

    integer :: t
    character(30) :: fmt_100 = '(1x,i3," * 12 = ",i3)'

    print *, ' '
    print *, ' Twelve times table'
    print *, ' '
    do t = 1, 12
        write(*,fmt_100) t, t*12
    end do
end program
