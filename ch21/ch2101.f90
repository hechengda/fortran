module maths_module

    use iso_fortran_env, wp => real64
    implicit none

    real (wp), parameter :: c = 299792458.0_wp
    real (wp), parameter :: e = &
        2.7182818284590452353602874713526624977_wp
    real (wp), parameter :: g = 9.812420_wp
    real (wp), parameter :: pi = &
        3.141592653589793238462643383279502884_wp
end module

module sub1_module

contains
    subroutine sub1(radius, area, circumference)
        use iso_fortran_env, wp => real64
        use maths_module
        implicit none

        real(wp), intent(in) :: radius
        real(wp), intent(out) :: area, circumference

        area = pi*radius*radius
        circumference = 2._wp*pi*radius
    end subroutine
end module

program ch2101
    ! Modules for Precision Specification and
    ! Constant Definition
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
