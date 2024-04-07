package infrastructure.resources;

import api.CandidateApi;
import api.dto.in.CreateCandidate;
import api.dto.in.UpdateCandidate;
import api.dto.out.Candidate;
import io.quarkus.test.common.http.TestHTTPEndpoint;
import io.quarkus.test.junit.QuarkusTest;
import io.quarkus.test.junit.mockito.InjectMock;
import org.instancio.Instancio;
import org.jboss.resteasy.reactive.RestResponse;
import org.junit.jupiter.api.Test;

import javax.ws.rs.core.MediaType;

import java.util.Arrays;

import static io.restassured.RestAssured.given;
import static org.instancio.Select.field;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

@QuarkusTest
@TestHTTPEndpoint(CandidateResource.class)
class CandidateResourceTest {

    @InjectMock
    CandidateApi candidateApi;

    @Test
    void create() {
        var in = Instancio.create(CreateCandidate.class);

        given()
                .contentType(MediaType.APPLICATION_JSON)
                .body(in)
                .when().post()
                .then().statusCode(RestResponse.StatusCode.CREATED);

        verify(candidateApi).create(in);
        verifyNoMoreInteractions(candidateApi);
    }

    @Test
    void update() {
        UpdateCandidate in = Instancio.create(UpdateCandidate.class);
        Candidate out = Instancio.create(Candidate.class);

        when(candidateApi.update(out.id(), in)).thenReturn(out);

        var response = given()
                .contentType(MediaType.APPLICATION_JSON)
                .body(in)
                .when().put("/" + out.id())
                .then().statusCode(RestResponse.StatusCode.OK).extract().as(Candidate.class);

        verify(candidateApi).update(out.id(), in);
        verifyNoMoreInteractions(candidateApi);

        assertEquals(out, response);
    }

    @Test
    void list() {
        var out = Instancio.stream(Candidate.class).limit(4).toList();

        when(candidateApi.list()).thenReturn(out);

        var response = given()
                .when().get()
                .then().statusCode(RestResponse.StatusCode.OK).extract().as(Candidate[].class);

        verify(candidateApi).list();
        verifyNoMoreInteractions(candidateApi);

        assertEquals(out, Arrays.stream(response).toList());
    }


}