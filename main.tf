provider "google" {
  project = "project-id"
  credentials = file("credentials.json")
  region  = "us-central1"
  zone    = "us-central1-a"
}
