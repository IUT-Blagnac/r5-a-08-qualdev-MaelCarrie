package hellocucumber;

import io.cucumber.java.en.*;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class StepDefinitions {
    private String actualDay;
    private String answer;

    @Given("Aujourd'hui on est {string}")
    public void aujourd_hui_on_est(String actualDay) {
        this.actualDay = actualDay;
    }

    @When("Quand on me demande si c'est déjà {string}")
    public void quand_on_me_demande_si_c_est_deja(String day) {
        answer = day.equals("vendredi") ? "TGIF" : "Nope";
    }

    @Then("Alors je devrait me répondre {string}")
    public void alors_je_devrais_me_repondre(String expectedAnswer) {
        assertEquals(expectedAnswer, answer);
    }
}
