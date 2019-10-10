# FILENAME="0905-server-var0.1"
# BUDGET=2
# NODES=30
# EPOCHS=101
# PROB=0.2
LR=0.002

echo $NODES
echo $VAR
SEED=$VAR
METHOD=1
python3 blockQP.py --epochs=$EPOCHS --fixed-graph=0 --method=$METHOD --seed=$SEED --filename=$FILENAME --budget=$BUDGET --distribution=1 --number-nodes=$NODES --number-graphs=1 --number-samples=100 --learning-rate=$LR --prob=$PROB --feature-size=8 --number-sources=2 --number-targets=2 --noise=$NOISE

