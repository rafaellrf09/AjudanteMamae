# coding: utf-8


require 'rails_helper'
require 'spec_helper'

feature 'gerenciar farmacia' do

  scenario 'incluir farmacia' do # , :js => true  do

    visit new_farmacium_path
    preencher_e_verificar_farmacia
  end

  scenario 'alterar farmacia' do #, :js => true  do

    farmacia = FactoryGirl.create(:farmacium)
    visit edit_farmacium_path(farmacia)
    preencher_e_verificar_farmacia

  end

   scenario 'excluir farmacia' do #, :javascript => true  do

    farmacia = FactoryGirl.create(:farmacium)
    visit farmacia_path
    click_link 'Apagar'

  end

   def preencher_e_verificar_farmacia

      fill_in 'Nome',     :with => "Tia juce"
      fill_in 'Latitude',  :with => "30.0"
      fill_in 'Longitude',  :with => "20.0"
      fill_in 'Elevacao',  :with => "10.0"
      click_button 'Save'

      expect(page).to have_content 'Nome: Tia juce'
      expect(page).to have_content 'Latitude: 30.0'
      expect(page).to have_content 'Longitude: 20.0'
      expect(page).to have_content 'Elevacao: 10.0'  
         
      
   end
end