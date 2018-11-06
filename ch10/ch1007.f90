program ch1007
    ! Reading Using Internal Files
    implicit none

    integer :: ib1, ib2
    integer :: n1, n2
    character(22) :: buffer, buff1, buff2

    print *, ' input micael''s numbers'
    read(*,'(a)') buffer
    ib1 = index(buffer,' ')
    ib2 = len_trim(buffer)
    buff1 = buffer(2:ib1-1)
    buff2 = buffer(ib1+1:ib2)
    read(buff1,'(i10)') n1
    read(buff2,'(i10)') n2
    print *, ' n1 = ', n1
    print *, ' n2 = ', n2
end program
