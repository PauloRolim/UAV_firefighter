#ifndef SECTIONS_H
#define	SECTIONS_H

#ifdef	__cplusplus
extern "C" {
#endif

/* Memory sections */

/* Non replicated sections contain constants, variables and functions from non replicated C program :
 *   - Shared constant/variable/function is accessible from B model.
 *   - Non shared constant/variable/function are not accessible from B model.
 */
#define SECTION_NON_REPLICATED_SHARED_CONSTANT 			  __attribute__ ((section (".nr_s_cst")))
#define SECTION_NON_REPLICATED_SHARED_FUNCTION 			  __attribute__ ((section (".nr_s_fn")))
#define SECTION_NON_REPLICATED_SHARED_VARIABLE 			  __attribute__ ((section (".nr_s_var")))
#define SECTION_NON_REPLICATED_NON_SHARED_CONSTANT 		__attribute__ ((section (".nr_ns_cst")))
#define SECTION_NON_REPLICATED_NON_SHARED_FUNCTION 		__attribute__ ((section (".nr_ns_fn")))
#define SECTION_NON_REPLICATED_NON_SHARED_VARIABLE 		__attribute__ ((section (".nr_ns_var")))

/* Replicas constants sections
 *    - In some cases, the replicas constants won't be replicated in memory, the section
 *    SECTION_REPLICAS_CONSTANT will be used to contain them
 *    - In other cases,the replicas constants will have to be replicated, they will be in
 *    SECTION_REPLICA1_CONSTANT and SECTION_REPLICA2_CONSTANT
 */
#define SECTION_REPLICAS_CONSTANT 						      __attribute__ ((section (".r_cst")))
#define SECTION_REPLICAS_USER_SHARED_CONSTANT       __attribute__ ((section (".r_u_s_cst")))

/* Replica1 sections contains variables and functions from B32 translations of B model :
 *   - Check variables are safety data which must always be equals to replica1 ones.
 *   - Non check variables are data witch can be different than replica1 ones.
 */
#define SECTION_REPLICA1_CONSTANT 						      __attribute__ ((section (".r1_cst")))
#define SECTION_REPLICA1_FUNCTION 						      __attribute__ ((section (".r1_fn")))
#define SECTION_REPLICA1_CHECK_VARIABLE 				    __attribute__ ((section (".r1_chk_var")))
#define SECTION_REPLICA1_NO_CHECK_VARIABLE          __attribute__ ((section (".r1_nchk_var")))
/* User program sections */
#define SECTION_REPLICA1_USER_POINTER               __attribute__ ((section (".r1_u_ptr")))
#define SECTION_REPLICA1_USER_CONSTANT 					    __attribute__ ((section (".r1_u_cst")))
#define SECTION_REPLICA1_USER_FUNCTION 					    __attribute__ ((section (".r1_u_fn")))
#define SECTION_REPLICA1_USER_CHECK_VARIABLE 			  __attribute__ ((section (".r1_u_chk_var")))

/* Replica2 sections contains variables and functions from C translations of B model :
 *   - Check variables are safety data which must always be equals to replica1 ones.
 *   - Non check variables are data witch can be different than replica1 ones.
 */
#define SECTION_REPLICA2_CONSTANT 						      __attribute__ ((section (".r2_cst")))
#define SECTION_REPLICA2_FUNCTION 						      __attribute__ ((section (".r2_fn")))
#define SECTION_REPLICA2_CHECK_VARIABLE 				    __attribute__ ((section (".r2_chk_var")))
#define SECTION_REPLICA2_NO_CHECK_VARIABLE          __attribute__ ((section (".r2_nchk_var")))
/* User program sections */
#define SECTION_REPLICA2_USER_POINTER               __attribute__ ((section (".r2_u_ptr")))
#define SECTION_REPLICA2_USER_CONSTANT              __attribute__ ((section (".r2_u_cst")))
#define SECTION_REPLICA2_USER_FUNCTION 					    __attribute__ ((section (".r2_u_fn")))
#define SECTION_REPLICA2_USER_CHECK_VARIABLE 			  __attribute__ ((section (".r2_u_chk_var")))

#ifdef	__cplusplus
}
#endif

#endif	/* SECTIONS_H */
