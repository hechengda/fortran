program ch1404
    ! The index Character Function
    implicit none

    character(80) :: line
    integer :: i

    do
        read '(a)', line
        i = index(line, 'Geology')
        if (i/=0) then
            print *, 'Geology found at position ', i
            print *, ' in line ', line
            exit
        end if
    end do
end program
