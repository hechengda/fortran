include 'maths_module.f90'
include 'sub1_module.f90'

program ch2105
    ! Modules and Include Statements
    use iso_fortran_env, wp => real64
    use sub1_module
    implicit none

    real(wp) :: r, a, c

    print *, 'radius?'
    read *, r
    call sub1(r,a,c)
    print *, ' for radius = ', r
    print *, ' area = ', a
    print *, ' circumference = ', c
end program
