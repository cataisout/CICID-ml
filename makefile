install:
    pip install --upgrade pip &&\
    	pip install -r app/req.txt

format:
    black *.py

train:
    python model/train.py

eval:
    echo "## Model Metrics" > report.md
    cat ./results/metrics.txt >> report.md
   
    echo '\n## Confusion Matrix Plot' >> report.md
    echo '![Confusion Matrix](./results/model_results.png)' >> report.md
   
    cml comment create report.md