resource "google_compute_address" "test-static-ip-address" {
  name = "my-test-static-ip-address"
}

resource "google_compute_instance" "default" {
	name = "developer"
	machine_type = "f1-micro"
	boot_disk {
		initialize_params {
			image = "debian-cloud/debian-10"
		}
	}

 	network_interface {
    	network = "default"
    	access_config {
      		nat_ip = "${google_compute_address.test-static-ip-address.address}"
    	}
  	}

	metadata_startup_script = "sudo apt update && sudo apt upgrade"
	tags = ["http-server"]
	metadata = {
		ssh-keys = "${var.username}:${file(var.public_key)}"
	}
}
