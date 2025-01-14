module ModBack
  use ModPar,   ONLY: inmax
  implicit none
  
  ! background stratification and parameters
  ! initialized in grid_userconv
  real, dimension(1:inmax) :: d0, gacc_str, hp, ovhp, gamma, temp0
  real, dimension(1:inmax) :: fact, ovdxxb, ovrth, ovrevar, ovrmvar
  real, dimension(1:inmax) :: kappa, heatrad, radflux
  real :: sr0(1:inmax)=0.D0, s0(1:inmax)=0.D0, p0s0(1:inmax)=0.D0
  real :: ovbvfq
  
  ! parameter for k quenching: bquench_k
  real :: bquench_k = 0.d0
  
  ! model table of the solar atmosphere 
  real, allocatable :: rtab(:), te(:), pe(:), re(:), gacc(:), bvfsq(:), gamaad(:), &
       gradad(:), delta(:), gradrad(:), vc(:), ross_kappa(:)
  integer, parameter :: nptjcd = 1281
  
end module ModBack
