#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* .Call calls */
extern SEXP inPolygon(SEXP, SEXP);

static const R_CallMethodDef CallEntries[] = {
    {"inPolygon", (DL_FUNC) &inPolygon, 2},
    {NULL, NULL, 0}
};

void R_init_curvHDR(DllInfo *dll)
{
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
    R_forceSymbols(dll, TRUE);
}
