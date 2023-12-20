project-id = "playground-s-11-9efb5b94"

region = "us-central1"

zone = "us-central1-b"

credential = "credentials.json"


instance-name = "myinstance"

machine-type = "e2-medium"


size = "20"

image-name = "my-golden-image"

startup-script = "test.sh"

email = "cli-service-account-1@playground-s-11-9efb5b94.iam.gserviceaccount.com"

port = ["80"]

http-source-range = ["10.0.0.0/8"]

ssh-source-range = ["0.0.0.0/0"]
