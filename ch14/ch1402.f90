program ch1402
    ! The a Edit Descriptor
    implicit none

    character(80) :: line

    read '(a)', line
    print *, line
end program
