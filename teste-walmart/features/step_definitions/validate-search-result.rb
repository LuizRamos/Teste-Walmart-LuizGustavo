Given(/^I am on the Walmart homepage$/) do
    visit 'http://www.walmart.com.br'
end

Then(/^I will search for "([^"]*)"$/) do |searchText|
    fill_in 'suggestion-search', :with => searchText
end

And(/^I will click button Procurar$/) do
    click_button "Procurar"
end
        
Then(/^I expect see "([^"]*)"$/) do |expectedText|
    expect(page).to have_content(expectedText)
end

And(/^I will click the Smart TV link$/) do
    find('.product-title', :text => 'Smart TV LED HD 32" LG 32LF585B 3 HDMI 3 USB Wi-fi integrado').click
end

And(/^I will click button Adicionar ao carrinho$/) do
    click_button "Adicionar ao carrinho"
end

And(/^I will click button Continuar$/) do
    click_button "Continuar"
end

And(/^I will click Meu carrinho$/) do
    find('.number', :text => '1').click
end
     
Then(/^I expect see \/Smart TV LED (\d+)"\/$/) do |expectedText|
    expect(page).to have_content(expectedText)
end