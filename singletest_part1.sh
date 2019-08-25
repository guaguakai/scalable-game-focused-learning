FILENAME="0824-server"
BUDGET=2
NODES=30

for VAR in {1..10}
	do
		echo $VAR
		SEED=$VAR
		MINCUT=0
		METHOD=0
		python3 pathProbabilities.py --epochs=30 --fixed-graph=0 --method=$METHOD --seed=$SEED --filename=$FILENAME --budget=$BUDGET --distribution=1 --number-nodes=$NODES --number-graphs=10 --number-samples=10 --learning-rate=0.001 --prob=0.2 --feature-size=8 --number-sources=2 --number-targets=2 --mincut=$MINCUT

	done
