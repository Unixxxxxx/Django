# Step 1: Use an official Python image as the base
FROM python:3.12-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the requirements file into the container
COPY requirements.txt /app/

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of the application files (e.g., app.py) into the container
COPY app.py /app/

# Step 6: Expose the port the app runs on
EXPOSE 5000

# Step 7: Run the Flask application
CMD ["python", "app.py"]
