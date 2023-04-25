# Soil Data Collection Experiment
An example experiment for our NTU Data Wrangling workshop.

# Installation and Build
Please run the following commands to install and build my experiment.

Pull down the code base:
```bash
git clone https://github.com/DiscoverCCRI/NTU-workshop-2.git
cd NTU-workshop-2/sample-experiment
```

Build Docker image:
```bash
docker build --rm -t soil-data-collect .
```

Create Docker volume:
```bash
docker volume create --driver local soil-experiment-data
```

# Run
Run Docker container:
```bash
docker run --device=/dev/ttyUSB0 --restart unless-stopped -h `hostname` -v soil-experiment-data:/data -t -i -d soil-data-collect
```

# Results
Please store the experiment results in my shared Google Drive folder [linked here](https://drive.google.com/drive/folders/17gJdaO9EtPLbNxxrGvtCdu-mVrqcMHMO?usp=sharing).
