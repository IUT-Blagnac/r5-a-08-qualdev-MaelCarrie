# -*- coding: utf-8 -*-
# -------------------
# Author::    Mael
# License::   Distributes under the same terms as Ruby
# -------------------
require "rspec/expectations"

Given('A meeting agenda') do
    @ordre_du_jour = "features/resources/Ordre_du_jour_04_09-1.pdf"
end

Then('The agenda should have a section for team introductions') do
  log("Checking for 'Présentation de l’équipe' in #{@ordre_du_jour}")
  expect(system("pdfgrep 'Présentation de l’équipe' #{@ordre_du_jour}")).to be true
end

Then('The agenda should have sections for context, objectives, and expected outcomes') do
  log("Checking for 'Contexte et Objectifs du projet' in #{@ordre_du_jour}")
  expect(system("pdfgrep 'Contexte et Objectifs du projet' #{@ordre_du_jour}")).to be true

  log("Checking for 'Vision Globale' in #{@ordre_du_jour}")
  expect(system("pdfgrep 'Vision Globale' #{@ordre_du_jour}")).to be true

  log("Checking for 'Résultats Attendus' in #{@ordre_du_jour}")
  expect(system("pdfgrep 'Résultats Attendus' #{@ordre_du_jour}")).to be true
end

Then('The agenda should specify reporting frequency and communication channels') do
  log("Checking for 'Périodicité des Rapports' in #{@ordre_du_jour}")
  expect(system("pdfgrep 'Périodicité des Rapports' #{@ordre_du_jour}")).to be true

  log("Checking for 'Canaux de Communication' in #{@ordre_du_jour}")
  expect(system("pdfgrep 'Canaux de Communication' #{@ordre_du_jour}")).to be true
end

Then('The agenda should include a question-and-answer session') do
  log("Checking for 'Questions et Réponses' in #{@ordre_du_jour}")
  expect(system("pdfgrep 'Questions et Réponses' #{@ordre_du_jour}")).to be true
end
