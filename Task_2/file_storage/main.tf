resource "local_file" "file_create" {
  filename = "sample.txt"
  content = "Sample file to upload to GCS bucket."
}

resource "google_storage_bucket" "GCS" {
  name = "terraform_sample_file_upload"
  storage_class = "STANDARD"
}

resource "google_storage_bucket_object" "file_upload" {
  name = "file_upload"
  bucket = google_storage_bucket.GCS.name
  source = local_file.file_create.filename
}