package api.dto.out;

import domain.Candidate;

import java.util.List;

public record Election(String id, List<String> candidates) {

    public static Election fromDomain(domain.Election domain) {
        return new Election(domain.id(), domain.candidates().stream().map(Candidate::id).toList());
    }

}
