from slapmapper.aam import SlapAAM

mapper = SlapAAM(binary=True)

# Reaction SMILES
for rxn in [
    "COC(=O)c1ccc(C=C2CC2)cc1>>COC(=O)c1ccc(C2=CCC2)cc1", # reaction SMILES
    "COC(=O)c1ccc(C=[C:1]2CC2)cc1>>COC(=O)c1ccc(C2=CC[C:1]2)cc1", # partial constraints
    "NC1=CC=CC2=C1C=C(N=C2C(C(F)(F)F)=C)C.SCC>>NC1=CC=CC2=C1C=C(N=C2C(CSCC)C(F)(F)F)C", # FMC-220
    ]:
    mapper.reset()
    mapper.map_smiles(rxn)
    mapped_rxns = [ r["smiles"] for r in mapper.results ]
    for i,m in enumerate(mapped_rxns):
        print(i,m)
    print()

