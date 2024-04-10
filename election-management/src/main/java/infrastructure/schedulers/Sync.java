package infrastructure.schedulers;

import infrastructure.repositories.RedisElectionRepository;
import infrastructure.repositories.SQLElectionRepository;
import io.quarkus.scheduler.Scheduled;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class Sync {

    private final SQLElectionRepository repository;

    private final RedisElectionRepository redisElectionRepository;

    public Sync(SQLElectionRepository repository, RedisElectionRepository redisElectionRepository) {
        this.repository = repository;
        this.redisElectionRepository = redisElectionRepository;
    }

    @Scheduled(cron = "*/10 * * * * ?")
    void sync() {
        repository.findAll().forEach(election -> repository.sync(redisElectionRepository.sync(election)));
    }

}
