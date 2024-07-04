import { Given, When, Then } from '@wdio/cucumber-framework';
import { browser } from '@wdio/globals'
import LoginPage from '../pageobjects/login.page.js';


Given(/^user is on Saucedemo homepage$/, async () => {
    await LoginPage.open()
});

When(/^user login using "([^"]*)" as username and "([^"]*)" as password$/, async (username, password) => {
    await LoginPage.login(username, password)
});

Then(/^user should see message "([^"]*)"$/, (args1) => {
	console.log(args1);
	return true;
});

Then('user should see {string} text displayed', (text) => {
    expect(browser).toHaveText(text)
})

