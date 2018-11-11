module t_position
    implicit none

    type position
        integer :: x
        integer :: y
        integer :: z
    end type

    interface operator (+)
        module procedure add_position
    end interface

contains
    type(position) function add_position(a, b)
        type(position), intent(in) :: a, b

        add_position = position(a%x+b%x,&
            a%y+b%y,a%z+b%z)
    end function
end module

program ch2401
    ! Overloading the Addition (+) Operator
    use t_position
    implicit none

    type(position) :: a, b, c

    a = position(10,10,10)
    b = position(20,20,20)
    c = a+b
    print *, a
    print *, b
    print *, c
end program
