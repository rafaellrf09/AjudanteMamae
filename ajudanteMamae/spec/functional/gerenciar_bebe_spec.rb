# coding: utf-8


require 'rails_helper'

feature 'gerenciar bebe' do

  scenario 'incluir bebe' do # , :js => true  do

    visit new_bebe_path
    preencher_e_verificar_bebe
  end

  scenario 'alterar bebe' do #, :js => true  do

    bebe = FactoryGirl.create(:bebe)
    visit edit_bebe_path(bebe)
    preencher_e_verificar_bebe

  end

   scenario 'excluir bebe' do #, :javascript => true  do

    bebe = FactoryGirl.create(:bebe)
    visit bebes_path
    click_on 'Excluir'

  end

   def preencher_e_verificar_bebe

      fill_in 'Nome',     :with => "Luiz"
      fill_in 'Idade',  :with => "3"
      click_button 'Salvar'

      expect(page).to have_content 'Nome: Luiz'
      expect(page).to have_content 'Idade: 3'
      
      
   end
end