FILENAME="0808gcn_Empirical_normto1_randomphi"
BUDGET=2
NODES=15

for VAR in {3..5}
	do
		echo $VAR
		SEED=$VAR
		
		MINCUT=1
		METHOD=1
		python3 pathProbabilities.py --epochs=20 --fixed-graph=0 --method=$METHOD --seed=$SEED --filename=$FILENAME --budget=$BUDGET --distribution=1 --number-nodes=$NODES --number-graphs=1 --number-samples=50 --learning-rate=0.01 --prob=0.3 --feature-size=5 --number-sources=2 --number-targets=2 --mincut=$MINCUT
	done
