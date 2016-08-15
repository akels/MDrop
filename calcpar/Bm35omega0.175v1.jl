Bm = 35
omega = 0.175

gammap = 1/0.35
etap = 1

N = 600
tmax = 30/0.35

a,b,c = 1,1,1
points,faces = EllipsoidMeshLoad(a,b,c,0.2)

H0 = sqrt(Bm*gammap/(a*b*c)^(1/3))
tau = etap*(a*b*c)^(1/3)/gammap
tmax *= tau
omega /= tau
        
par = elparameters(0.2)
par.m_dt = tmax/N
zc = SurfaceGeometry.Erdmanis2016(C=0.01,ftol=1e-3)