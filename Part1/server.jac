walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker add_yourself {
    has num: int;

    can return_message with `root entry {
        report {
            "response": "Here's your number " + str(self.num + self.num)+ "!"
        };
    }
}

walker backward_name {
    has name: str;

    can return_message with `root entry {
        report {
            "response": self.name[::-1]
        };
    }
}