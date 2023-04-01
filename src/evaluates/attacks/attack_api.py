import sys, os
sys.path.append(os.pardir)

from evaluates.attacks.BatchLabelReconstruction import BatchLabelReconstruction
from evaluates.attacks.DataReconstruct import DataReconstruction
from evaluates.attacks.DirectionbasedScoring import DirectionbasedScoring
from evaluates.attacks.NormbasedScoring import NormbasedScoring

def AttackerLoader(vfl, args):
    attacker_name = args.attack_name
    return globals()[attacker_name](vfl, args)