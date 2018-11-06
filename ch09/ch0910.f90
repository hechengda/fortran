program ch0910
    ! Character Output and the a Edit Descriptor
    implicit none

    character(20) :: first_name

    print *, ' Type in your first name.'
    print *, ' up to 20 characters'
    read *, first_name
    print 100, first_name

100 format (1x, a)
end program
