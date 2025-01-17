import argparse
import json
import sys
import os

sys.path.append(os.pardir)


def load_tree_configs(config_file_name, args):
    config_file_path = "./configs/" + config_file_name + ".json"
    config_file = open(config_file_path, "r")
    config_dict = json.load(config_file)

    args.k = config_dict["k"] if ("k" in config_dict) else 2
    args.model_type = config_dict["model_type"]
    args.number_of_trees = (
        config_dict["number_of_trees"] if ("number_of_trees" in config_dict) else 3
    )
    args.depth = config_dict["depth"] if ("depth" in config_dict) else 2
    args.min_leaf = config_dict["min_leaf"] if ("min_leaf" in config_dict) else 1
    args.subsample_cols = (
        config_dict["subsample_cols"] if ("subsample_cols" in config_dict) else 0.8
    )
    args.max_bin = config_dict["max_bin"] if ("max_bin" in config_dict) else 4
    args.advanced_params = config_dict["advanced_params"] if ("advanced_params" in config_dict) else {}
    args.key_length = (
        config_dict["key_length"] if ("key_length" in config_dict) else 128
    )
    args.use_missing_value = (
        config_dict["use_missing_value"]
        if ("use_missing_value" in config_dict)
        else False
    )
    args.use_encryption = (
        config_dict["use_encryption"] if ("use_encryption" in config_dict) else False
    )
    return args
