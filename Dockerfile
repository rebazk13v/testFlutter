# Use the official Flutter image as the base image
FROM cirrusci/flutter:stable

# Set the working directory inside the container
WORKDIR /app

# Copy the pubspec.yaml and pubspec.lock files to the container
COPY pubspec.* ./

# Install Flutter dependencies
RUN flutter pub get

# Copy the entire project to the container
COPY . .

# Build the Flutter app for release
RUN flutter build apk

# Expose the port on which your Flutter app will run (if necessary)
EXPOSE 8080

# Run the Flutter app
CMD ["flutter", "run","-d", "device"]
