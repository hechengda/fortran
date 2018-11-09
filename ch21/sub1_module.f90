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
