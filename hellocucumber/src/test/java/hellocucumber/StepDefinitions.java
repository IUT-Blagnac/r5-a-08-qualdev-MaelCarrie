package hellocucumber;

import io.cucumber.java.en.*;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Assertions.*;

public class StepDefinitions {
    private String actualDay;
    private String answer;

    @Given("Aujourd'hui on est {string}")
    public void aujourd_hui_on_est_dimanche(String ActualDay) {
        actualDay = ActualDay;
    }

    @When("Quand on me demande si c'est déjà {string}")
    public void quand_je_demande_si_c_est_déjà_vendredi(String Answer) {
        answer = Answer.equals(actualDay) ? "TGIF" : "Nope";
    }

    @Then("Alors je devrait me répondre {string}")
    public void alors_on_devrait_me_répondre(String expectedAnswer) {
        assertEquals(expectedAnswer, answer);
    }
}
