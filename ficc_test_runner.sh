#!/usr/bin/env bash

py.test tests/test_em.py --runslow
py.test tests/test_mbs_model.py --runslow
py.test tests/test_rates_model.py --runslow