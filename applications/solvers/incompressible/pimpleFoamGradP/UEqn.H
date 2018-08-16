// Solve the Momentum equation

MRF.correctBoundaryVelocity(U);

// Momentum predictor
// Edited to include the pressure gradient -(1/rho)(delP/delx)
// http://www.cfd-online.com/Forums/openfoam-solving/106771-pressure-gradient-channel-flow-mapped-bc.html
tmp<fvVectorMatrix> tUEqn
(
    fvm::ddt(U) + fvm::div(phi, U)
  + MRF.DDt(U)
  + turbulence->divDevReff(U)
  + gradP
 ==
    fvOptions(U)
);
fvVectorMatrix& UEqn = tUEqn.ref();

UEqn.relax();

fvOptions.constrain(UEqn);

if (pimple.momentumPredictor())
{
    solve(UEqn == -fvc::grad(p));

    fvOptions.correct(U);
}
