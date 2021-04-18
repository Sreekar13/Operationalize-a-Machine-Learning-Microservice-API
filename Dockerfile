FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
RUN mkdir -p /model
RUN mkdir -p /model_data

## Step 2:
# Copy source code to working directory
COPY app.py /model/app.py
COPY model_data/* /model_data/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
COPY requirements.txt /model/requirements.txt
RUN pip install --no-cache-dir -r /model/requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python","/model/app.py"]
