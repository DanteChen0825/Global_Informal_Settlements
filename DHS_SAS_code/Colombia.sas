/* Step 1: Set the input dataset */
libname indata "N:/Downloads/COIR61SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.COIR61FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V190 V191 V394 V129 V113 V116 V153);
  where V001 in (
364, 365, 368, 369, 372, 373, 374, 375, 377, 378, 379, 380, 381, 382, 385, 386, 387, 388, 389, 390, 391, 392, 393, 395, 396, 397, 398, 399, 400, 402, 403, 404, 405, 406, 407, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 452, 454, 455, 457, 458, 459, 460, 461, 462, 464, 465, 467, 468, 470, 1501, 1507, 1508, 1791, 1792, 1793, 1794, 1795, 1796, 1797, 1798, 1799, 1800, 1801, 1802, 1803, 1804, 1805, 1806, 1807, 1808, 1809, 1810, 1811, 1812, 1813, 1814, 1816, 1817, 1818, 1819, 1821, 1822, 1823, 1824, 1825, 1826, 1827, 1828, 1829, 1831, 1832, 1833, 1834, 1836, 1837, 1838, 1839, 1840, 1841, 1842, 1843, 1844, 1845, 1846, 1847, 1854, 1856, 1857, 1858, 1859, 1860, 1861, 1862, 1864, 1865, 1866, 1867, 1868, 1870, 1871, 1872, 1873, 1874, 1875, 1876, 1877, 1878, 1879, 1880, 1881, 1882, 1883, 1884, 1885, 1887, 1888, 1889, 1890, 1891, 1892, 1893, 1894, 1895, 1896, 1898, 1899, 1900, 1902, 1903, 1904, 1905, 1906, 1907, 1908, 1910, 1911, 1912, 1913, 1914, 1915, 1916, 1917, 1919, 1920, 1922, 1923, 1924, 1925, 1926, 1927, 1928, 1929, 1930, 1935, 1939, 1940, 1941, 1942, 1943, 1944, 1946, 1947, 1948, 1949, 1950, 1952, 1953, 1954, 1955, 1956, 1957, 1958, 1959, 1960, 1961, 1962, 1963, 1966, 1967, 1968, 1969, 1970, 1971, 1972, 1973, 1974, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 2059, 2062, 2063, 2068, 3081, 3082, 3083, 3084, 3085, 3087, 3089, 3090, 3091, 3092, 3093, 3094, 3095, 3096, 3097, 3098, 3099, 3100, 3101, 3102, 3103, 3104, 3105, 3106, 3107, 3108, 3109, 3110, 3111, 3112, 3113, 3115, 3116, 3117, 3118, 3119, 3120, 3121, 3122, 3123, 3124, 3125, 3126, 3127, 3128, 3130, 3131, 3132, 3133, 3134, 3135, 3136, 3137, 3138, 3139, 3140, 3141, 3142, 3143, 3144, 3145, 3146, 3147, 3149, 3150, 3151, 3152, 3153, 3154, 3155, 3156, 3157, 3158, 3159, 3160, 3161, 3162, 3163, 3164, 3165, 3166, 3167, 3168, 3169, 3170, 3171, 3172, 3173, 3174, 3175, 3176, 3177, 3178, 3179, 3180, 3181, 3182, 3183, 3184, 3185, 3186, 3187, 3188, 3189, 3190, 3191, 3192, 3193, 3195, 3197, 3198, 3199, 3200, 3201, 3202, 3203, 3205, 3206, 3207, 3209, 3210, 3211, 3212, 3213, 3214, 3216, 3217, 3218, 3219, 3220, 3221, 3222, 3223, 3224, 3225, 3226, 3227, 3228, 3229, 3230, 3231, 3232, 3233, 3234, 3235, 3236, 3237, 3238, 3239, 3240, 3241, 3243, 3244, 3245, 3246, 3247, 3248, 3249, 3250, 3252, 3253, 3254, 3255, 3256, 3258, 3259, 3260, 3262, 3263, 3265, 3266, 3269, 3271, 3299, 3300, 3301, 3302, 3304, 3305, 3306, 3307, 3308, 3310, 3312, 3313, 3314, 3315, 3316, 3356, 3398, 3404, 3406, 3417, 4601, 4603, 4604, 4605, 4606, 4607, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4624, 4625, 4626, 4627, 4628, 4629, 4630, 4631, 4632, 4633, 4634, 4635, 4637, 4638, 4640, 4646, 4649, 4650, 4651, 4652, 4653, 4654, 4655, 4656, 4657, 4658, 4659, 4660, 4661, 4662, 4663, 4664, 4665, 4666, 4667, 4669, 4670, 4671, 4672, 4673, 4674, 4675, 4677, 4678, 4679, 4682, 4683, 4684, 4685, 4686, 4687, 4688, 4689, 4690, 4693, 4694, 4696, 4697, 4698, 4699, 4700, 4701, 4702, 4703, 4704, 4705, 4706, 4707, 4708, 4709, 4710, 4711, 4712, 4713, 4714, 4715, 4716, 4717, 4718, 4720, 4721, 4725, 4727, 4728, 4729, 4730, 4731, 4732, 4733, 4734, 4735, 4736, 4737, 4738, 4739, 4741, 4742, 4743, 4744, 4745, 4746, 4747, 4748, 4749, 4750, 4751, 4752, 4753, 4754, 4755, 4756, 4757, 4758, 4759, 4760, 4761, 4762, 4763, 4764, 4765, 4766, 4767, 4768, 4769, 4770, 4771, 4772, 4774, 4776, 4777, 4778, 4779, 4780, 4781, 4783, 4784, 4785, 4786, 4789, 4791, 4792, 4793, 4795, 4797, 4798, 4799, 4800, 4802, 4803, 4804, 4805, 4806, 4807, 4808, 4809, 4810, 4811, 4812, 4813, 4814, 4815, 4816, 4817, 4818, 4819, 4820, 4821, 4822, 4823, 4824, 4825, 4826, 4827, 4828, 4829, 4830, 4831, 4832, 4833, 4834, 4835, 4836, 4837, 4838, 4839, 4840, 4841, 4842, 4843, 4844, 4847, 4848, 4849, 4850, 4851, 4852, 4854, 4855, 4856, 4858, 4859, 4860, 4861, 4862, 4864, 4865, 4866, 4867, 4868, 4869, 4870, 4872, 4873, 4874, 4875, 4877, 4878, 4879, 4880, 4881, 4882, 4883, 4884, 4885, 4886, 4887, 4888, 4889, 4890, 4891, 4892, 4893, 4895, 4896, 4897, 4898, 4899, 4900, 4901, 4902, 4905, 4906, 4908, 4909, 4910, 4911, 4912, 4913, 4914, 4915, 4916, 4917, 4918, 4919, 4920, 4921, 4922, 4923, 4924, 4925, 4926, 4927, 4928, 4929, 4930, 4931, 4932, 4933, 4934, 4935, 4936, 4937, 4938, 4939, 4940, 4941, 4942, 4943, 4944, 4945, 4946, 4947, 4948, 4949, 4950, 4951, 4952, 4953, 4954, 4955, 4956, 4957, 4958, 4959, 4960, 4961, 4962, 4963, 4964, 4965, 4966, 4967, 4968, 4969, 4970, 4971, 4972, 4973, 4974, 4975, 4976, 4977, 4978, 4980, 4981, 4982, 4984, 4985, 4986, 4987, 4988, 4989, 4991, 4992, 4993, 4994, 4995, 4999
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Colombia_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
