#ifndef SYSTEM_TYPES_H
#define SYSTEM_TYPES_H

/*----------------------------------------------------------------------------*\
  DEFINES (OPT)
\*----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------*\
  INCLUDES
\*----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------*\
  DEFINES
\*----------------------------------------------------------------------------*/ 

/* Definitions for TRUE and FALSE. */
#ifndef TRUE
#define TRUE 1 
#endif 
#ifndef FALSE
#define FALSE 0 
#endif 
/*----------------------------------------------------------------------------*\
  TYPEDEFS
\*----------------------------------------------------------------------------*/

typedef unsigned char boolean;

/* Integer data types. */
typedef unsigned char uint8;
typedef unsigned short int uint16;
typedef unsigned long int uint32;
typedef signed char sint8;
typedef signed short int sint16;
typedef signed long int sint32;

/* Floating point types. */
typedef float float32;
typedef double float64;
/*----------------------------------------------------------------------------*\
  ENUMS
\*----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------*\
  VARIABLES
\*----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------*\
  PARAMETERIZED MACROS
\*----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------*\
  FUNCTION PROTOTYPES
\*----------------------------------------------------------------------------*/


#endif/*SYSTEM_TYPES_H */
/*----------------------------------------------------------------------------*\
 END OF FILE
\*----------------------------------------------------------------------------*/
