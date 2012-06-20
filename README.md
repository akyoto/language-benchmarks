language-benchmarks
===================

Benchmarking several common programming languages.

	================================================================================
	bp using C++ output target (single-threaded, linux x86)
	================================================================================
	FileIO.ReadAll:                                             572,959 microseconds
	Math.Distance:                                               21,687 microseconds
	Math.Factorial:                                             902,563 microseconds
	Strings.Concat:                                             825,309 microseconds
	Strings.Replace:                                          1,643,643 microseconds
	Time.Now:                                                 1,384,384 microseconds
	--------------------------------------------------------------------------------
	All benchmarks:                                           5,000,000 microseconds
	================================================================================
	Python 3.2 (single-threaded, linux x86)
	================================================================================
	FileIO.ReadAll:                                           1,608,298 microseconds
	Math.Distance:                                            1,373,003 microseconds
	Math.Factorial:                                             537,834 microseconds
	Strings.Concat:                                             893,451 microseconds
	Strings.Replace:                                          1,659,115 microseconds
	Time.Now:                                                 1,372,276 microseconds
	--------------------------------------------------------------------------------
	All benchmarks:                                           7,444,330 microseconds

