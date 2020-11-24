package com.gp.versioning.resource;

import com.gp.versioning.entity.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

@RestController
public class UserResource {

    @GetMapping("/api/v1/users")
    public User getUser() {
        UUID uuid = UUID.randomUUID();
        System.out.println("UUID " + uuid.getLeastSignificantBits());
        System.out.println("UUID " + uuid.getMostSignificantBits());
        return new User(uuid.toString(), "Gangadhar", "Pathipaka") ;
    }

}
