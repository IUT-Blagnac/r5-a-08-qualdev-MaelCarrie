Feature: Est-ce qu'on est vendredi ? Tout le monde veut savoir quand c'est vendredi

  Scenario: Dimanche n'est pas vendredi
    Given Aujourd'hui on est "dimanche"
    When Quand on me demande si c'est déjà "vendredi"
    Then Alors je devrait me répondre "Nope"

  Scenario: Vendredi est vendredi
    Given Aujourd'hui on est "vendredi"
    When Quand on me demande si c'est déjà "vendredi"
    Then Alors je devrait me répondre "TGIF"

  Scenario Outline: Vérifier si c'est vendredi
    Given Aujourd'hui on est "<day>"
    When Quand on me demande si c'est déjà "vendredi"
    Then Alors je devrait me répondre "<answer>"

    Examples:
      | day            | answer |
      | vendredi       | TGIF   |
      | dimanche       | Nope   |
      | anything else! | Nope   |
