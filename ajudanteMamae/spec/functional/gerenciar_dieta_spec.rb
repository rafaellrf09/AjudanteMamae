# coding: utf-8

require 'spec_helper'
require 'rails_helper'

feature 'gerenciar Dieta' do

  before(:each) do
    @bebe = create(:bebe, nome: "Tiao")
  end


  let(:dados) do {
    Nome: "Leite",
    bebe: "Tiao"
   }
  end

  scenario 'incluir dieta' do #, :js => true  do
    visit new_dietum_path
    preencher(dados)
    click_button 'Save'
    verificar(dados)

  end

  scenario 'alterar disciplina' do #, :js => true  do

    dieta = FactoryGirl.create(:dietum, bebe: @bebe )

    visit edit_dietum_path(dieta)
    preencher(dados)
    click_button 'Save'
    verificar(dados)


  end

  scenario 'excluir dieta' do #, :js => true  do

    dieta = FactoryGirl.create(:dietum, bebe: @bebe)
    visit dieta_path
    #save_and_open_page
    click_link 'Destroy'

  end

  def preencher(dados)

    fill_in 'Nome',  with: dados[:Nome]
    select dados[:bebe], from: "Bebe"

  end

  def verificar(dados)

    page.should have_content "Nome: #{dados[:nome]}"
    page.should have_content "Bebe: #{dados[:bebe]}"
  

  end

end