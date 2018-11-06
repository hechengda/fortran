program ch0911
    ! Character, Integer and Real Output in a Format Statement
    implicit none

    character(15) :: firstname
    integer :: age
    real :: weight
    character(1) :: gender

    print *, ' type in your first name'
    read *, firstname
    print *, ' type in your age in years'
    read *, age
    print *, ' type in your weight in kilos'
    read *, weight
    print *, ' type in your gender (f/m)'
    read *, gender
    print *, ' your personal details are'
    print *
    print 100
    print 110, firstname, age, weight, gender

100 format (1x, 'first name', 8x, 'age', 1x, &
    'weight', 1x, 'gender')
110 format (1x, a, 2x, i3, 2x, f5.2, 2x, a)
end program
