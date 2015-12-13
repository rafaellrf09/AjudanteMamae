# coding: utf-8

require 'spec_helper'
require 'rails_helper'

feature 'gerenciar cadastro' do

  scenario 'incluir cadastro' do # , :js => true  do

    visit new_cadastro_path
    preencher_e_verificar_cadastro
  end

  scenario 'alterar cadastro' do #, :js => true  do

    cadastro = FactoryGirl.create(:cadastro)
    visit edit_cadastro_path(cadastro)
    preencher_e_verificar_cadastro

  end

   scenario 'excluir cadastro' do #, :javascript => true  do

    cadastro = FactoryGirl.create(:cadastro)
    visit cadastros_path
    click_link "Excluir"

  end

   def preencher_e_verificar_cadastro

      fill_in 'Usuario',     :with => "Luiz"
      fill_in 'Senha',  :with => "3"
      click_button 'Save'

      expect(page).to have_content 'Usuario: Luiz'
      expect(page).to have_content 'Senha: 3'
      

   end
end