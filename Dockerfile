FROM python:3.9

WORKDIR /manim-data

COPY requirements.txt .
COPY ./src ./src

RUN apt-get update && \
    apt-get install -y build-essential python3-dev libcairo2-dev libpango1.0-dev ffmpeg texlive texlive-latex-extra

RUN pip install -r requirements.txt

CMD ["--host", "0.0.0.0", "--port", "7000", "--reload"]
