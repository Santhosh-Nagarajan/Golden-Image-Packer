project-id = "playground-s-11-2ee8c2ae"

region = "us-central1"

zone = "us-central1-b"

credential = "creden.json"


machine-type = "e2-medium"


size = "20"

startup-script = "test.sh"

email = "cli-service-account-1@playground-s-11-2ee8c2ae.iam.gserviceaccount.com"

port = ["80"]

http-source-range = ["0.0.0.0/0"]

ssh-source-range = ["0.0.0.0/0"]
