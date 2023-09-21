# Use an official Python runtime as a parent image
FROM python:3.9

WORKDIR /manim-data

COPY requirements.txt .
COPY ./src ./src

# Install Python packages including Jupyter
RUN pip install jupyter


# Expose port 8888 for Jupyter Notebook
EXPOSE 8888

RUN apt-get update && \
    apt-get install -y build-essential python3-dev libcairo2-dev libpango1.0-dev ffmpeg texlive texlive-latex-extra

RUN pip install -r requirements.txt

# Run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
