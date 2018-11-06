program ch1403
    ! Stripping Blanks from a String
    implicit none

    character(80) :: string, strip
    integer :: ipos, i, length = 80

    print *, 'type in a string'
    read '(a)', string
    ipos = 1
    do i = 1, length
        if (string(i:i)/=' ') then
            strip(ipos:ipos) = string(i:i)
            ipos = ipos+1
        end if
    end do
    print *, string
    print *, strip
end program
