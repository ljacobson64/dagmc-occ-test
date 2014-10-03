geom:
	python occ_test.py 2>&1 | tee -a occ_test_1.log
	cubit -batch -nographics -nojournal occ_test_1.jou 2>&1 | tee -a occ_test_1.log
	dagmc_preproc occ_test_1.step -o occ_test_1.h5m 2>&1 | tee -a occ_test_1.log
	mbconvert occ_test_1.h5m occ_test_1.stl 2>&1 | tee -a occ_test_1.log
	mcnp5.mpi i=occ_test_1.i g=occ_test_1.h5m l=occ_test_1.lcad

clean:
	rm -f *~ *.jou *.log *.stp *.step *.h5m *.stl out? runtp? lcad fcad