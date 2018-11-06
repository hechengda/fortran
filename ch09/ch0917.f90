program ch0917
    ! Choosing the Decimal Symbol
    implicit none

    integer :: fluid
    real :: litres
    real :: pints

    open(1,file='ch0917.txt')
    write(1,100)
    do fluid = 1, 10
        litres = fluid/1.75
        pints = fluid*1.75
        write(1,110) pints, fluid, litres
    end do
    close(1)

100 format ('  Pints        Litres')
110 format (dc, 1x, f7.3, 1x, i3, 1x, f7.3)
end program
