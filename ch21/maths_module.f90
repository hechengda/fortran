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
