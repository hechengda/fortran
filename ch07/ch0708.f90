program ch0708
    ! Table of Liquid Conversion Measurements
    implicit none

    integer :: litre
    real :: gallon, usgallon

    do litre = 1, 10
        gallon = litre/4.545
        usgallon = litre/3.7854118
        print *, litre, ' ', gallon, ' ', usgallon
    end do
end program
