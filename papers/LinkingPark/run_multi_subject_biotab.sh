# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

python TableAnnotator/multi_subject_multi_process_offline_predict.py --in_table_fn "${BASE_DATA_DIR}/SemTab/Input/Semtab21_round2_biotab_table.json" --dump_dir "${BASE_DATA_DIR}/SemTab/Output/biotab-multi-subject-output" --index_name "wikidata_20210830_keep_disambiguation" --in_links_fn "${BASE_DATA_DIR}/SemTab21-Data/wikidata/wikidata-20210830/incoming_links/in_coming_links_num.pkl" --alias_map_fn "${BASE_DATA_DIR}/SemTab21-Data/wikidata/wikidata-20210830/merged_alias_map/alias_map_keep_disambiguation.pkl"
python Benchmark/eval/gen_semtab21_biotab_multi_subj_submission.py --data-dir "${BASE_DATA_DIR}/SemTab21-Data/SemTab/Benchmark/Round2/BioTable/targets" --log_fn "${BASE_DATA_DIR}/SemTab/Output/biotab-multi-subject-output/all_output_tables.jsonl" --result_dir "${BASE_DATA_DIR}/SemTab/Submission"