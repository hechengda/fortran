module person_module

    type address
        character(60) :: street
        character(60) :: district
        character(60) :: city
        character(8) :: post_code
    end type

    type birthday
        integer :: day
        integer :: month
        integer :: year
    end type

    type person
        character(20) :: first_name
        character(20) :: other_name
        character(40) :: surname
        type(birthday) :: birth
        character(1) :: gender
        type(address) :: addr
    end type

end module

program ch1704
    ! Nested User Defined Types
    use person_module
    implicit none

    integer :: n, i
    type(person), allocatable, dimension(:) :: p

    print *, 'input number of people'
    read *, n
    allocate(p(1:n))
    open(1,file='person.txt',status='old')

    do i = 1, n
        read(1,100) p(i)%first_name, &
            p(i)%other_name, p(i)%surname, &
            p(i)%birth%day, p(i)%birth%month, &
            p(i)%birth%year, p(i)%gender, p(i)%addr%street, &
            p(i)%addr%district, p(i)%addr%city, &
            p(i)%addr%post_code
    end do

    do i = 1, n
        write(*,110) p(i)%first_name, &
            p(i)%other_name, p(i)%surname, &
            p(i)%birth%day, p(i)%birth%month, &
            p(i)%birth%year, p(i)%gender, p(i)%addr%street, &
            p(i)%addr%district, p(i)%addr%city, &
            p(i)%addr%post_code
    end do

100 format (a20, /, a20, /, a40, /, i2, 1x, i2, &
    1x, i4, /, a1, /, a60, /, a60, /, a60, /, a8)
110 format (a20, a20, a40, /, i2, 1x, i2, 1x, &
    i4, /, a1, /, a60, /, a60, /, a60, /, a8)
end program
