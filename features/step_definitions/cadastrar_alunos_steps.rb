require 'selenium-webdriver'

  Dado('que estou na página de cadastro de aluno') do




    visit '/alunos/new'
  end
  
  Dado('preencho com infomações válidas') do
    fill_in "Nome", :with => "Miguel Vasconcelos"
    fill_in "Email", :with => "miguel.vasconcelos@usp.br"
    
    #pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado('clico em salvar') do
    click_on 'Salvar novo aluno'
  end
  
  Então('deverei ver o aluno na página de listagem de alunos') do
    expect(page).to have_content('Miguel Vasconcelos')
    expect(page).to have_content('miguel.vasconcelos@usp.br')
  end

  
  Então('ele deve ter sido salvo no banco de dados') do
    aluno = Aluno.order("id").last
    expect(aluno.nome).to eq('Miguel Vasconcelos')
    expect(aluno.email).to eq('miguel.vasconcelos@usp.br')  end

  Dado('preencho o nome mas não o e-mail') do
    fill_in "Nome", :with => "Miguel Vasconcelos"
  end
  
  Então('deverei ver uma mensagem de erro sobre obrigatoriedade do email') do
    expect(page).to have_content('É obrigatório informar o email!')
  end

  Então('deverei ver uma mensagem de erro sobre obrigatoriedade do nome') do
    expect(page).to have_content('É obrigatório informar o nome!')
  end

  Então('deverei ver uma mensagem de erro sobre email não válido') do
    expect(page).to have_content('Formato de e-mail inválido!')
  end
  
  Dado('preencho o e-mail mas não o nome') do
    fill_in "Email", :with => "miguel.vasconcelos@usp.br"
  end
  
  Dado('preencho o campo de e-mail com um e-mail inválido') do
    fill_in "Nome", :with => "Miguel Vasconcelos"
    fill_in "Email", :with => "a!1ç....,,,´/ ? @a"
  end
  