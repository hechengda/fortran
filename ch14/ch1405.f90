program ch1405
    ! Using len and len_trim
    implicit none

    character(20) :: name
    integer :: name_length

    print *, 'type in your name'
    read '(a)', name
    name_length = len(name)
    print *, 'name_length is ', name_length
    print *, name(1:name_length), '<-end is here'
    name_length = len_trim(name)
    print *, 'name length is ', name_length
    print *, name(1:name_length), '<-end is here'
end program
