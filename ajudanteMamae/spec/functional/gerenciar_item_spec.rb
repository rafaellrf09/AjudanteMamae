# coding: utf-8

require 'spec_helper'
require 'rails_helper'

feature 'gerenciar Dieta' do

  before(:each) do
    @dieta = create(:dietum, nome: "Tiao")
  end


  let(:dados) do {
    Nome: "Leite",
    dieta: "Tiao"
   }
  end

  scenario 'incluir item' do #, :js => true  do
    visit new_item_path
    preencher(dados)
    click_button 'Save'
    verificar(dados)

  end

  scenario 'alterar disciplina' do #, :js => true  do

    item = FactoryGirl.create(:items, dietum: @dieta )

    visit edit_item_path(item)
    preencher(dados)
    click_button 'Save'
    verificar(dados)


  end

  scenario 'excluir item' do #, :js => true  do

    item = FactoryGirl.create(:items, dietum: @dieta)
    visit item_path
    #save_and_open_page
    click_link 'Destroy'

  end

  def preencher(dados)

    fill_in 'Nome',  with: dados[:Nome]
    select dados[:dieta], from: "Bebe"

  end

  def verificar(dados)

    page.should have_content "Nome: #{dados[:nome]}"
    page.should have_content "Bebe: #{dados[:dieta]}"
  

  end

end