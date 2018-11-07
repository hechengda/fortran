module date_module

    type date
        integer :: day = 1
        integer :: month = 1
        integer :: year = 2000
    end type

end module

program ch1702
    ! Variant of Example 1 Using Modules
    use date_module
    implicit none

    type(date) :: d

    print *, d%day, d%month, d%year
    print *, ' type in the date, day, month, year'
    read *, d%day, d%month, d%year
    print *, d%day, d%month, d%year
end program
