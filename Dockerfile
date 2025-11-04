FROM python:alpine
WORKDIR /usr/local/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN addgroup -S app && adduser -S app -G app
RUN chown -R app:app /usr/local/app
USER app
ENV Flask_APP=app.py
EXPOSE 5000
CMD ["flask", "run" ,"--host=0.0.0.0" , "--port=5000"]
