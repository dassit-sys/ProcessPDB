#include <stdio.h>
#include <CUnit/CUnit.h>
#include "CUnit/Basic.h"
#include "CUnit/Automated.h"
#include "io.h"
#include "util.h"
#include "Residue.h"
#include "Atom.h"
#include "test_1.h"
#include "test_2.h"

int suitInit() {return 0;}
int suitClean() {return 0;}

int main() {
	//initialize registry
	if (CUE_SUCCESS != CU_initialize_registry()) {
		return CU_get_error();
	}

	//add a suit to the registry
	CU_pSuite pSuite = NULL;
	pSuite = CU_add_suite("Suite_1", suitInit, suitClean);
	if (pSuite == NULL) {
		CU_cleanup_registry();
		return  CU_get_error();
	}

	//add tests to the suit
	if ((CU_add_test(pSuite, "test of readPDB()", test_readPDB) == NULL) || (CU_add_test(pSuite, "test of generateCenter()", test_generateCenter) == NULL) || (CU_add_test(pSuite, "test of generateCadist()", test_generateCadist) == NULL) || (CU_add_test(pSuite, "test of findSqrt()", test_findSqrt) == NULL)) {
		CU_cleanup_registry();
		return CU_get_error();
	}
	
	//Run all tests using the CUnit Basic interface, output report to stdout
	CU_basic_set_mode(CU_BRM_VERBOSE);
	CU_basic_run_tests();

	//Run all tests using the automated interface, output report to xml files
	CU_automated_run_tests();
	CU_list_tests_to_file();

	//Clean up registry
	CU_cleanup_registry();
	return CU_get_error();
}
