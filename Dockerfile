
FROM python:3.10-slim

#set the working directory inside the conaitner
WORKDIR app

# copy the project files into the conainter 
COPY . . 

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 to make the application accessible through the port number
EXPOSE 8000

# After setting up the application, the following is to now start the applciation
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]