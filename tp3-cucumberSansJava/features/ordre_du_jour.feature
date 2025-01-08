#------------------------------
# Meeting Agenda Validation
#------------------------------
# language: en
Feature: Meeting Agenda Validation
    The agenda of the meeting should follow the expected structure and contain required elements.

Scenario: The agenda should include an introduction of the team
    Given A meeting agenda
    Then The agenda should have a section for team introductions

Scenario: The agenda should cover project goals and context
    Given A meeting agenda
    Then The agenda should have sections for context, objectives, and expected outcomes

Scenario: The agenda should define communication strategies
    Given A meeting agenda
    Then The agenda should specify reporting frequency and communication channels

Scenario: The agenda should allow time for questions
    Given A meeting agenda
    Then The agenda should include a question-and-answer session
