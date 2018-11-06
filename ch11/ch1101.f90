program ch1101
    ! Simple Use of the read, write, open, close,
    ! unit Features
    implicit none
    integer :: file_stat
    real :: x
    character(20) :: which

    do
        write(6,'("data file name, or end")')
        read(5,'(a)') which
        if (which=='end') exit
        open(1, file=which, iostat=file_stat)
        if (file_stat>0) then
            print *, ' error opening file, please check'
            stop
        end if
        read(1,100) x
        write(6,110) which, x
        close(1)
    end do

100 format(f6.0)
110 format(' from file',a,' x = ',f8.2)
end program
